object frmAbout: TfrmAbout
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'X-Ray Calc'
  ClientHeight = 286
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel1: TRzLabel
    Left = 0
    Top = 0
    Width = 278
    Height = 46
    Align = alTop
    Alignment = taCenter
    Caption = 'X-Ray calc'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -37
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TextStyle = tsShadow
    ExplicitLeft = 40
    ExplicitTop = 8
    ExplicitWidth = 190
  end
  object RzVersionInfoStatus1: TRzVersionInfoStatus
    Left = 88
    Top = 64
    FrameStyle = fsNone
    Alignment = taCenter
    Field = vifProductVersion
    VersionInfo = RzVersionInfo1
  end
  object BitBtn1: TBitBtn
    Left = 96
    Top = 253
    Width = 75
    Height = 25
    Caption = 'Close'
    ModalResult = 8
    TabOrder = 0
  end
  object RzVersionInfo1: TRzVersionInfo
    FilePath = 'xraycalc.exe'
    Left = 48
    Top = 200
  end
end
