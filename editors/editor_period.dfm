object edtrPeriod: TedtrPeriod
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Period properties'
  ClientHeight = 94
  ClientWidth = 286
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
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 280
    Height = 41
    Align = alClient
    BorderOuter = fsFlatRounded
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 13
      Width = 66
      Height = 13
      Caption = 'Period'#39's name'
    end
    object Label2: TLabel
      Left = 199
      Top = 13
      Width = 7
      Height = 13
      Caption = 'N'
    end
    object edN: TRzNumericEdit
      Left = 212
      Top = 10
      Width = 65
      Height = 21
      TabOrder = 0
      CalculatorVisible = True
      Max = 10000.000000000000000000
      DisplayFormat = ',0;(,0)'
    end
    object edTitle: TEdit
      Left = 81
      Top = 10
      Width = 112
      Height = 21
      TabOrder = 1
      Text = 'edTitle'
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 280
    Height = 41
    Align = alBottom
    BorderOuter = fsFlatRounded
    TabOrder = 1
    object btnOK: TRzBitBtn
      Left = 18
      Top = 10
      Width = 105
      TabOrder = 0
      OnClick = btnOKClick
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
end
