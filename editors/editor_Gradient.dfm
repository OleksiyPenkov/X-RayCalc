object edtrGradient: TedtrGradient
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Gradient'
  ClientHeight = 269
  ClientWidth = 223
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 225
    Width = 217
    Height = 41
    Align = alBottom
    BorderOuter = fsFlatRounded
    TabOrder = 0
    ExplicitTop = 197
    DesignSize = (
      217
      41)
    object btnOK: TRzBitBtn
      Left = 55
      Top = 10
      Width = 66
      Anchors = [akTop, akRight]
      TabOrder = 0
      TabStop = False
      OnClick = btnOKClick
      Kind = bkOK
    end
    object btnCancel: TRzBitBtn
      Left = 136
      Top = 10
      Width = 72
      Anchors = [akTop, akRight]
      TabOrder = 1
      TabStop = False
      Kind = bkCancel
    end
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 217
    Height = 216
    Align = alClient
    BorderOuter = fsFlatRounded
    TabOrder = 1
    ExplicitHeight = 188
    object Label1: TLabel
      Left = 9
      Top = 10
      Width = 20
      Height = 13
      Caption = 'Title'
    end
    object Label2: TLabel
      Left = 111
      Top = 134
      Width = 23
      Height = 13
      Caption = 'Rate'
    end
    object Label3: TLabel
      Left = 9
      Top = 35
      Width = 30
      Height = 13
      Caption = 'Period'
    end
    object Label4: TLabel
      Left = 111
      Top = 35
      Width = 27
      Height = 13
      Caption = 'Layer'
    end
    object edRate: TJvCalcEdit
      Left = 140
      Top = 131
      Width = 70
      Height = 21
      ButtonFlat = True
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
    end
    object edTitle: TEdit
      Left = 35
      Top = 6
      Width = 173
      Height = 21
      TabOrder = 1
      Text = 'Gradient'
    end
    object cbPeriod: TComboBox
      Left = 9
      Top = 54
      Width = 96
      Height = 21
      TabOrder = 2
      OnChange = cbPeriodChange
    end
    object cbLayer: TComboBox
      Left = 111
      Top = 54
      Width = 96
      Height = 21
      TabOrder = 3
    end
    object mmDescription: TMemo
      Left = 9
      Top = 160
      Width = 200
      Height = 46
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object rgSubject: TRadioGroup
      Left = 9
      Top = 77
      Width = 198
      Height = 48
      Caption = 'Apply to'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'H'
        'Sigma'
        'Rho')
      TabOrder = 5
    end
  end
end
