unit cmd_unit_fitting;

interface

  procedure cmdFitting(const Verbose : Boolean) ;

implementation
uses
  Classes, Forms, Windows,
  System.SysUtils,
  cmd_unit_calc,
  cmd_unit_types,
  cmd_unit_fit_types,
  cmd_unit_materials,
  cmd_unit_helpers;

var
  FittingSet: array of TFittedStructure;
  ChiSquares: array of Single;
  BestFit   : TFittedStructure;


  ChiSquareMin : Single;
  CalcParams : TCalcParams;
  ExpValues  : TDataArray;
  Model      : TLayeredModel;

  c1: Single = 3;
  c2: Single = 3;

  InvCount : Integer;

const
  VRate = 0.5;

procedure Seed;
var
  i, j, k: Integer;
  H: Single;
  Layer, ThickLayer: ^TFitLayer;
  Stack: ^TStack;
begin
  for I := 0 to High(FittingSet) do
  begin
    FittingSet[i] := LoadFittedStructure;
    for j:= 0 to High(FittingSet[i].Stacks) do
    begin
      Stack := @FittingSet[i].Stacks[j];
      H := 0;

      for k :=0 to High(Stack^.Invariants) do
      begin
        Stack^.Invariants[k].S.InitV(VRate);
        Stack^.Invariants[k].R.InitV(VRate);

        Stack^.Invariants[k].s.Randomize;
        Stack^.Invariants[k].r.Randomize;
      end;

      InvCount := 0;
      for k := 0 to High(Stack^.Layers) do
      begin
        Layer := @FittingSet[i].Stacks[j].Layers[k];
        if k = 0 then
          ThickLayer := Layer;

        Layer^.H.InitV(0.1);
        Layer^.H.Randomize;

        if High(Stack^.Invariants) >= 0 then
        begin
          Layer^.S := Stack^.Invariants[InvCount].S;
          Layer^.r := Stack^.Invariants[InvCount].r;
          Inc(InvCount);
          if InvCount > High(Stack^.Invariants) then InvCount := 0;
        end
        else begin

          Layer^.S.InitV(VRate);
          Layer^.R.InitV(VRate);

          Layer^.s.Randomize;
          Layer^.r.Randomize;
        end;

        if Layer^.H.Val > ThickLayer^.H.val then
        begin
          ThickLayer := Layer;
        end;

        H := H + Layer^.H.Val;
      end;
      if Stack^.Hmax > 0 then
      begin
        if Stack^.Hmin = Stack^.Hmax then
        begin
          H := Stack^.Hmax - H;
          ThickLayer^.H.val := ThickLayer^.H.val + H;
        end;
      end;
      Stack := nil;
      Layer := nil;
      ThickLayer := nil;
    end;
  end;
end;

function FindMin:Integer;
var
  Min: Single;
  i: Integer;
begin
  Min    := 1e99;
  Result := 0;

  for I := 0 to High(ChiSquares) do
    if ChiSquares[i] < min then
    begin
      Min := ChiSquares[i];
      Result := i;
    end;
end;

procedure UpdateSpeed(w: Single);
var
  i, j, k, InvCount : Integer;
  H: Single;
  Layer, ThickLayer: ^TFitLayer;
  Stack: ^TStack;
begin
  for I := 0 to High(FittingSet) do
  begin
    for j:= 0 to High(FittingSet[i].Stacks) do
    begin
      Stack := @FittingSet[i].Stacks[j];
      H := 0;

      for k :=0 to High(Stack^.Invariants) do
      begin
        Stack^.Invariants[k].S.UpdateV(BestFit.Stacks[j].Layers[k].s.val, w, c1, c2);
        Stack^.Invariants[k].R.UpdateV(BestFit.Stacks[j].Layers[k].s.val, w, c1, c2);
      end;

      InvCount := 0;
      for k := 0 to High(Stack^.Layers) do
      begin
        Layer := @FittingSet[i].Stacks[j].Layers[k];
        if k = 0 then
          ThickLayer := Layer;

        Layer^.H.UpdateV(BestFit.Stacks[j].Layers[k].H.val, w, c1, c2);

        if High(Stack^.Invariants) >= 0 then
        begin
          Layer^.S := Stack^.Invariants[InvCount].S;
          Layer^.r := Stack^.Invariants[InvCount].r;
          Inc(InvCount);
          if InvCount > High(Stack^.Invariants) then InvCount := 0;
        end
        else begin
          Layer^.s.UpdateV(BestFit.Stacks[j].Layers[k].s.val, w, c1, c2);
          Layer^.r.UpdateV(BestFit.Stacks[j].Layers[k].s.val, w, c1, c2);
        end;

        if Layer^.H.Val > ThickLayer^.H.val then
        begin
          ThickLayer := Layer;
        end;

        H := H + Layer^.H.Val;
      end;
      if Stack^.Hmax > 0 then
      begin
        if Stack^.Hmin = Stack^.Hmax then
        begin
          H := Stack^.Hmax - H;
          ThickLayer^.H.val := ThickLayer^.H.val + H;
        end;
      end;
      Stack := nil;
      Layer := nil;
      ThickLayer := nil;
    end;
  end;
end;

procedure FinalCalc;
var
  Calc: TCalc;
begin
  Calc := TCalc.Create;

  try
    Calc.CalcData   := CalcParams;
    Calc.ExpValues  := ExpValues;
    UpdateFit2Layers(BestFit, Model);
    Calc.Model := Model;
    Calc.Run;
    SaveResults(Calc.Results);
    Application.ProcessMessages;
    finally
      FreeAndNil(Calc);
    end;
end;

procedure CalculateCurrentSet;
var
  Calc: TCalc;
  i: integer;
begin
  for I := 0 to High(FittingSet) do
  begin
    Calc := TCalc.Create;
    try
      Calc.CalcData   := CalcParams;
      Calc.ExpValues  := ExpValues;

      if i > 0 then
        UpdateFit2Layers(FittingSet[i], Model);

      Calc.Model := Model;
      Calc.Run;
      ChiSquares[i] := Calc.ChiSquare;
      Application.ProcessMessages;
    finally
      FreeAndNil(Calc);
    end;
  end;
end;


procedure cmdFitting(const Verbose : Boolean) ;
const
  w_min = 0.1;
  w_max = 1;
var
  w: Single;
  i, j, Min: Integer;
begin
  Writeln('Population: ', Population, ' in ', Iterations);

  Randomize;
  SetLength(ChiSquares, Population);
  SetLength(FittingSet, Population);

  CalcParams := ReadINI;
  ExpValues  := LoadData;

  Seed;
  Model := ConvertFit2Layers(FittingSet[0]);  // initial model

  CalculateCurrentSet;

  Min := FindMin;
  BestFit := FittingSet[Min];
  ChiSquareMin := ChiSquares[Min];
  writeln('Initial seeding: ', ChiSquareMin:5:4);

  FinalCalc;

  w := w_max;

  for j := 1 to Iterations do
  begin
    Writeln('Iteration ', j);

    UpdateSpeed(w);

    CalculateCurrentSet;

    Min := FindMin;
    if ChiSquares[Min] < ChiSquareMin then
    begin
      ChiSquareMin := ChiSquares[Min];
      BestFit := FittingSet[Min];
      writeln('ChiSQR ', ChiSquareMin:5:4);
      FinalCalc;
      //w := w_max-(w_max - w_min) * i / Iterations;
    end;
  end;

//  FinalCalc;

end;


end.
