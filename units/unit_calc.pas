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
  Classes,
  unit_types,
  math_complex,
  VirtualTrees,
  TeEngine, Series,
  TeeProcs, Chart;
type


  TCalc = class(TObject)
  private
    FData: TDataArray;
    FResult: TDataArray;

    FLayers: TLayers;
    FLimit: single;

    CD: TThreadParams;

    FTree: TVirtualStringTree;
    FChart: TChart;

    function RefCalc(t, Lambda: single): single;
    procedure CalcLambda(StartL, EndL, Theta: single; N: integer);
    procedure CalcTet(StartTeta, EndTeta: single; N: integer);

    { Private declarations }
    protected

    public
      constructor Create;
      procedure Run;
      //property ResSeries: TLineSeries write SetResSeries;

      property Layers: TLayers write FLayers;
      property CalcData: TThreadParams write CD;
      property ExpValues: TDataArray write FData;
      property Limit: single write FLimit;
      property Results: TDataArray read FResult;
      property Chart: TChart read FChart write FChart;
      property Tree: TVirtualStringTree read FTree write FTree;
  end;

var
    Calc:   TCalc;

implementation

uses
  Math,
  unit_materials,
  math_globals;


  { TCalc }

procedure TCalc.CalcLambda;
var
  i: integer;
  Step: single;
  R: single;
  L: single;
begin
  Step := (EndL - StartL) / N;
  SetLength(FResult, N);
  for i := 0 to N - 1 do
  begin
    L := StartL + i * Step;
    FLayers := FillLayers(FTree, L, FChart);
    FResult[i].t := L;
    R := RefCalc(Theta, L);
    if R > FLimit then
      FResult[i].R := R
    else
      FResult[i].R := FLimit;
  end;
end;

procedure TCalc.CalcTet(StartTeta, EndTeta: single; N: integer);
var
  i: integer;
  Step: single;
  R: single;
begin
  Step := (EndTeta - StartTeta) / N;
  SetLength(FResult,0);
  SetLength(FResult, N);
  for i := 0 to N - 1 do
  begin
    FResult[i].t := StartTeta + i * Step;
    R := RefCalc((FResult[i].t) / CD.K, CD.Lambda);
    if R > FLimit then
      FResult[i].R := R
    else
      FResult[i].R := FLimit;
  end;
end;

constructor TCalc.Create;
begin
  inherited Create;
  FLimit := 5E-7;
end;

procedure TCalc.Run;
begin
  case CD.Mode of
    cmTheta:
      CalcTet(CD.StartT, CD.EndT, CD.N);
    cmLambda:
      CalcLambda(CD.StartL, CD.EndL, CD.Theta, CD.N);
  end;
end;

function TCalc.RefCalc(t, Lambda: single): single;
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
    case CD.RF of
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
  if CD.P = cmSP then
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
      case CD.RF of
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

initialization


finalization


end.
