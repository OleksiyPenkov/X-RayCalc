object frmNewVersionInfo: TfrmNewVersionInfo
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Sciref: New version'
  ClientHeight = 203
  ClientWidth = 384
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
  object btn1: TButton
    Left = 141
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Close'
    ModalResult = 1
    TabOrder = 0
  end
  object rzpnlGroupList1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 378
    Height = 170
    Align = alTop
    BorderOuter = fsFlatRounded
    TabOrder = 1
    ExplicitWidth = 354
    object lblURL: TRzURLLabel
      AlignWithMargins = True
      Left = 5
      Top = 145
      Width = 368
      Height = 13
      Margins.Bottom = 10
      Align = alBottom
      Alignment = taCenter
      Caption = 'lblURL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      ExplicitWidth = 29
    end
    object lbl3: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 119
      Width = 368
      Height = 13
      Margins.Bottom = 10
      Align = alBottom
      Caption = 
        'You can download the new version of X-Ray Calc by using direct l' +
        'ink below:'
      ExplicitWidth = 361
    end
    object lblChanges: TLabel
      Left = 8
      Top = 54
      Width = 52
      Height = 13
      Caption = 'lblChanges'
      WordWrap = True
    end
    object lbl2: TLabel
      Left = 8
      Top = 35
      Width = 65
      Height = 13
      Caption = 'Change list:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 8
      Top = 11
      Width = 160
      Height = 13
      Caption = 'New version of SciRef is availible:'
    end
    object lblVersion: TLabel
      Left = 174
      Top = 11
      Width = 55
      Height = 13
      Caption = 'lblVersion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
