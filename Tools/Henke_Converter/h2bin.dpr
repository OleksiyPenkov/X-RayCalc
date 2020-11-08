program h2bin;
{$APPTYPE CONSOLE}

uses
  SysUtils,
  Forms,
  Classes;

var
  Folder: string;
  i: Integer;

procedure ConvertHenke(N: string);
var
  fl: TextFile;
  fn: string;
  Na, Nro, e, fr, fi: single;
  Name: string;
  Stream: TMemoryStream;
  size: Integer;

  procedure WriteString(const s: string);
  begin
    size := ByteLength(s) + 1;
    Stream.Write(size, SizeOf(size));
    Stream.Write(PChar(s)^, size);
  end;

begin
  fn := Folder + N;

  write('Processing ' + N + '...');

  if not FileExists(fn) then
  begin
    Writeln(Format('File %s not found!', [N]));
    Exit;
  end;
  try
    Stream := TMemoryStream.Create;
    AssignFile(fl, fn);
    try
      FileMode := 0;
      reset(fl);
      readln(fl, Name);
      readln(fl, Na);
      readln(fl, Nro);

      WriteString(Name);

      size := SizeOf(Na);

      Stream.Write(Na, size);
      Stream.Write(Nro, size);

      readln(fl);
      while (not Eof(fl)) do
      begin
        readln(fl, e, fr, fi);
        Stream.Write(e, size);
        Stream.Write(fr, size);
        Stream.Write(fi, size);
      end;
      fn := ChangeFileExt(fn, '.bin');
      Stream.SaveToFile(fn);
    finally
      CloseFile(fl);
      Stream.Free;
    end;
    Writeln('Done');
  except
    on e: EInOutError do
    begin
      Writeln(Format('Error reading file!', [N]));
    end;
  end;

end;

procedure ProcessAllFiles;
var
  SR: TSearchRec;
  FindRes: Integer;
begin
  FindRes := FindFirst(Folder + '*.txt', faAnyFile, SR);
  While FindRes = 0 do
  begin
    ConvertHenke(SR.Name);
    FindRes := FindNext(SR);
  end;
  FindClose(SR);
end;

begin
  Folder := ExtractFilePath(Application.ExeName) + 'Henke\';
  try
    { TODO -oUser -cConsole Main : Insert code here }
    if ParamStr(1) = '-f' then
      ProcessAllFiles
    else
      for i := 1 to ParamCount do
        ConvertHenke(ParamStr(i) + '.txt');
  except
    on e: Exception do
      Writeln(e.ClassName, ': ', e.Message);
  end;

end.
