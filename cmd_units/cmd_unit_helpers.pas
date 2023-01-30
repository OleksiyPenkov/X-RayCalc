unit cmd_unit_helpers;

interface
uses
  cmd_unit_types,
  cmd_unit_fit_types,
  cmd_unit_materials;

  procedure ShowHelp;
  function ReadINI:TCalcParams;
  function ReadLayeredModel:TLayeredModel;

  function LoadFittedStructure: TFittedStructure; // periodic structure
  function ConvertFit2Layers(const FitStructure: TFittedStructure):TLayeredModel;
  procedure UpdateFit2Layers(const FitStructure: TFittedStructure; var Model:TLayeredModel);

  procedure UpdateLayeredModel(var Model:TLayeredModel);
  function LoadData: TDataArray;

  procedure SaveResults(Results: TDataArray);
  procedure SaveChiSquare(Data: array of single);

implementation

uses
  Forms,
  System.IniFiles,
  Classes,
  System.SysUtils;

const
  TabSeparator = #9;

function LoadFittedStructure: TFittedStructure;
var
  i, j, ExpCount: Integer;
  SL, Line: TStringList;
  Name: string;
  InStack: Boolean;
  CurrentStack, CurrentLayer: Integer;
  ExpandStack: Boolean;
  TempLayers  : array of string;

  function ExtractValues: TFitLayer;
  begin
    Result.Name  := Trim(Line[0]);
    Result.H.min := StrToFloat(Line[1]);
    Result.H.max := StrToFloat(Line[2]);
    Result.s.min := StrToFloat(Line[3]);
    Result.s.max := StrToFloat(Line[4]);
    Result.r.min := StrToFloat(Line[5]);
    Result.r.max := StrToFloat(Line[6]);
  end;


  procedure AddLayer;
  begin
    Inc(CurrentLayer);
    SetLength(Result.Stacks[CurrentStack].Layers, CurrentLayer + 1);
    Result.Stacks[CurrentStack].Layers[CurrentLayer] := ExtractValues;
    Inc(Result.Count, Result.Stacks[CurrentStack].N);
  end;

  procedure AddInvariant;
  var
    Size: Integer;
  begin
    Size := High(Result.Stacks[CurrentStack].Invariants) + 1;
    SetLength(Result.Stacks[CurrentStack].Invariants, Size  + 1);
    Result.Stacks[CurrentStack].Invariants[Size] := ExtractValues;
  end;

  procedure FillExpandedStack;
  var
    i, j, Count: Integer;
  begin
    for I := 0 to High(TempLayers) do
    begin
      Line.DelimitedText := TempLayers[i];
      AddInvariant;
    end;

    Count := Result.Stacks[CurrentStack].N;
    Result.Stacks[CurrentStack].N := 1;
    for j := 0 to Count do
      for I := 0 to High(TempLayers) do
      begin
        Line.DelimitedText := TempLayers[i];
        AddLayer;
      end;
    Result.Stacks[CurrentStack].N := 1;
  end;

  procedure AddStack;
  begin
    Inc(CurrentStack);
    SetLength(Result.Stacks, CurrentStack + 1);
    Result.Stacks[CurrentStack].N    := StrToInt(Line[1]);
    Result.Stacks[CurrentStack].Hmin := StrToFloat(Line[2]);
    Result.Stacks[CurrentStack].Hmax := StrToFloat(Line[3]);
    ExpandStack := Result.Stacks[CurrentStack].Hmin <> Result.Stacks[CurrentStack].Hmax;
    if ExpandStack then
    begin
      SetLength(TempLayers, 0);
      ExpCount := 0;
    end;
  end;

begin
  if not FileExists(InputStructureFileName) then
  begin
    Writeln('File ', InputStructureFileName, ' not found');
    Exit;
  end;

  Result.Count := 0;

  SL   := TStringList.Create;
  Line := TStringList.Create;
  Line.StrictDelimiter := True;
  Line.Delimiter := ';';

  InStack := False; CurrentStack := -1; CurrentLayer := -1;

  try
    SL.LoadFromFile(InputStructureFileName);

    Result.Name := Trim(Copy(SL[0], 2, Length(SL[0]) - 1));

    for i := 1  to  SL.Count - 1 do
    begin
      Line.DelimitedText := SL[i];
      if Line[0] = 'stack' then
      begin
        InStack := True;
        AddStack;
        CurrentLayer := -1;
        Continue;
      end;
      if Trim(Line[0]) = 'end' then
      begin
        InStack := False;
        if ExpandStack then FillExpandedStack;
        Continue;
      end;
      if Trim(Line[0]) = 'substrate' then
      begin
        Line.DelimitedText := SL[i + 1];
        Result.Substrate := ExtractValues;
        Inc(Result.Count);
        Break;
      end;
      if ExpandStack then
      begin
        SetLength(TempLayers, ExpCount + 1);
        TempLayers[ExpCount] := SL[i];
        Inc(ExpCount);
      end
      else
        AddLayer;
    end;

  finally
    FreeAndNil(SL);
    FreeAndNil(Line);
  end;
end;

function ConvertFit2Layers(const FitStructure: TFittedStructure):TLayeredModel;
var
  i, j, k, Count: Integer;
begin
  Result := TLayeredModel.Create;
  Result.Size := FitStructure.Count - 1;
  UpdateFit2Layers(FitStructure, Result);
end;

procedure UpdateFit2Layers(const FitStructure: TFittedStructure; var Model:TLayeredModel);
var
  i, j, k, Count: Integer;
begin
  Count := 1;
  for I := 0 to High(FitStructure.Stacks) do
    for k := 1 to FitStructure.Stacks[i].N do
      for j := 0 to High(FitStructure.Stacks[i].Layers)  do
      begin
        with FitStructure.Stacks[i].Layers[j] do
          Model.InitLayer(Count, Name, H.val, s.val, r.val);
        Inc(Count);
      end;
      with FitStructure.Substrate do
         Model.InitSubstrate(Name, H.val, s.val, r.val);
end;

procedure UpdateLayeredModel(var Model:TLayeredModel);
var
  i: Integer;
  SL, Line: TStringList;
  H, rho, sigma: Single;
  Name: string;

  procedure Convert;
  begin
    Name  := Line[0];
    H     := StrToFloat(Line[1]);
    sigma := StrToFloat(Line[2]);
    rho   := StrToFloat(Line[3]);
  end;

begin
  if not FileExists(InputStructureFileName) then
  begin
    Writeln('File ', InputStructureFileName, ' not found');
    Exit;
  end;

  SL   := TStringList.Create;
  Line := TStringList.Create;
  Line.StrictDelimiter := True;
  Line.Delimiter := ';';

  try
    SL.LoadFromFile(InputStructureFileName);

    Model.Size := SL.Count - 1;

    for I := 0 to SL.Count - 2 do
    begin
      Line.DelimitedText := SL[i];
      Convert;
      Model.InitLayer(I + 1, Name, H, sigma, rho);
    end;

    Line.DelimitedText := SL[SL.Count - 1];
    Convert;
    Model.InitSubstrate(Name, H, sigma, rho);
  finally
    FreeAndNil(SL);
    FreeAndNil(Line);
  end;
end;

procedure SaveChiSquare(Data: array of single);
var
  i: Integer;
  MyStringList: TStringList;
begin
  MyStringList := TStringList.Create;
  try
    for I := 0 to High(Data) do
      MyStringList.Add(FloatToStr(Data[i]));

    MyStringList.SaveToFile('ChiSquare.dat');
  finally
   FreeAndNil(MyStringList);
  end;
end;

procedure SaveResults(Results: TDataArray);
var
  j: Integer;
  MyStringList: TStringList;
  S: string;
begin
  MyStringList := TStringList.Create;
  try
    MyStringList.Add('x2Theta' + TabSeparator + 'Reflectivity');

    for j := 0 to High(Results) do
    begin
      S := FloatToStrF(Results[j].t, ffFixed, 5, 3) + TabSeparator;
      S := S + FloatToStrF(Results[j].R, ffExponent, 5, 4);
      MyStringList.Add(s);
    end;
    MyStringList.SaveToFile(OutputFileName);
  finally
    FreeAndNil(MyStringList);
  end;
end;

function LoadData: TDataArray;
var
  SL: TStringList;
  i, p: Integer;
  S, S1: string;
begin
  Sl := TStringList.Create;
  try
     SL.LoadFromFile(InputDataFile);
     SL.Delete(0);

     SetLength(Result, SL.Count);
     for I := 0 to High(Result) do
     begin
       S := SL[i];
       p := Pos(#9, S);
       S1 := Copy(S, 1, p - 1);
       Result[i].t := StrToFloat(S1);
       Delete(S, 1, p);
       Result[i].r := StrToFloat(S);
     end;
  finally
    FreeAndNil(SL);
  end;
end;


function ReadLayeredModel:TLayeredModel;
var
  i: Integer;
  SL, Line: TStringList;
  H, rho, sigma: Single;
  Name: string;

  procedure Convert;
  begin
    Name  := Line[0];
    H     := StrToFloat(Line[1]);
    sigma := StrToFloat(Line[2]);
    rho   := StrToFloat(Line[3]);
  end;

begin
  if not FileExists(InputStructureFileName) then
  begin
    Writeln('File ', InputStructureFileName, ' not found');
    Exit;
  end;

  Result := TLayeredModel.Create;

  SL   := TStringList.Create;
  Line := TStringList.Create;
  Line.StrictDelimiter := True;
  Line.Delimiter := ';';

  try
    SL.LoadFromFile(InputStructureFileName);

    Result.Size := SL.Count - 1;

    for I := 0 to SL.Count - 2 do
    begin
      Line.DelimitedText := SL[i];
      Convert;
      Result.InitLayer(I + 1, Name, H, sigma, rho);
    end;

    Line.DelimitedText := SL[SL.Count - 1];
    Convert;
    Result.InitSubstrate(Name, H, sigma, rho);
  finally
    FreeAndNil(SL);
    FreeAndNil(Line);
  end;
end;

procedure ShowHelp;
begin
  Writeln('<xrccmd.exe> [parameter value ...]');
  Writeln('Parameters:');
  Writeln('-i <file.name> : experimental data file name.   Default: reflectivity.dat');
  Writeln('-s <file.name> : input structure file name.     Default: input_structure.txt');
  Writeln('-o <file.name> : output reflectivity file name. Default: none');
  Writeln('-f <folder/file.name> : input structures folder');
  Writeln('-a <file.name> : auto-fitting based on the input structure');
  Writeln('-v : verbose mode');
  Writeln('-h : this help');
  Readln;
end;

function ReadINI:TCalcParams;
var
  FileName: string;
  Ini: TIniFile;
  S: string;
begin
  FileName := ChangeFileExt(Application.ExeName, '.ini');
  Ini := TIniFile.Create(FileName);

  try
    // [Options]
    S := Ini.ReadString( 'Options', 'Mode', 'angle' );
    if S = 'angle' then
      Result.Mode := cmTheta
    else
      Result.Mode := cmLambda;

    S := Ini.ReadString( 'Options', 'Polarization', 's');
    if S = 's' then
      Result.P := cmS
    else
      Result.P := cmSP;
    Result.N := Ini.ReadInteger('Options', 'N', 2000);

    // [Angle]
    Result.StartT := Ini.ReadFloat('Angle', 'Start', 0.1);
    Result.EndT   := Ini.ReadFloat('Angle', 'End', 16);
    Result.Lambda := Ini.ReadFloat('Angle', 'Lambda', 1.54043);
    Result.DT     := Ini.ReadFloat('Angle', 'DTheta', 0);
    Result.K      := Ini.ReadInteger('Angle', 'Theta', 2);

    // [Wavelength]
    Result.StartL :=  Ini.ReadFloat('Wavelength', 'Start', 1);
    Result.EndL   :=  Ini.ReadFloat('Wavelength', 'End', 10);
    Result.Theta  :=  Ini.ReadFloat('Wavelength', 'Theta', 85);
    Result.DW     := 0;
    Result.RF := rfError;
  finally
    FreeAndNil(Ini);
  end;
end;

end.
