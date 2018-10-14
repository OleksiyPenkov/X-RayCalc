unit frm_EditorBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel;

type
  TfrmEditorBase = class(TForm)
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditorBase: TfrmEditorBase;

implementation

{$R *.dfm}

end.
