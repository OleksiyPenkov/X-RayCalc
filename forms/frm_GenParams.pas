(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit frm_GenParams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, RzLabel,
  RzButton, Mask, RzEdit, RzTabs, RzPanel, unit_types, math_globals,
  VclTee.TeeGDIPlus;

type
  TfrmFit = class(TForm)
    RzPanel1: TRzPanel;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TPointSeries;
    edDW: TRzEdit;
    RzButton4: TRzButton;
    RzButton3: TRzButton;
    procedure RzButton3Click(Sender: TObject);
    procedure RzButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Curve: TLineSeries;

    procedure GetExpPeaks;

  end;

var
  frmFit: TfrmFit;

implementation

uses math_Gen;

{$R *.dfm}

{ TfrmFitChart }


procedure TfrmFit.GetExpPeaks;
var
  i, j, w, FR: integer;
  y, dx, S: double;
begin
  DW := StrToFloat(edDW.Text);
  frmFit.Series1.Clear;
  frmFit.Series2.Clear;
  frmFit.Series3.Clear;
  // ------- Экспериментальная кривая
  SizeOfDataArray := Curve.Count;
  SetLength(ExpData, SizeOfDataArray);
  SetLength(TempData, SizeOfDataArray);
  for i := 0 to SizeOfDataArray - 1 do
  begin
    TempData[i].t := Curve.XValues[i];
    TempData[i].R := Curve.YValues[i];
  end;

  for i := 0 to SizeOfDataArray - 1 do
  begin
    ExpData[i].t := Curve.XValues[i];
    ExpData[i].R := Curve.YValues[i];
  end;

  dx := TempData[2].t - TempData[1].t;
  w := 11;
  // Производная
  for i := 1 to High(TempData) - 2 do
  begin
    if (TempData[i + 1].t < 0.5) or ((TempData[i + 1].R < 1E-7)) then
      Continue;
    y := (ln(TempData[i + 1].R) - ln(TempData[i].R)) / dx;
    TempData[i].R := y;
    frmFit.Series1.AddXY(TempData[i].t, y, '', clTeeColor);
  end;
  // Сглаживание
  for i := 1 to High(TempData) - 3 - w do
  begin
    S := 0;
    for j := 0 to w - 1 do
      S := S + TempData[i + j].R;
    S := S / w;
    TempData[i].R := S;
    TempData[i].t := TempData[i].t + w * dx * (0.5 + w / High(TempData));
    frmFit.Series2.AddXY(TempData[i].t, TempData[i].R, '', clTeeColor);
  end;
  // поиск
  FR := 0;
  SetLength(FitRanges, 0);
  for i := 2 to High(TempData) - w * 2 do
    if (TempData[i].R > 0) and (TempData[i + 1].R < 0) and
      ((TempData[i - 2].R - TempData[i + 2].R) > 15) then
    begin
      frmFit.Series3.AddXY(TempData[i].t, 0, '', clTeeColor);
      inc(FR);
      SetLength(FitRanges, FR);
      with FitRanges[FR - 1] do
      begin
        tet1 := TempData[i].t - DW;
        tet2 := TempData[i].t + DW;
      end;
    end;

  j := 0;
  i := 0;
  while (i <= High(ExpData)) and (j <= High(FitRanges)) do
  begin
    While ExpData[i].t < FitRanges[j].tet1 do
      inc(i);
    FitRanges[j].i1 := i;
    While ExpData[i].t <= FitRanges[j].tet2 do
      inc(i);
    FitRanges[j].i2 := i;
    inc(j);
    inc(i);
  end;
end;


procedure TfrmFit.RzButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmFit.RzButton4Click(Sender: TObject);
begin
  GetExpPeaks;
end;

end.
