object frmFitWin: TfrmFitWin
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Fitting'
  ClientHeight = 374
  ClientWidth = 369
  Color = 16765595
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 363
    Height = 30
    Align = alTop
    BorderOuter = fsFlatRounded
    Color = 16765595
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 6
      Width = 37
      Height = 16
      Caption = 'Layer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 120
      Top = 6
      Width = 35
      Height = 16
      Caption = 'H ('#197')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 191
      Top = 6
      Width = 35
      Height = 16
      Caption = #963' ('#197')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 268
      Top = 6
      Width = 65
      Height = 16
      Caption = #961' (g/cm'#179')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Box: TJvDesignScrollBox
    AlignWithMargins = True
    Left = 3
    Top = 39
    Width = 363
    Height = 289
    HorzScrollBar.Visible = False
    VertScrollBar.Style = ssFlat
    VertScrollBar.Tracking = True
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    TabOrder = 1
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 334
    Width = 363
    Height = 37
    Align = alBottom
    BorderOuter = fsFlatRounded
    ParentColor = True
    TabOrder = 2
    DesignSize = (
      363
      37)
    object Label5: TLabel
      Left = 208
      Top = 8
      Width = 30
      Height = 16
      Caption = 'Step'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbbStep: TComboBox
      Left = 249
      Top = 8
      Width = 106
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      Text = '1'
      OnChange = cbbStepChange
      Items.Strings = (
        '5'
        '1'
        '0.25'
        '0.1'
        '0.01'
        '0.001')
    end
  end
end
