unit frm_fitting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, RzRadChk, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzSpnEdt, Vcl.ExtCtrls, RzPanel, unit_types, unit_consts,
  JvDesignSurface, RzBckgnd;

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
    procedure Reset;
    procedure SetData(Data: PRowData);
    property MainForm: HWND write FMainForm;
    procedure AddSeparator;
  end;

var
  frmFitWin: TfrmFitWin;

implementation

uses
  XRCFittingInput;

{$R *.dfm}

{ TfrmFitWin }

procedure TfrmFitWin.AddSeparator;
var
   Separator: TRzSeparator;
begin
    //Separator
  Separator := TRzSeparator.Create(Box);

  Separator.Parent := Box;
  Separator.Left := 0;
  Separator.Top := 0;
  Separator.Width := 363;
  Separator.Height := 5;
  Separator.ShowGradient := True;
  Separator.Align := alTop;
  Separator.Color := clBtnFace;
end;

procedure TfrmFitWin.Reset;
var

  i: Integer;
begin
  for i := Box.ComponentCount - 1 downto 0 do
    if Box.Components[i] is TXRCFitInput then
      Box.Components[i].Free;

end;

procedure TfrmFitWin.SetData(Data: PRowData);
var
  Input: TXRCFitInput;
begin
  Input := TXRCFitInput.Create(Box, FMainForm, Data);
end;

end.
