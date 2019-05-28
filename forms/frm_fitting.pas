unit frm_fitting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, RzRadChk, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzSpnEdt, Vcl.ExtCtrls, RzPanel, unit_types, unit_consts,
  JvDesignSurface;

type
  TfrmFitWin = class(TForm)
    RzPanel1: TRzPanel;
    Box: TJvDesignScrollBox;
    RzPanel2: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbbStep: TComboBox;
  private
    { Private declarations }
    FData : PRowData;
    FMainForm: HWND;

    FOnSet:  boolean;


  public
    { Public declarations }
    procedure SetData(Data: PRowData);
    property MainForm: HWND write FMainForm;
  end;

var
  frmFitWin: TfrmFitWin;

implementation

uses
  XRCFittingInput;

{$R *.dfm}

{ TfrmFitWin }

procedure TfrmFitWin.SetData(Data: PRowData);
var
  Input: TXRCFitInput;
begin
  Input := TXRCFitInput.Create(Box, FMainForm, Data);
end;

end.
