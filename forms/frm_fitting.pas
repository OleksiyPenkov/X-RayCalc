unit frm_fitting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, RzRadChk, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzSpnEdt, Vcl.ExtCtrls, RzPanel, unit_types, unit_consts,
  JvDesignSurface, RzBckgnd, XRCFittingInput;

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
    RzSpinEdit1: TRzSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure cbbStepChange(Sender: TObject);
    procedure LinkChecked(Sender: TObject);
  private
    { Private declarations }
    FData : PRowData;
    FMainForm: HWND;

    FOnSet:  boolean;
    FCount: Integer;

    FStep : Double;

    FFirstChecked : TXRCFitInput;

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

procedure TfrmFitWin.cbbStepChange(Sender: TObject);
var
  i: Integer;
begin
  FStep := StrToFloat(cbbStep.Text);

  for i := Box.ComponentCount - 1 downto 0 do
    if Box.Components[i] is TXRCFitInput then
      (Box.Components[i] as TXRCFitInput).Increment := FStep;

end;

procedure TfrmFitWin.FormCreate(Sender: TObject);
begin
  FCount := 0;
  FStep  := 0.1;
end;

procedure TfrmFitWin.LinkChecked(Sender: TObject);
var
  i: Integer;
begin
  for i := Box.ComponentCount - 1 downto 0 do
    if Box.Components[i] is TXRCFitInput then
      if (Box.Components[i]as TXRCFitInput).Checked then
      begin
        if FFirstChecked = nil then FFirstChecked := Box.Components[i]as TXRCFitInput;
        if Box.Components[i] = FFirstChecked then Continue;
        if FFirstChecked <> nil then
        begin
          FFirstChecked.Linked := Box.Components[i]as TXRCFitInput;
          Break;
        end;
      end;

end;

procedure TfrmFitWin.Reset;
var
  i: Integer;
begin
  for i := Box.ComponentCount - 1 downto 0 do
    if Box.Components[i] is TXRCFitInput then
      Box.Components[i].Free;

  for i := Box.ComponentCount - 1 downto 0 do
    if Box.Components[i] is TRzSeparator then
      Box.Components[i].Free;
  FCount := 0;
end;

procedure TfrmFitWin.SetData(Data: PRowData);
var
  Input: TXRCFitInput;
begin
  Input := TXRCFitInput.Create(Box, FMainForm, Data);
  Input.CheckBox.OnClick := LinkChecked;
  inc(FCount);
  if (FCount mod 2) = 0 then Input.Color := clBtnFace
    else Input.Color := clWebLightgrey;
end;

end.
