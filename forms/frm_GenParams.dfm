object frmFit: TfrmFit
  Left = 540
  Top = 73
  AlphaBlend = True
  BorderIcons = [biSystemMenu]
  Caption = 'Genetic fitting'
  ClientHeight = 286
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 450
    Height = 286
    Align = alClient
    BorderOuter = fsFlatRounded
    TabOrder = 0
    ExplicitLeft = 72
    ExplicitTop = 48
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Chart1: TChart
      Left = 3
      Top = 3
      Width = 358
      Height = 265
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Gradient.EndColor = 8454143
      Gradient.Visible = True
      Legend.Visible = False
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      View3D = False
      TabOrder = 0
      ColorPaletteIndex = 13
      object Series1: TLineSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.ShapeStyle = fosRoundRectangle
        Marks.Visible = False
        SeriesColor = 8421631
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object Series2: TLineSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.ShapeStyle = fosRoundRectangle
        Marks.Visible = False
        SeriesColor = 8388672
        Brush.BackColor = clDefault
        LinePen.Color = 8388672
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object Series3: TPointSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.ShapeStyle = fosRoundRectangle
        Marks.Visible = False
        ClickableLine = False
        Pointer.Brush.Gradient.EndColor = 10708548
        Pointer.Gradient.EndColor = 10708548
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
    object edDW: TRzEdit
      Left = 388
      Top = 66
      Width = 55
      Height = 21
      Text = '0.015'
      TabOrder = 1
    end
    object RzButton4: TRzButton
      Left = 367
      Top = 15
      Caption = #1053#1072#1081#1090#1080' '#1087#1080#1082#1080
      TabOrder = 2
      OnClick = RzButton4Click
    end
    object RzButton3: TRzButton
      Left = 367
      Top = 235
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 3
      OnClick = RzButton3Click
    end
  end
end
