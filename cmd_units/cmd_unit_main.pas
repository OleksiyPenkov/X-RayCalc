unit cmd_unit_main;

interface
  procedure cmdCalc(const Verbose : Boolean) ;
  procedure cmdFolderCalc(const Verbose : Boolean);

implementation
uses
  Classes, Forms,
  System.SysUtils,
  cmd_unit_calc,
  cmd_unit_types,
  cmd_unit_materials,
  cmd_unit_helpers;

var
  CalcParams : TCalcParams;
  ExpValues  : TDataArray;
  Model      : TLayeredModel;

procedure CalcInline(out ChiSquare: Single);
var
  Calc: TCalc;
begin
  try
    Calc := TCalc.Create;

    try
      Calc.CalcData := CalcParams;
      Calc.Model    := Model;

      Calc.ExpValues  := ExpValues;

      Calc.Run;
      ChiSquare := Calc.ChiSquare;
    except
      on E: exception do
      begin
//        ShowMessage(E.Message);
      end;
    end;
  finally
    FreeAndNil(Calc);
  end;
end;


procedure cmdCalc;
var
  Calc: TCalc;
  StartTime : TDateTime;
  Hour, Min, Sec, MSec: Word;
begin
  StartTime := Now;

  try
    Calc := TCalc.Create;

    try
      Calc.CalcData := ReadINI;
      Calc.Model := ReadLayeredModel;

      if Calc.Model <> nil then
      begin
        if InputDataFile <> '' then
           Calc.ExpValues  := LoadData;

        Calc.Run;
        SaveResults(Calc.Results);
        if InputDataFile <> '' then
        begin
          Calc.CalcChiSquare;
          SaveChiSquare([Calc.ChiSquare]);
        end;
      end;
    except
      on E: exception do
      begin
//        ShowMessage(E.Message);
      end;
    end;
  finally
    FreeAndNil(Calc.Model);
    FreeAndNil(Calc);
  end;

  if Verbose then
  begin
    DecodeTime(Now - StartTime, Hour, Min, Sec, MSec);
    Writeln(Format('Completed in %d.%3.3d s.', [60 * Min + Sec, MSec]));
  end;

end;

procedure cmdFolderCalc(const Verbose : Boolean);
var
  Calc: TCalc;
  StartTime : TDateTime;
  Hour, Min, Sec, MSec: Word;
  FN: string;
  i: Integer;

  ChiSquares: array of Single;

begin
  StartTime := Now;
  FN := '.\Input\' + InputStructureFileName;
  SetLength(ChiSquares, NumberOfFiles);

  CalcParams := ReadINI;
  ExpValues  := LoadData;

  for I := 1 to NumberOfFiles do
  begin
    InputStructureFileName := StringReplace(FN, '#', IntToStr(i),[]);
    if i =  1 then
      Model := ReadLayeredModel
    else
      UpdateLayeredModel(Model);
    CalcInline(ChiSquares[i-1]);
    Application.ProcessMessages;
  end;

  FreeAndNil(Model);

  SaveChiSquare(ChiSquares);

  if Verbose then
  begin
    DecodeTime(Now - StartTime, Hour, Min, Sec, MSec);
    Writeln('Processed ', I - 1, ' files.');
    Writeln(Format('Completed in %d.%3.3d s.', [60 * Min + Sec, MSec]));
  end;

end;


end.
