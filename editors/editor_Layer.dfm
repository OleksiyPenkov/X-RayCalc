object edtrLayer: TedtrLayer
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Layer properties'
  ClientHeight = 115
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 314
    Height = 62
    Align = alClient
    BorderOuter = fsFlatRounded
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 10
      Width = 75
      Height = 13
      Caption = 'Layer'#39's material'
    end
    object Label2: TLabel
      Left = 10
      Top = 37
      Width = 7
      Height = 13
      Caption = 'H'
    end
    object Label7: TLabel
      Left = 226
      Top = 31
      Width = 9
      Height = 20
      Caption = 'r'
      Font.Charset = GREEK_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 124
      Top = 31
      Width = 10
      Height = 20
      Caption = 's'
      Font.Charset = GREEK_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
    end
    object edMaterial: TRzButtonEdit
      Left = 90
      Top = 6
      Width = 216
      Height = 21
      Text = ''
      TabOrder = 0
      OnKeyDown = edMaterialKeyDown
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = edMaterialButtonClick
    end
    object edRo: TJvCalcEdit
      Left = 241
      Top = 33
      Width = 65
      Height = 21
      ButtonFlat = True
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      OnKeyDown = edMaterialKeyDown
    end
    object edH: TJvCalcEdit
      Left = 23
      Top = 33
      Width = 70
      Height = 21
      ButtonFlat = True
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
      OnKeyDown = edMaterialKeyDown
    end
    object edSigma: TJvCalcEdit
      Left = 140
      Top = 33
      Width = 65
      Height = 21
      ButtonFlat = True
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
      OnKeyDown = edMaterialKeyDown
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 71
    Width = 314
    Height = 41
    Align = alBottom
    BorderOuter = fsFlatRounded
    TabOrder = 1
    object btnOK: TRzBitBtn
      Left = 155
      Top = 10
      Width = 66
      TabOrder = 2
      TabStop = False
      OnClick = btnOKClick
      Kind = bkOK
    end
    object btnCancel: TRzBitBtn
      Left = 236
      Top = 10
      Width = 72
      TabOrder = 3
      TabStop = False
      Kind = bkCancel
    end
    object btnPrev: TRzBitBtn
      Tag = 2
      Left = 10
      Top = 8
      Width = 39
      Caption = '<<'
      TabOrder = 0
      TabStop = False
      OnClick = btnNextClick
    end
    object btnNext: TRzBitBtn
      Tag = 1
      Left = 55
      Top = 8
      Width = 39
      Caption = '>>'
      TabOrder = 1
      TabStop = False
      OnClick = btnNextClick
    end
  end
end
