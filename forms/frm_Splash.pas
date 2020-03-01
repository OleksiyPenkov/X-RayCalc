(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)
unit frm_Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, 
  ExtCtrls, RzStatus, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.DFM}

end.
