object frmMaterialList: TfrmMaterialList
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Material List'
  ClientHeight = 381
  ClientWidth = 369
  Color = clBtnFace
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
  object lbFiles: TListBox
    Left = 8
    Top = 8
    Width = 161
    Height = 365
    ItemHeight = 13
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnDblClick = lbFilesDblClick
    OnKeyDown = lbFilesKeyDown
  end
  object RzGroupBox1: TRzGroupBox
    Left = 176
    Top = 8
    Width = 185
    Height = 365
    Caption = 'New material'
    TabOrder = 1
    object Label3: TLabel
      Left = 18
      Top = 69
      Width = 100
      Height = 13
      Caption = 'Number of elements:'
    end
    object Label2: TLabel
      Left = 91
      Top = 19
      Width = 72
      Height = 13
      Caption = 'Density, g/cm3'
    end
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object StringGrid1: TStringGrid
      Left = 8
      Top = 95
      Width = 169
      Height = 226
      ColCount = 2
      DefaultColWidth = 82
      DefaultRowHeight = 20
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      TabOrder = 0
    end
    object Add: TButton
      Left = 56
      Top = 333
      Width = 75
      Height = 25
      Caption = 'Add New'
      TabOrder = 1
      OnClick = AddClick
    end
    object SpinEdit1: TSpinEdit
      Left = 127
      Top = 65
      Width = 49
      Height = 22
      MaxValue = 10
      MinValue = 1
      TabOrder = 2
      Value = 1
      OnChange = SpinEdit1Change
    end
    object Edit1: TEdit
      Left = 8
      Top = 37
      Width = 74
      Height = 21
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 88
      Top = 38
      Width = 88
      Height = 21
      TabOrder = 4
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 272
    object Inserttothetable1: TMenuItem
      Caption = 'Insert to the table'
      ShortCut = 13
      OnClick = lbFilesDblClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Deletefile1: TMenuItem
      Caption = 'Delete file'
      OnClick = Deletefile1Click
    end
  end
end
