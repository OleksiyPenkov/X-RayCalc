(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2018 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit math_Gen;

interface

uses
  unit_types,
  unit_calc_thread_1;


type
  TGenTherad   = class(TCalcThread)
  private
    procedure StartGenetic; // весь алг.
    procedure OffspringsMutation(i1, i2: integer; dh, dr, ds: single); // мутация
    procedure Fitness; // расчет невязки для каждого
    function StopCriteria(const i: integer): boolean; //
    procedure ParentSelection;
    procedure Movement;
    procedure GenRandomPopulation;
    procedure SortArray(var A: array of TPerson);
    procedure Verify(var A: TFitParam);
    procedure GetElite(Max: integer);
    procedure SetInitialValues;
    procedure ChangeDV(dv1, dv2, dv3: single);
  public

  end;

implementation

uses
  SysUtils,
  frm_main,
  TeEngine,
  Math;

var
  SizeOfDataArray: integer;
  EliteCount, ParentCount, MovedCount: integer;
  FitRanges: array of TFitRange;
  CalcStopped,OnRecalculated,FittingOn:boolean;
  Population, NewPopulation,
  Selected: record
      P: array of TPerson;
      FS: double;
      N: integer;
  end;
  DW : single;
  ExpData, TempData: array of TDataPoint;
  Period,Count,IterCount,LayerCount:Integer;
  RangeCells:array of array of TRangeCell;

  ActivePeriod: PRowData;

procedure TGenTherad.Verify(var A:TFitParam);
begin
  if A.V>A.Vmax then
     A.V:=A.Vmax;
  if A.V<A.Vmin then
     A.V:=A.Vmin;
end;



procedure TGenTherad.SortArray(var A: array of TPerson);
var
  i, j: integer;
  Temp: TPerson;
begin
  for i := 0 to High(A) - 1 do
    for j := 0 to High(A) - 1 do
      if A[j].Disp > A[j + 1].Disp then
      begin
        Temp := A[j + 1];
        A[j + 1] := A[j];
        A[j] := Temp;
      end;
end;
{$ENDREGION}

procedure TGenTherad.ChangeDV(dv1, dv2, dv3: single);
var
  i, j: integer;
begin
  for i := 0 to High(Population.P) do
    for j := 0 to High(Population.P[i].H) do
    begin
      Population.P[i].H[j].dv := dv1;
      Population.P[i].R[j].dv := dv2;
      Population.P[i].S[j].dv := dv3;
    end;
end;

procedure TGenTherad.SetInitialValues;
var
  i, j: integer;
begin
  CalcStopped := False;
  FittingOn := True;

// LayerCount := MainForm.SGrid.RowCount - FirstLayerinPeriod;

  LayerCount := 2;

  Count := StrToInt(frmMain.edCount.Text);
  EliteCount := StrToInt(frmMain.edEliteCount.Text);
  ParentCount := StrToInt(frmMain.edParentCount.Text);
  MovedCount := StrToInt(frmMain.edMovedCount.Text);
  IterCount := StrToInt(frmMain.edIter.Text);

  // ---------------------------------------------
  SetLength(ExpData, SizeOfDataArray + 1);
  for i := 0 to SizeOfDataArray do
  begin
    ExpData[i].t := frmMain.FActiveData.Curve.XValues[i];
    ExpData[i].R := frmMain.FActiveData.Curve.YValues[i];
  end;
  //frmFit.Memo1.Clear;
  // ------------------------\\
  SetLength(Population.P, Count);
  SetLength(NewPopulation.P, Count);
  SetLength(Selected.P, IterCount);
  // ----  Установка исходных значений ------
  for i := 0 to High(Population.P) do
  begin
    SetLength(Population.P[i].H, LayerCount);
    SetLength(Population.P[i].R, LayerCount);
    SetLength(Population.P[i].S, LayerCount);
    for j := 0 to High(Population.P[i].H) do
    begin
      Population.P[i].H[j].Vmin := StrToFloat(RangeCells[j  - 1, 0].Min);
      Population.P[i].H[j].Vmax := StrToFloat(RangeCells[j  - 1, 0].Max);
      Population.P[i].R[j].Vmin := StrToFloat(RangeCells[j - 1, 1].Min);
      Population.P[i].R[j].Vmax := StrToFloat(RangeCells[j - 1, 1].Max);
      Population.P[i].S[j].Vmin := StrToFloat(RangeCells[j - 1, 2].Min);
      Population.P[i].S[j].Vmax := StrToFloat(RangeCells[j - 1, 2].Max);
    end;
  end;
end;

procedure TGenTherad.StartGenetic();
var
  i, Size: integer;
begin
  SetInitialValues;
  GenRandomPopulation;
  Size := High(Population.P);
  for i := 0 to IterCount do
  begin
    Fitness;
    Selected.P[i] := Population.P[0];
//    frmFit.Memo1.Lines.Add(IntToStr(i) + '  ' + FloatToStrF
//        (Population.P[0].Disp, ffFixed, 7, 2) + '  ' + FloatToStrF
//        (Population.P[0].H[0].dv, ffFixed, 3, 2));
    if StopCriteria(i) or CalcStopped then
      Break;
    // ---------------------------------
    SetLength(NewPopulation.P, Count);
    GetElite(i);
    Movement;
    ParentSelection;
    OffspringsMutation(EliteCount + MovedCount + ParentCount + 1, Size - 1, 4,
      2, 2);
    Population := NewPopulation;
    Population.N := i + 1;
  end;
  StopCriteria(i);
  FittingOn := False;
end;

procedure TGenTherad.OffspringsMutation(i1, i2: integer; dh, dr, ds: single);
var
  i, j, j1: integer;
  SP, value: single;
begin
  Randomize;
  // ---  случайное заполнение период ---------------
{$REGION}
  for i := i1 to i2 do
    with NewPopulation.P[i] do
    begin
      SP := 0;
      // a:=Random(LayerCount);
      // b:=Random(LayerCount);
      j1 := Random(EliteCount);
      // j1:=0;
      SetLength(H, LayerCount);
      for j := 0 to High(H) do
      begin
        H[j] := Population.P[j1].H[j];
        H[j].V := Population.P[j1].H[j].Vmin + Random *
          (Population.P[1].H[j].Vmax - Population.P[1].H[j].Vmin);
      end;

      // Value:=Random*dh;
      // H[0].dv:=dh;
      // H[a].V:=Population.P[j1].H[a].V+value;
      // H[b].V:=Population.P[j1].H[b].V-value;
      SP := 0;
      for j := 0 to High(H) do
      begin
        Verify(H[j]);
        SP := SP + H[j].V;
      end;
      H[ High(H) - 1].V := H[ High(H) - 1].V + (Period - SP);
    end;
{$ENDREGION}
  // ---  случайное заполнение сигма ---------------
{$REGION}
  for i := i1 to i2 do
  begin
    SetLength(NewPopulation.P[i].S, LayerCount);
    j1 := Random(EliteCount);
    // j1:=0;
    for j := 0 to High(NewPopulation.P[i].S) do
      NewPopulation.P[i].S[j] := Population.P[j1].S[j];
    for j := 0 to High(NewPopulation.P[i].S) do
    begin
      value := sign(0.5 - Random) * Random * ds;
      NewPopulation.P[i].S[j].V := NewPopulation.P[i].S[j].V + value;
      Verify(NewPopulation.P[i].S[j]);
    end;
  end;
{$ENDREGION}
  // ---  случайное заполнение ro ---------------
{$REGION}
  for i := i1 to i2 do
  begin
    SetLength(NewPopulation.P[i].R, LayerCount);
    j1 := Random(EliteCount);
    // j1:=0;
    for j := 0 to High(NewPopulation.P[i].R) do
      NewPopulation.P[i].R[j] := Population.P[j1].R[j];
    for j := 0 to High(NewPopulation.P[i].R) do
    begin
      value := sign(0.5 - Random) * Random * dr;
      NewPopulation.P[i].R[j].V := NewPopulation.P[i].R[j].V + value;
      Verify(NewPopulation.P[i].R[j]);
    end;
  end;
{$ENDREGION}
end;

procedure TGenTherad.Fitness;
var
  R, t, dr, x, dx, A, sum: double;
  j, i, k: integer;
  Range: TFitRange;
  HC: TFitParam;
begin
  Population.FS := 0;
  for k := 0 to High(Population.P) do
  begin
    j := 1;
    for i := 0 to High(Population.P[k].H) do
    begin
//      MainForm.SGrid.Cells[2, i + FirstLayerinPeriod] := FloatToStrF
//        (Population.P[k].H[i].V, ffFixed, 5, 3);
//      MainForm.SGrid.Cells[3, i + FirstLayerinPeriod] := FloatToStrF
//        (Population.P[k].R[i].V, ffFixed, 5, 3);
//      MainForm.SGrid.Cells[4, i + FirstLayerinPeriod] := FloatToStrF
//        (Population.P[k].S[i].V, ffFixed, 5, 3);
    end;
   // frmFit.lblJ.Caption := IntToStr(k);

//    MainForm.CalcData;
//    CalcTetFit;
//    Application.ProcessMessages;

    if CalcStopped then
      Exit;
    Population.P[k].Disp := 0;
    sum := 0;
    for Range in FitRanges do
    begin
      j := 1;
      for i := Range.i1 to Range.i2 do
      begin
        dx := Range.i2 - Range.i1;
        if dx = 0 then
          Continue;

        x := i - Range.i1 - dx / 2;
        // A:=2+cos(x/dx);
        A := sqrt( High(FitRanges) + 2 - j) * (2 + 4 * cos(x / dx));
        // A:=1;

        t := sqr(ln(frmMain.FActiveData.Curve.XValues[i]) - ln(ExpData[i + 1].R));

        // if T>0.1 then
        sum := sum + t * A;
        inc(j);
      end;
    end;
    Population.P[k].Disp := sum;
    if k < ParentCount then
      Population.FS := Population.FS + Population.P[k].Disp / ParentCount;
  end;
  SortArray(Population.P);
end;

function TGenTherad.StopCriteria(const i: integer): boolean;
var
  HC: TFitParam;
  Pers: TPerson;
  Min: single;
  j: integer;
begin
  for j := 0 to High(Population.P[0].H) do
  begin
//    MainForm.SGrid.Cells[2, j + FirstLayerinPeriod] := FloatToStrF
//      (Population.P[0].H[j].V, ffFixed, 5, 3);
//    MainForm.SGrid.Cells[3, j + FirstLayerinPeriod] := FloatToStrF
//      (Population.P[0].R[j].V, ffFixed, 5, 3);
//    MainForm.SGrid.Cells[4, j + FirstLayerinPeriod] := FloatToStrF
//      (Population.P[0].S[j].V, ffFixed, 5, 3);
  end;
//  frmFit.Refresh;
//  MainForm.CalcData;
//  tet1 := ExpData[0].t / 2;
//  tet2 := ExpData[ High(ExpData)].t / 2;
//  CalcTet;
  Result := Population.P[0].Disp < 0.1;
end;

procedure TGenTherad.GetElite(Max: integer);
var
  i, j: integer;
begin
  for i := 0 to EliteCount div 2 do
    NewPopulation.P[i] := Population.P[i];

  for i := (EliteCount div 2) + 1 to EliteCount do
    NewPopulation.P[i] := Selected.P[Max];
  j := 0;
  for i := (EliteCount div 2) + 1 to EliteCount do
  begin
    if j <= Max then
      NewPopulation.P[i] := Selected.P[j];
    inc(j);
  end;
end;

procedure TGenTherad.Movement;
var
  i: integer;
  j: integer;
  c: integer;
  SP: single;
begin
  for i := EliteCount + 1 to MovedCount do
  begin
    // ---------------- H --------------------------
    SP := 0;
    NewPopulation.P[i].H := Population.P[i].H;
    for j := 0 to High(Population.P[i].H) do
    begin
      NewPopulation.P[i].H[j].V := Population.P[i].H[j].V + 0.25 * sign
        (Population.P[i].H[j].V + Population.P[0].H[j].V);
      Verify(NewPopulation.P[i].H[j]);
      SP := SP + Population.P[i].H[j].V
    end;
    NewPopulation.P[i].H[3].V := NewPopulation.P[i].H[3].V + (Period - SP);
    // --------------- sigma -------------------------
    NewPopulation.P[i].S := Population.P[i].S;
    for j := 0 to High(Population.P[i].S) do
    begin
      NewPopulation.P[i].S[j].V := Population.P[i].S[j].V + 0.25 * sign
        (Population.P[i].S[j].V + Population.P[0].S[j].V);
      Verify(NewPopulation.P[i].S[j]);
    end;
    // --------------- ro -------------------------
    NewPopulation.P[i].R := Population.P[i].R;
    for j := 0 to High(Population.P[i].R) do
    begin
      NewPopulation.P[i].R[j].V := Population.P[i].R[j].V + 0.25 * sign
        (Population.P[i].R[j].V + Population.P[0].R[j].V);
      Verify(NewPopulation.P[i].R[j]);
    end;
  end;
end;

function BLX_Crossover(c1, c2: single): single;
const
  alpha = 0.5;
var
  Min, Max, H: single;
begin
  if c1 >= c2 then
  begin
    Max := c1;
    Min := c2;
  end
  else
  begin
    Max := c2;
    Min := c1;
  end;
  H := Random * (Max - Min) * (1 + alpha) / 2;
  Result := Min + H - alpha / 2;
end;

procedure TGenTherad.ParentSelection;
var
  i, j, j1, j2, k, Size: integer;
  A, b: integer;
  SP, HC: single;
begin
  Randomize;
  // -----------------   H   -----------------
{$REGION}
  for i := EliteCount + MovedCount + 1 to EliteCount + MovedCount + ParentCount
    do
  begin
    j1 := Random(20); // опредление родителей
    j2 := Random(20);
    // --- объединение признаков ------
    SP := 0;
    NewPopulation.P[i].H := Population.P[i].H;
    with NewPopulation.P[i] do
    begin
      for j := 0 to High(Population.P[i].H) do
        // H[j].V:=(Population.P[j1].H[j].V+Population.P[j2].H[j].V)*0.5;
        H[j].V := BLX_Crossover(Population.P[j1].H[j].V,
          Population.P[j2].H[j].V);

      for j := 0 to High(Population.P[i].H) do
        SP := SP + Population.P[i].H[j].V;
      HC := Period / SP;
      for j := 0 to High(Population.P[i].H) do
        Population.P[i].H[j].V := Population.P[i].H[j].V * HC;
    end;
  end;
{$ENDREGION}
  // ----------------- sigma -----------------
{$REGION}
  for i := EliteCount + MovedCount + 1 to EliteCount + MovedCount + ParentCount
    do
  begin
    j1 := Random(20); // опредление родителей
    j2 := Random(20);
    // --- объединение признаков ------
    NewPopulation.P[i].S := Population.P[i].S;
    SP := 0;
    with NewPopulation.P[i] do
      for j := 0 to High(S) do
        S[j].V := BLX_Crossover(Population.P[j1].S[j].V,
          Population.P[j2].S[j].V);

  end;
{$ENDREGION}
  // ----------------- ro-----------------
{$REGION}
  for i := EliteCount + MovedCount + 1 to EliteCount + MovedCount + ParentCount
    do
  begin
    j1 := Random(20); // опредление родителей
    j2 := Random(20);
    // --- объединение признаков ------
    NewPopulation.P[i].R := Population.P[i].R;
    SP := 0;
    with NewPopulation.P[i] do
      for j := 0 to High(S) do
        R[j].V := BLX_Crossover(Population.P[j1].R[j].V,
          Population.P[j2].R[j].V);
  end;
{$ENDREGION}
end;

procedure TGenTherad.GenRandomPopulation;
var
  i, j, A, b: integer;
  SP, value, deltaP, na, nb: single;
begin
  // ------- Расчет периода -----------------
{$REGION}
  Period := 0;
//  for i := FirstLayerinPeriod to MainForm.SGrid.RowCount - 1 do
//    Period := Period + StrToFloat(MainForm.SGrid.Cells[2, i]);
{$ENDREGION}
  // ---  случайное заполение ---------------
{$REGION}
  Randomize;
  for i := 0 to High(Population.P) do
    with Population.P[i] do
    begin
      // ----------- случайное заполение период -------------
      SP := 0;
      for j := 0 to High(H) - 1 do
      begin
        H[j].V := Random * (H[j].Vmax - H[j].Vmin) + H[j].Vmin;
        // H[j].V:=StrToFloat(MainForm.SGrid.Cells[2,j+1]);
        SP := SP + H[j].V;
      end;
      H[LayerCount - 1].V := Period - SP;
      // ----     случайное заполение сигма -----------------
      for j := 0 to High(S) do
        S[j].V := Random * (S[j].Vmax - S[j].Vmin) + S[j].Vmin;
      // S[j].V:=StrToFloat(MainForm.SGrid.Cells[4,j+1]);
      // ----     случайное заполение ro -----------------
      for j := 0 to High(R) do
        R[j].V := Random * (R[j].Vmax - S[j].Vmin) + R[j].Vmin;
    end;
{$ENDREGION}
end;

initialization

FittingOn := False;

end.
