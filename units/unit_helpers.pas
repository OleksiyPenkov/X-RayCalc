(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit unit_helpers;

interface

uses
  Series,
  unit_types,
  RibbonActnMenus,
  Vcl.ActnMan,
  StdCtrls,
  Windows,
  Messages,
  Dialogs;

function ClearDir(const DirectoryName: string; Full: boolean = False): boolean;

procedure SeriesToClipboard(Series: TLineSeries);
procedure SeriesToFile(Series: TLineSeries; const FileName: string);

procedure SeriesFromClipboard(Series: TLineSeries);
procedure SeriesFromFile(Series: TLineSeries; const FileName: string; out Descr: string); forward;

function SeriesToData( Series: TLineSeries): TDataArray;
procedure AutoMerge( var Series: TLineSeries);
procedure ManualMerge( X, K: single; var Series: TLineSeries);
procedure Normalize(K: single;  var Series: TLineSeries);

procedure FillElementsList(const Path: string; var List: TListBox);

function RecentItemsToString(Items: TActionClients): string;
procedure OpenHelpFile(const FileName: string);

function SimpleShellExecute(
  hWnd: HWND;
  const FileName: string;
  const Parameters: string = '';
  const Operation: string = 'open';
  ShowCmd: Integer = SW_SHOWNORMAL;
  const Directory: string = ''
  ): Cardinal;

implementation

uses
  SysUtils,
  ClipBrd,
  Classes,
  ShellApi,
  System.Character,
  Vcl.Forms,
  VCLTee.TeEngine,
  frm_main,
  unit_settings;

const
  TabSeparator = #9;



procedure OpenHelpFile(const FileName: string);
var
  FullPath: string;
begin
  FullPath := Settings.AppPath + 'docs\' + FileName;
  if FileExists(FullPath) then
     SimpleShellExecute(frmMain.Handle, FullPath)
  else
    MessageDlg('Can''t find help files! Check "docs/" folder!', mtError, [mbOk], 0);
end;



function SimpleQuoteString(const Value: string): string;
const
  QUOTECHAR = '"';
begin
  if (Value = '') or (Value[1] = QUOTECHAR) then
    Result := Value
  else
    Result := QUOTECHAR + Value + QUOTECHAR;
end;


function SimpleShellExecute(
  hWnd: HWND;
  const FileName: string;
  const Parameters: string = '';
  const Operation: string = 'open';
  ShowCmd: Integer = SW_SHOWNORMAL;
  const Directory: string = ''
  ): Cardinal;
var
  AFileName: string;
  AParameters: string;
  ADirectory: string;
begin
  AFileName := SimpleQuoteString(FileName);
  AParameters := SimpleQuoteString(Parameters);
  ADirectory := Directory;
  Result := ShellAPI.ShellExecute(
    hWnd,
    PChar(Operation),
    PChar(AFileName),
    PChar(AParameters),
    PChar(Directory),
    ShowCmd
  );
end;

procedure FillElementsList(const Path: string; var List: TListBox);
const
  Mask = '*.bin';
var
  F: TSearchRec;

  function ShortName(s: string):string;
  begin
    Result := copy(s, 1, Length(s) - 4 );
  end;

begin
  List.Items.Clear;

  if FindFirst(Path + Mask, faAnyFile, F) = 0 then
  repeat
    List.Items.Add(ShortName(F.Name));
  until FindNext(F) <> 0;
end;

function Cmpr(V1, V2: single; Threshold: single = 0.00001): boolean;
begin
  Result := abs( V1 - V2) < Threshold;
end;

function GetDevider(D: single): single;
const
  DV : array [0..1] of single = (9.3, 73);
var
  i : integer;
begin
  Result := 0;
  for I := 0 to 1 do
    if (D > DV[i] * 0.5) and (D < DV[i] * 1.5) then
    begin
      Result := DV[i];
      Break;
    end;
end;

procedure Normalize(K: single;  var Series: TLineSeries);
var
  i: integer;
begin
  for I := 0 to Series.Count - 1 do
      Series.YValue[i] := Series.YValue[i] / K;
end;

procedure AutoNormalisation( var Series: TLineSeries);
var
  i: integer;
  Max: single;
begin
  // нормировка
  Series.XValues.Sort;
  if Cmpr(Series.XValue[0], -0.01) and Cmpr(Series.XValue[1], -0.005) then
  begin
    Max := (Series.YValue[0] + Series.YValue[1]) /2;
    Series.Delete(0); Series.Delete(0);

    for I := 0 to Series.Count - 1 do
      Series.YValue[i] := Series.YValue[i] / Max;
  end;
end;

procedure AutoMerge( var Series: TLineSeries);
var
  i, Pos: integer;
  Max: single;
begin
  AutoNormalisation(Series);
  // ищем место склейки
  for I := 0 to Series.Count - 2 do
  begin
    Max := Series.YValue[i + 1] / Series.YValue[i];
    if Max > 8 then
    begin
      Pos := i + 1;
      Max := GetDevider(Max);
      Break;
    end;
  end;
  // нормировка
  for I := Pos to Series.Count - 1 do
    Series.YValue[i] := Series.YValue[i] / Max;
end;

procedure ManualMerge( X, K: single; var Series: TLineSeries);
var
  i, pos: integer;
begin
  AutoNormalisation(Series);
  Pos := Series.XValues.Locate(X);
  for I := Pos to Series.Count - 1 do
    Series.YValue[i] := Series.YValue[i] / K;
end;

function SeriesToData( Series: TLineSeries): TDataArray;
var
  i: integer;
begin
  SetLength(Result, 0);
  SetLength(Result, Series.Count);
  for I := 0 to Series.Count - 1 do
  begin
    Result[i].t := Series.XValue[i];
    Result[i].R := Series.YValue[i];
  end;
end;

procedure SeriesToText(var MyStringList: TStringList; var Series:TLineSeries);
var
  i, N: integer;
  s: string;
  x, y: single;
begin
  MyStringList.Add('2Theta' + TabSeparator + 'Reflectivity');
  MyStringList.Add('deg' + TabSeparator + '');
  MyStringList.Add('');
  N := Series.Count;
  for i := 0 to N - 1 do
  begin
    x := Series.XValues[i];
    y := Series.YValues[i];
    s := FloatToStrF(x, ffFixed, 5, 3) + TabSeparator;
    s := s + FloatToStrF(y, ffExponent, 5, 4);
    MyStringList.Add(s);
  end;
end;

procedure SeriesFromText(var MyStringList: TStringList; var Series:TLineSeries);
var
  i, p: integer;
  s1, s2: string;
  x, y: single;
  min: Double;
  Separator: string;
begin
  Separator := TabSeparator;
  min := 1000;
  Series.Clear;
  for i := 0 to MyStringList.Count - 1 do
  begin
    s2 := MyStringList.Strings[i];
    if s2 = '' then Continue;

    p := Pos(Separator, s2);
    if p = 0 then
    begin
      Separator := ' ';
      p := Pos(Separator, s2);
    end;

    if p = 0 then Continue;


    s1 := Copy(s2, 1, p - 1);
    delete(s2, 1, p);
    if (s1 <> '') and (s2 <> '') and IsNumber(s1[1]) and IsNumber(s2[1]) then
    try
      x := StrToFloat(s1);
      y := StrToFloat(s2);
      if (y < min) and (y > 0) then min := y;
      if y = 0 then y := min;
      Series.AddXY(x, y);
    except
      on EConvertError do;
    end;
    end;
end;

procedure SeriesToClipboard(Series: TLineSeries);
var
  MyStringList: TStringList;
begin
  MyStringList := TStringList.Create;
  try
    SeriesToText(MyStringList, Series);
    Clipboard.AsText := MyStringList.Text;
  finally
    MyStringList.Free;
  end;
end;

procedure SeriesToFile(Series: TLineSeries; const FileName: string);
var
  MyStringList: TStringList;
begin
  MyStringList := TStringList.Create;
  try
    SeriesToText(MyStringList, Series);
    MyStringList.SaveToFile(FileName);
  finally
    MyStringList.Free;
  end;
end;

procedure SeriesFromClipboard(Series: TLineSeries);
var
  MyStringList: TStringList;
begin
  MyStringList := TStringList.Create;
  try
    MyStringList.Text := Clipboard.AsText;
    SeriesFromText(MyStringList, Series);
  finally
    MyStringList.Free;
  end;
end;

procedure SeriesFromFile(Series: TLineSeries; const FileName: string; out Descr: string);
var
  MyStringList: TStringList;
  S: string;
  i: Integer;
begin
  MyStringList := TStringList.Create;
  try
    MyStringList.LoadFromFile(FileName);
    S :=  MyStringList[0];
    if Pos('Sample', S) > 0 then
    begin
      for i := 1 to 21 do
        MyStringList.Delete(0);
    end;
    while S[1] = '*' do
    begin
      Descr := Descr + S + #13#10;
      MyStringList.Delete(0);
    end;
    SeriesFromText(MyStringList, Series);
  finally
    MyStringList.Free;
  end;
end;

{$WARNINGS OFF}

function ClearDir(const DirectoryName: string; Full: boolean): boolean;
var
  SearchRec: TSearchRec;
  ACurrentDir: string;
begin
  Result := False;
  ACurrentDir := IncludeTrailingPathDelimiter(DirectoryName);

  try
    if FindFirst(ACurrentDir + '*.*', faAnyFile, SearchRec) = 0 then
      try
        repeat
          if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
            SysUtils.DeleteFile(ACurrentDir + SearchRec.Name) until FindNext
              (SearchRec) <> 0;
          finally
            SysUtils.FindClose(SearchRec);
          end;
          if Full then
            RemoveDirectory(PChar(DirectoryName));
          except
            Result := False;
          end;
end;
{$WARNINGS ON}

function RecentItemsToString(Items: TActionClients): string;
var
  i: integer;
begin
  Result := '';
  for i := 0 to Items.Count - 1 do
    Result :=  Result + Items[i].Caption + ';';
end;

end.
