(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2018 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit editor_period;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzEdit, StdCtrls, Mask, RzBtnEdt, RzButton, ExtCtrls, RzPanel,
  unit_types;

type
  TedtrPeriod = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    btnOK: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    Label1: TLabel;
    edN: TRzNumericEdit;
    Label2: TLabel;
    edTitle: TEdit;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Data : PRowData;
  end;

var
  edtrPeriod: TedtrPeriod;

implementation

{$R *.dfm}

procedure TedtrPeriod.FormShow(Sender: TObject);
begin
  edTitle.Text := Data.Text;
  edN.IntValue := Data.N;
end;

procedure TedtrPeriod.btnOKClick(Sender: TObject);
begin
  Data.Text := edTitle.Text;
  Data.N := edN.IntValue;
end;

end.
