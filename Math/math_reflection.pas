unit math_reflection;

interface

uses
  TeEngine,
  Series,
  unit_types,
  math_complex,
  VirtualTrees;

type

  TReflection = class
  private
    Fw: single;

    FData: TDataArray;
    FResult: TDataArray;
    FTemp: TDataArray;

    FLayers: TLayers;
    FLambda: single;
    FRoughnessFunction: TRoughnessFunction;
    FPolarisation: TPolarisation;
    FK: byte;
    FLimit: single;
    FTheta: single;
    FTree: TVirtualStringTree;

    function RefCalc(t: single): single;
    procedure Convolute(Width: single);
    procedure SetExpData(const Value: TLineSeries);
  public
    constructor Create;

    procedure CalcTet(StartTeta, EndTeta, Width: single; N: integer);
    procedure CalcLambda(StartL, EndL, Width: single; N: integer);

    procedure Result(Series: TLineSeries);

    property Data: TLineSeries write SetExpData;
    property Polarisation: TPolarisation write FPolarisation;
    property RF: TRoughnessFunction write FRoughnessFunction;
    property Lambda: single write FLambda;
    property Theta: single write FTheta;
    property k: byte write FK default 1;
    property Tree: TVirtualStringTree write FTree;
  end;

implementation

uses
  Forms,
  Math, unit_materials;
{$REGION Вспомогательные фунуции}
{ TReflection }

procedure TReflection.CalcLambda(StartL, EndL, Width: single; N: integer);
var
  i: integer;
  Step: single;
  R: single;
begin
  FLimit := 5E-7;

  Step := (EndL - StartL) / N;
  SetLength(FResult, N);
  for i := 0 to N - 1 do
  begin
    Flambda := StartL + i * Step;
    FLayers := FillLayers(FTree, FLambda);
    FResult[i].t := FLambda;
    R := RefCalc(FTheta);
    if R > FLimit then
      FResult[i].R := R
    else
      FResult[i].R := FLimit;
  end;
  if Width <> 0 then
    Convolute(Width);
end;

procedure TReflection.CalcTet(StartTeta, EndTeta, Width: single; N: integer);
var
  i: integer;
  Step: single;
  R: single;
begin
  FLimit := 5E-7;
  FLayers := FillLayers(FTree, FLambda);

  Step := (EndTeta - StartTeta) / N;
  SetLength(FResult, N);
  for i := 0 to N - 1 do
  begin
    FResult[i].t := StartTeta + i * Step;
    R := RefCalc((StartTeta + i * Step) / FK);
    if R > FLimit then
      FResult[i].R := R
    else
      FResult[i].R := FLimit;
  end;
  if Width <> 0 then
    Convolute(Width);
end;

procedure TReflection.Convolute(Width: single);
var
  Sum, delta, t1, t2: single;
  i, N, k, p: integer;

  function Gauss(x: single): single;
  const
    A = 1;
  var
    c: single;
  begin
    c := 1 / (Width * sqrt(Pi / 2));
    Result := c * exp(-2 * sqr(x) / sqr(Width));
  end;

begin
  Width := Width * 0.849;
  delta := FResult[11].t - FResult[10].t;
  N := Round(0.2 / delta);
  if frac(N / 2) = 0 then
    N := N - 1;

  SetLength(FTemp, High(FResult) + 1 - N);
  p := 0;

  for i := (N div 2) + 1 to High(FResult) - (N div 2) - 2 do
  begin
    t1 := -0.1;
    Sum := 0;
    for k := (i - N div 2) to (i + N div 2) + 2 do
    begin
      Sum := Sum + FResult[k].R * Gauss(t1) * delta;
      t1 := t1 + delta;
    end;
    FTemp[p].t := FResult[i + 1].t;
    FTemp[p].R := Sum;
    inc(p);
  end;

  SetLength(FResult, High(FTemp));

  for i := 0 to High(FTemp) - 1 do
    FResult[i] := FTemp[i];
end;

constructor TReflection.Create;
begin
  Lambda := 1.54043;
  FK := 1;
end;

procedure TReflection.SetExpData(const Value: TLineSeries);
begin

end;

function TReflection.RefCalc(t: single): single;
var
  c, Rs, Rp, s, s1, ex, sin_t, cos_t: single;
  i: integer;
  a1, a2, b1, b2, Im: TComplex;

  function RCalc: single;
  var
    i: integer;
  begin
    for i := High(FLayers) - 1 downto 0 do
    begin
      a1 := MulRZ(FLayers[i + 1].L * 2, FLayers[i + 1].k);
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
  c := 2 * Pi / FLambda; { волновое число }
  sin_t := sin(t);
  cos_t := cos(t);
  for i := 0 to High(FLayers) - 1 do
  begin
    a1 := SqrtZ(AddZR(FLayers[i].e, -sqr(sin_t)));
    FLayers[i].k := MulRZ(c, a1);
  end;
  { Френелевские коэффициенты (p-p) }
  c := 4 * Pi / FLambda; { волновое число }

  for i := 0 to High(FLayers) - 2 do
  begin
    b1 := SubZZ(FLayers[i].k, FLayers[i + 1].k);
    b2 := AddZZ(FLayers[i].k, FLayers[i + 1].k);
    FLayers[i].RF := DivZZ(b1, b2);
    s1 := Abs(1 - (AbsZ(DivZZ(FLayers[i].e, FLayers[i + 1].e)) * sqr(sin_t)));
    // s:=4*Pi*sqrt(cos(t)*sqrt(s1))/Lambda;
    s := c * sqrt(cos_t * sqrt(s1));
    case FRoughnessFunction of
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
  if FPolarisation = cmSP then
  begin
    { Rp }
    for i := 0 to High(FLayers) - 2 do
    begin
      a1 := DivZZ(FLayers[i].k, FLayers[i].e);
      a2 := DivZZ(FLayers[i + 1].k, FLayers[i + 1].e);
      b1 := SubZZ(MulRZ(1, a1), MulRZ(1, a2));
      b2 := AddZZ(MulRZ(1, a1), MulRZ(1, a2));
      FLayers[i].RF := DivZZ(b1, b2);
      s1 := Abs(1 - (AbsZ(DivZZ(FLayers[i].e, FLayers[i + 1].e)) * sqr(sin_t)));
      // s:=4*Pi*sqrt(cos(t)*sqrt(s1))/Lambda;
      s := c * sqrt(cos_t * sqrt(s1));
      case FRoughnessFunction of
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

procedure TReflection.Result(Series: TLineSeries);
var
  i: integer;
begin
  Series.Clear;
  for i := 0 to High(FResult) - 1 do
    Series.AddXY(FResult[i].t, FResult[i].R);
end;

end.
