object edtrProjectItem: TedtrProjectItem
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Properties'
  ClientHeight = 216
  ClientWidth = 382
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
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 172
    Width = 376
    Height = 41
    Align = alBottom
    BorderOuter = fsFlatRounded
    TabOrder = 0
    object btnOK: TRzBitBtn
      Left = 19
      Top = 10
      Width = 102
      TabOrder = 0
      TabStop = False
      OnClick = btnOKClick
      Kind = bkOK
    end
    object btnCancel: TRzBitBtn
      Left = 244
      Top = 10
      Width = 109
      TabOrder = 1
      TabStop = False
      Kind = bkCancel
    end
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 376
    Height = 163
    Align = alClient
    BorderOuter = fsFlatRounded
    TabOrder = 1
    object Color: TLabel
      Left = 257
      Top = 5
      Width = 25
      Height = 13
      Caption = 'Color'
    end
    object edTitle: TLabeledEdit
      Left = 8
      Top = 24
      Width = 243
      Height = 21
      EditLabel.Width = 20
      EditLabel.Height = 13
      EditLabel.Caption = 'Title'
      TabOrder = 0
    end
    object mmDescription: TMemo
      Left = 8
      Top = 64
      Width = 361
      Height = 89
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object cbColor: TRzColorComboBox
      Left = 257
      Top = 24
      Width = 111
      Height = 22
      ColorDlgOptions = [cdFullOpen, cdSolidColor]
      DefaultColor = clBlue
      SelectedColor = clBlue
      TabOrder = 2
    end
  end
end
