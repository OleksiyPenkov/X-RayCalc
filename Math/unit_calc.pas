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
                  StartTeta, EndTeta: single;
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

    function  RefCalc(t, Lambda: single; FLayers: TLayers): single;
    procedure CalcLambda(StartL, EndL, Theta: single; N: integer);
    procedure CalcTet(const Params: TCalcParams);
    procedure RunThetaThreads;
    procedure Convolute(Width: single);

    { Private declarations }
    protected

    public
      constructor Create;
      procedure Run;
      //property ResSeries: TLineSeries write SetResSeries;

//      property Layers: TLayers write FLayers;
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
      LayeredModel.Lamda := L;
      LayeredModel.Generate;
      Layers := LayeredModel.Layers;
      FResult[i].t := L;
      R := RefCalc(Theta, L,  Layers);
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
  Step: single;
  R: single;
  FLayers: TLayers;
begin
  FLayers := FLayeredModel.Layers;
  Step := (Params.EndTeta - Params.StartTeta) / Params.N;

  for i := 0 to Params.N - 1 do
  begin
    FResult[Params.N0 + i].t := Params.StartTeta + i * Step;
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
  dt: single;

  Tasks: array of TProc;
  NThreads : byte;
begin
  FLayeredModel := TLayeredModel.Create(FTree, FGradientChart, FModel);
  FLayeredModel.Lamda := FCD.Lambda;
  FLayeredModel.Generate;

  {$IFDEF DEBUG}
    NThreads := 4;
  {$ELSE}
    NThreads := Environment.Process.Affinity.Count;
  {$ENDIF}


  SetLength(Tasks, NThreads);
  SetLength(CalcParams,  NThreads);

  N := FCD.N div NThreads;
  dt := (FCD.EndT - FCD.StartT) / NThreads;

  for i := 0 to NThreads - 1 do
  begin
    CalcParams[i].StartTeta := FCD.StartT + i * dt;
    CalcParams[i].EndTeta := FCD.StartT + (i + 1) * dt;
    CalcParams[i].N0 := N * i;
    CalcParams[i].N := N;
  end;

  SetLength(FResult, 0);
  SetLength(FResult, NThreads * N);

  Parallel.ForEach(0, NThreads - 1, 1)
    .NumTasks(NThreads)
    .PreserveOrder
    .Execute(
        procedure(const elem:Integer)
        begin
          CalcTet(CalcParams[elem]);
        end);

  FTotalD := FLayeredModel.TotalD;
  FHasGradients := FLayeredModel.HasGradients;
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

function TCalc.RefCalc(t, Lambda: single; FLayers: TLayers): single;
var
  c, Rs, Rp, s, s1, ex, sin_t, cos_t: single;
  i: integer;
  a1, a2, b1, b2, Im: TComplex;

  procedure RCalc;
  var
    i: integer;
  begin
    for i := High(FLayers) - 1 downto 0 do
    begin
      a1 := MulRZ(FLayers[i + 1].L * 2, FLayers[i + 1].K);
      a1 := MulZZ(Im, a1);
      a1 := ExpZ(a1);
      a1 := MulZZ(FLayers[i + 1].R, a1);
      b1 := AddZZ(FLayers[i].RF, a1);
      a2 := MulZZ(FLayers[i].RF, a1);
      b2 := AddZR(a2, 1);
      FLayers[i].R := DivZZ(b1, b2);
    end;
  end;

{ ================== }
begin
  t := Pi / 2 - Pi * t / 180;
  Im.re := 0;
  Im.Im := 1;
  c := 2 * Pi / Lambda; { волновое число }
  sin_t := sin(t);
  cos_t := cos(t);
  for i := 0 to Length(FLayers) - 1 do
  begin
    a1 := SqrtZ(AddZR(FLayers[i].e, -sqr(sin_t)));
    FLayers[i].K := MulRZ(c, a1);
  end;
  { Френелевские коэффициенты (p-p) }
  c := 4 * Pi / Lambda; { волновое число }

  for i := 0 to Length(FLayers) - 2 do
  begin
    b1 := SubZZ(FLayers[i].K, FLayers[i + 1].K);
    b2 := AddZZ(FLayers[i].K, FLayers[i + 1].K);
    FLayers[i].RF := DivZZ(b1, b2);
    s1 := Abs(1 - (AbsZ(DivZZ(FLayers[i].e, FLayers[i + 1].e)) * sqr(sin_t)));
    // s:=4*Pi*sqrt(cos(t)*sqrt(s1))/Lambda;
    s := c * sqrt(cos_t * sqrt(s1));
    case FCD.RF of
      rfError:
        ex := exp(-1 * sqr(FLayers[i + 1].s) * sqr(s));
      rfExp:
        ex := 1 / (1 + (sqr(s) * sqr(FLayers[i + 1].s)) / 2);
      rfLinear:
        if FLayers[i + 1].s < 0.5 then
          ex := sin(sqrt(3) * FLayers[i + 1].s * s) /
            (sqrt(3) * FLayers[i + 1].s * s)
        else
          ex := 1;
      rfStep:
        ex := cos(FLayers[i + 1].s * s);
    end;
    FLayers[i].RF := MulRZ(ex, FLayers[i].RF);
  end;
  { Коэффициент отражения Rs }
  FLayers[ High(FLayers)].R.re := 0;
  FLayers[ High(FLayers)].R.Im := 0;
  RCalc;
  Rs := sqr(AbsZ(FLayers[0].R));
  if FCD.P = cmSP then
  begin
    { Rp }
    for i := 0 to Length(FLayers) - 2 do
    begin
      a1 := DivZZ(FLayers[i].K, FLayers[i].e);
      a2 := DivZZ(FLayers[i + 1].K, FLayers[i + 1].e);
      b1 := SubZZ(MulRZ(1, a1), MulRZ(1, a2));
      b2 := AddZZ(MulRZ(1, a1), MulRZ(1, a2));
      FLayers[i].RF := DivZZ(b1, b2);
      s1 := Abs(1 - (AbsZ(DivZZ(FLayers[i].e, FLayers[i + 1].e)) * sqr(sin_t)));
      // s:=4*Pi*sqrt(cos(t)*sqrt(s1))/Lambda;
      s := c * sqrt(cos_t * sqrt(s1));
      case FCD.RF of
        rfError:
          ex := exp(-1 * sqr(FLayers[i + 1].s) * sqr(s));
        rfExp:
          ex := 1 / (1 + (sqr(s) * sqr(FLayers[i + 1].s)) / 2);
        rfLinear:
          ex := sin(sqrt(3) * FLayers[i + 1].s * s) /
            (sqrt(3) * FLayers[i + 1].s * s);
      end;
      FLayers[i].RF := MulRZ(ex, FLayers[i].RF);
    end;
    { Коэффициент отражения }
    RCalc;
    Rp := sqr(AbsZ(FLayers[0].R));
    Result := (Rs + Rp) / 2;
  end
  else
    Result := Rs;
end;

procedure TCalc.Convolute(Width: single);
var
  Sum, delta, t1: single;
  i, N, k, p, Size: integer;

  Temp: TDataArray;

  function Gauss(x: single): single;
  var
    c: single;
  begin
    c := 1 / (Width * sqrt(Pi / 2));
    Result := c * exp(-2 * sqr(x) / sqr(Width));
  end;

begin
  if Width = 0 then Exit;

  Size := Length(FResult);
  Width := Width * 0.849;
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
      Sum := Sum + FResult[k].r * Gauss(t1) * delta;
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
