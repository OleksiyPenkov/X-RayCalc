unit unit_VersionChecker;

interface

uses
  SysUtils,
  Classes,
  Forms,
  unit_Helpers,
  IdHTTP,
  frm_NewVersionInfo;

type

  TVersionCheckerThread = class(TThread)
  private
    Form: TfrmNewVersionInfo;
    FOldVersion: string;
    FIdHTTP: TIdHTTP;
    FURL : string;
    FHidden: Boolean;
  protected
    procedure Execute; override;
    procedure WorkFunction;
    procedure SetStatus;
    procedure ResetStatus;
  public
    property OldVersion: string write FOldVersion;
    property URl: string write FURL;
    property Hidden: Boolean write FHidden default True;
   end;


implementation

uses
  Dialogs, frm_Main;
{ TDownloadManagerThread }

procedure TVersionCheckerThread.Execute;
begin
  WorkFunction;
end;

procedure TVersionCheckerThread.ResetStatus;
begin
  frmMain.Status.Caption := '';
end;

procedure TVersionCheckerThread.SetStatus;
begin
  frmMain.Status.Caption := 'Checking for updates ...';
end;

procedure TVersionCheckerThread.WorkFunction;
var
  Stream: TMemoryStream;
  SL: TStringList;
begin
  try
    Synchronize(SetStatus);

    FIdHTTP := TIdHTTP.Create(nil);
    //SetProxySettings(FidHTTP);
    Stream := TMemoryStream.Create;
    SL := TStringList.Create;

    FIdHTTP.Get(FURL, Stream);
    Stream.Seek(0, soBeginning);
    SL.LoadFromStream(Stream);

    if (SL.Count > 0) and (SL[0] > FOldVersion) then
    begin
      try
        Form := TfrmNewVersionInfo.Create(Application.MainForm);
        Application.MainForm.Enabled := False;
        Form.lblVersion.Caption := SL[0];
        Form.lblURL.Caption := SL[1];
        Form.lblChanges.Caption := SL[2];
        Form.ShowModal;
        Application.MainForm.Enabled := True;
      finally
        Form.Free;
      end;
    end
    else
      if not FHidden then
        ShowMessage('You have the latest version of SciRef!');
  finally
    FreeAndNil(SL);
    FreeAndNil(Stream);
    FreeAndNil(FIdHTTP);
    Synchronize(ResetStatus);
  end;
end;

end.
