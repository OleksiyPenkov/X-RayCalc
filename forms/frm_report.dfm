object frmReport: TfrmReport
  Left = 0
  Top = 0
  Caption = 'Report'
  ClientHeight = 570
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object wb1: TWebBrowser
    Left = 0
    Top = 41
    Width = 814
    Height = 529
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 352
    ExplicitTop = 240
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C00000021540000AC3600000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 200
    ExplicitTop = 56
    ExplicitWidth = 185
    object btnPrint: TButton
      Left = 8
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 0
      OnClick = btnPrintClick
    end
  end
  object dlgPrnt: TPrintDialog
    Left = 432
    Top = 376
  end
end
