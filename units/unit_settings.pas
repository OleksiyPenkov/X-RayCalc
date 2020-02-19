(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit unit_settings;

interface

type

  TXRCSystemFile = (
    sfAppHelp,
    sfAppSettings
  );

  TXRCSettings = class
  private
    //
    // System paths
    //
    FAppPath : string;
    FHenkePath: string;
    FDataDir: string;
    FWorkDir: string;

    // files
    FIniFileName: string;
    FTempDir: string;

    // Memories
    FRecentFiles: string;
    FSplitterPosition: integer;
    FMinLimit: string;

    function GetTempPath: string;
    function GetSystemFileName(fileType: TXRCSystemFile): string;
    function GetDataPath: string;
    function GetSettingsFileName: string;
    function GetWorkPath: string;
  public
    constructor Create;
    procedure LoadSettings;
    procedure SaveSettings;

    property AppPath: string read FAppPath;
    property HenkePath: string read FHenkePath write FHenkePath;
    property TempDir: string read FTempDir write FTempDir;
    property TempPath: string read GetTempPath;
    property DataDir: string read FDataDir;
    property DataPath: string read GetDataPath;
    property WorkDir: string read FWorkDir;
    property WorkPath: string read GetWorkPath;

    property SystemFileName[fileType: TXRCSystemFile]: string read GetSystemFileName;

    // memories
    property RecentFiles: string read FRecentFiles write FRecentFiles;
    property SplitterPosition: integer read FSplitterPosition Write FSplitterPosition;
    property MinLimit: string read FMinLimit write FMinLimit;
  end;

  procedure CreateSettings;
  procedure FreeSettings;
  function Settings: TXRCSettings;

  function c_GetTempPath: String;

implementation
uses
  StrUtils,
  SysUtils,
  Windows,
  Forms,
  unit_Consts,
  ShlObj,
  ShellAPI,
  IniFiles,
  IOUtils;

var
  g_objSettings: TXRCSettings;

procedure CreateSettings;
begin
  if not Assigned(g_objSettings) then
    g_objSettings := TXRCSettings.Create;

  g_objSettings.LoadSettings;
end;

procedure FreeSettings;
begin
  FreeAndNil(g_objSettings);
end;

function Settings: TXRCSettings;
begin
  Result := g_objSettings;
end;

{ TXRCSettings }

const
  APPDATA_DIR_NAME = 'X-Ray Calc';

  SETTINGS_FILE_NAME = 'xrc.ini';
  PATH_SECTION = 'PATH';
  SYSTEM_SECTION = 'SYSTEM';


function GetSpecialPath(CSIDL: word): string;
var
  S: string;
begin
  SetLength(S, MAX_PATH);
  if not SHGetSpecialFolderPath(0, PChar(S), CSIDL, True) then
    S := '';
  Result := IncludeTrailingPathDelimiter(PChar(S));
end;

function CreateFolders(const Root: string; const Path: string): Boolean;
var
  FullPath: string;
begin
  if Path = '\' then
  begin
//    Assert(False);
    FullPath := Root + Path;
  end
  else
    FullPath := TPath.Combine(Root, Path);


  Result := SysUtils.ForceDirectories(FullPath);
end;

constructor TXRCSettings.Create;
const
  STR_USELOCALDATA = 'uselocaldata';

var
  GlobalAppDataDir: string;
  UseLocalData: boolean;
begin
  FAppPath := ExtractFilePath(Application.ExeName);
  GlobalAppDataDir := GetSpecialPath(CSIDL_APPDATA) + APPDATA_DIR_NAME;

  FTempDir := c_GetTempPath + '_xraycalc';
  FHenkePath := FAppPath + 'Henke\';
  FWorkDir := FAppPath;

  UseLocalData := FileExists(FAppPath + STR_USELOCALDATA);

  FWorkDir := IfThen(UseLocalData, ExcludeTrailingPathDelimiter(FAppPath), GlobalAppDataDir);
  FDataDir := GetWorkPath;

  if not UseLocalData and not DirectoryExists(GlobalAppDataDir) then
      CreateFolders('', FDataDir);

  FIniFileName := SETTINGS_FILE_NAME;
end;

function TXRCSettings.GetSettingsFileName: string;
begin
  Result := WorkPath + FIniFileName;
end;

function TXRCSettings.GetDataPath: string;
begin

end;

function TXRCSettings.GetSystemFileName(fileType: TXRCSystemFile): string;
begin
  case fileType of
    sfAppHelp: Result := AppPath + APP_HELP_FILENAME;
  else
    Assert(False);
  end;

end;

function TXRCSettings.GetTempPath: string;
begin
  Result := IncludeTrailingPathDelimiter(FTempDir);
end;

function TXRCSettings.GetWorkPath: string;
begin
  Result := IncludeTrailingPathDelimiter(FWorkDir);
end;

procedure TXRCSettings.LoadSettings;
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(GetSettingsFileName);
  try
    FRecentFiles := iniFile.ReadString('MEMORIES','Recent_files','');
    FSplitterPosition := iniFile.ReadInteger('MEMORIES','Splitter', 240);
    FMinLimit := iniFile.ReadString('MEMORIES','MinLimit','5e-7');
  finally
    iniFile.Free;
  end;
end;

procedure TXRCSettings.SaveSettings;
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(GetSettingsFileName);
  try
    iniFile.WriteString('MEMORIES','Recent_files', FRecentFiles);
    iniFile.WriteInteger('MEMORIES','Splitter', FSplitterPosition);
    iniFile.WriteString('MEMORIES','MinLimit', FMinLimit)
  finally
    iniFile.Free;
  end;
end;

// Helpers

function c_GetTempPath: String;
var
  Buffer: array[0..65536] of Char;
begin
  SetString(Result, Buffer, GetTempPath(Sizeof(Buffer)-1,Buffer));
end;


initialization
  g_objSettings := nil;

end.
