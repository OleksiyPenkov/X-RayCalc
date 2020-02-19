(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)
unit frm_about;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzStatus, Vcl.StdCtrls, Vcl.Buttons,
  RzLabel;

type
  TfrmAbout = class(TForm)
    RzLabel1: TRzLabel;
    BitBtn1: TBitBtn;
    RzVersionInfo1: TRzVersionInfo;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}

end.
