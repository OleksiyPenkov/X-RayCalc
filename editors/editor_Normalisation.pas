(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2018 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit editor_Normalisation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, RzButton,
  ExtCtrls, RzPanel;

type
  TedtrManualNorm = class(TForm)
    RzPanel2: TRzPanel;
    btnOK: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    edPos: TJvCalcEdit;
    edK: TJvCalcEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  edtrManualNorm: TedtrManualNorm;

implementation

{$R *.dfm}

end.
