 (* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit unit_calc;

interface

uses
  FastMM4,
  Classes,
  unit_types,
  math_complex,
  VirtualTrees,
  TeEngine, Series,
  TeeProcs, Chart,
  OtlParallel, OtlCollections, OtlCommon,
  unit_materials;

type

  TCalcParams = record
                  StartTeta, EndTeta, Step: single;
                  N: integer;
                  N0: integer
                end;

  TCalc = class(TObject)
    private
      CalcParams: array of TCalcParams;

      FData: TDataArray;
      FResult: TDataArray;

      FLayeredModel: TLayeredModel;

      FLimit: single;

      FCD: TThreadParams;

      FTree: TVirtualStringTree;
      FGradientChart: TChart;
      FTotalD: single;
      FModel: PVirtualNode;
      FHasGradients: Boolean;

      function  RefCalc(t, Lambda:single; ALayers: TLayers): single;
      procedure CalcLambda(StartL, EndL, Theta: single; N: integer);
      procedure CalcTet(const Params: TCalcParams);
      procedure RunThetaThreads;
      procedure Convolute(Width: single);
    public
      constructor Create;
      procedure Run;
      property CalcData: TThreadParams write FCD;
      property ExpValues: TDataArray write FData;
      property Limit: single write FLimit;
      property Results: TDataArray read FResult;
      property GradientChart: TChart read FGradientChart write FGradientChart;
      property Tree: TVirtualStringTree read FTree write FTree;
      property TotalD: single read FTotalD;
      property Model: PVirtualNode write FModel;
      property HasGradients:Boolean read FHasGradients;
  end;

var
    Calc:   TCalc;

implementation

uses
  Math,
  math_globals,
  GpLists,
  OtlSync,
  System.SysUtils;

  { TCalc }

procedure TCalc.CalcLambda;
var
  i: integer;
  Step: single;
  R: single;
  L: single;
  LayeredModel: TLayeredModel;
  Layers: TLayers;
 begin
  LayeredModel := TLayeredModel.Create(FTree, FGradientChart, FModel);
  try
    Step := (EndL - StartL) / N;
    SetLength(FResult, N);
    for i := 0 to N - 1 do
    begin
      L := StartL + i * Step;
      LayeredModel.Generate(L);
      Layers := LayeredModel.Layers;
      FResult[i].t := L;
      R := RefCalc(Theta, L, Layers);
      if R > FLimit then
        FResult[i].R := R
      else
        FResult[i].R := FLimit;
    end;
    FTotalD := LayeredModel.TotalD;
    FHasGradients := LayeredModel.HasGradients;
  finally
    LayeredModel.Free;
  end;
end;

procedure TCalc.CalcTet;
var
  i: integer;
  R: single;
  FLayers: TLayers;
begin
  FLayers := FLayeredModel.Layers;
  for i := 0 to Params.N - 1 do
  begin
    FResult[Params.N0 + i].t := Params.StartTeta + i * Params.Step;
    R := RefCalc((FResult[Params.N0 + i].t) / FCD.K, FCD.Lambda, FLayers);
    if R > FLimit then
      FResult[Params.N0 + i].R := R
    else
      FResult[Params.N0 + i].R := FLimit;
  end;
end;

constructor TCalc.Create;
begin
  inherited Create;
  FLimit   := 1E-7;
end;

procedure TCalc.RunThetaThreads;
var
  N, i: Integer;
  dt, step: single;

  Tasks: array of TProc;
  NThreads : byte;
begin
  FLayeredModel := TLayeredModel.Create(FTree, FGradientChart, FModel);
  FLayeredModel.Generate(FCD.Lambda);
  FTotalD := FLayeredModel.TotalD;
  FHasGradients := FLayeredModel.HasGradients;

  {$IFDEF DEBUG}
    NThreads := 4;
  {$ELSE}
    NThreads := Environment.Process.Affinity.Count;
  {$ENDIF}

  SetLength(Tasks, NThreads);
  SetLength(CalcParams,  NThreads);

  N := FCD.N div NThreads;
  dt := (FCD.EndT - FCD.StartT) / NThreads;
  step := dt / N;

  for i := 0 to NThreads - 1 do
  begin
    CalcParams[i].StartTeta := FCD.StartT + i * dt;
    CalcParams[i].EndTeta := FCD.StartT + (i + 1) * dt;
    CalcParams[i].Step :=  step;
    CalcParams[i].N0 := N * i;
    CalcParams[i].N := N;
  end;

  SetLength(FResult, 0);
  SetLength(FResult, NThreads * N);

  Parallel.ForEach(0, NThreads - 1, 1)
    .Execute(
        procedure(const elem:Integer)
        begin
          CalcTet(CalcParams[elem]);
        end);

  FLayeredModel.Free;
end;

procedure TCalc.Run;
begin
   case FCD.Mode of
    cmTheta : begin
                RunThetaThreads;
                Convolute(FCD.DT * FCD.K);
              end;
    cmLambda: begin
                CalcLambda(FCD.StartL, FCD.EndL, FCD.Theta, FCD.N);
                Convolute(FCD.DW);
              end;
  end;
end;

function TCalc.RefCalc(t, Lambda:single; ALayers: TLayers): single;
var
  c, Rs, Rp, Rsp, s1, sin_t, cos_t, sqr_sin_t: single;

  function TotalRecursiveRefraction: single;
  var
    i: integer;
    Im: TComplex;
    a1, a2, b1, b2: TComplex;
  begin
    Im := ToComplex(0, 1);
    for i := High(ALayers) - 1 downto 0 do
    begin
      a1 := MulRZ(ALayers[i + 1].L * 2, ALayers[i + 1].K);
      a1 := MulZZ(Im, a1);
      a1 := ExpZ(a1);
      a1 := MulZZ(ALayers[i + 1].R, a1);
      b1 := AddZZ(ALayers[i].RF, a1);
      a2 := MulZZ(ALayers[i].RF, a1);
      b2 := AddZR(a2, 1);
      ALayers[i].R := DivZZ(b1, b2);
    end;
    Result := sqr(AbsZ(ALayers[0].R));
  end;

  function Roughness(const RF: TRoughnessFunction; const sigma, s: single):Single;inline;
  begin
      case RF of
        rfError:
          Result := exp(-1 * sqr(sigma) * sqr(s));
        rfExp:
          Result := 1 / (1 + (sqr(s) * sqr(sigma)) / 2);
        rfLinear:
          if sigma < 0.5 then
            Result := sin(sqrt(3) * sigma * s) /
              (sqrt(3) * sigma * s)
          else
            Result := 1;
        rfStep:
          Result := cos(sigma * s);
      end;
  end;

  procedure LayerAmplitudeRefractionS;     { Коэффициент отражения Rs}
  var
    i: integer;
    b1, b2: TComplex;
    s: Single;
  begin
    for i := 0 to Length(ALayers) - 2 do
    begin
      b1 := SubZZ(ALayers[i].K, ALayers[i + 1].K);
      b2 := AddZZ(ALayers[i].K, ALayers[i + 1].K);
      ALayers[i].RF := DivZZ(b1, b2);
      s1 := Abs(1 - (AbsZ(DivZZ(ALayers[i].e, ALayers[i + 1].e)) * sqr_sin_t));
      s := c * sqrt(cos_t * sqrt(s1));

      ALayers[i].RF := MulRZ(Roughness(FCD.RF, ALayers[i + 1].s, s), ALayers[i].RF);
    end;
  end;

  procedure LayerAmplitudeRefractionP;     { Коэффициент отражения Rp }
  var
    i: integer;
    a1, a2, b1, b2: TComplex;
    s: Single;
  begin
    for i := 0 to Length(ALayers) - 2 do
    begin
      a1 := DivZZ(ALayers[i].K, ALayers[i].e);
      a2 := DivZZ(ALayers[i + 1].K, ALayers[i + 1].e);
      b1 := SubZZ(MulRZ(1, a1), MulRZ(1, a2));
      b2 := AddZZ(MulRZ(1, a1), MulRZ(1, a2));
      ALayers[i].RF := DivZZ(b1, b2);
      s1 := Abs(1 - (AbsZ(DivZZ(ALayers[i].e, ALayers[i + 1].e)) * sqr_sin_t));
      s := c * sqrt(cos_t * sqrt(s1));

      ALayers[i].RF := MulRZ(Roughness(FCD.RF, ALayers[i + 1].s, s), ALayers[i].RF);
    end;
  end;

  procedure FresnelCoefficients;   { Френелевские коэффициенты (p-p) }
  var
    i: Integer;
    c: Single;
    a1: TComplex;
  begin
    c := 2 * Pi / Lambda; {другое волновое число }
    for i := 0 to Length(ALayers) - 1 do
      begin
        a1 := SqrtZ(AddZR(ALayers[i].e, -sqr_sin_t));
        ALayers[i].K := MulRZ(c, a1);
      end;
  end;

begin
  c := 4 * Pi / Lambda; { волновое число }
  t := Pi / 2 - Pi * t / 180;

  sin_t := sin(t); cos_t := cos(t); sqr_sin_t := sqr(sin_t);

  FresnelCoefficients;
  LayerAmplitudeRefractionS;
  Rs := TotalRecursiveRefraction;

  if FCD.P = cmSP then
  begin
    LayerAmplitudeRefractionP;
    Rp := TotalRecursiveRefraction;
    Rsp := (Rs + Rp) / 2;
    Result := Rsp;
  end
  else
    Result := Rs;
end;

procedure TCalc.Convolute(Width: single);
var
  Sum, delta, t1, c: single;
  i, N, k, p, Size: integer;
  sqr_Width: Single;

  Temp: TDataArray;

  function Gauss(const c, x, sqr_Width: single): single; inline;
  begin
    Result := c * exp(-2 * sqr(x) / sqr_Width);
  end;

begin
  if Width = 0 then Exit;

  Size := Length(FResult);
  Width := Width * 0.849;
  sqr_Width := sqr(Width);
  c := 1 / (Width * sqrt(Pi/2));

  delta := (FResult[Size - 1].t - FResult[0].t)/Size;
  N := Round(0.1 / delta);
  if frac(N / 2) = 0 then
    N := N - 1;

  SetLength(Temp, Size - 2*N);

  p := 0;
  for i := N to Size - N - 1 do
  begin
    t1 := -0.1;
    Sum := 0;
    for k := i - N to i + N do
    begin
      Sum := Sum + FResult[k].r * Gauss(c, t1, sqr_Width) * delta;
      t1 := t1 + delta;
    end;
    Temp[p].t := FResult[i + 1].t;
    Temp[p].R := Sum;
    inc(p);
  end;

  FResult := Temp;
end;

initialization


finalization


end.
