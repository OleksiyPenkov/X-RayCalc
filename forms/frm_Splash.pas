unit frm_Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, 
  ExtCtrls, RzStatus, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    tmMainTimer: TTimer;
    Label1: TLabel;
    procedure tmMainTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.DFM}

procedure TfrmSplash.tmMainTimerTimer(Sender: TObject);
begin
  tmMainTimer.Enabled := False;
end;

end.
