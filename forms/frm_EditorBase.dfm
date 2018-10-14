object frmEditorBase: TfrmEditorBase
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmEditorBase'
  ClientHeight = 152
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    322
    152)
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 316
    Height = 109
    Margins.Bottom = 40
    Align = alClient
    BorderOuter = fsFlatRounded
    TabOrder = 0
  end
  object RzBitBtn1: TRzBitBtn
    Left = 160
    Top = 119
    ModalResult = 1
    Anchors = [akRight, akBottom]
    Caption = 'Save'
    TabOrder = 1
  end
  object RzBitBtn2: TRzBitBtn
    Left = 241
    Top = 119
    ModalResult = 2
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    TabOrder = 2
  end
end
