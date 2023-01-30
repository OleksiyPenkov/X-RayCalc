 (* *****************************************************************************
  *
  *   X-Ray Calc CMD
  *
  *   Copyright (C) 2001-2022 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit cmd_unit_calc;

interface

uses
//  FastMM4,
  Classes,
  cmd_unit_types,
  cmd_math_complex,
  OtlParallel,
  OtlCollections,
  OtlCommon,
  GpLists,
  OtlSync,
  System.SysUtils,
  cmd_unit_materials;

type

  TThreadCalcParams = record
                  StartTeta, EndTeta, Step: single;
                  N: integer;
                  N0: integer
                end;

  TCalc = class(TObject)
    private
      ThreadCalcParams: array of TThreadCalcParams;

      FData: TDataArray;
      FResult: TDataArray;

      FLayeredModel: TLayeredModel;
      FLimit: single;

      FCD: TCalcParams;

      Tasks: array of TProc;
      NThreads : byte;
      FChiSquare: single;

      function  RefCalc(t, Lambda:single; ALayers: TLayers): single;
      procedure CalcLambda(StartL, EndL, Theta: single; N: integer);
      procedure CalcTet(const Params: TThreadCalcParams);
      procedure CalcFollowModel(const Params: TThreadCalcParams);

      procedure RunThetaThreads;
      procedure Convolute(Width: single);
      procedure PrepareWorkers;


    public
      constructor Create;
      destructor Free;
      procedure Run;
      function CalcChiSquare: Single;

      property CalcData: TCalcParams read FCD write FCD;
      property Results: TDataArray read FResult;
      property Model: TLayeredModel read FLayeredModel write FLayeredModel;
      property ExpValues: TDataArray read FData write FData;
      property ChiSquare: single read FChiSquare;
  end;

implementation

uses
  Math,
  cmd_math_globals;

  { TCalc }

function TCalc.CalcChiSquare: Single;
var
  i: Integer;
begin
  Result := 0;
  for I := 0 to High(FResult) do
//    Result := Result + Sqr(Log10(FData[i].r) - Log10(FResult[i].r) * Log10(FResult[i].r)) * Exp(FData[i].t);
//    Result := Result + Sqr(FData[i].r - FResult[i].r) * FResult[i].r;// * Exp(FData[i].t);  #2
//    Result := Result + Sqr(FData[i].r - FResult[i].r) * FResult[i].r * Exp(FData[i].t); //    #1.5

//     Result := Result + Sqr(Log10(FData[i].r) - Log10(FResult[i].r)) * Exp(FData[i].t); //  <-- The Best
//   Result := Sqrt(Result)/ High(FResult) ; //  <-- The Best
  Result := Result + Sqr((Log10(FData[i].r) - Log10(FResult[i].r))/Log10(FResult[i].r)) * Exp(FData[i].t);
//  Result := Sqrt(Result)/ High(FResult)

  FChiSquare := Result;
end;

procedure TCalc.PrepareWorkers;
var
  N, i: Integer;
  dt, step: single;
begin
  {$IFDEF DEBUG}
    NThreads := 1;
  {$ELSE}
    NThreads := Environment.Process.Affinity.Count;
  {$ENDIF}

  SetLength(Tasks, NThreads);
  SetLength(ThreadCalcParams,  NThreads);

  N := FCD.N div NThreads;
  dt := (FCD.EndT - FCD.StartT) / NThreads;
  step := dt / N;

  for i := 0 to NThreads - 1 do
  begin
    ThreadCalcParams[i].StartTeta := FCD.StartT + i * dt;
    ThreadCalcParams[i].EndTeta := FCD.StartT + (i + 1) * dt;
    ThreadCalcParams[i].Step :=  step;
    ThreadCalcParams[i].N0 := N * i;
    ThreadCalcParams[i].N := N;
  end;

  SetLength(FResult, 0);
  SetLength(FResult, NThreads * N);
end;


procedure TCalc.CalcLambda;
var
  i: integer;
  Step: single;
  R: single;
  L: single;
  LayeredModel: TLayeredModel;
  Layers: TLayers;
 begin
  LayeredModel := TLayeredModel.Create;

  try
    Step := (EndL - StartL) / N;
    SetLength(FResult, N);
    for i := 0 to N - 1 do
    begin
      L := StartL + i * Step;
      LayeredModel.CalcOpticalConstants(L);
      Layers := LayeredModel.Layers;
      FResult[i].t := L;
      R := RefCalc(Theta, L, Layers);
      if R > FLimit then
        FResult[i].R := R
      else
        FResult[i].R := FLimit;
    end;
  finally
    LayeredModel.Free;
  end;
end;

procedure TCalc.CalcFollowModel;
var
  i: integer;
  R: single;
  Layers: TLayers;
begin
  Layers :=FLayeredModel.Layers;
  for i := 0 to Params.N - 1 do
  begin
    FResult[Params.N0 + i].t := FData[Params.N0 + i].t;
    R := RefCalc((FResult[Params.N0 + i].t) / FCD.K, FCD.Lambda, Layers);
    if R > FLimit then
      FResult[Params.N0 + i].R := R
    else
      FResult[Params.N0 + i].R := FLimit;
  end;
end;


procedure TCalc.CalcTet;
var
  i: integer;
  R: single;
  Layers: TLayers;
begin
  Layers :=FLayeredModel.Layers;
  for i := 0 to Params.N - 1 do
  begin
    FResult[Params.N0 + i].t := Params.StartTeta + i * Params.Step;
    R := RefCalc((FResult[Params.N0 + i].t) / FCD.K, FCD.Lambda, Layers);
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

destructor TCalc.Free;
begin
  inherited Free;
end;

procedure TCalc.RunThetaThreads;
begin
  try
    if FData <> nil then
    begin
      FCD.N := High(FData) + 1;
      PrepareWorkers;
      Parallel.ForEach(0, NThreads - 1, 1)
        .Execute(
            procedure(const elem:Integer)
            begin
              CalcFollowModel(ThreadCalcParams[elem]);
            end);
    end
    else begin
      PrepareWorkers;
      Parallel.ForEach(0, NThreads - 1, 1)
        .Execute(
            procedure(const elem:Integer)
            begin
              CalcTet(ThreadCalcParams[elem]);
            end);
    end;
    if FCD.DT <> 0 then
     Convolute(FCD.DT * FCD.K);
  finally

  end;
end;

procedure TCalc.Run;
begin
   case FCD.Mode of
    cmTheta : begin
                FLayeredModel.CalcOpticalConstants(FCD.Lambda);
                RunThetaThreads;
              end;
    cmLambda: begin
                CalcLambda(FCD.StartL, FCD.EndL, FCD.Theta, FCD.N);
//                Convolute(FCD.DW);
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
      a1 := MulRZ(ALayers[i + 1].H * 2, ALayers[i + 1].K);
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
