(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit unit_calc_thread_2;

interface

uses
  Classes,
  TeEngine,
  Series,
  unit_types,
  math_complex2,
  VirtualTrees;

type

  TLayer2 = record
    e: TComplex2; { Epsilon }
    L, s: single; { Thickness, sigma, transition }
    K: TComplex2; { kappa }
    RF, r: TComplex2; { Френелевский коэф. }
    LID: byte;
  end;

  TLayers2 = array of TLayer2;

  TCalcThread2 = class(TThread)
  private
    FData: TDataArray;
    FResult: TDataArray;

    FLayers: TLayers2;
    FLimit: single;
    FTree: TVirtualStringTree;
    FResSeries: TLineSeries;

    CD: TThreadParams;
    FNumber: Integer;

    function RefCalc(t, Lambda: single): single;
    procedure CalcTet(StartTeta, EndTeta: single; N: integer);
    procedure SetResSeries(const Value: TLineSeries);

    procedure ReturnResult;

    { Private declarations }
    protected
      procedure Execute;
      override;
    public
      constructor Create(Free: boolean = True);

      //property ResSeries: TLineSeries write SetResSeries;

      property Number:Integer write FNumber;

      property Layers: TLayers2 write FLayers;

      property Tree: TVirtualStringTree write FTree;

      property CalcData: TThreadParams write CD;

      property ExpValues: TDataArray write FData;
      property Limit: single write FLimit;
    end;

implementation

uses
  Forms,
  Math,
  unit_materials,
  ActiveX,
  frm_main,
  SyncObjs,
  math_globals,
  System.SysUtils;

var
  CriticalSection: TCriticalSection;

  { TCalcThread }


procedure TCalcThread2.CalcTet(StartTeta, EndTeta: single; N: integer);
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
    if Terminated then
      break;
  end;
end;

constructor TCalcThread2.Create(Free: boolean);
begin
  inherited Create(True);
  FreeOnTerminate := Free;
  Priority := tpHighest;
  FLimit := 5E-7;
end;

procedure TCalcThread2.Execute;
begin
  CalcTet(CD.StartT, CD.EndT, CD.N);
  Synchronize(ReturnResult);
end;

function TCalcThread2.RefCalc(t, Lambda: single): single;
var
  c, Rs, Rp, s, s1, ex, sin_t, cos_t: single;
  i: integer;
  a1, a2, b1, b2, Im: TComplex2;

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
end;


procedure TCalcThread2.ReturnResult;
begin
  CriticalSection.Enter;
  CopyData(FResult, frmMain.FResults[FNumber]);
  CriticalSection.Leave;
end;

procedure TCalcThread2.SetResSeries(const Value: TLineSeries);
begin
  if Assigned(Value) then
    FResSeries := Value;
end;

initialization

CriticalSection := TCriticalSection.Create;

finalization

CriticalSection.Free;

end.
