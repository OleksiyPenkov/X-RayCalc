(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2018 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit editor_Substrate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvToolEdit, JvBaseEdits, StdCtrls, Mask, RzEdit, RzBtnEdt,
  RzButton, ExtCtrls, RzPanel, unit_types;

type
  TedtrSubstrate = class(TForm)
    RzPanel2: TRzPanel;
    btnOK: TRzBitBtn;
    btnCancel: TRzBitBtn;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    edMaterial: TRzButtonEdit;
    edRo: TJvCalcEdit;
    edSigma: TJvCalcEdit;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Data : PRowData;
  end;

var
  edtrSubstrate: TedtrSubstrate;

implementation

{$R *.dfm}

procedure TedtrSubstrate.btnOKClick(Sender: TObject);
begin
  Data.Text := edMaterial.Text;
  Data.S := edSigma.Text;
  Data.R := edRo.Text;
end;

procedure TedtrSubstrate.FormShow(Sender: TObject);
begin
  edMaterial.Text := Data.Text;
  edSigma.Text := Data.S;
  edRo.Text := Data.R;

  ActiveControl := edMaterial;
end;

end.
