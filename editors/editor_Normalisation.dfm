object edtrManualNorm: TedtrManualNorm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Manual normalisation'
  ClientHeight = 94
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 290
    Height = 41
    Align = alBottom
    BorderOuter = fsFlatRounded
    TabOrder = 1
    object btnOK: TRzBitBtn
      Left = 18
      Top = 10
      Width = 105
      TabOrder = 0
      Kind = bkOK
    end
    object RzBitBtn2: TRzBitBtn
      Left = 173
      Top = 10
      Width = 99
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 290
    Height = 41
    Align = alClient
    BorderOuter = fsFlatRounded
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 13
      Width = 37
      Height = 13
      Caption = 'Position'
    end
    object Label2: TLabel
      Left = 172
      Top = 13
      Width = 6
      Height = 13
      Caption = 'K'
    end
    object edPos: TJvCalcEdit
      Left = 52
      Top = 10
      Width = 93
      Height = 21
      DecimalPlaces = 3
      DisplayFormat = '0.###'
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
    end
    object edK: TJvCalcEdit
      Left = 188
      Top = 10
      Width = 93
      Height = 21
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
  end
end
