object frmFitWin: TfrmFitWin
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Fitting'
  ClientHeight = 272
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
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
      Width = 9
      Height = 16
      Caption = 'H'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 183
      Top = 6
      Width = 7
      Height = 16
      Caption = 's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 249
      Top = 6
      Width = 22
      Height = 16
      Caption = 'rho'
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
    Height = 187
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
    Top = 232
    Width = 363
    Height = 37
    Align = alBottom
    BorderOuter = fsFlatRounded
    Color = clMenuBar
    TabOrder = 2
    ExplicitLeft = -2
    DesignSize = (
      363
      37)
    object cbbStep: TComboBox
      Left = 249
      Top = 8
      Width = 106
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      Text = '0.1'
    end
  end
end
