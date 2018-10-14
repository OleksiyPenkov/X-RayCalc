unit frm_NewVersionInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzLabel, Vcl.StdCtrls, Vcl.ExtCtrls,
  RzPanel;

type
  TfrmNewVersionInfo = class(TForm)
    btn1: TButton;
    rzpnlGroupList1: TRzPanel;
    lblURL: TRzURLLabel;
    lbl3: TLabel;
    lblChanges: TLabel;
    lbl2: TLabel;
    lbl1: TLabel;
    lblVersion: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
