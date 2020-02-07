(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2018 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit math_globals;

interface

uses
  math_complex,
  Series,
  unit_types,
  Classes;

procedure ReadHenke(N: string; E, L: single; var f: TComplex;
  var Na, Nro: single);

procedure Convolute(Width: single; var Series: TLineSeries);
procedure Sort(var Series: TLineSeries);
procedure CopyData(const Input: TDataArray; var Output: TDataArray);

var

  SizeOfDataArray: integer;
  EliteCount, ParentCount, MovedCount: integer;
  CalcStopped,OnRecalculated,FittingOn:boolean;
  Population, NewPopulation,
  DW : single;
  FitRanges: array of TFitRange;
  ExpData, TempData: array of TDataPoint;
  Period,Count,IterCount,LayerCount:Integer;
  RangeCells:array of array of TRangeCell;
  TotalThickness: Double;

implementation

uses
  unit_settings,
  SysUtils,
  VCLTee.TeEngine;

const
  H = 12398.6;

procedure CopyData(const Input: TDataArray; var Output: TDataArray);
begin
   Output := Input;
end;


procedure Sort;
var
  i,j: Integer;
begin
  for i := 0 to Series.Count - 2 do
    for j := i + 1 to Series.Count - 1 do
      if Series.XValues[i] > Series.XValues[j] then
      begin
        Series.XValues.Exchange(i, j);
        Series.YValues.Exchange(i, j);
      end;
end;


procedure Convolute_new(Width: single; var Series: TLineSeries);
var
  Sum, delta, t1, A: single;
  i, N, m, p, Size: integer;

  Temp: TDataArray;

  function Gauss(x: single): single;
  var
    c: single;
  begin
    c := A/(Width * sqrt(Pi / 2));
    Result := c * exp(- sqr(x) / (2 * sqr(Width)));
  end;


  function Box(width, x: single): single;
  begin
    if (x < -width / 2) or (x > width /2 ) then Result := 0
      else  Result := 30;
  end;


begin
  if Width = 0 then Exit;
  Size := Series.Count;
  Width := Width * 0.849;
  delta := Series.XValues[11] - Series.XValues[10];
  N := Round(0.1 / delta);
  if frac(N / 2) = 0 then
    N := N - 1;
  SetLength(Temp, Size - 2*N);
  p := 0;
  for i := N to Size - N - 1 do
  begin
    A := 0;
    for m := i - N to i + N do
    begin
      if Series.YValues[m] > A then A := Series.YValues[m]
    end;


    t1 := -0.1;
    Sum := 0;
    for m := i - N to i + N do
    begin
      Sum := Sum + Series.YValues[m] * Gauss(t1) * delta;
      //Sum := Sum + Series.YValues[k] * Box(width, t1) * delta;
      t1 := t1 + delta;
    end;
    Temp[p].t := Series.XValues[i + 1];
    Temp[p].R := Sum;
    inc(p);
  end;
  Series.Clear;
  for i := 0 to High(Temp) - 1 do
    Series.AddXY(Temp[i].t, Temp[i].r)
end;


procedure Convolute(Width: single; var Series: TLineSeries);
var
  Sum, delta, t1: single;
  i, N, k, p, Size: integer;

  Temp: TDataArray;

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
  if Width = 0 then Exit;
  Size := Series.Count;
  Width := Width * 0.849;
  delta := Series.XValues[11] - Series.XValues[10];
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
      Sum := Sum + Series.YValues[k] * Gauss(t1) * delta;
      t1 := t1 + delta;
    end;
    Temp[p].t := Series.XValues[i + 1];
    Temp[p].R := Sum;
    inc(p);
  end;
  Series.Clear;
  for i := 0 to High(Temp) - 1 do
    Series.AddXY(Temp[i].t, Temp[i].r)
end;

function Interp(e1, e2, f1, f2, x: single): single;
var
    a, b: single;
begin
  if (e1 - e2) <> 0 then
  begin
    a := (f1 - f2) / (e1 - e2);
    b := f2 - a * e2;
    Result := a * x + b;
  end
   else
     Result := f1;
end;

procedure ReadHenkeTXT(N: string; E, L: single; var f: TComplex;
  var Na, Nro: single);
var
  fl: TextFile;
  fn, s, Msg: string;
  e1, e2: single;
  f1, f2: TComplex;



begin
  if E = 0 then
    E := H / L;
  fn := Settings.HenkePath + '\' + N + '.txt';
  if not FileExists(fn) then
  begin
    Msg := Format('Error! Material %s not found in the database!', [N]);
    raise EInOutError.Create(Msg);
  end;
  try
    AssignFile(fl, fn);
    try
      FileMode := 0;
      reset(fl);
      readln(fl, s);
      readln(fl, Na);
      readln(fl, Nro);
      readln(fl);
      e1 := 0;
      e2 := 0;
      while (e2 <= E) and (not Eof(fl)) do
      begin
        e1 := e2;
        f1 := f2;
        readln(fl, e2, f2.re, f2.im);
      end;
    finally
      CloseFile(fl);
    end;
  except
    on E: EInOutError do
    begin
      Msg := Format('Error reading file %S.txt ', [N]);
      raise EInOutError.Create(Msg);
    end;
  end;
  f.re := Interp(e1, e2, f1.re, f2.re, E);
  f.im := Interp(e1, e2, f1.im, f2.im, E);
end;

procedure ReadHenke(N: string; E, L: single; var f: TComplex; var Na, Nro: single);
var
  fn, s, Msg: string;
  e1, e2: single;
  f1, f2: TComplex;
  size: integer;
  Stream : TMemoryStream;
  StrBuffer: PChar;

  function GetString: string;
  begin
    Stream.Read(size, SizeOf(size));
    StrBuffer := AllocMem(size);
    Stream.Read(StrBuffer^, size);
    Result := (StrBuffer);
    FreeMem(StrBuffer);
  end;


begin
  f.Re  := 0;  f.Im  := 0;
  f1.Re := 0; f1.Im := 0;
  f2.Re := 0; f2.Im := 0;

  if E = 0 then
    E := H / L;

  fn := Settings.HenkePath + N + '.bin';
  if not FileExists(fn) then
  begin
    Msg := Format('Error! Material %s not found in the database!', [N]);
    raise EInOutError.Create(Msg);
  end;
  try
  try
    Stream := TMemoryStream.Create;
    Stream.LoadFromFile(fn);

    s := GetString;
    Size := SizeOf(Na);

    Stream.Read(Na, Size);
    Stream.Read(Nro, Size);

    e1 := 0;
    e2 := 0;
    while (e2 <= E) and (Stream.Position < Stream.Size) do
    begin
      e1 := e2;
      f1 := f2;
      Stream.Read(e2, Size);
      Stream.Read(f2.re, Size);
      Stream.Read(f2.im, Size);
    end;
    finally
      Stream.Free;
    end;
  except
    on E: EInOutError do
    begin
      Msg := Format('Error! File %s.bin corrupted or has wrong format', [N]);
      raise EInOutError.Create(Msg);
    end;
  end;
  f.re := Interp(e1, e2, f1.re, f2.re, E);
  f.im := Interp(e1, e2, f1.im, f2.im, E);
end;



end.
