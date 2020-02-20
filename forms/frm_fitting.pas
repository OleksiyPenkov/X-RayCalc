(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

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
    Label5: TLabel;
    btnHelp: TRzButton;
    procedure FormCreate(Sender: TObject);
    procedure cbbStepChange(Sender: TObject);
    procedure LinkChecked(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
  private
    { Private declarations }

    FMainForm: HWND;

    FCount: Integer;

    FStep : Double;

    FFirstChecked : TXRCFitInput;
    procedure SetDisabled;
    procedure SetEnabled;

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
  unit_helpers;


{$R *.dfm}

{ TfrmFitWin }

procedure TfrmFitWin.AddSeparator;
var
   Separator: TRzSeparator;
begin
    //Separator
  Separator := TRzSeparator.Create(Box);

  Separator.Parent := Box;
  Separator.Left   := 0;
  Separator.Top    := 0;
  Separator.Width  := 363;
  Separator.Height := 5;
  Separator.Align  := alTop;
  Separator.Color  := $00FFD29B;
  Separator.ShowGradient := True;

  ClientHeight := ClientHeight + 5;
end;

procedure TfrmFitWin.btnHelpClick(Sender: TObject);
begin
  OpenHelpFile('Getting_Started.pdf');
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
  ClientHeight := 67;
end;

procedure TfrmFitWin.FormShow(Sender: TObject);
begin
  cbbStepChange(Sender);
end;

procedure TfrmFitWin.SetDisabled;
begin

end;

procedure TfrmFitWin.SetEnabled;
begin

end;

procedure TfrmFitWin.LinkChecked(Sender: TObject);
var
  i: Integer;
begin
  if (Sender as TRzCheckBox).Checked then
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
            (Box.Components[i]as TXRCFitInput).Linked := FFirstChecked;
            Break;
          end;
        end;
  end
  else begin
    if (FFirstChecked.Linked <> nil) and (FFirstChecked <> nil) and ((Sender as TRzCheckBox) = FFirstChecked.Linked.CheckBox) then FFirstChecked.Linked := nil;
    if (FFirstChecked <> nil) and ((Sender as TRzCheckBox) = FFirstChecked.CheckBox) then
    begin
      FFirstChecked.Linked := nil;
      FFirstChecked := nil;
    end;
  end;

  if (FFirstChecked <> nil) and (FFirstChecked.Linked <> nil) then SetDisabled
    else SetEnabled;

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
  if (FCount mod 2) = 0 then Input.Color := $00FFD29B
    else Input.Color := $00FFE3C1;

  ClientHeight := 67 + (FCount + 1) * (Input.Height + 3);

end;

end.
