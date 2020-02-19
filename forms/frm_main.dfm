object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'X-Ray Calc'
  ClientHeight = 657
  ClientWidth = 1206
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnGesture = FormGesture
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object RzStatusPane7: TRzStatusPane
    Left = 230
    Top = 26
    Width = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Alignment = taRightJustify
    Caption = 'D'
  end
  object RzStatusPane10: TRzStatusPane
    Left = 260
    Top = 26
    Width = 89
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Caption = '0.00'
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 638
    Width = 1206
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    GradientColorStyle = gcsMSOffice
    ParentColor = True
    TabOrder = 0
    VisualStyle = vsGradient
    object RzVersionInfoStatus1: TRzVersionInfoStatus
      Left = 0
      Top = 0
      Height = 19
      Align = alLeft
      Field = vifFileVersion
      VersionInfo = RzVersionInfo
      ExplicitLeft = 884
      ExplicitHeight = 20
    end
    object Progress: TRzProgressStatus
      Left = 100
      Top = 0
      Width = 148
      Height = 19
      Align = alLeft
      ParentShowHint = False
      NumSegments = 10
      PartsComplete = 0
      Percent = 0
      ShowPercent = True
      TotalParts = 0
    end
    object spnTime: TRzStatusPane
      Left = 248
      Top = 0
      Width = 285
      Height = 19
      Align = alLeft
      Caption = ''
    end
    object spRegistered: TRzStatusPane
      Left = 1106
      Top = 0
      Height = 19
      Align = alRight
      Caption = ''
      ExplicitLeft = 884
      ExplicitHeight = 20
    end
    object Status: TRzStatusPane
      Left = 533
      Top = 0
      Height = 19
      Align = alLeft
      Caption = ''
      ExplicitLeft = 1389
      ExplicitHeight = 20
    end
  end
  object Panel: TRzSizePanel
    AlignWithMargins = True
    Left = 3
    Top = 146
    Width = 240
    Height = 489
    BorderOuter = fsFlatRounded
    Color = clSkyBlue
    Constraints.MinWidth = 100
    RealTimeDrag = True
    TabOrder = 1
    object Project: TVirtualStringTree
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 225
      Height = 391
      Align = alClient
      ButtonFillMode = fmTransparent
      ButtonStyle = bsTriangle
      Color = clWhite
      Colors.BorderColor = clSkyBlue
      Colors.GridLineColor = clSkyBlue
      Colors.HeaderHotColor = clAqua
      Colors.SelectionTextColor = clBtnFace
      Colors.UnfocusedSelectionColor = clSkyBlue
      Colors.UnfocusedSelectionBorderColor = clSkyBlue
      DefaultNodeHeight = 25
      DragMode = dmAutomatic
      DragType = dtVCL
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.AutoSizeIndex = 0
      Header.Background = 16765595
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -13
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = [fsBold]
      Header.Height = 23
      Header.MainColumn = 1
      Header.Options = [hoAutoResize, hoColumnResize, hoDrag, hoOwnerDraw, hoShowSortGlyphs, hoVisible]
      Header.ParentFont = False
      NodeAlignment = naFromTop
      ParentFont = False
      PopupMenu = pmProject
      RootNodeCount = 5
      TabOrder = 0
      TreeOptions.MiscOptions = [toAcceptOLEDrop, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning]
      TreeOptions.PaintOptions = [toShowDropmark, toShowRoot, toThemeAware, toUseBlendedImages, toFullVertGridLines]
      TreeOptions.SelectionOptions = [toFullRowSelect, toRightClickSelect]
      OnAdvancedHeaderDraw = ProjectAdvancedHeaderDraw
      OnAfterCellPaint = ProjectAfterCellPaint
      OnChange = ProjectChange
      OnDblClick = ProjectDblClick
      OnDragOver = ProjectDragOver
      OnDragDrop = ProjectDragDrop
      OnFocusChanging = ProjectFocusChanging
      OnGetText = ProjectGetText
      OnPaintText = ProjectPaintText
      OnHeaderDrawQueryElements = ProjectHeaderDrawQueryElements
      OnLoadNode = ProjectLoadNode
      OnSaveNode = ProjectSaveNode
      Columns = <
        item
          Position = 0
          Width = 41
        end
        item
          Position = 1
          Text = 'Project Items'
          Width = 180
        end>
    end
    object RzPanel5: TRzPanel
      AlignWithMargins = True
      Left = 5
      Top = 402
      Width = 225
      Height = 82
      Align = alBottom
      BorderOuter = fsFlatRounded
      ParentColor = True
      TabOrder = 1
      object mmDescription: TRzMemo
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 215
        Height = 72
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clSkyBlue
        ReadOnly = True
        TabOrder = 0
        FocusColor = 16765595
        FrameHotColor = cl3DDkShadow
        FrameHotStyle = fsNone
        FrameVisible = True
        ReadOnlyColor = clSkyBlue
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 246
    Top = 143
    Width = 960
    Height = 495
    Align = alClient
    BorderOuter = fsNone
    Color = clSkyBlue
    TabOrder = 2
    object Pages: TRzPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 954
      Height = 489
      Hint = ''
      ActivePage = tsCalc
      Align = alClient
      Color = clSkyBlue
      UseColoredTabs = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabIndex = 1
      TabOrder = 0
      OnChange = PagesChange
      FixedDimension = 22
      object tsStructure: TRzTabSheet
        Color = clSkyBlue
        Caption = 'Structure'
        ExplicitTop = 20
        ExplicitHeight = 466
        object Tree: TVirtualStringTree
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 944
          Height = 457
          Align = alClient
          Color = clWhite
          Colors.BorderColor = 10930928
          Colors.HeaderHotColor = 16776176
          Colors.SelectionTextColor = clWhite
          EditDelay = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.AutoSizeIndex = 0
          Header.Background = 16763283
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -13
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = [fsBold]
          Header.Height = 20
          Header.Options = [hoColumnResize, hoDrag, hoOwnerDraw, hoShowSortGlyphs, hoVisible]
          Header.ParentFont = False
          Header.Style = hsPlates
          ParentFont = False
          ParentShowHint = False
          PopupMenu = pmStructure
          ShowHint = True
          TabOrder = 0
          TreeOptions.AutoOptions = [toAutoScrollOnExpand, toAutoTristateTracking, toAutoDeleteMovedNodes]
          TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toShowHorzGridLines, toShowRoot, toShowTreeLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme]
          TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toMultiSelect, toRightClickSelect]
          OnAdvancedHeaderDraw = TreeAdvancedHeaderDraw
          OnBeforeCellPaint = TreeBeforeCellPaint
          OnChange = TreeChange
          OnClick = TreeClick
          OnCreateEditor = TreeCreateEditor
          OnDblClick = TreeDblClick
          OnEditing = TreeEditing
          OnFreeNode = TreeFreeNode
          OnGetText = TreeGetText
          OnPaintText = TreePaintText
          OnHeaderDrawQueryElements = TreeHeaderDrawQueryElements
          OnKeyDown = TreeKeyDown
          OnLoadNode = TreeLoadNode
          OnSaveNode = TreeSaveNode
          ExplicitHeight = 460
          Columns = <
            item
              Color = clWhite
              Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus]
              Position = 0
              Text = 'Stack / Material'
              Width = 334
            end
            item
              Alignment = taCenter
              Position = 1
              Text = 'H ('#197')'
              Width = 70
            end
            item
              Alignment = taCenter
              Position = 2
              Text = #963' ('#197')'
              Width = 80
            end
            item
              Alignment = taCenter
              Position = 3
              Text = #961' (g/cm'#179')'
              Width = 90
            end
            item
              Alignment = taCenter
              Position = 4
              Text = 'N'
            end>
        end
      end
      object tsCalc: TRzTabSheet
        Color = clSkyBlue
        Caption = 'Calculation'
        ExplicitTop = 20
        ExplicitHeight = 466
        object Chart: TChart
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 944
          Height = 401
          Cursor = crCross
          Foot.Visible = False
          Legend.Brush.Color = clSilver
          Legend.Brush.BackColor = clSilver
          Legend.Brush.Gradient.Direction = gdTopBottom
          Legend.Brush.Gradient.EndColor = 2152289
          Legend.Brush.Gradient.MidColor = 7548915
          Legend.Brush.Gradient.StartColor = 10109259
          Legend.CheckBoxes = True
          Legend.Color = 14210754
          Legend.Font.Height = -13
          Legend.Font.Style = [fsBold]
          Legend.Frame.Width = 2
          Legend.Frame.Visible = False
          Legend.LegendStyle = lsSeries
          Legend.ResizeChart = False
          Legend.Shadow.Color = 9211020
          Legend.ShapeStyle = fosRoundRectangle
          Legend.TextStyle = ltsPlain
          Legend.Title.Transparent = False
          Legend.TopPos = 3
          MarginBottom = 5
          MarginLeft = 5
          MarginRight = 5
          MarginTop = 5
          MarginUnits = muPixels
          PrintProportional = False
          SubFoot.Visible = False
          SubTitle.Visible = False
          Title.Alignment = taLeftJustify
          Title.Text.Strings = (
            'TChart')
          Title.Visible = False
          OnAllowScroll = ChartAllowScroll
          OnClickLegend = ChartClickLegend
          OnZoom = ChartZoom
          DepthAxis.Automatic = False
          DepthAxis.AutomaticMaximum = False
          DepthAxis.AutomaticMinimum = False
          DepthAxis.Maximum = 0.439999999999999900
          DepthAxis.Minimum = -0.560000000000000300
          DepthTopAxis.Automatic = False
          DepthTopAxis.AutomaticMaximum = False
          DepthTopAxis.AutomaticMinimum = False
          DepthTopAxis.Maximum = 0.439999999999999900
          DepthTopAxis.Minimum = -0.560000000000000300
          LeftAxis.Axis.SmallSpace = 1
          LeftAxis.AxisValuesFormat = '00e-0'
          LeftAxis.LabelsExponent = True
          LeftAxis.LabelsFormat.Margins.Left = 0
          LeftAxis.LabelsFormat.Margins.Top = 0
          LeftAxis.LabelsFormat.Margins.Right = 0
          LeftAxis.LabelsFormat.Margins.Bottom = 0
          LeftAxis.LabelsFormat.Margins.Units = maPixels
          LeftAxis.Logarithmic = True
          LeftAxis.MaximumOffset = 10
          LeftAxis.RoundFirstLabel = False
          LeftAxis.Title.Caption = 'Reflectivity'
          LeftAxis.TitleSize = 15
          Pages.AutoScale = True
          RightAxis.Automatic = False
          RightAxis.AutomaticMaximum = False
          RightAxis.AutomaticMinimum = False
          View3D = False
          Zoom.Pen.Color = clRed
          Zoom.Pen.Mode = pmNotXor
          Align = alClient
          BevelOuter = bvLowered
          Color = clCream
          TabOrder = 0
          OnMouseDown = ChartMouseDown
          OnMouseMove = ChartMouseMove
          OnMouseUp = ChartMouseUp
          ExplicitHeight = 404
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            5
            5
            5
            5)
          ColorPaletteIndex = 13
        end
        object RzPanel3: TRzPanel
          AlignWithMargins = True
          Left = 3
          Top = 410
          Width = 944
          Height = 50
          Align = alBottom
          BorderOuter = fsFlatRounded
          Color = clSkyBlue
          TabOrder = 1
          ExplicitTop = 413
          DesignSize = (
            944
            50)
          object RzStatusPane1: TRzStatusPane
            Left = 5
            Top = 4
            Width = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Alignment = taRightJustify
            Caption = 'X'
          end
          object RzStatusPane2: TRzStatusPane
            Left = 5
            Top = 28
            Width = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Alignment = taRightJustify
            Caption = 'Y'
          end
          object StatusY: TRzStatusPane
            Left = 33
            Top = 28
            Width = 64
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '0.00'
          end
          object StatusX: TRzStatusPane
            Left = 33
            Top = 4
            Width = 64
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '0.00'
          end
          object RzStatusPane3: TRzStatusPane
            Left = 103
            Top = 5
            Width = 46
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Alignment = taRightJustify
            Caption = 'Rmax'
          end
          object RzStatusPane4: TRzStatusPane
            Left = 104
            Top = 28
            Width = 44
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Alignment = taRightJustify
            Caption = 'Xmax'
          end
          object StatusMaxX: TRzStatusPane
            Left = 153
            Top = 28
            Width = 64
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '0.00'
          end
          object StatusRMax: TRzStatusPane
            Left = 153
            Top = 4
            Width = 64
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '0.00'
          end
          object RzStatusPane5: TRzStatusPane
            Left = 221
            Top = 4
            Width = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Alignment = taRightJustify
            Caption = 'Ri'
          end
          object StatusD: TRzStatusPane
            Left = 252
            Top = 28
            Width = 89
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '0.00'
          end
          object RzStatusPane6: TRzStatusPane
            Left = 221
            Top = 28
            Width = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Alignment = taRightJustify
            Caption = 'D'
          end
          object StatusRi: TRzStatusPane
            Left = 252
            Top = 4
            Width = 89
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '0.00'
          end
          object btnChartScale: TRzBitBtn
            Left = 853
            Top = 15
            Anchors = [akTop, akRight]
            Caption = 'Linear'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnChartScaleClick
          end
          object cbMinLimit: TRzComboBox
            Left = 794
            Top = 16
            Width = 53
            Height = 24
            Anchors = [akRight, akBottom]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Text = '5e-7'
            Items.Strings = (
              '1e-5'
              '1e-6'
              '1e-7'
              '1e-8')
          end
        end
      end
      object TabSheet1: TRzTabSheet
        Color = clSkyBlue
        TabVisible = False
        Caption = 'Gradients'
        ExplicitTop = 20
        ExplicitHeight = 466
        object chGradients: TChart
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 944
          Height = 457
          Cursor = crCross
          Legend.Alignment = laTop
          Title.Text.Strings = (
            'TChart')
          Title.Visible = False
          View3D = False
          ZoomWheel = pmwNormal
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 460
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series1: TPointSeries
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
    end
  end
  object Ribbon: TRibbon
    Left = 0
    Top = 0
    Width = 1206
    Height = 143
    ActionManager = ActionManager
    ScreenTips = ScreenTipsManager
    ApplicationMenu.Caption = 'Recent Projects'
    Caption = 'X-Ray Calc'
    Tabs = <
      item
        Caption = 'Project'
        Page = rbStructure
      end
      item
        Caption = 'Calc'
        Page = rbnpgCalc
      end
      item
        Caption = 'Help'
        Page = rbnpgHelp
      end>
    OnHelpButtonClick = RibbonHelpButtonClick
    OnRecentItemClick = RibbonRecentItemClick
    OnTabChange = RibbonTabChange
    DesignSize = (
      1206
      143)
    StyleName = 'Ribbon - Luna'
    object rbnpgCalc: TRibbonPage
      Left = 0
      Top = 50
      Width = 1205
      Height = 93
      Caption = 'Calc'
      Index = 1
      object RibbonGroupCalc: TRibbonGroup
        Left = 4
        Top = 3
        Width = 160
        Height = 86
        ActionManager = ActionManager
        Caption = 'Calc'
        GroupIndex = 0
      end
      object RibbonGroup5: TRibbonGroup
        Left = 385
        Top = 3
        Width = 183
        Height = 86
        Caption = 'By angle'
        GroupIndex = 2
        object pnlAngleParams: TRzPanel
          Left = 4
          Top = 3
          Width = 173
          Height = 67
          BorderOuter = fsNone
          TabOrder = 0
          Transparent = True
          object Label1: TLabel
            Left = 3
            Top = 40
            Width = 14
            Height = 16
            Caption = 'q2'
            Font.Charset = GREEK_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 3
            Top = 14
            Width = 14
            Height = 16
            Caption = 'q1'
            Font.Charset = GREEK_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 80
            Top = 14
            Width = 6
            Height = 16
            Caption = 'l'
            Font.Charset = GREEK_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 75
            Top = 40
            Width = 15
            Height = 16
            Caption = 'Dq'
            Font.Charset = GREEK_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
          end
          object edStartTeta: TEdit
            Left = 20
            Top = 13
            Width = 50
            Height = 21
            Alignment = taRightJustify
            TabOrder = 0
            Text = '0.01'
          end
          object edEndTeta: TEdit
            Left = 20
            Top = 39
            Width = 50
            Height = 21
            Alignment = taRightJustify
            TabOrder = 1
            Text = '10'
          end
          object edWidth: TEdit
            Left = 96
            Top = 39
            Width = 37
            Height = 21
            Alignment = taRightJustify
            TabOrder = 2
            Text = '0.015'
          end
          object edLambda: TEdit
            Left = 96
            Top = 13
            Width = 73
            Height = 21
            Alignment = taRightJustify
            TabOrder = 3
            Text = '1.54043'
          end
          object cb2Theta: TRzCheckBox
            Left = 139
            Top = 40
            Width = 33
            Height = 18
            Caption = '2q'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 4
            Transparent = True
          end
        end
      end
      object RibbonGroup10: TRibbonGroup
        Left = 570
        Top = 3
        Width = 134
        Height = 86
        Caption = 'By wavelength'
        GroupIndex = 3
        object pnlWaveParams: TRzPanel
          Left = 4
          Top = 3
          Width = 125
          Height = 67
          BorderOuter = fsNone
          Enabled = False
          TabOrder = 0
          Transparent = True
          object Label9: TLabel
            Left = 1
            Top = 40
            Width = 13
            Height = 16
            Caption = 'l2'
            Enabled = False
            Font.Charset = GREEK_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 1
            Top = 14
            Width = 13
            Height = 16
            Caption = 'l1'
            Enabled = False
            Font.Charset = GREEK_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 69
            Top = 14
            Width = 7
            Height = 16
            Caption = 'q'
            Enabled = False
            Font.Charset = GREEK_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 66
            Top = 41
            Width = 14
            Height = 16
            Caption = 'Dl'
            Enabled = False
            Font.Charset = GREEK_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Symbol'
            Font.Style = []
            ParentFont = False
          end
          object edStartL: TEdit
            Left = 16
            Top = 13
            Width = 47
            Height = 21
            Alignment = taRightJustify
            Enabled = False
            TabOrder = 0
            Text = '1'
          end
          object edEndL: TEdit
            Left = 16
            Top = 39
            Width = 47
            Height = 21
            Alignment = taRightJustify
            Enabled = False
            TabOrder = 1
            Text = '10'
          end
          object edTheta: TEdit
            Left = 83
            Top = 13
            Width = 40
            Height = 21
            Alignment = taRightJustify
            Enabled = False
            TabOrder = 2
            Text = '85'
          end
          object edDL: TEdit
            Left = 83
            Top = 40
            Width = 40
            Height = 21
            Alignment = taRightJustify
            Enabled = False
            TabOrder = 3
            Text = '0'
          end
        end
      end
      object RibbonGroup11: TRibbonGroup
        Left = 166
        Top = 3
        Width = 217
        Height = 86
        Caption = 'Options'
        GroupIndex = 1
        object RzPanel6: TRzPanel
          Left = 5
          Top = 3
          Width = 212
          Height = 65
          BorderOuter = fsNone
          TabOrder = 0
          Transparent = True
          object Label5: TLabel
            Left = 163
            Top = 9
            Width = 42
            Height = 26
            Caption = 'Number'#13'of points'
          end
          object edN: TEdit
            Left = 163
            Top = 41
            Width = 42
            Height = 21
            Alignment = taRightJustify
            NumbersOnly = True
            TabOrder = 0
            Text = '1000'
          end
          object rgPolarisation: TRadioGroup
            AlignWithMargins = True
            Left = 79
            Top = 3
            Width = 78
            Height = 59
            Align = alLeft
            Caption = 'Polarisation'
            ItemIndex = 0
            Items.Strings = (
              's - type'
              'sp - type')
            TabOrder = 1
          end
          object rgCalcMode: TRadioGroup
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 70
            Height = 59
            Align = alLeft
            Caption = 'Mode'
            ItemIndex = 0
            Items.Strings = (
              'by angle'
              'by wave')
            TabOrder = 2
            OnClick = rgModeClick
          end
        end
      end
      object RibbonGroup9: TRibbonGroup
        Left = 706
        Top = 3
        Width = 50
        Height = 86
        ActionManager = ActionManager
        Caption = 'Result'
        GroupIndex = 6
      end
      object rbngrpPlot: TRibbonGroup
        Left = 758
        Top = 3
        Width = 50
        Height = 86
        ActionManager = ActionManager
        Caption = 'Plot'
        GroupIndex = 7
      end
    end
    object rbnpgHelp: TRibbonPage
      Left = 0
      Top = 50
      Width = 1205
      Height = 93
      Caption = 'Help'
      Index = 2
      object rbngrpHelp: TRibbonGroup
        Left = 371
        Top = 3
        Width = 94
        Height = 86
        ActionManager = ActionManager
        Caption = 'Help'
        GroupIndex = 3
      end
      object rbngrpWebhelp: TRibbonGroup
        Left = 4
        Top = 3
        Width = 196
        Height = 86
        ActionManager = ActionManager
        Caption = 'Web Help'
        GroupIndex = 1
      end
      object rbngrpTutorials: TRibbonGroup
        Left = 202
        Top = 3
        Width = 167
        Height = 86
        ActionManager = ActionManager
        Caption = 'Tutorials'
        GroupIndex = 2
      end
    end
    object rbStructure: TRibbonPage
      Left = 0
      Top = 50
      Width = 1205
      Height = 93
      Caption = 'Project'
      Index = 0
      object RibbonGroup1: TRibbonGroup
        Left = 484
        Top = 3
        Width = 68
        Height = 86
        ActionManager = ActionManager
        Caption = 'Stack'
        GroupIndex = 2
      end
      object RibbonGroup2: TRibbonGroup
        Left = 554
        Top = 3
        Width = 134
        Height = 86
        ActionManager = ActionManager
        Caption = 'Layer'
        GroupIndex = 3
      end
      object RibbonGroup13: TRibbonGroup
        Left = 270
        Top = 3
        Width = 212
        Height = 86
        ActionManager = ActionManager
        Caption = 'Project Items'
        GroupIndex = 1
      end
      object RibbonGroup6: TRibbonGroup
        Left = 690
        Top = 3
        Width = 139
        Height = 86
        ActionManager = ActionManager
        Caption = 'Data'
        GroupIndex = 4
      end
      object rbngrpProject: TRibbonGroup
        Left = 4
        Top = 3
        Width = 264
        Height = 86
        ActionManager = ActionManager
        Caption = 'Project'
        GroupIndex = 0
      end
      object grpMaterial: TRibbonGroup
        Left = 831
        Top = 3
        Width = 51
        Height = 86
        ActionManager = ActionManager
        Caption = 'Materials'
        GroupIndex = 5
      end
    end
  end
  object il_32: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 288
    Top = 296
    Bitmap = {
      494C01011B001D00040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000E0000000010020000000000000C0
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101020505
      05060A0A0A0B0D0D0D0E101010111212121312121213101010110D0D0D0E0A0A
      0A0B050505060101010200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010102050505060D0D
      0D0E17171718202020212929292A2D2D2D2E32323233363636373B3B3B3C4040
      4041454545464949494A4E4E4E4F52525253525252534F4F4F504B4B4B4C4747
      4748424242433D3D3D3E38383839343434352F2F2F302B2B2B2C272727281D1D
      1D1E131313140A0A0A0B03030304000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202030909090A121212131D1D
      1D1E272727282E2E2E2F343434353737373837373738343434352E2E2E2F2727
      27281D1D1D1E121212130909090A020202030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      03049090909F181818FE101010FE1E1E1EFB242424FBA46A43FBB86D37FFBB6E
      38FFBB6F38FFBA743DFEBA753EFEBA743DFEBB753EFEBB753EFEBD7640FEBC75
      45FDBE7645FDBE7645FDBD7B45FCBD7C45FCBE7D47FCC37C4CFBBF8657F86968
      686A0D0D0D0E0303030400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101010207070708141414152525252672727274A09E
      9BABB5A399D0BB9076E8CB652EFFCD672FFFBE9073E9B7A499D2A49F9DAF7D7D
      7D7F3E3E3E3F3434343525252526141414150707070801010102000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000686868E51F1F1FFF131313FF101010FF1B1B1BFFB66F3EFFDB8944FFDC89
      45FFDB8A45FFDB8A46FFDC8B46FFDC8B46FFDC8B47FFDD8B47FFDD8B48FFDD8C
      48FFDD8C49FFDE8D49FFDE8D49FFDF8E4AFFDF8E4AFFDF8E4BFFDF8E4BFFA69F
      9AA9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010303030400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020202030D0D0D0E2E2E2E2F9493929ABC7A56F3CA5E26FFD365
      2CFFDA6B35FFDD733CFFE08141FFE28847FFE49151FFE59859FFE39555FFDD89
      46FFCA855AF49D9A99A54E4E4E4F34343435202020210D0D0D0E020202030000
      0000000000000000000000000000000000000000000000000000000000000606
      0607212121FD2B2B2BFF1B1B1BFF151515FF242424FFBB7240FFDE8C48FFDE8D
      49FFDE8D49FFDF8D4AFFDF8E4AFFDF8E4BFFE08F4BFFE08F4BFFE08F4CFFE18F
      4CFFE1904DFFE1904DFFE2914DFFE2914EFFE2914EFFE2924FFFE3924FFFA7A0
      9BAA000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02034B4B4B4C5A5A5A5C3B3B3B3C25252526161616170B0B0B0C040404050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020203101010116A6A6A6BBA7755F3CA5A21FFD56022FFD76426FFD968
      2AFFDC6D2BFFDE712FFFE07632FFE38236FFE5873AFFE88C3DFFEB984DFFEDA5
      5EFFF0B270FFE79F5CFFCD8A5CF47F7F7F823D3D3D3E27272728101010110202
      0203000000000000000000000000000000000000000000000000000000001818
      18191F1F1FFF383838FF232323FF1A1A1AFF2D2D2DFFBD7645FFE08F4CFFE08F
      4CFFE1904DFFE1904DFFE1914DFFE2914EFFE2924FFFE2914FFFE39250FFE392
      4FFFE39251FFE49351FFE49452FFE49452FFE59552FFE59553FFE59553FFA59E
      9AA8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      181992AAC7EA81A3C8F78E9FB3DE949BA2C08B8D8F9F7474757B5858585A3D3D
      3D3E27272728171717180C0C0C0D040404050000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      020310101011A49F9DAFC15523FFD05820FFD35C1FFFD56022FFD76525FFDA69
      29FFDC6E2CFFDE7230FFE17733FFE38337FFE6883BFFE98E3EFFEB9342FFEE99
      46FFF1A04DFFF4B165FFF4BF83FFE6954FFFADA5A0BB404040412929292A1010
      1011020202030000000000000000000000000000000000000000000000001717
      17181F1F1FFF3E3E3EFF282828FF1C1C1CFF313131FFBE7645FFE2924FFFE392
      4FFFE39250FFE29250FFE49351FFE49351FFE8A56DFFF7E0CEFFF8E4D5FFEBAC
      77FFE69554FFE69654FFE69655FFE79755FFE79756FFE79757FFE89857FFA69F
      9AA9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3E3F8CB3E5FF8BB2E5FF93BAF0FF91B9F3FF8FB6EFFF8AAFE3FF85A3C9F58C9E
      B4E0949BA3C38C8E90A17777777E5A5A5A5C3F3F3F402929292A181818190C0C
      0C0D050505060000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101020D0D
      0D0EA39F9DAEC35424FFD05521FFD1591DFFD35D1FFFD66122FFD86526FFDA69
      29FFDC6C2BFFDA6225FFE08553FFE1824BFFE16F2FFFE98D3EFFEC9443FFEF9A
      47FFF19F4CFFF5A550FFF8B15DFFFBCA8AFFEFAB63FFADA5A0BB404040412727
      27280D0D0D0E0101010200000000000000000000000000000000000000001717
      17181C1C1CFF3D3D3DFF272727FF191919FF2F2F2FFFB97445FFE49452FFE494
      52FFE49553FFE59553FFE69654FFE59654FFF5D6BEFFFCF1E8FFFCF1E9FFF7DC
      C9FFE79857FFE89857FFE99958FFE99A58FFE99A59FFEA9A5AFFEA9B5BFFA8A0
      9BAB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006969
      696C91B7ECFF89B2D5FF8FC2A7FF98C5BBFF99C2CEFF98BCDCFF95B9E7FF90B6
      EEFF8CB3EFFF86AFEAFF78A6DDFF799EC4F78A9EB3E2939BA3C68D8F91A37979
      79805C5C5C5E414141422A2A2A2B1919191A0D0D0D0E05050506010101020000
      000000000000000000000000000000000000000000000000000007070708A09E
      9CABC25426FFCE5423FFD0551AFFD1591DFFD35D1FFFD66122FFD86526FFDA69
      29FFD65A21FFEBCEC4FFF1EAEAFFF3EDEDFFEEC6B3FFE47432FFEC9443FFEF9A
      47FFF19F4CFFF5A550FFF8AB54FFFAB35BFFFDCD8BFFEEA963FFADA5A0BB3D3D
      3D3E202020210707070800000000000000000000000000000000000000001818
      18191B1B1BFF3B3B3BFF272727FF171717FF2C2C2CFFB47145FFE69554FFE696
      56FFE79655FFE69656FFE89757FFE89757FFF5D0B5FFFCF1E9FFFCF1E9FFF6D4
      BCFFE99959FFEA9A5AFFEA9A5BFFEA9B5BFFEB9B5DFFEC9C5DFFEC9C5EFFA9A2
      9DAD000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E90
      939D93B7EDFF8BB9C7FF78C273FF80C277FF83C47AFF89C688FF8EC796FF95C7
      A8FF98C5BBFF9AC2CEFF98BDDBFF94B9E6FF90B6EFFF88B3EDFF80ADE6FF77A8
      DFFF7AA1CCF88AA2B9E4929DA7C78E9193A6797A7A825E5E5F61434343442A2A
      2A2B2424242522222223030303040000000000000000020202035D5D5D5EBB54
      27FFCC5626FFCE5118FFCF551AFFD1581CFFD35C1FFFD56022FFD76525FFD966
      27FFDD865AFFF0E8E8FFF0E8E8FFF0E8E8FFF2EAEAFFE58E59FFEB9342FFEE99
      46FFF19E4AFFF4A34EFFF6A952FFF9AD56FFFAB25BFFFAC888FFE5944EFF7F7F
      7F82343434351414141502020203000000000000000000000000000000001818
      1819171717FF3B3B3BFF272727FF141414FF2A2A2AFFAD6D43FFE89757FFE898
      57FFE89957FFE99958FFE99959FFE99958FFEBA064FFF4C8A9FFF4C8A8FFECA5
      6BFFEB9C5BFFEB9C5DFFEC9C5DFFED9D5EFFEC9F60FFEC9E60FFEE9F60FFAAA3
      9DAE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101029FA8
      B3C793B6EBFF8BBCB6FF83C47AFF84C385FF84C385FF82C282FF81C280FF80C2
      78FF80C277FF84C47AFF89C689FF8FC897FF93C7A6FFB0CDCFFFAFBFDCFF9AB7
      DBFF8CB3E0FF8BB6EAFF8FBAF4FF8CB7F1FF86AEE5FF7EA5D0FA8DA0B9E6929A
      A4C78F98A3C48E9295A71D1D1D1E000000000000000018181819B5765DF1C95B
      2FFFCC5019FFCD5117FFCF5419FFD1581CFFD35C1FFFD56022FFD76425FFD864
      25FFE09872FFF0E8E8FFF0E8E8FFF0E8E8FFF0E8E8FFE48C57FFEB9141FFED97
      45FFF09C49FFF2A04CFFF4A550FFF6A852FFF7AA53FFF7AF5CFFF3BE81FFCC89
      5CF44E4E4E4F252525260909090A000000000000000000000000000000001919
      191A151515FF3A3A3AFF262626FF121212FF282828FFA76A41FFE89958FFE999
      59FFEA9A5AFFEA9B59FFE99A5AFFEB9A5BFFEB9B5CFFEB9C5CFFED9C5CFFEC9D
      5DFFEC9E5EFFED9E5FFFED9E5FFFEEA163FFEE9F61FFEE9F61FFEF9F61FFAFA5
      9EB2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000171717189EB4
      CFEB95B7E8FF8BC1A6FF86C583FF87C488FF87C488FF86C487FF86C487FF85C3
      86FF84C385FF83C384FF82C282FF80C280FF78C175FF91C98CFFB8DAB4FFC8DD
      C7FFC9D9CEFFB9CEC9FF98C3B9FF97C1C9FF8CB2CEFF83A8CEFF75A4DAFF72A3
      DEFF95BBEDFFADC7E8FF6D6D6D71060606070101010286858589BF5A2FFFCA54
      22FFCC4D14FFCD5016FFCF5319FFD1571BFFD35B1EFFD55F21FFD76324FFD967
      27FFD76536FFEEE0DCFFF0E8E8FFF0E8E8FFEFE0DCFFE17036FFE98F3FFFEC94
      43FFEE9846FFF09C49FFF2A04CFFF3A34EFFF4A44FFFF4A34FFFF3AF64FFE79E
      5BFF9D9A99A53434343512121213010101020000000000000000000000001A1A
      1A1B131313FF393939FF262626FF0F0F0FFF262626FFA1663FFFE99A59FFEA9A
      5AFFEA9A5AFFEA9A5BFFEA9B5BFFEB9B5BFFEB9B5CFFEDA56BFFEFAE79FFEC9C
      5DFFEC9D5DFFEC9D5EFFEBA062FFED9E60FFED9E5FFFED9E60FFED9E5FFFB5AA
      A1BA000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003B3B3B3C97BA
      E9FE97BAE3FF8CC498FF8AC688FF8AC68BFF89C68AFF89C58AFF88C589FF88C5
      89FF87C488FF86C487FF86C487FF86C487FF85C386FF82C283FF78C179FF81C3
      82FF91CA90FFA2D09FFF86C782FF71B268FF639860FF74A2AAFF87ABDCFFA6C4
      EAFFBED4EFFFCCE0FBFFA5ADB8CD0707070805050506B3765DF1C96137FFCA4B
      14FFCB4C13FFCD4F16FFCE5318FFD0561BFFD25A1EFFD45E20FFD66223FFD866
      26FFD65C22FFDA6F42FFE3A488FFE4A589FFDE6F3CFFE37533FFE88C3DFFEA90
      40FFEC9443FFEE9846FFEF9B48FFF09D4AFFF19E4AFFF19E4AFFF09E4CFFEFB0
      6EFFCA855AF43E3E3E3F1D1D1D1E050505060000000000000000000000001A1A
      1A1B101010FF383838FF252525FF0D0D0DFF242424FF9F653EFFE89858FFE999
      58FFE99959FFE99959FFE99A59FFEA9A5AFFEA9A5AFFEDA870FFF6D3B9FFEB9B
      5BFFEB9B5CFFEA9E60FFEA9E5FFFEC9C5DFFEC9D60FFEC9D5DFFEC9D5EFFBBAD
      A2C2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066666669A2C4
      F3FF98BCD9FF8CC78FFF8CC78CFF8CC78CFF8CC78CFF8BC78CFF8BC68CFF8AC6
      8BFF8AC58BFF89C68AFF89C58AFF88C589FF88C589FF87C588FF87C488FF86C4
      87FF83C284FF80C281FF84C583FF6A9F77FF79A1BAFF9FBDE9FFB7CEEEFFC5D8
      EFFFC5D9F3FFA9B5C5D9404040410000000157575758BA5930FFC85A2CFFC949
      11FFCB4C13FFCC4F15FFCE5218FFD0551AFFD1591DFFD35C1FFFD56022FFD764
      25FFD56233FFE2A287FFE3A387FFE5A589FFE5A78AFFDE682AFFE6893BFFE88C
      3EFFEA9040FFEB9342FFED9644FFEE9746FFEE9846FFEE9846FFED9745FFECA3
      5CFFDC8746FF7D7D7D7F272727280A0A0A0B0000000000000000000000001B1B
      1B1C0E0E0EFF373737FF242424FF0C0C0CFF222222FF9E643DFFE79756FFE897
      57FFE89857FFE89857FFE89858FFE99958FFE99959FFEA9D5FFFF9E6D7FFEA9A
      5AFFEA9C5DFFEA9D5FFFEA9B5BFFEA9C5FFFEB9B5CFFEB9B5CFFEB9C5CFFC1AF
      A1C8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008B8C8F97A8C8
      F6FF98BFCCFF8EC88CFF8FC88FFF8EC88FFF8DC88EFF8DC88EFF8DC88EFF8CC7
      8DFF8CC78DFF8CC78CFF8BC78CFF8BC68CFF8AC68BFF8AC68BFF89C68AFF89C5
      8AFF88C589FF87C585FF8CC498FF9CBADFFFACC7EEFFBDD3EDFFC8DAF0FFC0D4
      EFFFA2C4F0FF5D5D5D5F0000000000000000908F8F95C8704AFFCB5827FFC948
      10FFCA4B12FFCC4E14FFCD5117FFCF5419FFD1571CFFD35B1EFFD45F21FFD660
      22FFD9734CFFF1EAEAFFF1EAEAFFF1E9E9FFF1E9E9FFDC6528FFE48538FFE688
      3BFFE88C3DFFE98E3FFFEA9040FFEB9241FFEB9242FFEB9242FFEB9141FFEA96
      4BFFE29353FFA49F9DAF2E2E2E2F0D0D0D0E0000000000000000000000001B1B
      1B1C0B0B0BFF353535FF242424FF0B0B0BFF1F1F1FFF9D633BFFE69655FFE796
      55FFE79755FFE79756FFE79756FFE79756FFE89857FFE89857FFFAEADEFFEBA3
      67FFE99E61FFE89A5AFFE99C5EFFEA9A5AFFEA9A5AFFEA9A5AFFEA9B5BFFC6B0
      9FCF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001A3A8B1C4AAC8
      F5FF98C3BEFF90CA8DFF91C992FF90C892FF90C991FF90C891FF8FC890FF8FC8
      90FF8EC88FFF8EC88FFF8DC88EFF8CC88DFF8CC78DFF8CC78DFF8CC78CFF8BC7
      8CFF8BC68CFF8AC68AFF8AC58CFFB0CFD5FFC8D9F6FFD1DFF7FFBCD4E8FF98BB
      E7FF94B4DEFB363636370000000000000000AFA49FC3D3865BFFD0602DFFCB4F
      19FFCA4A12FFCB4D14FFCD5016FFCE5318FFD0561BFFD2591DFFD45D20FFD55F
      21FFD8724BFFF2EBEBFFF2EAEAFFF1EAEAFFF1EAEAFFDB6730FFE28135FFE484
      38FFE5873AFFE7893BFFE78B3DFFE88C3EFFE88D3EFFE88D3EFFE88C3DFFE78A
      3CFFE49657FFB7A499D234343435101010110000000000000000000000001C1C
      1C1D0A0A0AFF353535FF232323FF080808FF1E1E1EFF9D633BFFE59553FFE595
      53FFE69554FFE69654FFE69655FFE69655FFE79755FFE79756FFF4CEB2FFF5DA
      C5FFE7995AFFE79C5DFFE89858FFE89958FFE99958FFE89A5AFFE99959FFCBB0
      9CD5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516A7B9CFE9A8C5
      F1FF98C7B0FF92CB90FF93CA95FF92CA95FF92CA94FF92CA93FF91C993FF91C9
      92FF91C992FF90C991FF90C891FF8FC890FF8FC890FF8EC88FFF8EC88FFF8DC8
      8EFF8DC88EFF8CC78DFF8AC689FF98CC9CFFD0E1ECFFB1D4C3FF8CBFB1FF91B6
      EBFF9DB0C6E3161616170000000000000000B39182E1D4855AFFD05F2DFFD160
      2EFFCC521CFFCB4C13FFCC4E15FFCE5117FFCF541AFFD1581CFFD35B1EFFD45E
      21FFD15725FFF2ECECFFF2EBEBFFF2EBEBFFF2EAEAFFE4A589FFDD6C2CFFE280
      34FFE38336FFE48438FFE58639FFE5873AFFE6883AFFE6883AFFE58739FFE585
      38FFE48F50FFBE9073E937373738121212130000000000000000000000001D1D
      1D1E080808FF333333FF222222FF060606FF1C1C1CFF9E623BFFE49451FFE494
      52FFE59452FFE59553FFE59553FFE59553FFE69554FFE69654FFE7A369FFFAEB
      DFFFF3CBAFFFE79756FFE79756FFE79756FFE89857FFE89959FFE89858FFCEAF
      99DA000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000038383839A7C4EAFEA8C6
      EAFF97C9A3FF96CC95FF96CC98FF95CC97FF95CB97FF94CB96FF93CB95FF93CA
      95FF93CA95FF92CA94FF92CA93FF91C993FF91C992FF91C992FF90C991FF90C8
      91FF8FC890FF8FC890FF8EC88FFF8CC88CFF93C997FF8BC785FF8EBDBFFF95BA
      EFFF9DA3ACC0020202030000000000000000B2552EFFD58457FFD05F2DFFD160
      2DFFD1602EFFCF5722FFCC4D14FFCD5016FFCE5318FFD0561AFFD2591DFFD35C
      1FFFD2571DFFE09F85FFF3ECECFFF2ECECFFF2EBEBFFF0E2DFFFDC7345FFDE6F
      2EFFE17733FFE28034FFE28135FFE38236FFE38336FFE38236FFE38236FFE280
      35FFE18645FFCD672FFF37373738121212130000000000000000000000001E1E
      1E1F050505FF303030FF202020FF040404FF191919FFA0633CFFE39250FFE393
      50FFE49351FFE49351FFE49451FFE49452FFE59452FFE59757FFE59B5EFFEEBC
      98FFFCF1E8FFEFBD97FFE69654FFE69655FFE79757FFE89858FFE79756FFD2AD
      91E1000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000061616163B1CEF5FFA7C8
      E1FF97CC9BFF98CD99FF98CD99FF98CD99FF97CD98FF97CC98FF96CC98FF96CC
      98FF95CC97FF95CB97FF94CB96FF93CB96FF93CA95FF92CA95FF92CA94FF92CA
      94FF91C993FF91C992FF91C992FF90C891FF8EC88EFF8EC88DFF94BCD2FF98BC
      EEFF88898A93000000000000000000000000B1552EFFD7865BFFD05F2EFFD05F
      2DFFD1602EFFD2612EFFD15E29FFCD521AFFCD5117FFCF5419FFD0571BFFD25A
      1DFFD45D20FFCF4F19FFEAC6B9FFF3EDEDFFF3ECECFFF2ECECFFF0E2DFFFD969
      38FFDE712EFFDF7431FFE07532FFE07632FFE17733FFE07633FFE07632FFE075
      31FFDF783FFFCB642DFF34343435101010110000000000000000000000001F1F
      1F20030303FF2D2D2DFF1E1E1EFF020202FF161616FFA2653BFFE2914EFFE292
      4FFFE3924FFFE3924FFFE39250FFE39350FFE49351FFE49D63FFE4985AFFE496
      56FFF5D7C1FFFBF0E8FFEEBA93FFE59553FFE69859FFE69654FFE69654FFD4AB
      8BE6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000898A8B93B4D2F9FFA6CB
      D5FF98CE98FF9BCE9CFF9ACE9CFF9ACE9CFF99CE9BFF98CE9AFF98CD9AFF98CD
      99FF98CD99FF97CD98FF97CC98FF96CC98FF96CC98FF95CC97FF95CB97FF94CB
      96FF94CB96FF93CA95FF92CA94FF92CA94FF92CA92FF91C897FF97BBDDFF98BB
      EAFF61626264000000000000000000000000B39182E1DA8F66FFD05F2EFFD05F
      2DFFD1602DFFD1602EFFD2612EFFD3622EFFD15C25FFCF541BFFCF541AFFD157
      1CFFD25A1EFFD35B1FFFD15725FFEDD0C6FFF3EDEDFFF3EDEDFFF3ECECFFEDD0
      C6FFD65A21FFDD6F2DFFDD702EFFDE712FFFDE712FFFDE712FFFDE712EFFDD70
      2EFFDD713AFFBB9076E82E2E2E2F0D0D0D0E0000000000000000000000002020
      2021010101FF292929FF1C1C1CFF000000FF141414FFA4663CFFE1904DFFE190
      4DFFE2914EFFE59E62FFE7A369FFE2914FFFE29A5DFFE49A5CFFE39555FFE393
      50FFE69C5FFFFAE9DDFFFBF0E7FFEAAB76FFE59656FFE59452FFE59553FFD6A7
      81EB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001A4A9AFC1B5D2F8FFA4CD
      C7FF9CCF99FF9DCFA0FF9DCF9FFF9CCF9EFF9CCE9EFF9BCE9DFF9BCE9DFF9ACE
      9CFF9ACE9CFF99CE9BFF99CE9BFF98CD9AFF98CD99FF98CD99FF97CD98FF97CC
      98FF96CC98FF96CB98FF95CC97FF95CB97FF94CC93FF94C7A4FF9ABBE5FF98B9
      DDFC3A3A3A3B000000000000000000000000ADA49FC2DD9973FFD05F2EFFD05F
      2EFFD05F2DFFD1602EFFD1602EFFD2622EFFD3632EFFD4642FFFD25E27FFD15B
      21FFD1571CFFD25A1EFFD35B1FFFD05323FFF2E4E1FFF4EEEEFFF3EDEDFFF3ED
      EDFFDE8F67FFD96526FFDB6C2BFFDB6C2BFFDC6D2CFFDC6D2CFFDB6C2BFFDB6B
      2AFFD96934FFB5A399D0272727280A0A0A0B0000000000000000000000002121
      2122000000FF252525FF191919FF000000FF111111FFA4663BFFE08F4BFFE08F
      4CFFE49E64FFFAEEE5FFFBF0E7FFEBB891FFE2A067FFE29757FFE2914EFFE291
      4FFFE2924FFFF1C8A9FFFBF0E8FFF3CFB4FFE39250FFE49351FFE49351FFD7A4
      79EF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000012121213B0BDCEE6B5CEF2FFA0CB
      B5FF9ECF9CFFA0D1A2FFA0D1A2FFA0D1A2FF9FD1A1FF9ED0A0FF9ECFA0FF9DCF
      9FFF9CCF9EFF9CCE9EFF9BCE9DFF9BCE9DFF9ACE9CFF99CE9BFF99CE9BFF99CE
      9BFF98CD9AFF98CD9AFF98CD99FF97CD98FF96CD94FF98C6B4FF9FBFECFFA0B3
      C8E61919191A0000000000000000000000008E8D8C92D18962FFD46F44FFD05F
      2EFFD05F2EFFD0602DFFD1602EFFD2612EFFD2622EFFD3632EFFD4642FFFD25C
      29FFD5662FFFD46229FFD46025FFD2581FFFDC8A64FFF5EFEFFFF4EEEEFFF4EE
      EEFFEDD0C7FFD3571EFFD96727FFD96828FFD96828FFD96828FFD96828FFD967
      29FFD2632BFFA09E9BAB1D1D1D1E050505060000000000000000000000002323
      2324000000FF222222FF171717FF000000FF0F0F0FFFA26439FFDF8E4AFFDF8E
      4AFFEDBF9BFFFBEFE7FFFBF0E7FFF1D1B8FFE0995CFFE1904CFFE1904DFFE190
      4DFFE1914DFFEBB48BFFFBF0E8FFF8E5D7FFE2924FFFE3924FFFE39250FFDC9F
      6CF4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000034343435B6CEEDFDB3CDEAFF8DB8
      98FF8DBA8BFF94C192FF98C598FF9BCA9CFF9ECD9FFF9FCFA1FFA0D0A2FFA0D1
      A2FFA0D1A2FF9FD1A1FF9ED0A0FF9DCF9FFF9DCF9FFF9CCF9EFF9CCE9EFF9BCE
      9DFF9BCE9DFF9ACE9CFF9ACE9CFF99CE9BFF98CE96FF9CC5C5FFA5C5F3FF9FA6
      AEC20303030400000000000000000000000050505051C06B48FFD9885CFFD05F
      2EFFD05F2EFFD05F2DFFD1602DFFD1602EFFD2612EFFD3622EFFCF5826FFD875
      53FFD05625FFD56630FFD66831FFD66730FFDB885FFFF5F0F0FFF5F0F0FFF4EF
      EFFFF4EEEEFFD25721FFD96A2DFFD96A2DFFD96A2DFFD96A2DFFDA6C30FFD96C
      31FFCA622BFF7272727412121213010101020000000000000000000000002424
      2425000000FF1E1E1EFF141414FF000000FF0C0C0CFFA26339FFDE8C48FFDE8D
      48FFE8B086FFFBEFE7FFFBF0E8FFE7B68FFFDF8E4AFFE08E4BFFE08F4BFFE08F
      4BFFE08F4CFFEFC5A4FFFBF1E9FFF3D3BAFFE1904DFFE2914EFFE2914EFFDB9A
      63F7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061616163C0D8F6FFB4CBE9FFA6C2
      D3FF99B7BBFF92B3AAFF8DB19AFF8BB190FF8CB48CFF8FBB8DFF94C192FF98C5
      97FF9BC99BFF9ECD9FFF9FCFA1FFA0D0A2FFA0D1A2FFA0D1A2FF9FD1A1FF9ED0
      A0FF9ECFA0FF9DCF9FFF9CCF9EFF9CCE9EFF9ACE99FFA0C3D3FFA9CAF5FF8A8C
      8D960000000000000000000000000000000000000000B27B64F0E09D77FFD162
      33FFD05F2EFFD05F2EFFD05F2DFFD1602DFFD1602EFFD05A29FFDD906DFFFAF7
      F7FFE9B9A8FFD25D30FFD15A28FFD25D30FFEFD5CCFFF6F2F2FFF6F1F1FFF5F0
      F0FFF5EFEFFFD35926FFD96D33FFD96E33FFD96E33FFD96E33FFD96D33FFD96D
      32FFBB7A57F3252525260909090A000000000000000000000000000000002525
      2526000000FF1B1B1BFF121212FF000000FF090909FFA06237FFDD8B46FFDD8B
      47FFDF9251FFF6E0CFFFFBF2EBFFEBBB95FFDE8D49FFDF8D49FFDF8E49FFDF8E
      4AFFE39E62FFF9E9DDFFFAEDE4FFE5A167FFE08F4CFFE18F4CFFE1904DFFDC96
      5AFB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F50C2CBD5DBC1D5E9F8C5D9
      F4FFC3D7F6FFBFD4F3FFB8CFEEFFAFC8E1FFA4BFD1FF99B5BBFF91B1A9FF8EB1
      9CFF8CB292FF8CB58DFF8FBA8DFF93C091FF98C597FF9BC99BFF9ECD9FFF9FCF
      A1FFA0D0A2FFA0D1A2FFA0D1A2FF9FD1A0FF9CCEA2FFA3C2DEFFABCEF5FF6767
      676A00000000000000000000000000000000000000007E7E7E81CB825BFFD883
      56FFD05F2FFFD05F2EFFD05F2EFFD05F2DFFD05D2CFFD46B47FFF9F0EDFFFBF9
      F9FFFBF8F8FFF4E3DDFFEECEC2FFF6EBE8FFF8F4F4FFF7F3F3FFF7F2F2FFF6F2
      F2FFEED4CBFFD25A27FFD86A32FFD86B31FFD86B31FFD86B31FFD86A31FFCD63
      2DFF9493929A1414141502020203000000000000000000000000000000002828
      2829000000FF161616FF0E0E0EFF000000FF070707FF9E6136FFDC8A45FFDC8A
      45FFDC8B46FFE2A875FFF4DBC9FFFAEFE7FFF4DAC6FFE8B186FFE5A56FFFEEC4
      A3FFF8E7DAFFF6E2D2FFE6A670FFDF8E4AFFDF8E4AFFDF8E4AFFE08F4BFFDF8E
      4FFE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007070708242424254D4D
      4D4E7C7C7D7EA4A7AAAEBDC7D1D8C4D6ECF6C1D7F5FFBBD2F3FFB8CEF0FFB3CB
      EBFFACC5E0FFA4BED1FF9BB8BFFF94B3AEFF8DB19EFF8BB292FF8CB48CFF8EBA
      8DFF93BF90FF98C596FF9BC99BFF9DCD9CFF9DCBABFFA9C5E8FFA8C6EAFD3E3E
      3E3F00000000000000000000000000000000000000000F0F0F10B17A64F0DE9D
      78FFD36A3EFFD05F2FFFD05F2EFFD05F2EFFCC5123FFE7B19EFFFDFCFCFFFDFB
      FBFFFCFAFAFFFBF9F9FFFAF8F8FFFAF7F7FFF9F6F6FFF9F5F5FFF8F4F4FFF7F3
      F3FFDD906CFFD4622CFFD66831FFD66931FFD66931FFD66931FFD46730FFBA77
      56F32E2E2E2F0707070800000000000000000000000000000000000000002929
      292A000000FF101010FF0B0B0BFF000000FF040404FF9C5F34FFDB8943FFDB89
      44FFDD975AFFE1AB80FFDC8A45FFE3A169FFEBBD99FFEFCBAEFFF0CDB2FFECBD
      9AFFE7AF83FFDE985CFFDE8C48FFDE8D48FFDE8D49FFDE8D49FFDF8D49FFDF8E
      4AFF030303040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000005050506212121224A4A4A4B79797A7BA3A5A8ACBAC2
      CCD4BDCEE5F5BCD1EFFFB9CEEFFFB5CCEEFFB1C8EAFFAAC3DFFFA2BCD0FF98B6
      BEFF92B3ADFF8CB09CFF8AB192FF89B387FF96BEADFFB1CBF2FFABBBCFE81B1B
      1B1C00000000000000000000000000000000000000000000000050505051BB65
      42FFDF9770FFD16334FFD05F2FFFD05F2EFFD05D2DFFCB4F22FFE4A791FFFEFD
      FDFFFDFCFCFFFDFBFBFFFCFAFAFFFBF9F9FFFAF8F8FFFAF7F7FFF9F6F6FFE8B8
      A7FFD05625FFD5652FFFD56630FFD56630FFD56630FFD56630FFC25A28FF6A6A
      6A6B0D0D0D0E0101010200000000000000000000000000000000000000002B2B
      2B2C000000FF0B0B0BFF070707FF000000FF020202FF9A5C32FFDA8842FFDC93
      54FFDEA26DFFDD9A5FFFDB8943FFDB8944FFDB8944FFDB8A44FFDC8A45FFDC8A
      45FFDE995EFFDC8D49FFDD8B46FFDD8B47FFDD8C47FFDD8C47FFDE8C48FFDE8D
      48FF0909090A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      03041F1F1F2047474748757576779EA1A4A7B9C1CAD2BECFE5F4BED4F3FFC2D7
      F5FFBED4F3FFB4CDEDFFABC4E2FFA1BDD0FFA4C2D9FFB5CFF3FFA4AAB1C60404
      0405000000000000000000000000000000000000000000000000000000009997
      96A0C77655FFDF9770FFD16334FFD05F2FFFD05F2EFFD05F2EFFCD5527FFD060
      39FFEBBDACFFF7E8E2FFFDFCFCFFFCFBFBFFF9EFEDFFECC4B6FFD77552FFCF56
      25FFD4642EFFD4642FFFD4642FFFD4642FFFD46533FFC75D2DFFA49F9DAF1010
      1011020202030000000000000000000000000000000000000000000000002D2D
      2D2E000000FF060606FF040404FF000000FF000000FF995B30FFDB8E4BFFDC9B
      62FFE0AA80FFD98742FFDA8842FFDA8842FFDA8842FFDA8843FFDB8943FFDC8D
      4BFFDD985DFFDB8A44FFDC8A45FFDC8A45FFDC8A45FFDC8B46FFDD8B46FFDD8B
      47FF0F0F0F100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101021D1D1D1E444444457171
      72739B9DA0A3B8BFC9D0BFD0E3F2BCD4F3FFB7CFEFFFB9D3F3FF8E90919B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999796A0C77655FFDF9770FFD36A3EFFD05F2FFFD05F2EFFD05F2EFFD05E
      2DFFCE5727FFCC5123FFCC4F22FFCC4F22FFCC5123FFCF5727FFD15F2CFFD262
      2EFFD2622EFFD3622EFFD36330FFD36539FFC55C2FFFA39F9DAE101010110202
      0203000000000000000000000000000000000000000000000000000000003030
      3031000000FF020202FF020202FF000000FF000000FF9A5F35FFDDA069FFDEA1
      6CFFDA9457FFD98640FFD98740FFD98741FFD98741FFD98741FFDA8843FFDD9C
      62FFDA8945FFDA8843FFDB8943FFDB8943FFDB8944FFDB8A44FFDC8A45FFD98C
      48FF101010110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000011B1B1B1C414141426D6E6E6F989A9D9F3D3D3D3E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000999796A0BB6542FFDE9D78FFD88456FFD16333FFD05F2EFFD05F
      2EFFD05F2EFFD05F2EFFD05F2DFFD1602DFFD1602EFFD1602EFFD1602EFFD161
      2EFFD2622FFFD26739FFD06940FFBE582CFFA09E9BAB0D0D0D0E020202030000
      0000000000000000000000000000000000000000000000000000000000003131
      3132000000FF2E2E2EFF313131FF323232FF343434FF9F775AFFB78A5FFFBF92
      67FFB58459FFB58457FFB48156FFB38154FFB38254FFB48050FFB48153FFB582
      53FFB2784EFFB0764DFFB1764CFFB0764BFFB0764BFFAC7349FFA86E44FFB19B
      88DC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000050505051B17A64F0CB825BFFE09D78FFD9885DFFD46F
      44FFD05F2EFFD05F2EFFD05F2EFFD05F2EFFD05F2DFFD05F2DFFD16839FFD16D
      43FFD1724BFFC4633BFFB4765CF15D5D5D5E0707070801010102000000000000
      0000000000000000000000000000000000000000000000000000000000002121
      21224F4F4FFFC0C0C0FFC0C0C0FFC1C1C1FFC3C3C3FFC6C6C6FFC8C8C8FFC9C9
      C9FFCBCBCBFFCBCBCBFFCECECEFFCFCFCFFFCFCFCFFFD1D1D1FFD3D3D3FFD4D4
      D4FFD4D4D4FFD6D6D6FFD7D7D7FFD9D9D9FFD9D9D9FFDCDCDCFFB6A89DFFA39C
      97AE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F0F0F107E7E7E81B27B64F0C06B48FFD18A
      62FFDA956FFFDA9067FFD7875BFFD58458FFD5865BFFD1845AFFC8704BFFBC60
      38FFB3765CF18685858918181819020202030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00018D8D8DD2585858FE5B5B5BFC5E5E5EFA696967F8A18E74F9A89179F7A68F
      77F7A8917AF6A8937CF5A99179F5A9927DF4AC957FF2AC947EF2AC9480F1AC95
      80F0AC9681EFAC9682EEAD9682EDAD9682ECAE9884EBAF9885EAAC9684E37574
      7477000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000505050518E8D
      8C92ADA49FC2B39182E1B1552EFFB2552EFFB39182E1AFA49FC3908F8F955757
      5758050505060101010200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005F5F5FFF9D9D9DFFA6A6
      A6FFA3A3A3FFA6A6A6FFA3A3A3FFA6A6A6FFA6A6A6FFA3A3A3FFA3A3A3FFA3A3
      A3FFA6A6A6FFA6A6A6FFA3A3A3FFA6A6A6FFA3A3A3FFA6A6A6FFA4A4A4FFA3A3
      A3FFA6A6A6FFA3A3A3FFA6A6A6FFA4A5A5FFA3A3A3FFA3A3A3FFA3A3A3FFA6A6
      A6FFA6A6A6FF9F9F9FFF5F5F5FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5F5FFFABABABFFCFCFCFFFE9E9
      E9FFEEEEEEFFECECECFFECECECFFECECECFFEEEEEEFFEEEEEEFFECECECFFEEEE
      EEFFEEEEEEFFECECECFFECECECFFEEEEEEFFECECECFFECECECFFECECECFFECEC
      ECFFEEEEEEFFEEEEEEFFECECECFFECECECFFEEEEEEFFEEEEEEFFECECECFFEEEE
      EEFFE8E8E8FFCCCCCCFFA8A8A8FF5F5F5FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001181818191616161700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030303040C0C0C0D14141415151515161515151615151516151515161515
      1516151515161515151615151516151515161515151615151516151515161515
      1516151515161515151615151516151515161515151615151516141414150C0C
      0C0D030303040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010102060606070909090A0B0B0B0C0B0B0B0C0909090A050505060101
      0102000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9F9FFFD1D1D1FFEAEAEAFFE1E1
      E1FFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDADADAFFDDDDDDFFDDDDDDFFDCDC
      DCFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDADADAFFDDDDDDFFDADADAFFDADA
      DAFFDADADAFFDCDCDCFFDADADAFFDADADAFFDDDDDDFFDADADAFFDDDDDDFFDEDE
      DEFFDFDFDFFFECECECFFCECECEFF9E9E9EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000141414143708799BC738595B63939393A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0C0C0D2A2A2A2B3E3E3E3F414141434141414341414143414141434141
      4143414141434141414341414143414141434141414341414143414141434141
      41434141414341414143414141434141414341414143414141433E3E3E3F2A2A
      2A2B0C0C0C0D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000005050506141414152E2E
      2E2F4F4F4F506969696D7777777F7A7A7A847A7A7A847777777F6767676B4D4D
      4D4E2D2D2D2E1313131404040405000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A5FFE8E8E8FFDEDEDEFFDDDD
      DDFFDADADAFFDCDCDCFFDADADAFFDDDDDDFFDADADAFFDDDDDDFFDADADAFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDDDDDDFFDDDDDDFFDADADAFFDDDDDDFFDADADAFFDDDDDDFFDDDD
      DDFFDBDBDBFFE2E2E2FFE8E8E8FFA4A4A4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020203505050534B80AFDD0086FDFF0089FFFF5783A8D5464646480101
      0102000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000141414158A837EC4634B39FF634B39FF634B39FF634B39FF634B39FF634B
      39FF624B39FF624B39FF624B39FF634B39FF634B39FF634B39FF624B39FF624B
      39FF624B39FF634B39FF634B39FF634B39FF634B39FF634B39FF634B39FF8A83
      7EC4141414150000000000000000000000000000000000000000000000000000
      000000000000000000000000000008080809242424256060606387898DA2718B
      A0D1458BBBE92291DCF50C98EAFB049CF0FD04A2F1FD0CA1EFFB26A2DFF44699
      C4E87492A4CE878A8CA05A5A5A5C202020210606060700000000000000000000
      000000000000000000000000000000000000A6A6A6FFEEEEEEFFDADADAFFDDDD
      DDFFDDDDDDFFDADADAFFDDDDDDFFDDDDDDFFDADADAFFDADADAFFDDDDDDFFDBDB
      DBFFDDDDDDFFDDDDDDFFDADADAFFDADADAFFDDDDDDFFDADADAFFDDDDDDFFDADA
      DAFFDADADAFFDDDDDDFFDDDDDDFFDADADAFFDADADAFFDADADAFFDDDDDDFFDADA
      DAFFDADADAFFDEDEDEFFECECECFFA6A6A6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      06075E5F5F653673B6E91682EFFF87D1F8FF87D1FBFF158CFAFF437CB2E25555
      5559040404050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000015151516634B39FF877765FF827260FF837361FF6D5A48FF837361FF8272
      60FF827260FF827260FF827260FF837462FF726250FF837462FF827260FF8272
      60FF827260FF827260FF837361FF6D5A48FF837361FF827260FF877765FF634B
      39FF151515160000000000000000000000000000000000000000000000000000
      000000000000010101021919191A64646568808F9BC22F89CAF1008DEFFF008F
      F4FF008BF1FF0089EFFF008AF2FF008DF6FF0090FAFF0092FDFF0094FFFF009C
      FFFF00A7FFFF00A6FCFF3596D3EF839099BD5C5C5D5F16161617000000010000
      000000000000000000000000000000000000A6A6A6FFEEEEEEFFDADADAFFDADA
      DAFFDDDDDDFFDDDDDDFFDADADAFFDDDDDDFFDDDDDDFFDDDDDDFFDADADAFFDDDD
      DDFFDADADAFFDBDBDBFFDDDDDDFFDDDDDDFFDDDDDDFFDBDCDCFFDADADAFFDDDD
      DDFFDADADAFFDADADAFFDDDDDDFFDADADAFFDDDDDDFFDDDDDDFFDADADAFFDADA
      DAFFDADADAFFDDDDDDFFECECECFFA4A4A4FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C0D6B6C
      6D78226BBEF21C7BE7FF6FDDF7FF46FFFFFF48FFFFFF70DFFAFF1C8AF4FF2D72
      BDED6364646C0909090A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000015151516624937FF90846EFF857563FF877664FF6E5947FF877664FF8675
      63FF857462FF867563FF877765FF877765FF604734FF877765FF877765FF8675
      63FF857462FF867563FF877664FF6E5947FF877664FF857563FF90846EFF6249
      37FF151515160000000000000000000000000000000000000000000000000000
      00000404040530303031888B8FA82C8AD0F20092F4FF0089EBFF007AE0FF0074
      E5FF0081ECFF009AF3FF00B4F8FF00C8FBFF00D4FCFF00D4FCFF00CCFAFF00B8
      F7FF009CF3FF008AF0FF008EF9FF009DF9FF358DCDEF86898B9F282828290303
      030400000000000000000000000000000000A4A5A5FFEEEEEEFFDADADAFFDDDD
      DDFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDDDD
      DDFFDADADAFFDADADAFFDCDCDCFFDADADAFFDDDDDDFFDADADAFFDDDDDDFFDADA
      DAFFDADADAFFDADADAFFDADBDBFFDADADAFFDADADAFFDADADAFFDADADAFFDDDD
      DDFFDADADAFFDADADAFFECECECFFA4A4A4FF0000000000000000000000000000
      000000000000000000000000000000000000000000001313131474777A8B0C63
      C8FA1A85E6FF55E2F8FF22FCFFFF00F9FEFF00FDFEFF26FFFFFF55E5F9FF1988
      EDFF1A68C3F56F7274800E0E0E0F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000015151516614937FF9A8C76FF8A7967FF8B7A68FF6E5A48FF8B7B69FF8A79
      67FF8B7A68FF8D806AFF867460FF654C36FF715940FF644C36FF867460FF8D80
      6AFF8B7A68FF8A7967FF8B7B69FF6E5A48FF8B7A68FF8A7967FF9A8C76FF6149
      37FF151515160000000000000000000000000000000000000000000000000505
      05063F3F3F40748EA0CE0091F1FF008AEBFF0076DFFF0071EFFF0077FCFF0092
      FFFF00BAFFFF00D4FFFF00E1FFFF00E9FFFF00EFFFFF00F3FFFF00F7FFFF00F7
      FFFF00EFFEFF00D0FDFF00A2F1FF0079E2FF0087EFFF008EEFFF7F8F9CC43232
      323303030304000000000000000000000000A4A4A4FFEEEEEEFFDDDDDDFFDDDD
      DDFFDADADAFFDDDDDDFFDADADAFFDADADAFFDDDDDDFFDADADAFFDADADAFFE6E6
      E6FFFFFFFFFFE3E3E3FFDDDDDDFFDADADAFFDDDDDDFFDADADAFFE6E6E6FFFFFF
      FFFFE6E6E6FFDDDDDDFFDDDDDDFFDADADAFFDADADAFFDDDDDDFFDADADAFFDDDD
      DDFFDDDDDDFFDDDDDDFFECECECFFA4A4A4FF0000000000000000000000000000
      0000000000000000000000000000000000001D1D1D1E787E859D005FD2FF148D
      E8FF3AE5F9FF11F2FFFF00EEFEFF00F3FEFF00F7FEFF00FAFEFF11FFFFFF39EA
      F9FF148CE8FF0660CAFC767A7E92171717180000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000015151516604836FFA49785FF8F826CFF8F826CFF90836DFF90836DFF9184
      6EFF928670FF816D5AFF644C37FF765C3FFF1C4BD6FF745B3DFF644B37FF816C
      5AFF928670FF91846EFF90836DFF90836DFF8F826CFF8F826CFFA49785FF6048
      36FF151515160000000000000000000000000000000000000000010101023434
      3435658CAAD90096F4FF0080E0FF0071EFFF0086FDFF00AEFFFF00CEFFFF00DF
      FFFF00E1FFFF00E3FFFF00E3FFFF00E6FFFF00E7FFFF00EAFFFF00EBFFFF00EB
      FFFF00ECFFFF00EEFFFF00E2FFFF00B6FDFF0079ECFF0079E1FF0096F3FF768E
      A0CD2B2B2B2C010101020000000000000000A6A6A6FFEEEEEEFFDDDDDDFFDADA
      DAFFDDDDDDFFDADADAFFDADADAFFDADADAFFDADADAFFDDDDDDFFDDDDDDFFB6B6
      B6FF020202FFB9B9B9FFDADADAFFDDDDDDFFDDDDDDFFDADADAFFB6B6B6FF0202
      02FFB7B7B7FFDDDDDDFFDADADAFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDADADAFFDDDDDDFFECECECFFA6A6A6FF0000000000000000000000000000
      00000000000000000000000000002828282975818FB10061D8FF0996E8FF20E5
      FBFF05E5FFFF00E3FEFF00E9FEFF00EDFEFF00EFFEFF00F3FEFF00F3FEFF05FB
      FFFF20EFFBFF0994E9FF005FD4FF778089A62121212200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000151515165F4735FFADA08EFF938771FF948771FF948771FF958973FF988C
      76FF7A6856FF614835FF64492FFF7A84A7FF001DCFFF9F9EAAFF63482FFF6048
      35FF7A6856FF988C76FF958973FF948771FF948771FF938771FFADA08EFF5F47
      35FF1515151600000000000000000000000000000000000000001C1C1C1D7C90
      A0C70094F4FF0076E2FF0078F9FF00AAFFFF00CEFFFF00D4FFFF00D3FFFF00D4
      FFFF00D7FFFF00DAFFFF00DEFFFF00E1FFFF00E4FFFF00E5FFFF00E6FFFF00E7
      FFFF00E7FFFF00E6FFFF00E9FFFF00E8FFFF00C0FFFF0074F8FF0073E1FF0097
      F3FF84909ABC161616170000000000000000A6A6A6FFEEEEEEFFDADADAFFDDDD
      DDFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDDDDDDFFE1E1E1FF6161
      61FF050505FF434343FFE6E6E6FFDDDDDDFFDADADAFFE1E1E1FF616161FF0505
      05FF616161FFDFDFDFFFDDDDDDFFDCDCDCFFDDDDDDFFDADADAFFDADADAFFDADA
      DAFFDDDDDDFFDDDDDDFFEEEEEEFFA4A4A4FF0000000000000000000000000000
      00000000000000000000353535366C8096C20064DCFF009DE9FF08E2FDFF00D9
      FFFF00D9FEFF00DEFEFF00E4FFFF00EBFFFF00EDFFFF00ECFFFF00EDFEFF00ED
      FEFF00F2FFFF08EFFCFF009CEAFF0062DAFF728291B72D2D2D2E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000141414155E4634FFB8AB99FF988B75FF998C76FF998D77FF9C907AFF7460
      4EFF604936FF614835FF7B6145FF486EE1FF001DC5FF6689E1FF775E43FF6149
      35FF604937FF74604EFF9C907AFF998D77FF998C76FF988B75FFB8AB99FF5E46
      34FF1414141500000000000000000000000000000000050505067E80818C0092
      EFFF0075E6FF0089FDFF00BDFFFF00CAFFFF00C6FFFF00C8FFFF00CDFFFF00D1
      FFFF00D4FFFF00D8FFFF00DAFFFF00DEFFFF00DFFFFF00E1FFFF00E2FFFF00E3
      FFFF00E2FFFF00DFFFFF00DCFFFF00DFFFFF00E7FFFF00D4FFFF0089FCFF0073
      E5FF0490EAFD7474747B0202020300000000A6A6A6FFECECECFFDADADAFFDADA
      DAFFDDDDDDFFDDDDDDFFDADADAFFDADADAFFDADADAFFDDDDDDFFD6D6D6FF0909
      09FF090909FF090909FFBBBBBBFFDDDDDDFFDADADAFFD2D2D2FF090909FF1717
      17FF090909FFD6D6D6FFDDDDDDFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFEEEEEEFFA4A4A4FF0000000000000000000000000000
      000000000001434343455B7B9ED20067DFFF009AEAFF00D9FDFF00CCFFFF00CE
      FEFF00D4FEFF00DAFFFF00D9FDFF00C2E7FF00C8EAFF00E5FFFF00E6FFFF00E5
      FEFF00E5FEFF00E9FFFF00E8FDFF009AEBFF0065DDFF667D99C93B3B3B3C0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D0D0D0E5F4735FFC4B6A4FF9F9280FF9E917BFFA09381FFA49886FF6750
      3EFF614937FF5D432EFFD7CBB9FF0536CCFF001CC1FF3B61D4FFCABEACFF5D44
      2FFF614937FF67503EFFA49886FFA09381FF9E917BFF9F9280FFC4B6A4FF5F47
      35FF0D0D0D0E00000000000000000000000000000000282828293F8DC5EB0083
      F1FF008CFDFF00BDFFFF00BCFFFF00B5FFFF00C2FFFF00C7FFFF00CAFFFF00CC
      FFFF00CBFFFF00D1FFFF00D7FFFF00DAFFFF00DBFFFF00DDFFFF00DEFFFF00DF
      FFFF00DDFFFF3AE3FFFF61E8FFFF00DAFFFF00D6FFFF00DCFFFF00DAFFFF008D
      FCFF0082F4FF528FBBE31F1F1F2000000000A5A5A5FFEEEEEEFFDEDEDEFFDEDE
      DEFFDBDBDBFFDEDEDEFFDEDEDEFFDDDEDEFFDBDBDBFFE0E0E0FF666666FF0D0D
      0DFF5C5C5CFF5C5C5CFF494949FFE4E4E4FFDEDEDEFF868686FF0D0D0DFF7676
      76FF414141FF666666FFE2E2E2FFDBDBDBFFDEDEDEFFDBDBDBFFDBDBDBFFDEDE
      DEFFDBDBDBFFDBDBDBFFEDEDEDFFA7A7A7FF0000000000000000000000000303
      0304535353574874A5DF006AE1FF0191ECFF03C4FEFF00C1FFFF00C3FEFF01CA
      FEFF01CEFFFF00CEF9FF007BB9FF00569BFF00589CFF0096C8FF00DFFDFF00DF
      FFFF00DFFEFF00DDFEFF00DEFFFF00D8FEFF0090ECFF0067DFFF5478A1D74949
      494C010101020000000000000000000000000000000000000000000000000000
      0000030303048C847DC589715FFFC6B9A7FFA99D8BFF94846EFF998A74FF856E
      5CFF5E4633FF6D5643FFFFFFFFFFA8B8E5FF0018BEFFB2BFE1FFFFFFF4FF6B54
      42FF5F4734FF856E5CFF998A74FF94846EFFA99D8BFFC6B9A7FF89715FFF8C84
      7DC503030304000000000000000000000000000000007C7E7F88008DF2FF0087
      F8FF00B5FFFF00B3FFFF13BAFFFF94E0FFFF04C0FFFF00C3FFFF00C5FFFF15CC
      FFFFA2EBFFFF47DCFFFF00D0FFFF00D5FFFF00D8FFFF00D9FFFF00DAFFFF00DA
      FFFF0ED9FFFFFDFEFFFFAAEFFFFF00D2FFFF00D4FFFF00D0FFFF00D3FFFF00D2
      FFFF0087F8FF0089EFFF6E6F6F7400000000A9A9A9FFEFEFEFFFDDDDDDFFDDDD
      DDFFE0E0E0FFDDDDDDFFE0E0E0FFE0E0E0FFE0E0E0FFD7D7D7FF101010FF1010
      10FFACACACFFC4C4C4FF101010FFBFBFBFFFEAEAEAFF1F1F1FFF101010FFC6C6
      C6FFACACACFF101010FFD2D2D2FFE0E0E0FFE0E0E0FFE0E0E0FFDDDDDDFFE0E0
      E0FFDFDEDFFFE0E0E0FFEFEFEFFFA9A9A9FF0000000000000000070707086162
      6269316CAFEB006AE2FF0180EEFF0EB2FFFF16BAFFFF0EBCFEFF0BC1FEFF14C7
      FEFF0ECEFFFF08ADE4FF065197FF065699FF065298FF03569AFF01C9F4FF01DA
      FFFF00D7FEFF00D6FEFF00D4FEFF00D5FFFF00C7FFFF0081EEFF0068E2FF4070
      A9E45959595E0404040500000000000000000000000000000000000000000000
      000000000000040404057A6A5EE8856C5AFFD2C4B2FF6B5442FF5F4836FF6049
      36FF59402DFFCBC2B9FFFFFFFFFF284FCCFF0019BFFF264DCBFFFEFBEDFFBAB2
      A7FF5B422FFF614937FF5F4836FF6B5442FFD2C4B2FF856C5AFF867C73D50404
      040500000000000000000000000000000000080808097494AACE008CFBFF00A8
      FFFF00B1FFFF00A8FFFFDDF3FFFFD1EFFEFF00B6FFFF00C1FFFF00BBFFFFE0F7
      FFFFDEF4FEFF13CAFEFF00CFFFFF00D2FFFF00D4FFFF00D4FFFF00D5FFFF00D2
      FFFF6BE5FFFFE5F9FFFF00CDFFFF00D2FFFF00D0FFFF00CEFFFF00C9FFFF00CE
      FFFF00BEFFFF0088F9FF8195A2BF03030304AAAAAAFFF0F0F0FFDFDFDFFFE2E2
      E2FFE0E0E0FFE2E2E2FFE2E2E2FFE2E2E2FFE4E4E4FF6A6A6AFF141414FF4848
      48FFE2E2E2FFE2E2E2FF616161FF404040FFA7A7A7FF141414FF606060FFDFDF
      DFFFDFDFDFFF484848FF898989FFE4E4E4FFE2E2E2FFE2E2E2FFDFDFDFFFDFDF
      DFFFE2E2E2FFE2E2E2FFEFEFEFFFA8A8A8FF000000000E0E0E0F6D6E707C1D67
      BAF4006BE3FF0070EFFF0BA2FFFF2EBBFFFF3EC2FEFF34C4FEFF35C8FEFF41CE
      FEFF3ED3FFFF3BC5F2FF3C81B3FF3A70A7FF366CA3FF3387B9FF2DD4FAFF1ED5
      FFFF0FD2FEFF06CFFEFF01CEFEFF00CBFEFF00CDFFFF00B8FFFF0075F0FF0069
      E3FF296AB4EF666668700A0A0A0B000000000000000000000000000000000000
      00000000000000000000020202037A78778767503EFF7A6452FF634B39FF6048
      36FF6E5645FFFFFFFFFFFFFFFFFF294DCDFF0016C0FF284DCDFFFFFBECFFF6F6
      F0FF6D5543FF614937FF634B39FF7A6452FF67503EFF7A787787020202030000
      0000000000000000000000000000000000001C1C1C1D3C8CCBEC0099FFFF00AB
      FFFF00A5FFFF36BEFFFFFFFFFFFF3CC5FFFF00ABFFFF00ADFFFF68D8FFFFFFFF
      FFFF76DFFFFF00BBFFFF00CAFFFF00CEFFFF00CFFFFF00D0FFFF00D1FFFF00CB
      FFFFE5F9FFFFB3EFFFFF00C8FFFF00CEFFFF00CCFFFF00CAFFFF00C7FFFF00C3
      FFFF00CCFFFF00A2FEFF518CBFE412121213ABABABFFEFEFEFFFE3E3E3FFE0E0
      E0FFE3E3E3FFE0E0E0FFE0E0E0FFE3E3E3FFE4E4E4FF262626FF181818FFA4A4
      A4FFE3E3E3FFE3E3E3FFC7C7C7FF181818FF181818FF181818FFC7C7C7FFE0E0
      E0FFE3E3E3FFAEAEAEFF262626FFE2E2E2FFE0E0E0FFE3E3E3FFE0E0E0FFE0E0
      E0FFE0E0E0FFE0E0E0FFEFEFEFFFA9A9A9FF0F0F0F1074777B8C0964C6FB006B
      E3FF0070F2FF0B9AFFFF31B6FEFF41BDFEFF48C3FEFF41C4FEFF41C8FEFF4BCE
      FEFF50D0FEFF55D6FFFF54C8F2FF55ABD7FF59B3DBFF66D6F8FF6AE0FFFF5EDC
      FEFF4ED9FEFF40D5FEFF34D1FEFF20CAFEFF0EC5FEFF0BC4FEFF09B4FFFF0380
      F2FF0069E3FF1565BEF76F7173800B0B0B0C0000000000000000000000000000
      0000000000000000000000000000000000000D0D0D0E8B8782AC644C3AFF6047
      34FFD9CFC7FFC6E6F5FF8DBFD4FF69AAC2FF63A4BAFF5396B0FF619BB3FF96B7
      C6FFC4B9AFFF624936FF644D3AFF8B8782AC0D0D0D0E00000000000000000000
      0000000000000000000000000000000000002C2C2C2D1B8CE2F700A3FFFF00A6
      FFFF009EFFFF8CD5FFFFFFFFFFFFFCFEFFFFE0F7FFFF8FDEFFFFB7E4FDFFFEFE
      FFFFFAFDFFFF91E3FFFF0DC3FFFF00C2FFFF00C8FFFF00CCFFFF00C8FFFF25D2
      FFFFFFFFFFFF75DFFEFF00C6FFFF00CBFFFF00C8FFFF00C6FFFF00C4FFFF00C2
      FFFF00C1FFFF00BBFFFF2F8AD9F11F1F1F20AAAAAAFFF0F0F0FFE5E5E5FFE2E2
      E2FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4E4FF8D8D8DFF1B1B1BFF343434FFE2E2
      E2FFE5E5E5FFE5E5E5FFE4E4E4FF616161FF1B1B1BFF5E5E5EFFE2E2E2FFE5E5
      E5FFE5E5E5FFE2E2E2FF4E4E4EFF8D8D8DFFE7E7E7FFE2E2E2FFE5E5E5FFE5E5
      E5FFE2E2E2FFE5E5E5FFF2F2F2FFACACACFF4D4D4D500060CBFF006BE4FF0071
      F3FF1297FFFF39B1FEFF3FB6FEFF3FB9FEFF41BDFEFF40C0FEFF41C2FEFF49C8
      FEFF52CEFEFF58D1FFFF57C4F0FF59ACD6FF65B4DAFF7BD5F4FF87E1FFFF79DF
      FEFF67DAFEFF65D9FEFF69DAFEFF68D9FEFF5ED4FEFF4DCCFEFF35C5FEFF22B5
      FFFF0E85F3FF016BE5FF0963C2FB404040420000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C0D7A78
      76875C4430FD83C3E2FF70B0CDFF65A0BDFF5690ABFF457B9AFF376E90FF245D
      7BFF594437FF797776860C0C0C0D000000000000000000000000000000000000
      0000000000000000000000000000000000002D2D2D2E1492E8F900A7FFFF00A2
      FFFF00A0FFFF4EBCFDFFA6D6F8FFB9DDFAFFEFF5FCFFFFFFFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF2FCFFFF98E5FFFF25CCFFFF04C5FFFF04C3FFFFAFEB
      FFFFFFFFFFFF34CEFEFF00C2FFFF00C4FFFF00C2FFFF00C2FFFF00C0FFFF00BD
      FFFF00BBFFFF00C2FFFF2696DFF422222223AEAEAEFFF1F1F1FFE7E7E7FFE7E7
      E7FFE4E4E4FFE4E4E4FFE7E7E7FFE5E5E5FF2D2D2DFF1F1F1FFF9C9C9CFFE4E4
      E4FFE7E7E7FFE7E7E7FFE5E5E5FF2D2D2DFF1F1F1FFF717171FFE7E7E7FFE4E4
      E4FFE7E7E7FFE6E6E6FFB5B5B5FF2D2D2DFFE3E3E3FFE4E4E4FFE4E4E4FFE7E7
      E7FFE7E7E7FFE7E7E7FFF1F1F1FFACACACFF5C5C5D620066DDFF0074F8FF1C9A
      FFFF45B1FEFF48B2FEFF46B4FEFF46B8FEFF47BBFEFF46BEFEFF4BC2FEFF5DCA
      FEFF6BD1FFFF62CDFAFF558CBAFF5579ABFF6389B2FF79AACCFF89DDFDFF85DE
      FFFF77DBFEFF77DAFEFF82DBFEFF82DBFEFF83DAFEFF7AD8FEFF74D3FEFF5DC9
      FEFF2EB5FFFF0F88F8FF0164D9FF515252550000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101021515
      1516747F8DB36BA1BFFF78BAD8FF76B9DBFF71B7DBFF514640FF554D49FF3D4F
      5CFF5D7793D21D1D1D1E04040405000000000000000000000000000000000000
      0000000000000000000000000000000000002D2D2D2E189BEAF800A6FFFF009F
      FFFF00A0FFFF009EFFFF009FFEFF05A6FDFF1FB1FCFF5EC2F9FF91CFF8FFA0D5
      F8FFF8FCFEFFFFFFFFFFF9F9FDFFFFFFFEFFFBFEFFFFBAECFFFF38CFFFFFEFFB
      FFFFF4FBFEFF2DC9FEFF35CEFFFF2AC9FFFF14C3FFFF00BDFFFF00B9FFFF00B7
      FFFF00B6FFFF00BDFFFF28A1E2F322222223ACACACFFF2F2F2FFE7E7E7FFE8E8
      E8FFE8E8E8FFE5E5E5FFE5E5E5FF919191FF232323FF2F2F2FFFE8E8E8FFE5E5
      E5FFE8E8E8FFE7E7E7FF919191FF232323FF616161FF2F2F2FFFDCDCDCFFE5E5
      E5FFE5E5E5FFE8E8E8FFE8E8E8FF545454FFABABABFFE8E8E8FFE8E8E8FFE8E8
      E8FFE5E5E5FFE8E8E8FFF2F2F2FFACACACFF5A5B5B600378F6FF2DA4FFFF56B8
      FFFF57B8FFFF55B7FFFF55B8FFFF55BAFFFF54BCFEFF50BDFEFF5AC3FEFF74CE
      FEFF82D4FFFF74CAF6FF5A88B5FF547BAFFF5C88B1FF7098BFFF83D4FBFF84DA
      FFFF81D8FEFF87D9FEFF88DAFEFF87D9FEFF86D7FFFF84D7FFFF88D7FFFF89D4
      FFFF6ECDFFFF36B4FFFF0582F3FF505050530000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707082424
      2425466184E675B5D8FF85C5E5FF79BDDDFF74BADEFF4E423CFF514945FF544D
      49FF626264F23737373814141415020202030000000000000000000000000000
      0000000000000000000000000000000000002D2D2D2E189EEAF800A2FFFF009D
      FFFF1CA8FFFF3FB6FFFF54C1FFFF5AC5FFFF54C6FFFF44C4FFFF33C0FFFF30C0
      FEFFF3FBFFFFFFFFFFFFBEE9FDFF48BAF7FFF3F6FDFFFFFFFFFFB9E9FEFFCFF0
      FEFFFBFDFFFF50D1FFFF4FCFFFFF59D1FFFF59D0FFFF50CDFFFF3CC6FFFF17BA
      FFFF00AFFFFF00B5FFFF28A4E3F322222223AEAEAEFFF3F3F3FFE7E7E7FFEAEA
      EAFFEAEAEAFFE7E7E7FFF0F0F0FF333333FF262626FF888888FFE7E7E7FFEAEA
      EAFFE7E7E7FFE6E6E6FF333333FF262626FFCFCFCFFF6F6F6FFF767676FFEDED
      EDFFE7E7E7FFE7E7E7FFE7E7E7FFB7B7B7FF404040FFF1F1F1FFEAEAEAFFE7E7
      E7FFE9E9E9FFEAEAEAFFF3F3F3FFB0B0B0FF525253561197FFFF39AEFFFF3AAB
      FFFF37ABFFFF37ABFFFF37ABFFFF37ABFFFF43AFFEFF5FBFFEFF6CC5FEFF86CF
      FEFF8CD4FFFF78C8F7FF618BB6FF5B82AEFF6087B0FF7198BFFF82D1FBFF86D7
      FFFF85D6FEFF8CD8FEFF84D4FEFF60C8FFFF51C3FFFF55C4FFFF59C4FFFF55C2
      FFFF4DBCFFFF3FB8FFFF119CFFFF454545470000000000000000000000000000
      00000000000000000000000000000000000000000000050505061A1A1A1B7173
      75804578A7FF94D7F5FF87C8E8FF80BFE0FF77BCDCFF72B8DCFF6DB4D9FF649E
      BCFF565D61FF6B6968EC2B2B2B2C0A0A0A0B0000000000000000000000000000
      0000000000000000000000000000000000002C2C2C2D149BEBF92EB3FFFF5DBD
      FFFF68C2FFFF65C2FFFF5FC2FFFF5FC3FFFF5EC5FFFF5FC7FFFF5DC8FFFF59C9
      FFFFF4FBFFFFFFFFFFFFDBF4FFFF81DAFFFFFCFDFFFFFFFFFFFF81D4FCFFAAE2
      FDFFFFFFFFFF70D4FFFF4ECCFFFF5DCFFFFF5ACDFFFF62CEFFFF65CEFFFF68CE
      FFFF58C7FFFF26BDFFFF26A2E4F421212122B2B2B2FFF5F5F5FFECECECFFEBEB
      EBFFE9E9E9FFEFEFEFFFAFAFAFFF2A2A2AFF2A2A2AFFDEDEDEFFECECECFFE9E9
      E9FFF1F2F2FF959595FF2A2A2AFF747474FFECECECFFD4D4D4FF2A2A2AFFE1E1
      E1FFECECECFFE9E9E9FFECECECFFF0F0F0FF515151FFAEAEAEFFF3F3F3FFEBEB
      EBFFE9E9E9FFE9E9E9FFF4F4F4FFAFAFAFFF111111126F73777F767E8792757E
      8691757E8691757E8691757D848F76879AAE2395F6FE6EC3FFFF84CAFEFF8DCF
      FEFF8BD1FFFF73C4F7FF668CB7FF6387B1FF678BB2FF7599BEFF84CFFBFF8CD6
      FFFF8CD5FEFF8FD6FEFF83D2FFFF39A8F1FB798793A47881889479828A967880
      889477808893768088936B6E71780A0A0A0B0000000000000000000000000000
      000000000000000000000000000000000000050505061B1B1B1C3B3B3B3C6C7D
      90CB89CBECFF94D7F6FF89CBEAFF84C4E4FF7ABDDDFF74B7D9FF6EB2D4FF6AAE
      D1FF629CB9FF504E4FFF838282A21E1E1E1F0505050600000000000000000000
      000000000000000000000000000000000000212121221F9CE7F667C8FFFF74C7
      FFFF6AC4FFFF6BC3FFFF6BC4FFFF6BC5FFFF6BC8FFFF6CC9FFFF5FC7FFFF50C2
      FFFFF1F8FEFFFFFFFFFFFAFDFFFFFDFEFFFFFFFFFFFFF9FCFDFF79D2FDFFC4EA
      FEFFFFFFFFFFC8EDFFFF55CAFFFF5FCDFFFF6BCFFFFF61CBFFFF6CCEFFFF6ACD
      FFFF77CEFFFF60CDFFFF369EE0EE16161617B0B0B0FFF6F6F6FFEAEAEAFFEAEA
      EAFFF6F6F6FFCBCBCBFF3A3A3AFF2D2D2DFF474747FFF2F2F2FFEAEAEAFFF5F5
      F5FFB2B2B2FF3A3A3AFF2D2D2DFFBEBEBEFFEDEDEDFFF5F5F5FF545454FF5454
      54FFE5E5E5FFF6F6F6FFEDEDEDFFBEBEBEFF2D2D2DFF3A3A3AFFB2B2B2FFF2F2
      F2FFEAEAEAFFEAEAEAFFF4F4F4FFB2B2B2FF0000000000000000000000000000
      00000000000000000000000000003B3B3B3C2B97F1FD77C8FFFF8DCCFEFF94CF
      FEFF8ACEFFFF76C1F6FF6E8EB8FF6D8CB3FF718EB4FF819DC0FF8ACEFBFF93D4
      FFFF92D4FEFF93D4FEFF86D2FFFF42A1E2F51C1C1C1D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001010101136363637221C1CFF1437
      5BFFA8F1FFFF96DAF8FF8DCFEFFF88C8E8FF82C2E2FF78BBDBFF72B4D5FF6EB0
      D2FF64A8CDFF2F3C50FF504F4DFF363636371010101100000000000000000000
      0000000000000000000000000000000000000909090A4D9AD3E554C3FFFF88CD
      FFFF75C8FFFF77C8FFFF77C8FFFF77C8FFFF76C9FFFF72C9FFFF98D8FFFFCBEB
      FFFFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDCF2FFFFE9F7FFFFF1FAFFFF85D4FFFF6ECCFFFF77CE
      FFFF8AD1FFFF49C7FFFF639AC3DA02020203B4B4B4FFF7F7F7FFEFEFEFFFECEC
      ECFF919191FF313131FF313131FF313131FF313131FF313131FFECECECFF8F8F
      8FFF313131FF313131FF313131FF313131FFEFEFEFFF8F8F8FFF313131FF3131
      31FF313131FF8F8F8FFFEDEEEDFF313131FF313131FF313131FF313131FF3131
      31FFECECECFFEEEEEEFFF7F7F7FFB4B4B4FF0000000000000000000000000000
      0000000000000000000000000000434343452D99F1FD84CAFFFF90CFFEFF98D1
      FEFF92CFFFFF84C4F7FF7695BBFF7591B6FF7994B8FF89A2C2FF90CEFBFF98D4
      FFFF98D4FEFF9AD4FEFF8ED2FFFF449DE5F62626262700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000015151516252427FF2D2829FF1F31
      44FFA8F2FFFF9BDFFEFF93D5F5FF8DCEEEFF86C6E6FF80C0E0FF76B9DAFF72B4
      D5FF70B7DAFF252B3BFF5A5956FF222124FF1515151600000000000000000000
      000000000000000000000000000000000000000000008695A3B52CBCFFFF98D4
      FFFF87CEFFFF88CEFFFF88CEFFFF88CEFFFF89CEFFFF75C8FFFFB5DAF8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4F4FFFF77CEFFFF88D0
      FFFF97D4FFFF1FB9FFFF878E94A000000000B5B5B5FFF7F7F7FFF0F0F0FFEDED
      EDFFEDEDEDFFEDEDEDFFF0F0F0FFF0F0F0FFF0F0F0FFEDEDEDFFF0F0F0FFF0F0
      F0FFF0F0F0FFEDEDEDFFF0F0F0FFF0F0F0FFEDEDEDFFF0F0F0FFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEDEDEDFFF0F0F0FFF0F0
      F0FFF0F0F0FFEDEDEDFFF6F6F6FFB2B2B2FF0000000000000000000000000000
      0000000000000000000000000000434343453199F1FD87CDFFFF8DCEFEFF94D0
      FEFF97D3FFFF8CC8F7FF859ABFFF8396BAFF8798BBFF91A5C6FF98D0FBFF9FD6
      FFFFA0D5FEFFA2D7FEFF97D3FFFF489DE3F52727272800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000151515163B3A3CFF3C3839FF3630
      32FFAEF9FFFFA8EDFFFF9FE3FFFF97D9F9FF8ED0F0FF86C6E6FF7BBFDFFF77BA
      DCFF75BDE1FF353030FF3C393AFF39383AFF1515151600000000000000000000
      000000000000000000000000000000000000000000004242424302A3FCFE8CD1
      FFFF9CD4FFFF92D2FFFF94D2FFFF94D2FFFF94D2FFFF98D4FFFF6BBFFBFFAFD2
      F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFDFEFFF3F7FDFFFFFFFFFFFFFFFFFFFFFFFFFFA2D7FEFF97D4
      FFFF85CFFFFF0C9FF5FB2B2B2B2C00000000B6B6B6FFF7F7F7FFEFEFEFFFF0F0
      F0FFEFEFEFFFF2F2F2FFF2F2F2FFF2F2F2FFEFEFEFFFF2F2F2FFEFEFEFFFEFEF
      EFFFF2F2F2FFEFEFEFFFF2F2F2FFF0F0F0FFF2F2F2FFF0F0F0FFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFF2F2
      F2FFF2F2F2FFF2F2F2FFF8F8F8FFB6B6B6FF0000000000000000000000000000
      000000000000000000000000000043434345339AF1FD8ECFFFFF90CFFEFF92D0
      FEFF96D2FFFF92CAF7FF8EA0C0FF8D9CBDFF909FBFFF9AAAC8FFA1D3FBFFA7D9
      FFFFA9DAFEFFACDAFEFFA0D8FFFF499DE5F62727272800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000101010114F4C4DFF4C4747FF4641
      41FF3875A8FF0D3E6CFF285987FF3F739EFF87C8E8FF91D4F2FF88C9E9FF85C5
      E6FF5793B8FF45403FFF4A4848FF4F4C4DFF1010101100000000000000000000
      0000000000000000000000000000000000000000000000000001789CB7CB33BF
      FFFFB5DFFFFF9DD5FFFF9ED6FFFF9ED6FFFF9ED6FFFF9FD6FFFFA5DBFFFF70C0
      F9FF86BDF0FFD7E7F8FFD9E8F8FFC9E0F7FFC2DCF6FFB6D6F4FFBAD8F4FFBCD9
      F5FFC0DAF5FF72B9F2FF72BCF3FFE4EEF9FFEDF3FBFF9BC8F3FF8ECDFDFFB6DF
      FFFF24BCFFFF8497A7B90000000000000000B8B8B8FFF9F9F9FFF4F4F4FFF1F1
      F1FFF4F4F4FFF1F1F1FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF1F1F1FFF2F3
      F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF1F1
      F1FFF4F4F4FFF1F1F1FFF4F4F4FFF1F1F1FFF1F1F1FFF1F1F1FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF8F8F8FFB5B5B5FF0000000000000000000000000000
      000000000000000000000000000043434345379BF1FD97D4FFFF97D2FEFF97D1
      FEFF97D3FFFF97CEFBFF96A8C7FF96A1BCFF98A2BEFFA0B3CFFFA6D8FDFFA9D9
      FFFFACDAFEFFAFDBFEFFA5D9FFFF4D9EE3F52626262700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050506646261FF5C5655FF4459
      69FF2670A2FF3579A8FF3E7BA7FF2D5E8CFF133A64FF3B6B95FF64A1C3FF619D
      BFFF193D68FF3E4D5FFF5A5554FF646262FF0505050600000000000000000000
      000000000000000000000000000000000000000000000000000024242425269F
      E9F46DCEFFFFC3E5FFFFA8DAFFFFAADBFFFFAADBFFFFAADBFFFFAADBFFFFB2E1
      FFFF97D2FDFF6AB9F4FF6BB9F4FF6EBCF6FF71BFF7FF74C1F8FF7AC4F9FF70BE
      F7FF73C0F8FFA3DAFEFFA6DAFEFF5FB3F2FF5DB0F1FF8ACBFCFFC9E9FFFF5EC9
      FFFF3A9EE0ED1919191A0000000000000000B8B8B8FFFAFAFAFFF2F2F2FFF2F2
      F2FFF5F5F5FFF5F5F5FFF2F2F2FFF2F2F2FFF2F2F2FFF5F5F5FFF5F5F5FFF2F2
      F2FFF5F5F5FFF2F2F2FFF5F5F5FFF2F2F2FFF5F5F5FFF5F5F5FFF2F2F2FFF2F2
      F2FFF4F4F4FFF2F2F2FFF5F5F5FFF5F5F5FFF2F2F2FFF2F2F2FFF5F5F5FFF2F2
      F2FFF4F5F5FFF5F5F5FFFAFAFAFFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000434343453A9CF1FDA1D9FFFFA1D7FEFFA0D6
      FEFFA0D6FEFFA0D7FFFFA0CAEFFFA0BBDAFFA1BDDCFFA4CFF3FFA8DAFFFFA9D9
      FEFFABDCFEFFB2DDFEFFACDDFFFF4E9FE3F52626262700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001515151669635EFF3876
      9AFF338EBBFF4497BFFF509CC2FF5C9DC3FF669AC0FF45719DFF264B75FF254B
      75FF1D4980FF294C72FF6B6662FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005656
      565806A4F9FD8CD5FFFFCFEAFFFFB5E0FFFFB3DFFFFFB4DFFFFFB4DFFFFFB4DF
      FFFFB8E1FFFFBEE6FFFFBEE6FFFFBFE6FFFFBFE6FFFFBDE5FFFFBCE5FFFFBFE6
      FFFFBDE5FFFFB6E0FFFFB6E0FFFFBDE5FFFFC1E7FFFFD5EEFFFF79D0FFFF18A2
      F2F83F3F3F40000000000000000000000000B8B8B8FFFBFBFBFFF7F7F7FFF4F4
      F4FFF4F4F4FFF7F7F7FFF4F4F4FFF4F4F4FFF7F7F7FFF7F7F7FFF7F7F7FFF4F4
      F4FFF7F7F7FFF4F4F4FFF4F4F4FFF4F4F4FFF7F7F7FFF7F7F7FFF7F7F7FFF4F4
      F4FFF5F5F5FFF7F7F7FFF4F4F4FFF7F7F7FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF9F9F9FFBABABAFF0000000000000000000000000000
      0000000000000000000000000000434343453C9EF1FDAADCFFFFAADAFEFFA9DA
      FEFFA9DAFEFFA9DAFEFFA9DBFFFFA9DBFFFFA9DBFFFFAADBFFFFAADAFEFFABDA
      FEFFAFDCFEFFB5DFFEFFB3E0FFFF50A1E5F62727272800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000012121213554F4CFF2D76
      9DFF3292BEFF4299C1FF4C9CC2FF559CC3FF5A9AC1FF548FB6FF4578A6FF3462
      93FF205087FF1D466FFF565350FF121212130000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006060616316A3F4F974D3FFFFDAEEFFFFCCE9FFFFBEE3FFFFBEE4FFFFC0E4
      FFFFC0E4FFFFC0E4FFFFC0E4FFFFC0E4FFFFC0E4FFFFC0E4FFFFC0E4FFFFC0E4
      FFFFC0E4FFFFBEE4FFFFBEE3FFFFCEE9FFFFD7EEFFFF68CEFFFF26A2ECF44E4E
      4E4F00000000000000000000000000000000B9B9B9FFFCFCFCFFF9F9F9FFF6F6
      F6FFF9F9F9FFF9F9F9FFF9F9F9FFF6F6F6FFF9F9F9FFF9F9F9FFF9F9F9FFF6F6
      F6FFF9F9F9FFF6F6F6FFF9F9F9FFF6F6F6FFF9F9F9FFF6F6F6FFF9F9F9FFF9F9
      F9FFF9F9F9FFF6F6F6FFF9F9F9FFF9F9F9FFF6F6F6FFF6F6F6FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFFCFCFCFFB9B9B9FF0000000000000000000000000000
      000000000000000000000000000043434345419FF1FDB3E0FFFFB3DFFEFFB3DE
      FEFFB3DEFEFFB3DEFEFFB3DEFEFFB3DEFEFFB3DEFEFFB3DEFEFFB3DEFEFFB3DE
      FEFFB5DFFEFFBBE1FEFFBAE3FFFF53A1E5F62727272800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000909090A5F5A58F93D66
      79FF2E95C2FF3C97C0FF4699C1FF4D9AC1FF4E98C0FF498DB6FF3E78A7FF2F63
      95FF194E86FF354A60FF605D5BF90909090A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000038383839529ED6E339C2FFFFBDE8FFFFE4F3FFFFD9EFFFFFCDEA
      FFFFC8E9FFFFC8E7FFFFC8E8FFFFC8E8FFFFC8E8FFFFC8E8FFFFC8E7FFFFC8E9
      FFFFCEEAFFFFDAEFFFFFE5F3FFFFB7E5FFFF2DBDFFFF5E9ED1DD2D2D2D2E0000
      000000000000000000000000000000000000BCBCBCFFF9F9F9FFF8F8F8FFFAFA
      FAFFF7F7F7FFF7F7F7FFFAFAFAFFFAFAFAFFF7F7F7FFFAFAFAFFF7F7F7FFFAFA
      FAFFF7F7F7FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF7F7F7FFF7F7
      F7FFFAFAFAFFF7F7F7FFFAFAFAFFFAFAFAFFFAFAFAFFF7F7F7FFF7F7F7FFFAFA
      FAFFFAFAFAFFFBFBFBFFF8F8F8FFBABABAFF0000000000000000000000000000
      00000000000000000000000000004444444640A2F8FFC5EAFFFFC6E8FFFFC4E7
      FFFFC4E7FFFFC4E7FFFFC4E7FFFFC4E7FFFFC4E7FFFFC4E7FFFFC4E7FFFFC4E7
      FFFFC5E7FFFFC8E9FFFFC7EAFFFF50A1E8F82727272800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010102706F6F79534F
      4FFF2E89AFFF3395C2FF3D97C0FF4397C1FF4495BEFF3E89B4FF3576A6FF2563
      97FF1F4F7AFF535251FF706F6F79010101020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B0C83898D9631A3E7F14DC8FFFFAEE7FFFFDEF3
      FFFFEAF7FFFFEAF7FFFFE7F4FFFFE5F3FFFFE5F3FFFFE7F4FFFFEAF7FFFFEAF6
      FFFFDCF3FFFFA9E4FFFF45C4FFFF36A2E2EE7D7F838906060607000000000000
      000000000000000000000000000000000000B4B4B4FFEAEAEAFFFBFBFBFFFBFB
      FBFFFCFCFCFFF9F9F9FFF9F9F9FFFCFCFCFFF9F9F9FFF9F9F9FFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFF9F9F9FFF9F9F9FFF9F9F9FFFCFCFCFFFCFCFCFFFCFC
      FCFFF9F9F9FFF9F9F9FFFCFCFCFFFCFCFCFFF9F9F9FFFCFCFCFFFBFBFBFFFCFC
      FCFFFCFCFCFFFDFDFDFFE5E5E5FFB7B7B7FF0000000000000000000000000000
      000000000000000000000000000028282829328FDFF55EBBFFFF60B8FFFF5FB7
      FFFF5FB7FFFF5FB7FFFF5FB7FFFF5FB7FFFF5FB7FFFF5FB7FFFF5FB7FFFF5FB7
      FFFF5FB7FFFF61B8FFFF5FBBFFFF4492D6EC1717171800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404057370
      6EE84B545BFF318AAFFF3097C3FF3797C2FF3791BDFF3184B2FF2772A6FF255D
      89FF4A5259FF737170E804040405000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016161617797B7E836898C0D72CAA
      F3F849C3FFFF75D6FFFF96DFFFFFA7E5FFFFA5E4FFFF95DFFFFF73D5FFFF45C2
      FFFF33A7EEF5719ABED17476787C121212130000000000000000000000000000
      0000000000000000000000000000000000006D6D6DFFC3C3C3FFE9E9E9FFF9F9
      F9FFFEFEFEFFFCFCFCFFFEFEFEFFFCFCFCFFFCFCFCFFFDFDFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFCFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFCFCFCFFFEFE
      FEFFFCFCFCFFFEFEFEFFFCFCFCFFFEFEFEFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFBFBFBFFE7E7E7FFC3C3C3FF6D6D6DFF0000000000000000000000000000
      0000000000000000000000000000000000004040404261626469606163686061
      6368606163686061636860616368606163686061636860616368606163686061
      63686061636860616368606163683A3A3A3B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040574706FE7534F4FFF3E6275FF31769EFF32749AFF2F6C94FF3D5A6EFF5452
      52FF747170E70404040500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D1D
      1D1E555555577D80838A87919AA58697A5B38697A5B3879099A47B7E80875253
      53541A1A1A1B0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E6E6EFFB7B7B8FFBFBF
      BFFFBEBEBEFFC0C0C0FFC0C0C0FFC0C0C0FFBEBEBEFFC0C0C0FFC0C0C0FFBEBE
      BEFFBEBEBEFFC0C0C0FFBFBFBFFFBEBEBEFFC0C0C0FFC0C0C0FFBEBEBEFFBEBE
      BEFFC0C0C0FFBEBEBEFFBEBEBEFFBEBEBEFFC0C0C0FFC0C0C0FFC0C0C0FFBEBE
      BEFFBEBEBEFFB7B7B7FF6E6E6EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202020379797988605D5BF856504DFF56504CFF56504DFF605D5CF87979
      7988020202030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000130000002D0000004B000000650000007200000076000000760000
      00760000007600000076000000760000007600000072000000650000004B0000
      002B000000110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010A0A0A0B21212122676767686D6D6D6E6E6E6E6F6E6E6E6F6E6E6E6F6E6E
      6E6F6E6E6E6F6E6E6E6F6E6E6E6F6E6E6E6F6E6E6E6F6E6E6E6F6E6E6E6F6E6E
      6E6F6E6E6E6F6E6E6E6F6E6E6E6F6E6E6E6F6E6E6E6F6E6E6E6F3C3C3C3D3535
      3536212121220A0A0A0B00000001000000000000000600000011000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001100000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000050000
      0010000000160000001600000016000000160000001600000016000000110000
      000800000004000000050000000B000000130000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      00150000000D0000000400000000000000000000000000000000000000000000
      000000000013FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040502510306
      03320C140A270C0E0A101A1B162028202028201A1A2008060608000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02038888898B1D3B6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B
      6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B
      6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B6BFF1D3B6BFF9D9D
      9FA5373737381616161702020203000000000000000B000000270000003D0000
      0043000000430000004300000043000000430000004300000043000000430000
      00430000004300000043000000430000003D000000270000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000050000001A0000
      00350000004200000043000000430000004300000043000000430000003A0000
      00270000001E000000210000002D0000003C0000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      003F0000002E0000001500000004000000000000000000000000000000000000
      000000000013FFFFFFFFE8DBDBFFE8DBDBFFE8DBDBFFFFFFFFFFE8DBDBFFE8DB
      DBFFE8DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF9F9F9FF0A0806630A09
      064A2E53228F1E1A133982676199A27A7AB088666697120C0C18000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      33341D3B6BFF3E6A9EFF31A1DCFF1496DCFF1294DCFF1292DCFF1090DCFF0F8E
      DCFF0F8CDCFF0D8ADCFF0C89DCFF0B87DCFF0B85DCFF0A83DCFF0981DCFF0877
      DCFF0775DCFF0673DCFF0571DCFF046FDCFF036DDCFF026CDCFF114F9EFF1D3B
      6BFF616161621B1B1B1C040404050000000000000006447298FF407096FF3D6D
      94FF3C6C93FF3F6E94FF447095FF467094FF466F93FF466F93FF467094FF4470
      95FF3F6E94FF3C6C93FF3D6D94FF407097FF3F729EFF0000001C000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      001600000016000000150000000D00000004000000000000001000000035A876
      15F0B68115FFB68115FFB58012FFB37905FFD9D2D2FFD7CDC5FFD8CDC3FF2929
      276930302E6A2E2E2C6A5D4F3596D9CFC8FFD7CCC4FFD7CCC3FFD7CCC3FFD7CC
      C3FFD7CCC3FFD7CCC3FFD7CCC5FFD9D2D2FFB37905FFB58012FFB68115FFB681
      15FF7C5710C50000002E0000000D000000000000000005030308140A0A20190C
      0C28150A0E38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF8F8F8FFEFEFEFFF140F0E7C1511
      0C6B1F1A1365221A154D322521533D27275538262649241616301D1010281B0F
      0F281B0F0F28190C0C28190C0C28190C0C280000000000000000000000004343
      43441D3B6BFF54CDFFFF14B8FFFF12B5FFFF11B2FFFF0FB0FFFF0EADFFFF0DAB
      FFFF0BA8FFFF0BA6FFFF0AA3FFFF08A1FFFF079EFFFF069CFFFF0499FFFF0396
      FFFF0294FFFF0091FFFF008FFFFF008CFFFF008AFFFF0087FFFF0086FFFF1D3B
      6BFF6E6E6E6F1C1C1C1D04040405000000000000000000000016819DADFFBBD2
      DFFFB9CFDDFFC0D4E0FF256993FF44AEE3FF44ACE1FF44ACE1FF44AEE3FF2569
      93FFC0D4E0FFB9CFDDFFBBD2E0FF7E9DB1FF0000004800000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000003F0000002B0000000D0000000000000016A87615EFF6CD
      89FFF3C883FFF2C782FFF2C680FFF0C172FFFFFFFFFFFFF3E9FFFFFFFFFF5252
      51FF877D77FF877E78FF827975FFFFFFFFFFFFF2E8FFFFF1E7FFFFF1E7FFFFF1
      E7FFFFF1E7FFFFF1E7FFFFF1E9FFFFFFFFFFF0C172FFF2C680FFF2C782FFF3C8
      83FFF6CD89FF7B570FC1000000150000000000000000140A0A206F3838AF7439
      39B7643035B5FFFFFFFFE8DBDBFFE8DBDBFFE8DBDBFFFFFFFFFFE8DBDBFFE8DB
      DBFFE8DBDBFFFFFFFFFFFDFDFDFFF9F9F9FFF1F1F1FFE1E1E1FF3E2522D3482B
      28D45B3734D95D3735C7603936BD653636BB663A3ABB6B3D3DC1784444CE6C3A
      3AC0663636B9613131B9673232BF844141CF0000000000000000000000004343
      43441D3B6BFF4AC7FFFF16BBFFFF14B9FFFF13B6FFFF12B4FFFF10B1FFFF0FAF
      FFFF0DACFFFF0CAAFFFF0BA7FFFF0AA4FFFF09A2FFFF089FFFFF069DFFFF059A
      FFFF0498FFFF0295FFFF0193FFFF0090FFFF008DFFFF008BFFFF0088FFFF1D3B
      6BFF6E6E6E6F1C1C1C1D040404050000000000000000000000167B99AAFFB8CF
      DDFFB4CBDAFFBED1DEFF226694FF48ADE0FF43A7DBFF43A7DBFF48ADE0FF2266
      94FFBED1DEFFB4CBDAFFB7CFDEFF7497AFFFC17B00FFB97A01FFB57905FFB479
      06FFB47906FFB47906FFB47906FFB47906FFB47906FFB47906FFB47906FFB479
      06FFB47A08FFB67D0DFF805A10C4000000150000000000000016B68115FFF3C9
      85FFEEC175FFEDC075FFECBF72FFEBBA67FFFFFFFFFFFBEEE3FFFFFFFEFF5655
      54FF8D847BFF8C837BFF847A73FFFFFFFDFFFBEEE2FFFAEDE1FFFAEDE1FFFAED
      E1FFFAEDE1FFFAECE1FFF9ECE2FFFFFFFFFFEBBA67FFECBF72FFEDC075FFEEC1
      75FFF3C985FFB68115FF000000160000000000000000190C0C28743939B72E16
      1648170C0C38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDFFF8F8F8FFF1F1F1FFE3E3E3FFCFCFCFFF0C07079C1C11
      11A45D4444DB24171787160D0D63130A0A562100BAFF2200BFFF2300C3FF3321
      21581A10103C2400C5FF291414598D4646DF0000000000000000000000004343
      43441D3B6BFF47BFFFFF16BBFFFF16BDFFFF15BAFFFF14B8FFFF12B5FFFF11B2
      FFFF0FB0FFFF0EADFFFF0DABFFFF0BA8FFFF0BA6FFFF0AA3FFFF08A1FFFF079E
      FFFF069CFFFF0499FFFF0396FFFF0294FFFF0091FFFF008FFFFF008CFFFF1D3B
      6BFF6E6E6E6F1C1C1C1D040404050000000000000000000000167A99AAFFC1D7
      E3FFB5CDDBFFC0D3DFFF21669AFF60B7E4FF42A6D9FF42A6D9FF60B7E4FF2166
      9AFFC0D3DFFFB5CDDBFFBFD6E3FF6F92A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB67D0DFF000000160000000000000016B68115FFF1C9
      85FFECBD6FFFEBBD6FFFEBBC6DFFE9B762FFFEFFFFFFF9EADEFFFFFFFEFF5352
      52FF8C837AFF8B8179FF827871FFFFFFFCFFF9EADEFFF7E9DEFFF7E9DEFFF7E9
      DEFFF7E9DEFFF7E9DEFFF7E8DEFFFEFFFFFFE9B762FFEBBC6DFFEBBD6FFFECBD
      6FFFF1C985FFB68115FF000000160000000000000000190C0C286F3838AF190C
      0C2800000013FFFFFFFFE8DBDBFFE8DBDBFFE8DBDBFFFFFFFFFFE8DBDBFFE8DB
      DBFFE8DBDBFFF9F9F9FFEFEFEFFFE1E1E1FFCFCFCFFF00B317FF00B317FF00B3
      17FF00B317FF110D0D860000005E0000004A1F00ADFF1C131343987373B52400
      C5FF0000000D2400C5FF170B0B33884444D70000000000000000000000004343
      43441D3B6BFF4AC5FFFF11B2FFFF15BAFFFF17BDFFFF16BBFFFF14B9FFFF13B6
      FFFF12B4FFFF10B1FFFF0FAFFFFF0DACFFFF0CAAFFFF0BA7FFFF0AA4FFFF09A2
      FFFF089FFFFF069DFFFF059AFFFF0498FFFF0295FFFF0193FFFF0090FFFF1D3B
      6BFF6E6E6E6F1C1C1C1D040404050000000000000000000000167A99ABFFCBDE
      E9FFB7CEDDFFC2D5E0FF1F679EFF78C3E8FF40A4D9FF40A4D9FF78C3E8FF1F67
      9EFFC2D5E0FFB7CEDDFFC9DCE8FF6E90A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47A08FF000000160000000000000016B68115FFF1C9
      86FFEABB6BFFEABB6BFFEABA69FFE8B55DFFFDFEFFFFF7E8DBFFFFFFFCFF504F
      4FFF898077FF897D76FF80746DFFFFFFFAFFF7E8DBFFF5E7DBFFF5E7DBFFF5E7
      DBFFF5E7DBFFF5E7DBFFF5E7DBFFFDFEFFFFE8B55DFFEABA69FFEABB6BFFEABB
      6BFFF1C986FFB68115FF0000001600000000000000001B0F0F28743D3DAF1E12
      122800000013FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4FFE4E4E4FFCECECEFFB9B9B9FF00B317FF00D21DFF00D2
      1DFF00B317FF130F0F95170081FF19008EFF00000040231B1B46A48383B32720
      202B2400C5FF000000061E12122C8A4545D70000000000000000000000004343
      43441D3B6BFF4ECDFFFF15BBFFFF15BBFFFF16BBFFFF16BDFFFF16BCFFFF15BB
      FFFF14B9FFFF13B7FFFF12B5FFFF11B3FFFF0FAEFFFF0DABFFFF0BA8FFFF0BA6
      FFFF0AA3FFFF08A1FFFF079EFFFF069BFFFF0499FFFF0396FFFF0194FFFF1D3B
      6BFF6E6E6E6F1C1C1C1D040404050000000000000000000000167C9AABFFD6E6
      EDFFB9D1DFFFC5D8E2FF1C67A3FF92CFECFF3CA3D8FF3CA3D8FF92CFECFF1C67
      A3FFC5D8E2FFB9D1DFFFD4E4ECFF6F90A4FFFFFFFFFFFEFEFDFFFCFCFCFFFCFC
      FCFFFCFCFDFFFDFFFFFFEAD4B5FFEBD6B9FFEBD7BAFFEBD7BAFFEBD7BAFFEBD6
      B9FFEBD5B8FFFFFFFFFFB47A07FF000000160000000000000016B68115FFF3C9
      88FFEBB966FFEAB967FFEAB865FFE8B359FFFCFDFFFFF3E4D8FFFFFFFBFF4C4B
      4CFF877C74FF857B73FF7C716AFFFFFEF9FFF3E4D8FFF2E4D8FFF2E4D8FFF2E4
      D8FFF2E4D8FFF2E4D8FFF1E3D8FFFDFDFFFFE8B359FFEAB865FFEAB967FFEBB9
      66FFF3C988FFB68115FF0000001600000000150C0C20231515307D4444B73926
      26481F151538FFFFFFFFE8DBDBFFE8DBDBFFE8DBDBFFFFFFFFFFE8DBDBFFE8DB
      DBFFE8DBDBFFF1F1F1FFDCDCDCFFC1C1C1FFAAAAAAFF00B317FF00D93AFF00D9
      3AFF00B317FF14006FFF14101093181313801D1717663D303065B38F8FC3483A
      3A49282020292017172939262649914B4BDF0000000000000000000000004343
      43441D3B6BFF51D3FFFF1AC3FFFF1AC3FFFF1AC3FFFF1AC3FFFF1AC3FFFF1AC3
      FFFF1AC3FFFF1AC3FFFF1AC3FFFF1AC3FFFF1AC3FFFF1AC3FFFF17BFFFFF11B3
      FFFF0BA7FFFF0AA4FFFF09A2FFFF089FFFFF069DFFFF059AFFFF0498FFFF1D3B
      6BFF6E6E6E6F1C1C1C1D04040405000000000000000600000022819CADFFE1ED
      F4FFBCD4E0FFC7DBE4FF1A68A7FFA9D9F1FF36A0D7FF36A0D7FFA9D9F1FF1A68
      A7FFC7DBE4FFBCD4E0FFDEECF2FF7291A5FFFFFFFFFFFDFCFCFFFAFAFAFFFAFA
      FAFFFAFAFBFFFCFDFFFFEAD4B5FFEBD7BAFFECD7BBFFECD7BBFFECD7BBFFEBD6
      BAFFEBD5B8FFFFFFFFFFB47A08FF000000160000000000000016B68115FFF1CB
      8AFFE9B762FFE9B763FFE9B661FFE7B155FFFCFCFFFFF1E2D6FFFFFFF8FF4746
      47FF827770FF817770FF776D66FFFFFDF7FFF1E2D6FFF0E2D6FFF0E2D6FFF0E2
      D6FFF0E2D6FFF0E2D6FFEFE1D6FFFCFCFFFFE7B155FFE9B661FFE9B763FFE9B7
      62FFF1CB8AFFB68115FF00000016000000006837379F42282858915353CFAA7E
      7EBF977373B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1F1F1FF00B317FF00B317FF00B317FF00B317FF00DF58FF00DF
      58FF00B317FF00B317FF00B317FF00B317FF7D6464C5A38282C9D2A9A9E1BF98
      98BFAF8C8CAFA47D7DAFAA7E7EBFA05656EF0000000000000000000000004343
      43441D3B6BFF54D9FFFF1ECCFFFF1ECCFFFF1ECCFFFF1ECCFFFF1ECCFFFF1ECC
      FFFF1ECCFFFF1ECCFFFF1ECCFFFF1ECCFFFF1ECCFFFF1ECCFFFF1ECCFFFF1ECC
      FFFF1BC5FFFF0FAFFFFF0BA6FFFF0AA3FFFF08A1FFFF079EFFFF069BFFFF1D3B
      6BFF6E6E6E6F1C1C1C1D04040405000000000000000B0000002D8AA0B0FFEDF4
      F9FFBFD6E4FFC9DCE6FF1767ADFFC1E7F8FFCBE9F7FFCBE9F7FFC1E7F8FF1767
      ADFFC9DCE6FFBFD6E4FFEBF3F8FF7A96A8FFFFFFFFFFFEFCFBFFF9F8F8FFF8F8
      F8FFF8F8F9FFFAFBFFFFE9D4B1FFEBD7B7FFEBD7B8FFEBD7B8FFEBD7B8FFEBD6
      B7FFEAD5B4FFFFFFFFFFB47A08FF000000160000000000000016B68115FFF2CB
      8BFFE8B55DFFE8B55EFFE8B45DFFE6AF51FFFCFCFFFFEEDED3FFFCF1E9FF8780
      7AFF414345FF404245FF837D79FFFCF1E9FFEFDFD3FFEEDED2FFEEDFD3FFEEDF
      D3FFEEDFD3FFEEDED2FFEDDED2FFFCFCFFFFE6AF51FFE8B45DFFE8B55EFFE8B5
      5DFFF2CB8BFFB68115FF000000160000000027161638966969AF915353CF3926
      26481F151538FFFFFFFFE8DBDBFFE8DBDBFFE8DBDBFFFFFFFFFFE8DBDBFFE8DB
      DBFFE8DBDBFFF4F4F4FF00B317FF00E675FF00E675FF00E675FF00E675FF00E6
      75FF00E675FF00E675FF00E675FF00B317FF1E1818583F32325DB79292C24839
      3948282020282017172839262648914B4BDF0000000000000000000000004343
      43441E4374FF58DFFFFF23D4FFFF23D4FFFF23D4FFFF23D4FFFF23D4FFFF23D4
      FFFF23D4FFFF23D4FFFF23D4FFFF23D4FFFF23D4FFFF23D4FFFF23D4FFFF23D4
      FFFF23D4FFFF23D4FFFF17BFFFFF0BA7FFFF0AA4FFFF09A2FFFF089FFFFF1E43
      74FF6E6E6E6F1C1C1C1D0404040500000000000000062C6F9AFF497E9FFFFEFF
      FFFFC5DBE7FFC9DDE8FF5A96C7FF166AB4FF176BB4FF176BB4FF166AB4FF5A96
      C7FFC9DDE8FFC5DBE7FFFBFEFFFF3B7598FF055588FFFFFDFBFFF8F7F7FFF6F6
      F6FFF6F6F7FFF7F9FDFFE9D2ADFFEAD5B3FFEAD5B4FFEAD5B4FFEAD5B4FFEAD4
      B3FFE9D3B0FFFFFFFFFFB47A08FF000000160000000000000016B68115FFF3CB
      8EFFE7B25AFFE7B35CFFE7B25AFFE6AE4FFFFBFCFFFFE9DCD1FFEDDED1FFF3E3
      D6FFF7E8DAFFF7E8DAFFF2E3D6FFEDDED1FFEADCCFFFE9DCCFFFE9DCCFFFE9DC
      CFFFE9DCCFFFE9DBCFFFE9DCD1FFFBFDFFFFE6AE4FFFE7B25AFFE7B35CFFE7B2
      5AFFF3CB8EFFB68115FF000000160000000005030308311F1F407D4444B71F14
      142800000013FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FF00B317FF00EC94FF00EC94FF00EC94FF00EC94FF00EC
      94FF00EC94FF00EC94FF00EC94FF00B317FF00000023251E1E36AA8888B12820
      202800000000000000001F1414288A4545D70000000000000000000000004343
      43441E4E8BFF5BE6FFFF27DDFFFF27DDFFFF27DDFFFF27DDFFFF27DDFFFF27DD
      FFFF27DDFFFF27DDFFFF27DDFFFF27DDFFFF27DDFFFF27DDFFFF27DDFFFF27DD
      FFFF27DDFFFF27DDFFFF27DDFFFF1FCEFFFF0DACFFFF0BA6FFFF0AA3FFFF1E4E
      8BFF6E6E6E6F1C1C1C1D04040405000000000000000000000006286D9CFF6398
      B8FFD2E4EDFFCBDFEAFFCDE0EAFFD0E5F0FFD2EAF8FFD2EAF8FFD0E5F0FFCDE0
      EAFFCBDFEAFFD1E3EDFF5A92B5FF0E5C90FFFFFFFCFFFAF8F6FFF5F4F3FFF4F4
      F3FFF4F4F4FFF5F7FAFFE8D0A9FFE9D3AFFFE9D3B0FFE9D3B0FFE9D3B0FFE9D2
      AFFFE8D0ABFFFFFFFFFFB47A08FF000000160000000000000016B68115FFF3CC
      8FFFE7B055FFE7B157FFE7B157FFE7AE50FFE7CCA6FFFAFCFFFFFAFAFFFFFBFB
      FFFFFCFCFFFFFCFCFFFFFBFBFFFFFAFAFFFFFAFAFFFFFAFAFFFFFAFAFFFFFAFA
      FFFFFAFAFFFFFAFAFFFFFAFCFFFFE7CCA6FFE7AE50FFE7B157FFE7B157FFE7B0
      55FFF3CC8FFFB68115FF0000001600000000000000001D111128764040AF1F14
      142800000013FFFFFFFFE8DBDBFFE8DBDBFFE8DBDBFFFFFFFFFFE8DBDBFFE8DB
      DBFFE8DBDBFFFDFDFDFF00B317FF00B317FF00B317FF00B317FF00F2B2FF00F2
      B2FF00B317FF00B317FF00B317FF00B317FF00000011271F1F2FAD8A8AB02820
      202800000000000000001F1414288A4545D70000000000000000000000004343
      43441F5A9AFF5EECFFFF2CE5FFFF2CE5FFFF2CE5FFFF2CE5FFFF2CE5FFFF2CE5
      FFFF2CE5FFFF2CE5FFFF2CE5FFFF2CE5FFFF2CE5FFFF2CE5FFFF2CE5FFFF2CE5
      FFFF2CE5FFFF2CE5FFFF2CE5FFFF2CE5FFFF26DBFFFF0EADFFFF0BA7FFFF1F5A
      9AFF6E6E6E6F1C1C1C1D0404040500000000000000000000000000000016276D
      9FFF649ABBFFDAEAF0FFD1E6F0FFCAE6F7FFAF4A00FFAF4A00FFCAE6F7FFD2E6
      F0FFDAEAF2FF5C95B9FF0E5E97FFFFFFFBFFFAF8F5FFF4F4F3FFF2F3F2FFF2F2
      F1FFF2F3F3FFF3F5F8FFE7CEA5FFE8D1ABFFE8D1ACFFE8D1ACFFE8D1ACFFE8D1
      ABFFE7CEA7FFFFFFFFFFB47A08FF000000160000000000000016B68114FFF3CE
      92FFE6AE51FFE6AF53FFE6AF54FFE6AE51FFE5AC4CFFE5AA47FFE4A945FFE4A9
      45FFE4A945FFE4A945FFE4A945FFE4A945FFE4A945FFE4A945FFE4A945FFE4A9
      45FFE4A945FFE4A945FFE5AA47FFE5AC4CFFE6AE51FFE6AF54FFE6AF53FFE6AE
      51FFF3CE92FFB68114FF0000001600000000150C0C20231515307D4444B73926
      26481E141439FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFDFFF9F9F9FFF1F1F1FF00B317FF00F9CFFF00F9
      CFFF00B317FF392C2C6E211B1B45251E1E36261F1F2E47393949BF9898BF4839
      3948282020282017172839262648914B4BDF0000000000000000000000004343
      43442066A9FF67F3FFFF30EEFFFF30EEFFFF30EEFFFF30EEFFFF30EEFFFF30EE
      FFFF30EEFFFF30EEFFFF30EEFFFF30EEFFFF30EEFFFF30EEFFFF30EEFFFF30EE
      FFFF30EEFFFF30EEFFFF30EEFFFF30EEFFFF30EEFFFF25DAFFFF0DABFFFF2066
      A9FF6D6D6D6E1B1B1B1C04040405000000000000000000000000000000152F75
      ADFF266DA1FF649ABEFFE6F4F9FFD9F0FEFFC47027FFC37027FFDAF1FEFFE8F4
      F9FF5E99BFFF1264A0FFFFFFFAFFF9F7F5FFF3F3F4FFF2F2F3FFF2F2F3FFF2F1
      F2FFF0F0F1FFF1F2F7FFE7CDA1FFE8D2A9FFE9D3ABFFE9D3ABFFE9D3ABFFE8D1
      A9FFE6CEA3FFFFFFFFFFB47A08FF000000160000000000000016B68114FFF3CF
      95FFE5AB4CFFE5AD4FFFE5AD50FFE5AC4EFFE5AB4DFFE4AB4BFFE4AB4BFFE4AB
      4BFFE4AB4BFFE4AB4BFFE4AB4BFFE4AB4BFFE4AB4BFFE4AB4BFFE4AB4BFFE4AB
      4BFFE4AB4BFFE4AB4BFFE4AB4BFFE5AB4DFFE5AC4EFFE5AD50FFE5AD4FFFE5AB
      4CFFF3CF95FFB68114FF00000016000000006837379F42282858915353CFA97D
      7DBF957171B6FFFFFFFFE8DBDBFFE8DBDBFFE8DBDBFFFFFFFFFFE8DBDBFFE8DB
      DBFFE8DBDBFFFFFFFFFFFFFFFFFFFDFDFDFFF8F8F8FF00B317FF00FFECFF00FF
      ECFF00B317FFA98787C6A28282B4A88686B1AD8A8AB0BF9898BFDFB2B2DFBF98
      98BFAF8C8CAFA47D7DAFAA7E7EBFA05656EF0000000000000000000000004141
      41422071B8FF97FAFFFF4DF7FFFF35F6FFFF35F6FFFF35F6FFFF35F6FFFF35F6
      FFFF35F6FFFF35F6FFFF35F6FFFF35F6FFFF35F6FFFF35F6FFFF35F6FFFF35F6
      FFFF35F6FFFF35F6FFFF35F6FFFF35F6FFFF35F6FFFF35F6FFFF37DAFFFF2071
      B8FF6969696A16161617020202030000000000000000000000000000000D3178
      B5FF46B1E4FF246DA7FF629BC3FFF3FCFFFFE1F5FFFFE2F5FFFFF4FDFFFF5E99
      C4FF1568A8FF9A8F87FFFCF9F8FFD6C3B2FFD4C2B3FFD4C3B3FFD4C2B2FFD4C1
      B1FFEFEFF0FFEFF1F5FFE6CC9EFFCDA777FFCDA87AFFCEA97AFFCDA87AFFCCA6
      77FFE6CC9FFFFFFFFFFFB47A08FF000000160000000000000016B68114FFF3D1
      98FFE4A947FFE4AA4AFFE3A949FFE2A642FFE1A43DFFE1A33BFFE1A33BFFE1A3
      3BFFE1A33BFFE1A33BFFE1A33BFFE1A33BFFE1A33BFFE1A33BFFE1A33BFFE1A3
      3BFFE1A33BFFE1A33BFFE1A33BFFE1A43DFFE2A642FFE3A949FFE4AA4AFFE4A9
      47FFF3D198FFB68114FF000000160000000027161638966969AF915353CF3926
      26491D14143DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF00B317FF00B317FF00B3
      17FF00B317FF45373750271F1F2D281F1F2A2820202848393948BF9898BF4839
      3948282020282017172839262648914B4BDF0000000000000000000000003030
      30312184C7FF55BAE1FF98F7FCFF9AFEFFFF88FEFFFF88FEFFFF88FEFFFF88FE
      FFFF88FEFFFF88FEFFFF88FEFFFF88FEFFFF88FEFFFF88FEFFFF88FEFFFF88FE
      FFFF88FEFFFF88FEFFFF88FEFFFF88FEFFFF88FEFFFF8CF7FCFF55BAE1FF2184
      C7FF4B4B4B4C0A0A0A0B00000001000000000000000000000000000000042153
      81B32C79BFFF2276C1FF1869ADFF5E9AC7FFFFFFFFFFFFFFFFFF5F9BC8FF1469
      ADFFE4DBD2FF968F8BFFF5F4F4FFEFEFF0FFEEEEF0FFEEEFF0FFEEEEF0FFEEEE
      EFFFEDEDEEFFEDEEF3FFE5C999FFE7CEA2FFE7CFA3FFE7CFA3FFE7CFA3FFE6CE
      A1FFE4C99BFFFFFFFFFFB47A08FF000000160000000000000016B68114FFF3D1
      9BFFE3A743FFE3A846FFE1A43EFFF6DEBAFFFFFFFFFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFFFFFFF6DEBAFFE1A43EFFE3A846FFE3A7
      43FFF3D19BFFB68114FF000000160000000005030308311F1F407D4444B71F13
      132B0000001BFFFFFFFFE8DBDBFFE8DBDBFFE8DBDBFFFFFFFFFFE8DBDBFFE8DB
      DBFFE8DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF0000004D2119
      194F9F7F7FB52720202B00000001000000000000000028202028AF8C8CAF2820
      202800000000000000001F1414288A4545D70000000000000000000000000000
      00007F7F7F8169A9D4F02290D6FF2290D6FF2290D6FF2290D6FF2290D6FF2290
      D6FF2290D6FF2290D6FF2290D6FF2290D6FF2290D6FF2290D6FF2290D6FF2290
      D6FF2290D6FF2290D6FF2290D6FF2290D6FF2290D6FF2290D6FF60A6D2F28788
      888A080808090101010200000000000000000000000000000000000000000000
      000000000016CC8000FFFFFFFFFF0E64AEFF649FCAFF65A0CBFF1268B1FFA498
      8FFFDBD7D3FF95908EFFF1F1F1FFEDEDEEFFECECEEFFECECEEFFECECEEFFECEC
      EDFFEBEBECFFEBECF1FFE4C995FFE6CD9DFFE6CE9FFFE6CE9FFFE6CE9FFFE5CD
      9DFFE3C896FFFFFFFFFFB47A08FF000000160000000000000016B68114FFF3D4
      9FFFE3A63EFFE3A641FFE1A134FFFFFFFFFFFFF9F2FFFFF8EFFFFFF8EFFFFFF7
      EFFFFFF7EEFFFFF8EFFFFFF8EFFFFFF8EFFFFFF7EFFFFFF7EEFFFFF8EFFFFFF8
      EFFFFFF8EFFFFFF8EFFFFFF7EFFFFFF8F2FFFFFFFFFFE1A134FFE3A641FFE3A6
      3EFFF3D49FFFB68114FF0000001600000000000000001D111128764040AF1F13
      132B0000001EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000048211A
      1A4BA38282B42820202800000000000000000000000028202028AF8C8CAF2820
      202800000000000000001F1414288A4545D70000000000000000000000000000
      0000000000000000000000000000000000010202020304040405040404050404
      0405020202030000000100000000000000000000000000000000000000000000
      0000B1ADADC3A59D9DFFBFBFBFFFD3D3D3FF866464FF6E6E6E6F1C1C1C1D0404
      0405000000000000000000000000000000000000000000000000000000000000
      000000000016BC7B00FFFFFFFFFFFBF2ECFF0E67B3FF0F68B4FFFFF7EFFFBDB8
      B4FF989491FFB7B4B4FFEDEDECFFCFBDACFFCFBEADFFD0BEADFFCFBEADFFCFBC
      ABFFE9E9E9FFE9EAEFFFE3C790FFCAA36EFFCAA570FFCBA571FFCAA570FFC9A2
      6DFFE2C791FFFFFFFFFFB47A08FF000000160000000000000016B68114FFF5D5
      A2FFE2A33AFFE1A43CFFDF9E2FFFFEFCFCFFFEF7EFFFFFFAEFFFFFFAEFFFFFF9
      EEFFFFF8EEFFFFFBF1FFFFFCF2FFFFFBF0FFFFF9EEFFFFF8EDFFFFFAEFFFFFFB
      F0FFFFFAEFFFFFFAEFFFFFF8EEFFFEF6EEFFFEFBFBFFDF9E2FFFE1A43CFFE2A3
      3AFFF5D5A2FFB68114FF0000001600000000150C0C20231515307D4444B73724
      244B1C131341FFFFFFFFE8DBDBFFE8DBDBFFFFFFFFFFFFFFFFFFE8DBDBFFE8DB
      DBFFE8DBDBFFFFFFFFFFFFFFFFFFE8DBDBFFFFFFFFFFFFFFFFFF1D17175E3E30
      3063B38F8FC34839394828202028282020282820202848393948BF9898BF4839
      3948282020282017172839262648914B4BDF0000000000000000000000000000
      000000000000000000000000000107070708141414151B1B1B1C1C1C1C1D1B1B
      1B1C131313140505050600000000000000000000000000000000000000000000
      0000B1ADADC3A59D9DFFC1C1C1FFD9D9D9FF866464FF6E6E6E6F1C1C1C1D0404
      0405000000000000000000000000000000000000000000000000000000000000
      000000000016B57A06FFFFFFFFFFEBE8E6FFF3EDE7FFF4EDE8FFEEEBE8FFECEB
      E9FFECEBEAFFEBEAE9FFE8E8E7FFE8E8E8FFE8E8E9FFE8E8E9FFE8E8E9FFE8E8
      E7FFE7E7E7FFE7E8EDFFE2C58BFFE4C994FFE4CA96FFE4CA96FFE4CA96FFE3C9
      93FFE1C48CFFFFFFFFFFB47A08FF000000160000000000000016B68113FFF5D6
      A6FFE1A135FFE0A238FFDE9C2AFFFCFBFBFFFFF9F0FF4D4F52FF909294FF8D8F
      91FFFFFBF1FF505154FF525456FF919395FF8D8F91FFFFFBF0FF4E5052FF9192
      95FF909294FF8F9193FF8C8D90FFFDF7EEFFFCFBFBFFDE9C2AFFE0A238FFE1A1
      35FFF5D6A6FFB68113FF00000016000000006837379F422828588F5353CFA57B
      7BC0916F6FB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E7171BEAA88
      88C6D4AAAAE0BF9898BFAF8C8CAFAF8C8CAFAF8C8CAFBF9898BFDFB2B2DFBF98
      98BFAF8C8CAFA47D7DAFAA7E7EBFA05656EF0000000000000000000000000000
      000000000000000000000202020340404041646464656D6D6D6E6E6E6E6F6161
      61622D2D2D2E0E0E0E0F00000000000000000000000000000000000000000000
      0000B1ADADC3A59D9DFFC3C3C3FFDFDFDFFF866464FF6E6E6E6F1C1C1C1D0404
      0405000000000000000000000000000000000000000000000000000000000000
      000000000016B47A07FFFFFFFFFFE3E3E3FFE6E5E3FFE7E6E5FFE7E7E6FFE7E7
      E7FFE7E7E7FFE6E7E7FFE6E6E7FFE6E6E7FFE6E6E7FFE6E6E7FFE6E6E7FFE6E6
      E5FFE5E5E5FFE4E6EBFFE1C387FFE3C790FFE3C892FFE3C892FFE3C892FFE2C6
      8FFFDFC288FFFFFFFFFFB47A08FF000000160000000000000016B68013FFF6D9
      ABFFDF9F30FFDFA034FFDD9A26FFFBFAFAFFFCF6EDFFFFFAEFFFFFFAEFFFFFF8
      EDFFFFF7EDFFFFFAF0FFFFFCF1FFFFFAEFFFFFF8EDFFFEF7ECFFFFFAEFFFFFFA
      F0FFFFFAEFFFFFF9EEFFFFF7ECFFFBF5ECFFFBFAFAFFDD9A26FFDFA034FFDF9F
      30FFF6D9ABFFB68013FF000000160000000027161638966969AF8F5353CF3724
      244D1E13133CFFFFFFFFE8DBDBFFE8DBDBFFE8DBDBFFE8DBDBFFE8DBDBFFE8DB
      DBFFE8DBDBFFE8DBDBFFE8DBDBFFE8DBDBFFE8DBDBFFFFFFFFFF241C1C3F4336
      3653BA9595C14839394828202028282020282820202848393948BF9898BF4839
      3948282020282017172839262648914B4BDF0000000000000000000000000000
      0000000000000000000033333334805858FF977575FF937171FF916F6FFF724F
      4FFF3939393A1313131400000001000000000000000000000000000000000000
      0000B2AEAEC3A69E9EFFC5C5C5FFE5E5E5FF886767FF6E6E6E6F1C1C1C1D0404
      0405000000000000000000000000000000000000000000000000000000000000
      000000000016B47A07FFFFFFFFFFE0E0E1FFE2E2E2FFC9B6A6FFC9B8A8FFCAB8
      A8FFCAB8A8FFCAB8A8FFCAB8A8FFCAB8A8FFCAB8A8FFCAB8A8FFC9B8A8FFC9B6
      A6FFE3E3E3FFE2E4E9FFE1C283FFC89F65FFC9A168FFC9A168FFC9A168FFC89F
      65FFDFC184FFFFFFFFFFB47A08FF000000160000000000000016B68013FFF6DC
      B1FFDF9C2CFFDF9E2FFFDE9821FFF9F8F8FFFAF4EBFFFFF8EDFFFFFAEEFFFFF8
      EDFFFEF7ECFFFFF7ECFFFFF7ECFFFEF7ECFFFDF5EBFFFCF5EAFFFFF8EDFFFFFA
      EEFFFFF8EDFFFEF7ECFFFCF5EAFFF9F2EAFFF9F8F8FFDE9821FFDF9E2FFFDF9C
      2CFFF6DCB1FFB68013FF000000160000000005030308311F1F407A4343B81D12
      123000000017FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000B271F
      1F2DAD8A8AB02820202800000000000000000000000028202028AF8C8CAF2820
      202800000000000000001F1414288A4545D70000000000000000000000000000
      0000000000000000000042424243987777FFF6F6F6FFE6E6E6FFDCDCDCFF7755
      55FF3C3C3C3D1919191A03030304000000000000000000000000000000000000
      0001B3AEAEC4A89F9FFFD1D1D1FFEBEBEBFF8C6B6BFF6D6D6D6E1A1A1A1B0303
      0304000000000000000000000000000000000000000000000000000000000000
      000000000016B47A07FFFFFFFFFFDEDEDEFFE0DFDFFFE2E2E1FFE2E2E3FFE2E3
      E3FFE2E3E3FFE2E3E3FFE2E3E3FFE2E3E3FFE2E3E3FFE2E3E3FFE2E2E3FFE2E2
      E1FFE1E1E1FFE0E2E7FFDFC07EFFE1C488FFE1C58AFFE1C58AFFE1C58AFFE0C3
      87FFDDBE7EFFFFFFFFFFB57A08FF000000160000000000000016B68013FFF8DD
      B4FFDE9A28FFDE9C2CFFDD961EFFF7F7F8FFFAF5ECFF505255FF545557FF9394
      96FF919295FF919294FF919294FF909294FF8E8F92FFFEF7ECFF515255FF5455
      57FF939496FF909294FF8D8F91FFF8F3EAFFF7F7F7FFDD961EFFDE9C2CFFDE9A
      28FFF8DDB4FFB68013FF0000001600000000000000001D111128753E3EB01D12
      1232000000182300C4FF0000001E241E1E38A88686B2271F1F2C000000050000
      000500000005261F1F2BAB8888B0261F1F2B0000000400000004000000032820
      2029AF8C8CAF2820202800000000000000000000000028202028AF8C8CAF2820
      202800000000000000001F1414288A4545D70000000000000000000000000000
      00000000000000000000404040419D8484FFF9F9F9FFEEEEEEFFE1E1E1FF8962
      62FF5A5A5A5B272727280A0A0A0B000000010000000000000000000000010707
      0708A18989F1B2AEAEFFDBDBDBFFEDEDEDFF906F6FFF6A6A6A6B151515160101
      0102000000000000000000000000000000000000000000000000000000000000
      000000000016B57A07FFFFFFFFFFDCDADCFFDEDCDDFFE0DEDFFFE0DFE1FFE0DF
      E1FFE0DFE1FFE0DFE1FFE0DFE1FFE0DFE1FFE0DFE1FFE0DFE1FFE0DFE1FFE0DE
      DFFFDEDDDFFFDEDFE6FFDFBE79FFE0C283FFE0C386FFE0C386FFE0C386FFDFC1
      83FFDCBC79FFFFFFFFFFB57A08FF000000160000000000000016B68012FFF8E0
      BBFFDD9723FFDE9A28FFDC941AFFF6F5F5FFF7F1E8FFFCF5EAFFFFF7ECFFFDF5
      EAFFFCF4E9FFFBF4E8FFFBF4E8FFFBF4E8FFFAF2E8FFF9F2E7FFFCF5EAFFFEF6
      EBFFFDF5EAFFFCF4E9FFF9F2E7FFF6EFE7FFF6F5F5FFDC941AFFDE9A28FFDD97
      23FFF8E0BBFFB68012FF0000001600000000150C0C20231515307A4242B83623
      23512400C5FF231B1B42231C1C3D44363651BA9696C0483A3A49282020282820
      20282820202848393948BF9898BF483939482820202828202028282020284839
      3948BF9898BF4839394828202028282020282820202848393948BF9898BF4839
      3948282020282017172839262648914B4BDF0000000000000000000000000000
      000000000000000000000F0F0F10886060FFFBFBFBFFF6F6F6FFE5E5E5FFA48E
      8EFF9F9F9FA53939393A1F1F1F200C0C0C0D05050506050505060A0A0A0B5454
      54558F6B6BFFBEBEBEFFEAEAEAFFEDEDEDFF886060FF3F3F3F400F0F0F100000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000016B57A07FFFFFFFFFFDAD8D9FFDCDBDBFFC4B2A2FFC5B3A3FFC5B3
      A4FFC5B3A4FFC5B3A4FFC5B3A4FFC5B3A4FFC5B3A4FFC5B3A4FFC5B3A3FFC4B2
      A2FFDDDCDCFFDCDDE3FFDEBE76FFC59A5CFFC69C5EFFC69C5FFFC69C5EFFC49A
      5BFFDBBC75FFFFFFFFFFB57A08FF000000160000000000000016B68012FFF9E2
      C0FFDD961EFFDF9924FFDC9216FFF4F4F5FFF5F0E7FFFAF4E9FFFCF6EAFFFAF4
      E9FFF9F3E7FFF8F1E7FFF7F1E6FFF9F3E8FFFAF3E8FFF9F2E7FFF8F1E7FFF7F1
      E7FFFAF3E9FFF9F3E8FFF7F1E6FFF4EEE6FFF4F4F5FFDC9216FFDF9924FFDD96
      1EFFF9E2C0FFB68012FF00000016000000006837379F422828588E5252D0A177
      77C32400C5FF997A7AB89D7F7FB6B59191C2DCAFAFDFBF9898BFAF8C8CAFAF8C
      8CAFAF8C8CAFBF9898BFDFB2B2DFBF9898BFAF8C8CAFAF8C8CAFAF8C8CAFBF98
      98BFDFB2B2DFBF9898BFAF8C8CAFAF8C8CAFAF8C8CAFBF9898BFDFB2B2DFBF98
      98BFAF8C8CAFA47D7DAFAA7E7EBFA05656EF0000000000000000000000000000
      0000000000000000000000000000B6ABABE0D8CECEFFFEFEFEFFEBEBEBFFD1C9
      C9FFA28989F46969696A3B3B3B3C2A2A2A2B1F1F1F201E1E1E1F43434344B0A5
      A5E6AD9F9FFFCBCBCBFFFFFFFFFFD1CBCBFFAFA2A2E7262626270909090A0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000016B57A07FFFFFFFFFFD7D5D6FFD9D7D7FFDBDAD9FFDBDADAFFDBDA
      DAFFDBDADAFFDBDADAFFDBDADAFFDBDADAFFDBDADAFFDBDADAFFDBDADAFFDBDA
      D9FFDAD8D9FFD9DAE0FFDCBA6FFFDCBD78FFDDBF7AFFDDBF7AFFDDBF7AFFDCBD
      77FFD9B86FFFFFFFFFFFB57B08FF000000160000000000000016B68011FFF9E5
      C5FFDF951AFFA97117FFDF9212FFF2F3F3FFF5F0E7FF525356FF555658FF9495
      97FF929395FF8F9193FFF8F1E7FF505254FF939496FF929395FF8F9193FFF8F1
      E7FF505254FF929496FF8F9092FFF3EEE5FFF2F2F3FFDF9212FFA97117FFDF95
      1AFFF9E5C5FFB68011FF000000160000000027151538956969AF8E5252D03623
      23522400C5FF241C1C3E241E1E384537374EBD9797C048393948282020282820
      20282820202848393948BF9898BF483939482820202828202028282020284839
      3948BF9898BF4839394828202028282020282820202848393948BF9898BF4839
      3948282020282017172839262648914B4BDF0000000000000000000000000000
      00000000000000000000000000007F7F7F81B7A4A4FFFEFEFEFFF9F9F9FFEBEB
      EBFFC8BBBBFF926B6BFFA8A7A7B0737373746F6F6F709C9B9BA0A79090F3AC9A
      9AFFCCCCCCFFF1F1F1FFFBFBFBFFAB9898FFA1A0A0A716161617030303040000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000016B47A07FFFFFFFFFFD2D1D3FFD3D2D2FFD4D3D3FFD4D3D3FFD4D3
      D3FFD4D3D3FFD4D3D3FFD4D3D3FFD4D3D3FFD4D3D3FFD4D3D3FFD4D3D3FFD4D3
      D3FFD4D3D4FFD4D4DAFFD9B363FFD9B569FFD9B56AFFD9B56AFFD9B56AFFD8B4
      68FFD7B263FFFFFFFFFFB47A08FF000000160000000000000016B67E11FFFBE9
      CCFFE09416FF7D530DFFE0910EFFF1F2F3FFF1ECE4FFF6EFE5FFF7F1E6FFF6F0
      E4FFF5EEE3FFF4EDE2FFF3EDE2FFF5EFE4FFF6EFE4FFF5EEE3FFF4EDE2FFF3ED
      E2FFF5EFE4FFF5EFE4FFF3EDE2FFF0EBE3FFF1F1F2FFE0910EFF7D530DFFE094
      16FFFBE9CCFFB67E11FF00000016000000001C0F0F28372424487A4343B81E13
      13322400C5FF000000130000000D271F1F2DAE8B8BAF28202028000000000000
      00000000000028202028AF8C8CAF282020280000000000000000000000002820
      2028AF8C8CAF2820202800000000000000000000000028202028AF8C8CAF2820
      202800000000000000001F1414288A4545D70000000000000000000000000000
      00000000000000000000000000000F0F0F10AD9C9CF0E3DBDBFFFFFFFFFFF9F9
      F9FFECECECFFDFDBDBFFB4A1A1FFA99393FFA89292FFB09D9DFFC7BFBFFFD6D6
      D6FFEDEDEDFFFFFFFFFFD4CDCDFFA99595F33D3D3D3E08080809000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000016B47A07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47A08FF000000160000000000000016B57E11FFFCEC
      D1FFDE900FFF7A4F07FFDE8E08FFEEF0F0FFEDE9E0FFEDE8DEFFEEE9DEFFEDE8
      DEFFEDE8DEFFEDE8DDFFECE8DDFFEDE8DEFFEDE8DEFFEDE8DEFFEDE8DDFFECE8
      DDFFEDE8DEFFEDE8DEFFEDE8DDFFECE9E0FFEEF0F0FFDE8E08FF7A4F07FFDE90
      0FFFFCECD1FFB57E11FF00000015000000006B3B3B9F42292958794040B81B0E
      0E2E2400C5FF0000000B000000072117172BA37C7CAF20171728000000000000
      00000000000020171728A47D7DAF201717280000000000000000000000002017
      1728A47D7DAF2017172800000000000000000000000020171728A47D7DAF2017
      17280000000000000000190C0C28884444D70000000000000000000000000000
      00000000000000000000000000000000000060606061A18686FFEBE6E6FFFFFF
      FFFFFBFBFBFFF1F1F1FFEAEAEAFFE6E6E6FFE3E3E3FFE0E0E0FFE9E9E9FFFAFA
      FAFFFFFFFFFFE4DFDFFF9E8383FF787878790D0D0D0E01010102000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000016B47A08FFFFFFFFFFE2AA50FFE3AD57FFE3AE59FFE3AE59FFE3AE
      59FFE3AE59FFE3AE59FFE3AE59FFE3AE59FFE3AE59FFE3AE59FFE3AE59FFE3AE
      59FFE3AE59FFE3AE59FFE3AE5AFFE3AF5BFFE3AF5BFFE3AF5BFFE3AF5BFFE3AE
      59FFE2AA51FFFFFFFFFFB47A08FF000000160000000000000010B68012FFFDEE
      D8FFD98903FFDB8C08FFD88600FFEDECECFFEBE6DEFFEBE5DCFFEBE5DCFFEBE5
      DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE5
      DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE6DEFFEDECECFFD88600FFDB8C08FFD989
      03FFFDEED8FFB68012FF0000000D0000000027161638946868AF8B4C4CCF2400
      C5FF190C0C2C190B0B2B1E12122A38232349A97C7CBF372424481E121228190C
      0C281E12122837242448A97C7CBF372424481E121228190C0C281E1212283724
      2448A97C7CBF372424481E121228190C0C281E12122837242448A97C7CBF3724
      24481E121228190C0C282E1616488D4646DF0000000000000000000000000000
      0000000000000000000000000000000000000000000060606061A68B8BFFE5DE
      DEFFFFFFFFFFFFFFFFFFFEFEFEFFFAFAFAFFF9F9F9FFFFFFFFFFFFFFFFFFFDFD
      FDFFDCD5D5FFA48989FFA6A5A5AC0D0D0D0E0202020300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000016B57B09FFFFFFFFFFDCA03EFFDDA549FFDEA64BFFDEA64BFFDEA6
      4BFFDEA64BFFDEA64BFFDEA64BFFDEA64BFFDEA64BFFDEA64BFFDEA64BFFDEA6
      4BFFDEA64BFFDEA64BFFDEA64BFFDEA64BFFDEA64BFFDEA64BFFDEA64BFFDDA5
      49FFDCA03EFFFFFFFFFFB57B09FF000000160000000000000005A77715EBF1C6
      80FFFDECCFFFFDEBCEFFFCE8C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE8C6FFFDEBCEFFFDEC
      CFFFF1C680FF7C570EB30000000400000000060303082A191938794141B7773D
      3DB76F3838AF6F3838AF743E3EAF7A4343B7894D4DC77A4343B7743E3EAF6F38
      38AF743E3EAF7A4343B7894D4DC77A4343B7743E3EAF6F3838AF743E3EAF7A43
      43B7894D4DC77A4343B7743E3EAF6F3838AF743E3EAF7A4343B7894D4DC77A43
      43B7743E3EAF6F3838AF743939B7844141CF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000050505051B7A6
      A6F0BAA6A6FFE1D8D8FFFCFCFCFFFBFBFBFFFBFBFBFFF8F8F8FFDCD3D3FFBDAC
      ACFFB6A4A4F16C6C6C6D07070708010101020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000015B57B09FFFFFFFFFFD4911FFFD59428FFD5962AFFD5962AFFD596
      2AFFD5962AFFD5962AFFD5962AFFD5962AFFD5962AFFD5962AFFD5962AFFD596
      2AFFD5962AFFD5962AFFD5962AFFD5962AFFD5962AFFD5962AFFD5962AFFD594
      28FFD4911FFFFFFFFFFFB57B09FF00000015000000000000000000000005A776
      15EAB68012FFB57E11FFB57D0FFFB57C0BFFB57B09FFB57B08FFB57B08FFB57B
      08FFB57B08FFB57B08FFB57B08FFB57B08FFB57B08FFB57B08FFB57B08FFB57B
      08FFB57B08FFB57B08FFB57B08FFB57B09FFB57C0BFFB57D0FFFB57E11FFB680
      12FF7C580FB00000000400000000000000000000000006040408160D0D201B0F
      0F28190C0C28190C0C281B0F0F281B0F0F281B0F0F281B0F0F281B0F0F28190C
      0C281B0F0F281B0F0F281B0F0F281B0F0F281B0F0F28190C0C281B0F0F281B0F
      0F281B0F0F281B0F0F281B0F0F28190C0C281B0F0F281B0F0F281B0F0F281B0F
      0F281B0F0F28190C0C28190C0C28190C0C280000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F0F
      0F107F7F7F81BEB8B8D1AA8F8FFFB7A2A2FFB7A1A1FFAA8F8FFFBEB8B8D38585
      8587171717180202020300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000DB67D0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB67D0EFF0000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000404040414242424303030304000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000047F5B10B4B67D0EFFB57B0AFFB57B09FFB57B09FFB57B09FFB57B
      09FFB57B09FFB57B09FFB57B09FFB57B09FFB57B09FFB57B09FFB57B09FFB57B
      09FFB57B09FFB57B09FFB57B09FFB57B09FFB57B09FFB57B09FFB57B09FFB57B
      09FFB57B0AFFB67D0EFF7F5B10B4000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020006080E0913180C080D101A141A2028202028201A1A200704
      040807030308140909180E0908101E14142028202028201A1A20060705080507
      04080E160C180C0E0A101A1B162028202028201A1A2008060608000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020006080E0913180C080D101A141A2028202028201A1A200704
      040807030308140909180E0908101E14142028202028201A1A20060705080507
      04080E160C180C0E0A101A1B162028202028201A1A2008060608000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020006080E0913180C080D101A141A2028202028201A1A200704
      040807030308140909180E0908101E14142028202028201A1A20060705080507
      04080E160C180C0E0A101A1B162028202028201A1A2008060608000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020006080E0913180C080D101A141A2028202028201A1A200704
      040807030308140909180E0908101E14142028202028201A1A20060705080507
      04080E160C180C0E0A101A1B162028202028201A1A2008060608000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D060A183516518020121B3085636897A37C7CAF88666697120A
      091811070618591916802412123088636397A37C7CAF88666697110D0A180E0D
      0918365F2780201C153085686497A37C7CAF88666697120C0C18000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D060A183516518020121B3085636897A37C7CAF88666697120A
      091811070618591916802412123088636397A37C7CAF88666697110D0A180E0D
      0918365F2780201C153085686497A37C7CAF88666697120C0C18000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D060A183516518020121B3085636897A37C7CAF88666697120A
      091811070618591916802412123088636397A37C7CAF88666697110D0A180E0D
      0918365F2780201C153085686497A37C7CAF88666697120C0C18000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D060A183516518020121B3085636897A37C7CAF88666697120A
      091811070618591916802412123088636397A37C7CAF88666697110D0A180E0D
      0918365F2780201C153085686497A37C7CAF88666697120C0C18000000000000
      0000000000000000000000000000000000000000000005030308140A0A20190C
      0C28170A0F281B0C12302816204027161D3836242848402B2B50392626482312
      1230221212302E1716402A17163839242448402B2B5037242448221915301F18
      123028221940271E1838362925483F29295039262648241616301D1010281B0F
      0F281B0F0F28190C0C28190C0C28190C0C280000000005030308140A0A20190C
      0C28170A0F281B0C12302816204027161D3836242848402B2B50392626482312
      1230221212302E1716402A17163839242448402B2B5037242448221915301F18
      123028221940271E1838362925483F29295039262648241616301D1010281B0F
      0F281B0F0F28190C0C28190C0C28190C0C280000000005030308140A0A20190C
      0C28170A0F281B0C12302816204027161D3836242848402B2B50392626482312
      1230221212302E1716402A17163839242448402B2B5037242448221915301F18
      123028221940271E1838362925483F29295039262648241616301D1010281B0F
      0F281B0F0F28190C0C28190C0C28190C0C280000000005030308140A0A20190C
      0C28170A0F281B0C12302816204027161D3836242848402B2B50392626482312
      1230221212302E1716402A17163839242448402B2B5037242448221915301F18
      123028221940271E1838362925483F29295039262648241616301D1010281B0F
      0F281B0F0F28190C0C28190C0C28190C0C2800000000140A0A206F3838AF7439
      39B76C363AAF6B343BAF733D42AF7A4448B78B5053C77F4848B7784545AF743B
      3BAF763D3DAF7D4242B78B5050C77E4545B8764343B1723D3DB26F423DB37445
      41BA834E4BC9744542BA6C423DB46B3A3AB76A3B3BB96D3D3DC1784444CE6C3A
      3AC0663636B9613131B9673232BF844141CF00000000140A0A206F3838AF7439
      39B76C363AAF6B343BAF733D42AF7A4448B78B5053C77F4848B7784545AF743B
      3BAF763D3DAF7D4242B78B5050C77E4545B8764343B1723D3DB26F423DB37445
      41BA834E4BC9744542BA6C423DB46B3A3AB76A3B3BB96D3D3DC1784444CE6C3A
      3AC0663636B9613131B9673232BF844141CF00000000140A0A206F3838AF7439
      39B76C363AAF6B343BAF733D42AF7A4448B78B5053C77F4848B7784545AF743B
      3BAF763D3DAF7D4242B78B5050C77E4545B8764343B1723D3DB26F423DB37445
      41BA834E4BC9744542BA6C423DB46B3A3AB76A3B3BB96D3D3DC1784444CE6C3A
      3AC0663636B9613131B9673232BF844141CF00000000140A0A206F3838AF7439
      39B76C363AAF6B343BAF733D42AF7A4448B78B5053C77F4848B7784545AF743B
      3BAF763D3DAF7D4242B78B5050C77E4545B8764343B1723D3DB26F423DB37445
      41BA834E4BC9744542BA6C423DB46B3A3AB76A3B3BB96D3D3DC1784444CE6C3A
      3AC0663636B9613131B9673232BF844141CF00000000190C0C28743939B72E16
      1648190C0C28190C0C281E12122837242448A97C7CBF372424481E121228190C
      0C281E12122837242448A87B7BC03622224C1C111134160B0B3B1A10103F3220
      205B997070C5332121591A10103F150A0A412400C5FF2400C5FF2400C5FF3321
      21581A10103C2400C5FF291414598D4646DF00000000190C0C28743939B72E16
      1648190C0C28190C0C281E12122837242448A97C7CBF372424481E121228190C
      0C281E12122837242448A87B7BC03622224C1C111134160B0B3B1A10103F3220
      205B997070C5332121591A10103F150A0A412400C5FF2400C5FF2400C5FF3321
      21581A10103C2400C5FF291414598D4646DF00000000190C0C28743939B72E16
      1648190C0C28190C0C281E12122837242448A97C7CBF372424481E121228190C
      0C281E12122837242448A87B7BC03622224C1C111134160B0B3B1A10103F3220
      205B997070C5332121591A10103F150A0A412400C5FF2400C5FF2400C5FF3321
      21581A10103C2400C5FF291414598D4646DF00000000190C0C28743939B72E16
      1648190C0C28190C0C281E12122837242448A97C7CBF372424481E121228190C
      0C281E12122837242448A87B7BC03622224C1C111134160B0B3B1A10103F3220
      205B997070C5332121591A10103F150A0A412400C5FF2400C5FF2400C5FF3321
      21581A10103C2400C5FF291414598D4646DF00000000190C0C286F3838AF190C
      0C2800000000000000000000000020171728A47D7DAF20171728000000000000
      0000000000012017172AA17A7AB12015153200000018000000240000002A1B13
      134C8B6969BC1C13134800000024000000202400C5FF1F1414369B7777B32400
      C5FF0000000D2400C5FF170B0B33884444D700000000190C0C286F3838AF190C
      0C2800000000000000000000000020171728A47D7DAF20171728000000000000
      0000000000012017172AA17A7AB12015153200000018000000240000002A1B13
      134C8B6969BC1C13134800000024000000202400C5FF1F1414369B7777B32400
      C5FF0000000D2400C5FF170B0B33884444D700000000190C0C286F3838AF190C
      0C2800000000000000000000000020171728A47D7DAF20171728000000000000
      0000000000012017172AA17A7AB12015153200000018000000240000002A1B13
      134C8B6969BC1C13134800000024000000202400C5FF1F1414369B7777B32400
      C5FF0000000D2400C5FF170B0B33884444D700000000190C0C286F3838AF190C
      0C2800000000000000000000000020171728A47D7DAF20171728000000000000
      0000000000012017172AA17A7AB12015153200000018000000240000002A1B13
      134C8B6969BC1C13134800000024000000202400C5FF1F1414369B7777B32400
      C5FF0000000D2400C5FF170B0B33884444D7000000001B0F0F28743D3DAF1E12
      122800000000000000000000000028202028AF8C8CAF28202028000000000000
      000100000003271F1F2DA58484B3251E1E3A000000220000002D000000331F18
      18548B7070BF1F1919502400C5FF2400C5FF00000013271F1F30AB8888B02720
      202B2400C5FF000000061E12122C8A4545D7000000001B0F0F28743D3DAF1E12
      122800000000000000000000000028202028AF8C8CAF28202028000000000000
      000100000003271F1F2DA58484B3251E1E3A000000220000002D000000331F18
      18548B7070BF1F1919502400C5FF2400C5FF00000013271F1F30AB8888B02720
      202B2400C5FF000000061E12122C8A4545D7000000001B0F0F28743D3DAF1E12
      122800000000000000000000000028202028AF8C8CAF28202028000000000000
      000100000003271F1F2DA58484B3251E1E3A000000220000002D000000331F18
      18548B7070BF1F1919502400C5FF2400C5FF00000013271F1F30AB8888B02720
      202B2400C5FF000000061E12122C8A4545D7000000001B0F0F28743D3DAF1E12
      122800000000000000000000000028202028AF8C8CAF28202028000000000000
      000100000003271F1F2DA58484B3251E1E3A000000220000002D000000331F18
      18548B7070BF1F1919502400C5FF2400C5FF00000013271F1F30AB8888B02720
      202B2400C5FF000000061E12122C8A4545D7150C0C20231515307D4444B73926
      264820171728282020282820202848393948BF9898BF48393948282020292720
      202B271F1F2F43363653AC8A8AC53E3232602400C5FF2400C5FF2400C5FF3A2D
      2D6D977979CC2400C5FF211A1A4D231B1B41261E1E354639394CBE9797BF483A
      3A49282020292017172939262649914B4BDF150C0C20231515307D4444B73926
      264820171728282020282820202848393948BF9898BF48393948282020292720
      202B271F1F2F43363653AC8A8AC53E3232602400C5FF2400C5FF2400C5FF3A2D
      2D6D977979CC2400C5FF211A1A4D231B1B41261E1E354639394CBE9797BF483A
      3A49282020292017172939262649914B4BDF150C0C20231515307D4444B73926
      264820171728282020282820202848393948BF9898BF48393948282020292720
      202B271F1F2F43363653AC8A8AC53E3232602400C5FF2400C5FF2400C5FF3A2D
      2D6D977979CC2400C5FF211A1A4D231B1B41261E1E354639394CBE9797BF483A
      3A49282020292017172939262649914B4BDF150C0C20231515307D4444B73926
      264820171728282020282820202848393948BF9898BF48393948282020292720
      202B271F1F2F43363653AC8A8AC53E3232602400C5FF2400C5FF2400C5FF3A2D
      2D6D977979CC2400C5FF211A1A4D231B1B41261E1E354639394CBE9797BF483A
      3A49282020292017172939262649914B4BDF6837379F42282858915353CFAA7E
      7EBFA47D7DAFAF8C8CAFAF8C8CAFBF9898BFDFB2B2DFBF9898BFAD8A8AB0AA88
      88B1A38484B4AA8888C6BE9898E49B7C7CCB2400C5FF8D7171BE2400C5FF2400
      C5FFB59090E52400C5FF927575BC9B7D7DB7A58484B3BD9797C0DFB2B2DFBF98
      98BFAF8C8CAFA47D7DAFAA7E7EBFA05656EF6837379F42282858915353CFAA7E
      7EBFA47D7DAFAF8C8CAFAF8C8CAFBF9898BFDFB2B2DFBF9898BFAD8A8AB0AA88
      88B1A38484B4AA8888C6BE9898E49B7C7CCB2400C5FF8D7171BE2400C5FF2400
      C5FFB59090E52400C5FF927575BC9B7D7DB7A58484B3BD9797C0DFB2B2DFBF98
      98BFAF8C8CAFA47D7DAFAA7E7EBFA05656EF6837379F42282858915353CFAA7E
      7EBFA47D7DAFAF8C8CAFAF8C8CAFBF9898BFDFB2B2DFBF9898BFAD8A8AB0AA88
      88B1A38484B4A98787C7B79393E5937676CE2100B7FF816767C32000B4FF2000
      B4FFA58484E72000B4FF866B6BC28E7272BD987A7AB9AD8A8AC5CCA4A4E2AD8C
      8CC49F7F7FB5997373B5A17676C29A5353F06837379F42282858915353CFAA7E
      7EBFA47D7DAFAF8C8CAFAF8C8CAFBF9898BFDFB2B2DFBF9898BFAD8A8AB0AA88
      88B1A38484B4AA8888C6BE9898E49B7C7CCB2400C5FF8D7171BE2400C5FF2400
      C5FFB59090E52400C5FF927575BC9B7D7DB7A58484B3BD9797C0DFB2B2DFBF98
      98BFAF8C8CAFA47D7DAFAA7E7EBFA05656EF27161638966969AF915353CF3926
      264820171728282020282820202848393948BE9797BF47393949261F1F2B261F
      1F31251C1C3B3E3232609D7E7ECA3A2D2D6C2400C5FF211A1A4D211A1A462400
      C5FFA28282C92400C5FF231B1B45251C1C3B261E1E304738384ABF9898BF4839
      3948282020282017172839262648914B4BDF27161638966969AF915353CF3926
      264820171728282020282820202848393948BE9797BF47393949261F1F2B261F
      1F31251C1C3B3E3232609D7E7ECA3A2D2D6C2400C5FF211A1A4D211A1A462400
      C5FFA28282C92200BEFF1E1818572019194E241D1D364738384ABF9898BF4839
      3948282020282017172839262648914B4BDF27161638966969AF915353CF3926
      264820171728282020282820202848393948BE9797BF47393949261F1F2B261F
      1F31251C1C3B3B2F2F65937575CD3228287C1E00A8FF1B15156A1B1515661D00
      A3FF866B6BD21D00A3FF1C1616651D17175D1F1818543A2E2E699D7E7ECA3C2F
      2F68211A1A4B1C1212473321215C864646E127161638966969AF915353CF3926
      264820171728282020282820202848393948BE9797BF47393949261F1F2B261F
      1F31251C1C3B3E3232609D7E7ECA3A2D2D6C2400C5FF211A1A4D211A1A462400
      C5FFA28282C92400C5FF231B1B45251C1C3B261E1E304738384ABF9898BF4839
      3948282020282017172839262648914B4BDF05030308311F1F407D4444B71F14
      14280000000000000000000000012720202BAA8888B1271F1F2D000000090000
      00100000001B2400C5FF2400C5FF211A1A4A2400C5FF0000001F000000172400
      C5FF9D7E7EB72400C5FF000000180000000E0000000628202029AF8C8CAF2820
      202800000000000000001F1414288A4545D705030308311F1F407D4444B71F14
      14280000000000000000000000012720202BAA8888B1271F1F2D000000090000
      00100000001B2400C5FF2400C5FF201919502000B1FF0000003D000000361F00
      AAFF896D6DC11C009DFF000000550000004D00000038231B1B46977979BA231B
      1B4500000022000000191E12122F8A4545D705030308311F1F407D4444B71F14
      14280000000000000000000000012720202BAA8888B1271F1F2D000000090000
      00100000001B2200BAFF1F00AFFF1C15156B1B0095FF0000005C0000005A1900
      8BFF705A5ACC19008BFF0000005B000000540000004E1C1616677C6363C61B17
      1766000000460000003E190F0F507A3D3DDC05030308311F1F407D4444B71F14
      14280000000000000000000000012720202BAA8888B1271F1F2D000000090000
      00100000001B2400C5FF2400C5FF211A1A4A2400C5FF0000001F000000172400
      C5FF9D7E7EB72400C5FF000000180000000E0000000628202029AF8C8CAF2820
      202800000000000000001F1414288A4545D7000000001D111128764040AF1F14
      1428000000000000000100000003271F1F2FA58484B3251E1E35000000130000
      00192400C5FF231B1B442400C5FF2400C5FF2400C5FF000000100000000B2400
      C5FFA58484B32400C5FF0000000C000000070000000328202029AF8C8CAF2820
      202800000000000000001F1414288A4545D7000000001D111128764040AF1F14
      1428000000000000000100000003271F1F2FA58484B3251E1E35000000130000
      00192400C5FF231B1B442400C5FF2000B1FF1B0097FF0000005F0000005B1700
      84FF6F5858CC04001DFF000000DE000000720000005F1A14146F745D5DC91A14
      146F0000005400000043190F0F4B854242D8000000001D111128764040AF1F14
      1428000000000000000100000003271F1F2FA58484B3251E1E35000000130000
      00192400C5FF1F1818561E0194FF20057EFF200771FF0C09027E0E0D0B7F1F0B
      72FF5B4949D7170369FF0C0B0A7F0F0F0F7D0E0E0D7B231E1D8F68544CD5221A
      118E0B07007505030166180F0F60743A3ADD000000001D111128764040AF1F14
      1428000000000000000100000003271F1F2FA58484B3251E1E35000000130000
      00192400C5FF231B1B442400C5FF2400C5FF2400C5FF000000100000000B2400
      C5FFA58484B32400C5FF0000000C000000070000000328202029AF8C8CAF2820
      202800000000000000001F1414288A4545D7150C0C20231515307D4444B73926
      264820171729261F1F2B271F1F3044363653AF8C8CC53F33335C231C1C43231B
      1B462400C5FF4033335EAD8C8CC42400C5FF271F1F2F271F1F2D261F1F2B4738
      384A2400C5FF4638384C271F1F2C281F1F2A2820202948393948BF9898BF4839
      3948282020282017172839262648914B4BDF150C0C20231515307D4444B73926
      264820171729261F1F2B271F1F3044363653AF8C8CC53F33335C231C1C43231B
      1B462400C5FF4033335EAD8C8CC4070028FF0D0B0BDE100F0FE4141313E41A18
      18E8151029FF171515E8111010E4121111E3151313E3191717E7252020F71210
      10E7070606E3140E0E7D2D1D1D6D874646E1150C0C20231515307D4444B73926
      264820171729261F1F2B271F1F3044363653AF8C8CC53F33335C231C1C43231B
      1B462400C5FF352A297C6B502DF08B6133FF966D1EE998722CEAA99D93EB9D95
      93EE383243FF3F372EEE9B9391EBABA39FEBABA39FEBAB9F94EEA67E38F99A70
      23EE8D671FEA4A360ED5291B1989773D3DE5150C0C20231515307D4444B73926
      264820171729261F1F2B271F1F3044363653AF8C8CC53F33335C231C1C43231B
      1B462400C5FF4033335EAD8C8CC42400C5FF271F1F2F271F1F2D261F1F2B4738
      384A2400C5FF4638384C271F1F2C281F1F2A2820202948393948BF9898BF4839
      3948282020282017172839262648914B4BDF6837379F42282858915353CFA97D
      7DBFA27B7BB0AA8686B2A38383B4AD8B8BC5C49D9DE3A38282C8927474BC9174
      74BD2400C5FFA98787C7D0A6A6E1BA9595C1AD8A8AB0AE8B8BAFAE8B8BAFBE97
      97BFDDB2B2DFBE9797BFAE8B8BAFAF8C8CAFAF8C8CAFBF9898BFDFB2B2DFBF98
      98BFAF8C8CAFA47D7DAFAA7E7EBFA05656EF6837379F42282858915353CFA97D
      7DBFA27B7BB0AA8686B2A38383B4AD8B8BC5C49D9DE3A38282C8927474BC9174
      74BD2400C5FFA98787C7D0A6A6E15E5656F27E7979F2797575F57B7676F57E78
      78F7847E7EFB7F7979F77F7979F57F7979F5817C7CF5837E7EF7888282FB8580
      80F74A4545F5181212F3886464CC9B5353F06837379F42282858915353CFA97D
      7DBFA27B7BB0AA8686B2A38383B4AD8B8BC5C49D9DE3A38282C8927474BC9174
      74BD2400C5FF8A6E6BD3A07733FBE0B466FFE8BA69FFE8BF77FFF2E8DCFFDCDA
      DAFF6A6664FF8E8986FFE5E2E0FFF2EAE6FFF0E9E6FFF0E5D9FFE8BF77FFE8BA
      69FFE0B466FF99712BF672534ED8824545F26837379F42282858915353CFA97D
      7DBFA27B7BB0AA8686B2A38383B4AD8B8BC5C49D9DE3A38282C8927474BC9174
      74BD2400C5FFA98787C7D0A6A6E1BA9595C1AD8A8AB0AE8B8BAFAE8B8BAFBE97
      97BFDDB2B2DFBE9797BFAE8B8BAFAF8C8CAFAF8C8CAFBF9898BFDFB2B2DFBF98
      98BFAF8C8CAFA47D7DAFAA7E7EBFA05656EF27161638966969AF915353CF3926
      26491F15152D251E1E34241C1C3B3F33335C2400C5FF3D3030642119194F2400
      C5FF201B1B4C3F33335DB39191C34639394B2820202928202028282020284839
      3948BF9898BF48393948281F1F2A1F192D561D18387445383F56BD9899C04839
      3948282020282017172839262648914B4BDF27161638966969AF915353CF3926
      26491F15152D251E1E34241C1C3B3F33335C2400C5FF3D3030642119194F2400
      C5FF201B1B4C3F33335DB39191C3666363DAB0995FDDAC9A6CE3A09D9DE3A6A4
      A4E7B4AFAFF7A6A4A4E7A1A0A0E3A4A3A3E3A1A0A0E3A9A6A6E7B6B1B1F7AAA7
      A7E74B4A4AE3160E0E6F31212160914B4BDF27161638966969AF915353CF3926
      26491F15152D251E1E34241C1C3B3F33335C2400C5FF3D3030642119194F2400
      C5FF201B1B4C372B287FA57B33F6E9BD71FFEEBE6FFFEEC27AFFF7EDE1FFE4E2
      E1FF75706CFF958E8BFFEAE7E4FFF3EBE5FFF2EAE4FFF4E9DDFFEEC27AFFEEBE
      6FFFE9BD71FF946C23E72E1F188E763C3CE527161638966969AF915353CF3926
      26491F15152D251E1E34241C1C3B3F33335C2400C5FF3D3030642119194F2400
      C5FF201B1B4C3F33335DB39191C34639394B2820202928202028282020284839
      3948BF9898BF4839394828202028282020282820202848393948BF9898BF4839
      3948282020282017172839262648914B4BDF05030308311F1F407D4444B71F13
      132B00000009000000140000001C2400C5FF997A7AB82400C5FF0000002C2400
      C5FF0000002A241C1C3FA58484B32720202B000000000000000000000108261E
      2235A38488B4261E22350000061B000031AC030E78BE2D2D5DB4A48489B52820
      202800000000000000001F1414288A4545D705030308311F1F407D4444B71F13
      132B00000009000000140000001C2400C5FF997A7AB82400C5FF0000002C2400
      C5FF0000002A241C1C3FA58484B3605E5ED39D704CD69B7453DE8F8F8FDE9392
      92E3A5A0A0F5949393E38F8F8FDE8F8F8FDE8F8F8FDE949494E3A6A1A1F59494
      94E3454545DE000000541A1010458A4545D705030308311F1F407D4444B71F13
      132B00000009000000140000001C2400C5FF997A7AB82400C5FF0000002C2400
      C5FF0000002A211A1668A27A32F4E7BC70FFEAB966FFEBBE72FFF7EDE0FFEAE4
      E0FF9B938EFF87807AFFE5DED8FFF0E5DCFFEFE6DFFFF4E9DCFFEBBE72FFEBB9
      66FFE7BC70FF916A20E31D130D7B703838DF05030308311F1F407D4444B71F13
      132B00000009000000140000001C2400C5FF997A7AB82400C5FF0000002C2400
      C5FF0000002A241C1C3FA58484B32720202B0000000000000000000000002820
      2028AF8C8CAF2820202800000000000000000000000028202028AF8C8CAF2820
      202800000000000000001F1414288A4545D7000000001D111128764040AF1F13
      132B0000000C000000172400C5FF231C1C409D7E7EB72400C5FF000000262400
      C5FF00000025241C1C3BA88686B22720202B0000000000000108030317811310
      45BD3D3372E7111054BD02064CB200065FBE0B28A5C012258CC85A4C73DA2F29
      305000000000000000001F1414288A4545D7000000001D111128764040AF1F13
      132B0000000C000000172400C5FF231C1C409D7E7EB72400C5FF000000262400
      C5FF00000025241C1C3BA88686B2616060D3A5905AD6A28F61DE9B8854DEA293
      67E3A5A0A0F5989696E38F8F8FDE949494DE8F8F8FDE9B9999E3A6A1A1F59B99
      99E3454545DE000000541A1010458A4545D7000000001D111128764040AF1F13
      132B0000000C000000172400C5FF231C1C409D7E7EB72400C5FF000000262400
      C5FF00000025221A1665A37A32F4E8BC72FFE9B660FFE9BA6AFFF5EAD7FFEFE6
      DFFFE4DAD2FFE0D7CFFFECE2DAFFEEE4DCFFEEE6DEFFF4E9D6FFE9BA6AFFE9B6
      60FFE8BC72FF916B20E31D130D7B703838DF000000001D111128764040AF1F13
      132B0000000C000000172400C5FF231C1C409D7E7EB72400C5FF000000262400
      C5FF00000025241C1C3BA88686B22720202B0000000000000000000000002820
      2028AF8C8CAF2820202800000000000000000000000028202028AF8C8CAF2820
      202800000000000000001F1414288A4545D7150C0C20231515307D4444B73724
      244B1F1515332400C5FF231C1C433F33335BB08C8CC42400C5FF231C1C402400
      C5FF231C1C4042363654B89494C14739394928202028261E213513103FBD6E71
      B0D28F92DBEF5260C5D22C43BFCA1230BFCA163AC5CA234EC7D23842A2EF2B25
      45AA2821212F2017172839262648914B4BDF150C0C20231515307D4444B73724
      244B1F1515332400C5FF231C1C433F33335BB08C8CC42400C5FF231C1C402400
      C5FF231C1C4042363654B89494C1676464D9A88060DCA07757E3A1734EE3A47B
      5AE7A7A3A3F7969494E7949393E3949393E3949494E3979494E7A8A3A3F79794
      94E7494848E3160E0E6F31212160914B4BDF150C0C20231515307D4444B73724
      244B1F1515332400C5FF231C1C433F33335BB08C8CC42400C5FF231C1C402400
      C5FF231C1C403A2E2A78A67C35F6E7BD75FFE8B259FFE6B058FFEACA9BFFF6E7
      D1FFF8EBD8FFF8EBD8FFF7EBD8FFF6EBD7FFF5E7D1FFEACA9BFFE6B158FFE8B2
      59FFE7BD75FF946D24E72E1F188E763C3CE5150C0C20231515307D4444B73724
      244B1F1515332400C5FF231C1C433F33335BB08C8CC42400C5FF231C1C402400
      C5FF231C1C4042363654B89494C1473939492820202828202028282020284839
      3948BF9898BF4839394828202028282020282820202848393948BF9898BF4839
      3948282020282017172839262648914B4BDF6837379F422828588F5353CFA57B
      7BC09B7575B42400C5FF997B7BB9AD8A8AC5D2A7A7E12400C5FF9F7F7FB52400
      C5FFA18181B5B79292C2DBAFAFE0BE9797BFAF8C8CAFA38488B43F3365E7A19F
      D2EFAAAEEBF77E8BE4EF5368E1EB354EE1EB374FE1EB4063E4EF4A70E0F73A3E
      9AED87748DCEA07C7DB3AA7E7EBFA05656EF6837379F422828588F5353CFA57B
      7BC09B7575B42400C5FF997B7BB9AD8A8AC5D2A7A7E12400C5FF9F7F7FB52400
      C5FFA18181B5B79292C2DBAFAFE0817979F2C6AE82F2BAA479F5B29561F5B59E
      71F7B79E6BFBB5A276F7A49E9EF5A8A3A3F5B39A60F5B8A377F7ABA5A5FBACA7
      A7F7595656F56E5454C9926D6DC8A05656EF6837379F422828588F5353CFA57B
      7BC09B7575B42400C5FF997B7BB9AD8A8AC5D2A7A7E12400C5FF9F7F7FB52400
      C5FFA18181B5957773CFAB8139FBE7BE77FFE7B054FFE6AF54FFE7B664FFEABB
      6CFFEABC6DFFEABC6DFFEABC6DFFEABC6DFFE9BB6CFFE7B664FFE6B054FFE7B0
      54FFE7BE77FFA3782FF673544ED8824545F26837379F422828588F5353CFA57B
      7BC09B7575B42400C5FF997B7BB9AD8A8AC5D2A7A7E12400C5FF9F7F7FB52400
      C5FFA18181B5B79292C2DBAFAFE0BE9797BFAF8C8CAFAF8C8CAFAF8C8CAFBF98
      98BFDFB2B2DFBF9898BFAF8C8CAFAF8C8CAFAF8C8CAFBF9898BFDFB2B2DFBF98
      98BFAF8C8CAFA47D7DAFAA7E7EBFA05656EF27161638966969AF8F5353CF3724
      244D1F1414372400C5FF231B1B4141353557B79292C24638384E2400C5FF261E
      1E33261E1E304639394CBD9797C04839394828202028261E2235141345BD8487
      BBD2A2A8E4EF5F72CDD2314DC7CA1229C7CA122CC7CA1F40CDD24064E4EF2149
      BFD2192078C8312B437439262648914B4BDF27161638966969AF8F5353CF3724
      244D1F1414372400C5FF231B1B4141353557B79292C24638384E2400C5FF261E
      1E33261E1E304639394CBD9797C0686565D9AD8A71DCA78970E3A1734EE3A47B
      5AE7B5825DF7A47B5AE7949393E3919090E39D6B47E3A1785AE7A7A3A3F79694
      94E7474646E3160E0E6F31212160914B4BDF27161638966969AF8F5353CF3724
      244D1F1414372400C5FF231B1B4141353557B79292C24638384E2400C5FF261E
      1E33261E1E303E302C72A77D36F6E8BF79FFE7B258FFF0D4A3FFF7EDD7FFF7EF
      DBFFF7EFDAFFF7EFDAFFF7EFDAFFF7EFDAFFF7EFDBFFF6ECD7FFEFD4A3FFE7B2
      58FFE8BF79FF946E24E72E1F188E763C3CE527161638966969AF8F5353CF3724
      244D1F1414372400C5FF231B1B4141353557B79292C24638384E2400C5FF261E
      1E33261E1E304639394CBD9797C0483939482820202828202028282020284839
      3948BF9898BF4839394828202028282020282820202848393948BF9898BF4839
      3948282020282017172839262648914B4BDF05030308311F1F407A4343B81D12
      1230000000152400C5FF0000001C251E1E37AA8686B22720202B2400C5FF0000
      000500000004281F1F2AAF8C8CAF28202028000000000000030F08093BB17C81
      B4CA9FA5E1EB576CC7CA243CBFC0030EBFC00618C0C0122CC7CA3751E1EB173D
      C5CA081D92C0010328601F1414288A4545D705030308311F1F407A4343B81D12
      1230000000152400C5FF0000001C251E1E37AA8686B22720202B2400C5FF0000
      000500000004281F1F2AAF8C8CAF626060D2A79775D6A89C7FDEA28D61DEA18E
      61E3B29561F5A18E61E39B8854DE9C8D61DEA89259DEAB996BE3B29B67F5A192
      66E3414141DE000000541A1010458A4545D705030308311F1F407A4343B81D12
      1230000000152400C5FF0000001C251E1E37AA8686B22720202B2400C5FF0000
      000500000004251D1957A57C36F3E9C17BFFE7B45AFFF2E8D1FFECECE6FFEFEE
      E6FFF4F2EAFFEDECE4FFECEBE4FFF0EFE7FFF4F3EBFFF1F0EAFFF2E8D1FFE7B3
      5AFFE9C17BFF926C23E31D130D7B703838DF05030308311F1F407A4343B81D12
      1230000000152400C5FF0000001C251E1E37AA8686B22720202B2400C5FF0000
      000500000004281F1F2AAF8C8CAF282020280000000000000000000000002820
      2028AF8C8CAF2820202800000000000000000000000028202028AF8C8CAF2820
      202800000000000000001F1414288A4545D7000000001D111128753E3EB01D12
      1232000000182400C5FF0000001B261E1E35AA8888B128202029000000010000
      00010000000128202028AF8C8CAF28202028000000000000030F08093BB17C81
      B4CA9FA5E1EB566BC6CA1521B9C00002BCC00209BFC00E1DC7CA323FE0EB1021
      ACCA070A4EB8050513381F1414288A4545D7000000001D111128753E3EB01D12
      1232000000182400C5FF0000001B261E1E35AA8888B128202029000000010000
      00010000000128202028AF8C8CAF636161D2AA8D76D6A98F7CDEA98D76DEA482
      66E3B3815BF59F7656E39C6F49DE9B7453DE9C6F49DEA07757E3B3815BF5A077
      57E3414141DE000000541A1010458A4545D7000000001D111128753E3EB01D12
      1232000000182400C5FF0000001B261E1E35AA8888B128202029000000010000
      000100000001251D1956A57D37F3E8C280FFE2AE54FFE9DECAFFB2B0AFFFC3BF
      BCFFE7E2D9FFB2AFABFFBAB8B5FFC5C2BFFFE9E4DBFFCBCAC7FFEBE0CCFFE1AD
      53FFE8C280FF926C23E31D130D7B703838DF000000001D111128753E3EB01D12
      1232000000182400C5FF0000001B261E1E35AA8888B128202029000000010000
      00010000000128202028AF8C8CAF282020280000000000000000000000002820
      2028AF8C8CAF2820202800000000000000000000000028202028AF8C8CAF2820
      202800000000000000001F1414288A4545D7150C0C20231515307A4242B83623
      23512400C5FF231B1B42231C1C3D44363651BA9696C0483A3A49282020282820
      20282820202848393948BF9898BF4839394828202028261E2235141343BD8285
      B9D2A1A7E2EF5769C8D21012B3CA0A07BBCA0A08C2CA1212CCD2312FD1EF1615
      69C8302B3F772118192F39262648914B4BDF150C0C20231515307A4242B83623
      23512400C5FF231B1B42231C1C3D44363651BA9696C0483A3A49282020282820
      20282820202848393948BF9898BF6B6868D9B1ADADDCB3AFAFE3B0ACACE3B7B1
      B1E7BEB5B4F7AAA4A4E7A49D9CE3A7A2A1E3A49D9DE3ABA6A5E7BAAFAEF7ACA6
      A6E7454545E3160E0E6F31212160914B4BDF150C0C20231515307A4242B83623
      23512400C5FF231B1B42231C1C3D44363651BA9696C0483A3A49282020282820
      2028282020283F312D6FA88039F6E3C085FFBC9048FFE6DCCAFFDDD8D1FFDDD6
      CDFFE5DED4FFE1DAD0FFE4DDD3FFE0D9D0FFE5DED4FFE6E1D9FFE7DDCBFFBB8F
      48FFE2C085FF946F27E72F1E198C773D3DE5150C0C20231515307A4242B83623
      23512400C5FF231B1B42231C1C3D44363651BA9696C0483A3A49282020282820
      20282820202848393948BF9898BF483939482820202828202028282020284839
      3948BF9898BF4839394828202028282020282820202848393948BF9898BF4839
      3948282020282017172839262648914B4BDF6837379F422828588E5252D0A177
      77C32400C5FF997A7AB89D7F7FB6B59191C2DCAFAFDFBF9898BFAF8C8CAFAF8C
      8CAFAF8C8CAFBF9898BFDFB2B2DFBF9898BFAF8C8CAFAA868AB25A496CD84F47
      92EF5953A4F7423E9EEF2C2399EB2B22A3EB2B22C8EB2F24CFEF433799F69079
      91D7AD8A8CB0A47D7DAFAA7E7EBFA05656EF6837379F422828588E5252D0A177
      77C32400C5FF997A7AB89D7F7FB6B59191C2DCAFAFDFBF9898BFAF8C8CAFAF8C
      8CAFAF8C8CAFBF9898BFDFB2B2DF7E5A56F2BEA19DF2B99D98F5B69B92F5B799
      8DF7C0A597FBB18F76F7A67E5AF5A1784AF5A67D4AF5AA844CF7B28C4FFBB18D
      4CF7625439F56E5454C9926D6DC8A05656EF6837379F422828588E5252D0A177
      77C32400C5FF997A7AB89D7F7FB6B59191C2DCAFAFDFBF9898BFAF8C8CAFAF8C
      8CAFAF8C8CAF9E7E7ACCAD833EFAE1C18BFFAB8246FFE0D6C8FFAEABA8FFA5A1
      9DFFB8B4B0FFC3BEB9FFE2D9CEFFAEAAA5FFB7B4B0FFC3C1BEFFE3DACCFFAA82
      46FFE1C18BFFA57B33F6785952D5874848F26837379F422828588E5252D0A177
      77C32400C5FF997A7AB89D7F7FB6B59191C2DCAFAFDFBF9898BFAF8C8CAFAF8C
      8CAFAF8C8CAFBF9898BFDFB2B2DFBF9898BFAF8C8CAFAF8C8CAFAF8C8CAFBF98
      98BFDFB2B2DFBF9898BFAF8C8CAFAF8C8CAFAF8C8CAFBF9898BFDFB2B2DFBF98
      98BFAF8C8CAFA47D7DAFAA7E7EBFA05656EF27151538956969AF8E5252D03623
      23522400C5FF241C1C3E241E1E384537374EBD9797C048393948282020282820
      20282820202848393948BF9898BF483939482820202828202028251F22342E25
      3A89785F75D731283D8D373347A1100E45CA0A0794CA1A157CD2937C96D9473A
      3C4E282020282017172839262648914B4BDF27151538956969AF8E5252D03623
      23522400C5FF241C1C3E241E1E384537374EBD9797C048393948282020282820
      20282820202848393948BF9898BF6E4844D9B29A96DCB39B96E3B49C94E3B9A4
      99E7C9AEA2F7B89D8CE7AC8865E3AD865AE3AB7E43E3AF813AE7C1913EF7B488
      31E758482BE3160E0E6F31212160914B4BDF27151538956969AF8E5252D03623
      23522400C5FF241C1C3E241E1E384537374EBD9797C048393948282020282820
      20282820202840312E6BA8813CF5EBCC97FFDFAB59FFF2E6D5FFE6DFD7FFE2DA
      D1FFE6DDD4FFE9DFD6FFECE2D8FFE5DCD2FFE5DCD3FFEAE3DBFFF2E7D6FFDFAB
      59FFEACC97FF946E29E32F1F1A7F804242E327151538956969AF8E5252D03623
      23522400C5FF241C1C3E241E1E384537374EBD9797C048393948282020282820
      20282820202848393948BF9898BF483939482820202828202028282020284839
      3948BF9898BF4839394828202028282020282820202848393948BF9898BF4839
      3948282020282017172839262648914B4BDF1C0F0F28372424487A4343B81E13
      13322400C5FF000000130000000D271F1F2DAE8B8BAF28202028000000000000
      00000000000028202028AF8C8CAF282020280000000000000000000000002820
      2028AF8C8CAF2820202848484A60363660C002025EC022203DA1A6898FBE2820
      202800000000000000001F1414288A4545D71C0F0F28372424487A4343B81E13
      13322400C5FF000000130000000D271F1F2DAE8B8BAF28202028000000000000
      00000000000028202028AF8C8CAF6A4542D1A98F8AD0AA9089D6AB9389D6AF90
      81DCC7A695F2B29682DCA78461D6A8845CD6AA8457D6B08C57DCC79D63F2B188
      43DC514226D60000003B1B11113D8A4545D71C0F0F28372424487A4343B81E13
      13322400C5FF000000130000000D271F1F2DAE8B8BAF28202028000000000000
      000000000000241C1A4E9D7637F3E6C892FFEED19EFFF2E4CAFFF2E7D4FFF1E6
      D2FFF1E6D2FFF1E6D2FFF1E6D2FFF1E6D2FFF1E6D2FFF2E7D4FFF2E4CAFFEED1
      9EFFE6C892FF856323DC1D120F5B804040DA1C0F0F28372424487A4343B81E13
      13322400C5FF000000130000000D271F1F2DAE8B8BAF28202028000000000000
      00000000000028202028AF8C8CAF282020280000000000000000000000002820
      2028AF8C8CAF2820202800000000000000000000000028202028AF8C8CAF2820
      202800000000000000001F1414288A4545D76B3B3B9F42292958794040B81B0E
      0E2E2400C5FF0000000B000000072117172BA37C7CAF20171728000000000000
      00000000000020171728A47D7DAF201717280000000000000000000000002017
      1728A47D7DAF2017172829292A302D2D38600C0C1C602B232950A47D7DAF2017
      17280000000000000000190C0C28884444D76B3B3B9F42292958794040B81B0E
      0E2E2400C5FF0000000B000000072117172BA37C7CAF20171728000000000000
      00000000000020171728A47D7DAF442C28CD64403AC866413ACA664339CA6F4A
      3DD28B6151EE72503BD26B4D35CA6D4F34CA6D5232CA765836D2916E4BEE7659
      33D2352C1DCA00000019190B0B2F884444D76B3B3B9F42292958794040B81B0E
      0E2E2400C5FF0000000B000000072117172BA37C7CAF20171728000000000000
      0000000000001F1515456E512EE9876423DE8B6824D88B6926D88B6926D88F6C
      2ADEA47D39F38F6C2ADE8B6926D88B6926D88B6926D88F6C2ADEA47D39F38F6B
      27DE816120D83E2D0BBA180C0A4B844141D86B3B3B9F42292958794040B81B0E
      0E2E2400C5FF0000000B000000072117172BA37C7CAF20171728000000000000
      00000000000020171728A47D7DAF201717280000000000000000000000002017
      1728A47D7DAF2017172800000000000000000000000020171728A47D7DAF2017
      17280000000000000000190C0C28884444D727161638946868AF8B4C4CCF2400
      C5FF190C0C2C190B0B2B1E12122A38232349A97C7CBF372424481E121228190C
      0C281E12122837242448A97C7CBF372424481E121228190C0C281E1212283724
      2448A97C7CBF372424481E121228190C0C281E12122837242448A97C7CBF3724
      24481E121228190C0C282E1616488D4646DF27161638946868AF8B4C4CCF2400
      C5FF190C0C2C190B0B2B1E12122A38232349A97C7CBF372424481E121228190C
      0C281E12122837242448A97C7CBF372424481E121228190C0C281E1212283724
      2448A97C7CBF372424481E121228190C0C281E12122837242448A97C7CBF3724
      24481E121228190C0C282E1616488D4646DF27161638946868AF8B4C4CCF2400
      C5FF190C0C2C190B0B2B1E12122A38232349A97C7CBF372424481E121228190C
      0C281E1212283723234E966E6CC733211F661D13104C190D0A4C1D13104C3221
      1D67916A67CA32211D671D13104C190D0A4C1D13104C32211D67916A68CA3221
      1D671C13104C170C0A462C1515518C4545DF27161638946868AF8B4C4CCF2400
      C5FF190C0C2C190B0B2B1E12122A38232349A97C7CBF372424481E121228190C
      0C281E12122837242448A97C7CBF372424481E121228190C0C281E1212283724
      2448A97C7CBF372424481E121228190C0C281E12122837242448A97C7CBF3724
      24481E121228190C0C282E1616488D4646DF060303082A191938794141B7773D
      3DB76F3838AF6F3838AF743E3EAF7A4343B7894D4DC77A4343B7743E3EAF6F38
      38AF743E3EAF7A4343B7894D4DC77A4343B7743E3EAF6F3838AF743E3EAF7A43
      43B7894D4DC77A4343B7743E3EAF6F3838AF743E3EAF7A4343B7894D4DC77A43
      43B7743E3EAF6F3838AF743939B7844141CF060303082A191938794141B7773D
      3DB76F3838AF6F3838AF743E3EAF7A4343B7894D4DC77A4343B7743E3EAF6F38
      38AF743E3EAF7A4343B7894D4DC77A4343B7743E3EAF6F3838AF743E3EAF7A43
      43B7894D4DC77A4343B7743E3EAF6F3838AF743E3EAF7A4343B7894D4DC77A43
      43B7743E3EAF6F3838AF743939B7844141CF060303082A191938794141B7773D
      3DB76F3838AF6F3838AF743E3EAF7A4343B7894D4DC77A4343B7743E3EAF6F38
      38AF743E3EAF7A4343B7894D4DC77A4343B7743E3EAF6F3838AF743E3EAF7A43
      43B7894D4DC77A4343B7743E3EAF6F3838AF743E3EAF7A4343B7894D4DC77A43
      43B7743E3EAF6F3838AF743939B7844141CF060303082A191938794141B7773D
      3DB76F3838AF6F3838AF743E3EAF7A4343B7894D4DC77A4343B7743E3EAF6F38
      38AF743E3EAF7A4343B7894D4DC77A4343B7743E3EAF6F3838AF743E3EAF7A43
      43B7894D4DC77A4343B7743E3EAF6F3838AF743E3EAF7A4343B7894D4DC77A43
      43B7743E3EAF6F3838AF743939B7844141CF0000000006040408160D0D201B0F
      0F28190C0C28190C0C281B0F0F281B0F0F281B0F0F281B0F0F281B0F0F28190C
      0C281B0F0F281B0F0F281B0F0F281B0F0F281B0F0F28190C0C281B0F0F281B0F
      0F281B0F0F281B0F0F281B0F0F28190C0C281B0F0F281B0F0F281B0F0F281B0F
      0F281B0F0F28190C0C28190C0C28190C0C280000000006040408160D0D201B0F
      0F28190C0C28190C0C281B0F0F281B0F0F281B0F0F281B0F0F281B0F0F28190C
      0C281B0F0F281B0F0F281B0F0F281B0F0F281B0F0F28190C0C281B0F0F281B0F
      0F281B0F0F281B0F0F281B0F0F28190C0C281B0F0F281B0F0F281B0F0F281B0F
      0F281B0F0F28190C0C28190C0C28190C0C280000000006040408160D0D201B0F
      0F28190C0C28190C0C281B0F0F281B0F0F281B0F0F281B0F0F281B0F0F28190C
      0C281B0F0F281B0F0F281B0F0F281B0F0F281B0F0F28190C0C281B0F0F281B0F
      0F281B0F0F281B0F0F281B0F0F28190C0C281B0F0F281B0F0F281B0F0F281B0F
      0F281B0F0F28190C0C28190C0C28190C0C280000000006040408160D0D201B0F
      0F28190C0C28190C0C281B0F0F281B0F0F281B0F0F281B0F0F281B0F0F28190C
      0C281B0F0F281B0F0F281B0F0F281B0F0F281B0F0F28190C0C281B0F0F281B0F
      0F281B0F0F281B0F0F281B0F0F28190C0C281B0F0F281B0F0F281B0F0F281B0F
      0F281B0F0F28190C0C28190C0C28190C0C280000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      002D000000190000001E000000230000001C0000002B0000003A0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000002B0000000E00000000000000000000000000000000000000000000
      0003000000110000001C00000015000000080000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000040000
      000B000000100000001200000013000000130000001300000013000000120000
      00100000000B0000000400000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001D0814055E1D4F14F30000003593846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF0000003A0000001300000000000000000000000000000000000000000002
      000C0004003700010045000000460000002C0000001600000008000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001000000060000000F0000001B0000
      00290000003400000038000000390000003A0000003A00000039000000380000
      00340000002A0000001B0000000F000000060000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000005000000130A1F
      087A1C4E14FF1E5415FF0000003A93846FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9384
      6FFF0000003A000000130000000000000000000000000000000000000000000A
      0021009500FF001400900009008A0002006A0000004C0000002C000000140000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000040000000E0000001F0F0E0E49535252B37C7C
      7CED898787F68F8C8CFF959191FF939090FF8B8989FF858383F77A7777ED5754
      54C00F0F0F5C0000003D000000300000001F0000000E00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001000000060000001712340DB11455
      15FF0B3C0DFF1E5415FF0000003A93846FFFFFFFFFFFFAF2E9FFF8EFE5FFF7ED
      E1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1CCFFF2DEC9FFFFFFFFFF9384
      6FFF0000003A0000001300000000000000000000000000000000000000000011
      0028009500FF007D00EE006500E3001A00B0000A009000020068000000400000
      0019000000080000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000100000006000000161D1D1D5E7A7979E4959292FFB4AFAFFFC7C2
      C2FFC4BFBFFFC0BABAFFBAB5B5FFB7B1B1FFB4ADADFFB0A9A9FFACA5A5FF9C96
      96FF8B8989FF747171E61E1E1E730000003E0000002C00000015000000060000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000202050120194411D80E6F1DFF0A89
      1EFF0E6C12FF1E5415FF0000003A93846FFFFFFFFFFFFBF4EDFFFAF2E9FFF8EF
      E5FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1CCFFFFFFFFFF9384
      6FFF0000003A0000001300000000000000000000000000000000000000000017
      0028009500FF009C00FF009300FC008000F3006600E4001600AB000100760000
      004E0000002C0000001600000008000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000070000001A6D6C6CCD959292FFC9C7C9FFD4D0D0FFA39FB4FF6865
      B0FF4E4DBDFF5856C2FF5858D0FF5E5ED0FF5F5EC6FF5654C2FF6865B0FF9893
      A9FFACA4A4FFA09A9AFF8A8787FF656262D300000045000000330000001A0000
      0007000000010000000000000000000000000000000000000000000000001800
      002D791E18C1B35A46F0B15742ECAC523FEC9A524FEC9F5E5FECA05E5EECA05E
      5EECA05E5EECA05E5EECA05E5EECA05E5EECA05E5EECA05E5EECA05E5EECA05E
      5EEC9C5351ECAD5443ECB05846ECB05540ECB0533FECB35842EF96382CDC3100
      015B010000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030B03221B4913E10C7A25FF1FB734FF28C7
      2DFF13841CFF1E5415FF0000003A93846FFFFFFFFFFFFBF6F0FFFBF4EDFFFAF2
      E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5D4FFF3E3D0FFFFFFFFFF9384
      6FFF0000003A0000001300000000000000000000000000000000000000000019
      0028009500FF00AD00FF00A000FF009C00FF009300FC006D00EA001B00B2000A
      00910002006A0000004C0000002C000000140000000400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0006100E0E36868383F2B8B6B6FFE1DEDEFF9895B5FF3836B4FF2F2FE6FF5858
      F7FF7E7EF6FF9C9CF7FFADADF8FFB1B1F8FFA1A1F7FF8484F7FF5C5CF7FF3232
      E6FF3432B8FF8F8AABFFA69F9FFF969191FF7D7A7AF10F0F0F5E000000360000
      001A000000060000000000000000000000000000000000000000000000006D11
      0FB8EFAB73FFFFBD6EFFFFB869FFF99955FFCFB2ACFFE5E9EBFFE5E2E2FFE5E2
      E2FFE5E2E2FFE4E2E2FFE4E2E2FFE4E2E2FFE4E2E2FFE4E2E2FFE4E2E2FFE4E5
      E7FFD6C5BDFFFDC196FFFFCD99FFFFA44CFFFF9B3DFFFF9B3DFFFFA853FF9F3D
      2EE70F00001D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030A02211B4A13E096B891FF86EA8EFF3ED9
      44FF179826FF1E5415FF0000003A93846FFFFFFFFFFFFCF8F4FFFBF6F0FFFBF4
      EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5D4FFFFFFFFFF9384
      6FFF0000003A000000130000000000000000000000000000000000000000001A
      0028009500FF00B300FF00B300FF00AE00FF00A000FF009500FC008100F30066
      00E4001A00B0000A009000020068000000400000001900000008000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000040F0F
      0F318B8B8BF5D9D8D8FFE1DDDDFF504EABFF1818E5FF4949F2FF6F6FF2FF7C7C
      F3FF8A8AF4FF9797F7FFA0A0F7FFA1A1F7FF9A9AF7FF8F8FF6FF8181F4FF7474
      F2FF4B4BF2FF1B1BE5FF4C4AB7FFB4ADADFF9D9696FF817E7EF70F0F0F5E0000
      0033000000150000000400000000000000000000000000000000000000009B38
      2DE5FFBF76FFFFA254FFFFA656FFF58540FFC39892FFCABDBFFFCBBCBDFFC9C0
      C4FFCBBABDFFCBB7B7FFCBB7B7FFCBB7B7FFCBB7B7FFCBB7B7FFCBB7B7FFCAB9
      BAFFCAABA3FFF6A67BFFFDAE7DFFFF8D33FFFF8424FFFF8323FFFF9632FFCC73
      50F91A0000320000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002050110173F11C0659661FF6FD9
      86FF1AA72DFF1E5415FF0000003A93846FFFFFFFFFFFFEFBF8FFFCF8F4FFFBF6
      F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFFFFFFFFF9384
      6FFF0000003A000000130000000000000000000000000000000000000000001A
      0028009500FF00B700FF00B300FF00B300FF00B600FF00AE00FF009F00FF0093
      00FC008000F3006600E4001600AB000100760000004E0000002C000000140000
      0004000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000010000000E8685
      85EEDADADEFFD5D3DEFF3A38B4FF2323F0FF4E4EEDFF5D5DEFFF6868F0FF7474
      F2FF8080F4FF8989F4FF9090F6FF9191F6FF8B8BF4FF8383F4FF7777F2FF6C6C
      F0FF6161EFFF5151EEFF2020F0FF2C2CBBFFA49EA9FF9E9797FF7D7A7AF10000
      00450000002C0000000E00000001000000000000000000000000000000009937
      2BE3FFBD77FFFFA75AFFFFA95BFFF58946FFCDA39EFFD4D0D3FFCBA199FFCE87
      75FFCCA9A3FFD6CCCCFFD7C9C9FFD7C9C9FFD7C9C9FFD7C9C9FFD7C9C9FFD7CB
      CDFFD1B4ACFFF49A6FFFFBA371FFFE9039FFFF8A2BFFFF882BFFFF9838FFC96F
      4CF719000031000000000000000000000000000000050000000E000000130000
      001300000013000000130000001300000013000000130000001313350EAE3476
      36FF1D9642FF1E5415FF0000003993846FFFFFFFFFFFFFFEFCFFFEFBF8FFFCF8
      F4FFFBF6F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFFFFFFFFF9384
      6FFF0000003A000000130000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00A0
      00FF009C00FF009300FC006D00EA001B00B2000A009100020068000000400000
      0019000000080000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000006706F6FC8C0BF
      BFFFEDEBEBFF3937B4FF1F1FE9FF4141E6FF4C4CEBFF5555EEFF5F5FEFFF6969
      F0FF7373F2FF7979F3FF7E7EF4FF8080F4FF7C7CF3FF7575F2FF6C6CF2FF6363
      EFFF5858EEFF4F4FEDFF4545E9FF1B1BE7FF3939C2FFB7B2B2FF989292FF6562
      62D30000003E0000001F00000006000000000000000000000000000000009835
      29E2FFBD77FFFFA95DFFFFAA5DFFF58A47FFD3ADA7FFD8E2E7FFDE7259FFFC1C
      00FFDA8770FFDBDDE0FFDED5D5FFDED5D5FFDED5D5FFDED5D5FFDED5D5FFDFD8
      DAFFD6BAB2FFF38E60FFFA9664FFFE8F3AFFFF8B2FFFFF892DFFFF983AFFC96D
      4BF7190000310000000000000000000000000000000E0000002B0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A000000670A1F
      079A1E5B1AFF1E5415FF0000002E93846FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9384
      6FFF0000002B0000000E0000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B6
      00FF00AE00FF00A000FF009500FC008100F3006600E4001600AB000100760000
      004E0000002C0000001600000008000000020000000000000000000000000000
      000000000000000000000000000000000000000000011D1D1D479A9999FBEFEE
      EEFF504EACFF1616E5FF3333D7FF3C3CE1FF4444E9FF4A4AE9FF4A4ADDFF5C5C
      EDFF6666F0FF6B6BF2FF6E6EF2FF6E6EF2FF6D6DF2FF6868F0FF5E5EEDFF4C4C
      DDFF4C4CE9FF4747EAFF3F3FE2FF3535D9FF1212DEFF5857B8FFABA4A4FF8B89
      89FF1E1E1E73000000300000000F000000010000000000000000000000009834
      27E2FFBD77FFFFAB61FFFFAC60FFF68C49FFD8B4ADFFDDE2E7FF835C69FFB71E
      0FFFE28F78FFEBEDEDFFE6DEDDFFE3DBDBFFE3DADBFFE3DBDBFFE3DBDBFFE3DF
      E1FFDABEB5FFF18253FFF88C57FFFE903BFFFF8E32FFFF8C30FFFF9B3BFFC96B
      49F71900003100000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF7064
      55FF727156FF1C4E13F30000001C93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF0000000E000000050000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B600FF00AE00FF009F00FF009300FC006D00EA001B00B2000A
      00910002006A0000004C0000002C000000140000000400000000000000000000
      000000000000000000000000000000000000000000047E7D7DDFD8D7D7FFACA9
      BFFF0B0BD1FF2323C7FF2C2CCFFF3434D9FF3A3ADEFF3939C9FF5F5FC0FF4040
      CCFF5656EDFF5D5DEFFF5F5FEFFF6161F0FF5E5EEFFF5858EDFF4141CCFF6161
      C0FF3635C7FF3D3DE1FF3636DCFF2F2FD3FF2525CAFF0404CAFFA6A3B8FFA6A0
      A0FF757373E60000003D0000001B000000040000000000000000000000009833
      25E2FFBC77FFFFAD63FFFFAE62FFF68D4BFFDBB9B3FFEFEFF0FF736E84FF2529
      3CFF564C65FFA8A2B4FFE3DCDEFFF4EFEBFFEDE8E6FFE7E2E2FFE8E2E2FFE8E7
      E9FFDEC1B9FFF07346FFF77E4AFFFE903CFFFF9035FFFF8D32FFFF9B3CFFC96A
      46F71900003100000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00A000FF009500FC008100F30066
      00E4001A00B0000A009000020068000000400000001900000008000000020000
      000000000000000000000000000000000000101010299C9A9AFFE0DDDDFF3735
      B4FF1414CCFF1F1FBDFF2626C7FF2C2CCEFF2E2EBFFFADADBCFFB6B6B6FF9E9E
      BCFF3D3CCCFF4E4EEBFF5252EEFF5252EEFF4E4EEBFF3D3DCCFF9F9FBCFFB6B6
      B6FFA4A4BCFF2C2CBFFF2E2ED0FF2828CBFF2222C0FF1111C6FF3C3BBFFFB4AC
      ACFF8F8B8BFF0F0F0F5C0000002A0000000B0000000000000000000000009833
      25E2FFBD78FFFFAE66FFFFAE64FFF68E4DFFDEBFB9FFF2F8F9FFB08E92FF3C3C
      49FF5E7279FF728FAFFF6F7B9EFFABA7B7FFE7E0E1FFF6F3F0FFECEAEAFFEBEF
      F1FFE1C5BDFFF06839FFF6723EFFFE913CFFFF9138FFFF8F35FFFF9C3EFFC969
      44F71900003100000000000000000000000093846FFFFFFFFFFFFAF2E9FFF8EF
      E5FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1CCFFF2DEC9FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B600FF00AE00FF009F00FF0093
      00FC008000F3006600E4001600AB000100760000004E0000002C000000160000
      0008000000020000000000000000000000005D5D5DA2BCBABAFFB8B5BFFF0808
      C9FF1414B0FF1A1AB6FF1F1FC0FF1F1FB7FF6161B7FFB6B6B6FFB6B6B6FFB6B6
      B6FF9E9EBCFF3736CAFF4242E9FF4242E9FF3736CBFF9E9EBCFFB6B6B6FFB6B6
      B6FFB6B6B6FF6666BDFF2121B8FF2121C2FF1B1BB8FF1616AFFF0000C1FFB1AB
      B6FFA19D9DFF575555C000000034000000100000000000000000000000009830
      22E2FFBD77FFFFB06AFFFFB067FFF7904FFFE2C7C1FFF5FEFFFFE7E6E9FF787B
      92FFCAE5ECFFC5EFFDFFA4D1E5FF7496B6FF546694FFB4B0BFFFFEFCF7FFF1F9
      FCFFE5CCC3FFEF5B2CFFF46732FFFE913DFFFF943CFFFF9038FFFF9D41FFC967
      40F71900003100000000000000000000000093846FFFFFFFFFFFFBF4EDFFFAF2
      E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1CCFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00A0
      00FF009C00FF009300FC006D00EA001B00B2000A00910002006A0000004C0000
      002C000000140000000400000000000000007E7D7DDECCC9C9FF6A68ABFF0C0C
      CFFF0F0FA4FF1414ADFF1919B7FF1E1DBCFF2424B2FFACACBBFFB6B6B6FFB6B6
      B6FFB6B6B6FF9D9DBCFF3030C4FF3030C4FF9D9DBCFFB6B6B6FFB6B6B6FFB6B6
      B6FFA3A3BBFF2121B1FF1E1EBFFF1B1BBAFF1515B0FF1111A6FF0303C1FF6A67
      B1FFB6B0B0FF7C7A7AED00000038000000120000000000000000000000009830
      20E2FFBD78FFFFB26CFFFFB26AFFF78F50FFE1C2BFFFEBF4F9FFF5F6F7FF999D
      B7FFC4D8E7FFDDF4FAFFB3DFF3FF4BB6FEFF0390F8FF125DB0FFB5ADBAFFF9FC
      FAFFE2C5C0FFEC4819FFF25621FFFD903EFFFF973EFFFF923AFFFF9F43FFC965
      3EF71900003100000000000000000000000093846FFFFFFFFFFFFBF6F0FFFBF4
      EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5D4FFF3E3D0FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B4
      00FF00A900FF009E00FF009500FC008100F3006600E4001A00B0000A00900002
      00670000003D0000001400000002000000008E8D8DEECCC9C9FF4542AFFF0A0A
      B5FF0B0B9CFF0E0EA5FF1212ADFF1717B5FF1B1BBAFF2121B0FFACACBBFFB6B6
      B6FFB6B6B6FFB6B6B6FF9F9FBFFF9F9FBFFFB6B6B6FFB6B6B6FFB6B6B6FFA1A1
      BBFF1E1EAFFF1D1DBBFF1818B7FF1414B0FF1010A7FF0C0C9FFF0505AAFF4240
      B5FFBBB6B6FF898686F70000003900000013000000000000000000000000982E
      1EE2FFBD78FFFFB46FFFFFB46FFFFB9957FFEE7647FFEC8356FFF58551FFB460
      4CFF92A1BCFFF0FFFFFF56BEFDFF0090FFFF0094FFFF0093FDFF1B5FAFFFC366
      4FFFFF7B3EFFF35C20FFF56729FFFE9340FFFF9740FFFF943CFFFFA044FFC963
      3BF71900003100000000000000000000000093846FFFFFFFFFFFFCF8F4FFFBF6
      F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5D4FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00AD00FF00AE00FF00A900FF009D00FF009300FC008000F3006600E40015
      00A800010062000000270000000500000000918F8FFFC7C2C2FF2A29C1FF0707
      A4FF060693FF0A0A9CFF0D0DA3FF1010AAFF1414B1FF1717B6FF1E1EACFFACAB
      BBFFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFA3A3BBFF1B1B
      ABFF1919B7FF1515B4FF1212ACFF0E0EA5FF0B0B9EFF080896FF03039FFF1F1E
      B8FFC1BBBBFF8F8C8CFF0000003A00000013000000000000000000000000982D
      1DE2FFBD78FFFFB672FFFFB16AFFFFAF66FFFFAB60FFFFA759FFFFA857FFEE98
      4DFF867C8CFFC2F1FEFF9BE1FFFF2DB8FFFF00A2FFFF049FFFFF0093FBFF2F59
      93FFE2833FFFFFA447FFFF9942FFFF973EFFFF953CFFFF943EFFFFA147FFC962
      39F71900003100000000000000000000000093846FFFFFFFFFFFFEFBF8FFFCF8
      F4FFFBF6F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00A800FF00A700FF009C00FF009900FF009200FC0063
      00DE0008006D0000002700000005000000009F9D9DFFC2BDBDFF2C2BC4FF0202
      8BFF03038AFF050591FF080898FF0B0BA0FF0E0EA6FF1010ABFF1313AFFF1B1B
      A6FFC6C6C6FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFBABAC5FF1717A5FF1414
      B0FF1111ADFF0E0EA7FF0C0CA1FF09099AFF060693FF03038BFF020287FF1E1E
      B6FFC6C1C1FF989696FF0000003A00000013000000000000000000000000982C
      1AE2FFBD77FFFFB875FFFDC79AFFF9CCA6FFF8C9A2FFF7C8A1FFF7C79FFFFDCC
      9DFF97848AFF3DAFD8FFAEF9FFFFA1E5FFFF2CC0FFFF08AFFFFF0BACFFFF009A
      FAFF3D5D8FFFDDA37BFFF8C295FFECB88EFFF1B98EFFFF9E4FFFFFA044FFC960
      36F71900003100000000000000000000000093846FFFFFFFFFFFFFFEFCFFFEFB
      F8FFFCF8F4FFFBF6F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFFFFF
      FFFF93846FFF0000003A00000015000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00AF00FF00A800FF009C00FF009900FF009000F8005B
      00CC0006004E0001001400000002000000009F9D9DFFBDB8B8FF4140C6FF7878
      DAFF5A5AD5FF2B2BBDFF1B1BB2FF1010A9FF0C0CA4FF0A0AA0FF0C0CA3FF1212
      9EFFB0B0D0FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFB0B0D0FF13139FFF0C0C
      A4FF0B0BA1FF0E0EA5FF1313AAFF1F1FB5FF2F2FBFFF5C5CD5FF8383E0FF3534
      B5FFCBC6C6FF9A9898FF0000003900000013000000000000000000000000982B
      18E2FFBC77FFFFB775FFF3DFCEFFF0F8FFFFF3F6F9FFF1F4F7FFF0F3F6FFF4F7
      F9FFE7E2E6FF587CA2FF40CCE7FFBEFCFFFF9EEAFFFF2CCCFFFF0EBBFFFF11BA
      FFFF01A2F3FF4269A0FFD9CDCEFFE1E3E5FFD0CBCAFFFDA157FFFFA144FFC95F
      34F71900003100000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000002D00000019000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00A000FF009C00FF009100F8007700E3005A00C5000D
      004E000100180000000400000000000000008F8E8EFFB8B4B4FF5958B7FF9898
      EBFF6363D7FF4141CCFF3232C7FF2B2BC7FF2424C7FF1E1EC4FF1919ADFFBCBC
      DEFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFBDBDDEFF1B1A
      ADFF2222C6FF2929C9FF3131C9FF3838CAFF4646CCFF6767D7FF9797EAFF5B5A
      B8FFD0CBCBFF929090FF0000003800000012000000000000000000000000982B
      17E2FFBC77FFFFB977FFF2DBC7FFF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEEE3E9FF4E85A7FF52E0EDFFC3FFFFFF95ECFFFF2BD4FFFF14C8
      FFFF16C8FFFF09A0E5FF6B7BA1FFFCE8E3FFDBD2CAFFFCA054FFFFA247FFC95D
      32F71900003100000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000002E00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B2
      00FF00AE00FF009F00FF009100F8007700E3005A00C5001100540007002B0002
      000D000000020000000000000000000000008B8888EEB5AFAFFF625FACFFA1A1
      EFFF6B6BD8FF4C4CCEFF3D3DCAFF3434C7FF2C2CC5FF2525B2FFCACAEBFFFCFC
      FCFFFCFCFCFFFCFCFCFFE7E7F3FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFCBCB
      EBFF2827B4FF3232C6FF3A3AC9FF4242CBFF5353CFFF7272D9FF9F9FEDFF6865
      ABFFD5D1D1FF8E8B8BF600000034000000100000000000000000000000009829
      16E2FFBC77FFFFBA79FFF1D8C3FFF8FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFFFFFFFFFFE4D6DFFF4186A8FF5AECF5FFC8FFFFFF94F2FFFF2DE0
      FFFF1BD5FFFF1AD6FFFF0FA2DAFF6E7A9FFFD7C2BBFFFEA559FFFFA349FFC95B
      2FF7190000310000000000000000000000000000000E0000002B0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00A000FF009C
      00FF009300F8007800E3005A00C5001100540007002B0002000D000000020000
      0000000000000000000000000000000000007F7E7EDDACA7A7FF4A4898FFAAAA
      F6FF7979DCFF5757D0FF4747CBFF3F3FC7FF3030B5FFCCCCEBFFFEFEFEFFFEFE
      FEFFFEFEFEFFD5D5EEFF2222B0FF2727B4FFE7E7F7FFFEFEFEFFFEFEFEFFFEFE
      FEFFCCCCEBFF3433B5FF4343C9FF4E4ECCFF5D5DD0FF8080DCFFA9A9F2FF6563
      A7FFDAD7D7FF807E7EED000000290000000B0000000000000000000000009827
      14E2FFBD78FFFFBC7CFFEFD5C1FFF7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
      FEFFFFFCFBFFFFFBF7FFFFFFFDFFDAC9D2FF3785A8FF62EEF5FFC8FFFFFF8CF6
      FFFF2DEAFFFF24E3FFFF21E3FFFF14A8D9FF70708BFFFFA154FFFFA74CFFC959
      2CF71900003100000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00B600FF00B200FF00AE00FF009F00FF009100F80077
      00E3005A00C5001100540007002B0002000D0000000200000000000000000000
      0000000000000000000000000000000000005D5B5B9EA09C9CFF8380A9FF6F6F
      C9FF9191E3FF6969D4FF5454CEFF3C3CBAFF7C7CCCFFFEFEFEFFFEFEFEFFFEFE
      FEFFD7D7EEFF2929B1FF3131C5FF3131C5FF302FB5FFE9E9F7FFFEFEFEFFFEFE
      FEFFFEFEFEFF7676CAFF4343BDFF5B5BCFFF6E6ED5FF9393E2FF6C6BC9FFC1BC
      C5FFC1BDBDFF565454B30000001B000000040000000000000000000000009826
      12E2FFBD77FFFFBE7EFFEFD3BEFFF6FBFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFC
      FBFFFFFBF8FFFFF9F6FFFFF6F3FFFFFFFAFFCEBBC7FF2B8AADFF6BF4FBFFCBFE
      FFFF83F5FFFF2DEFFFFF29ECFFFF26F3FFFF1CA8D1FF9B6759FFFFAB4CFFCB59
      2AF71900003100000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B300FF00B3
      00FF00B300FF00B300FF00A000FF009C00FF009300F8007800E3005A00C50011
      00540007002B0002000D00000002000000000000000000000000000000000000
      000000000000000000000000000000000000101010208D8C8CFB9C95A0FF6462
      B1FFB6B6F2FF8181DAFF6565D1FF5353C7FF4646B7FFF8F8FBFFFEFEFEFFD8D8
      EEFF3434B2FF3F3FC7FF4040CAFF4040CAFF4040C7FF3A3AB7FFEAEAF7FFFEFE
      FEFFF8F8FBFF4949B7FF5757C9FF6B6BD3FF8787DCFFA9A9EEFF5B59A4FFE9E6
      E6FF999898FF0F0E0E490000000F000000010000000000000000000000009825
      10E2FFBD78FFFFBF82FFECD0BBFFF5F9FDFFFFFFFFFFFFFEFDFFFFFCFBFFFFFA
      F8FFFFF9F6FFFFF6F4FFFFF5F1FFFFF3EEFFFFFCF3FFBFAEBBFF278DB2FF78F8
      FFFFCAFCFFFF76F2FFFF27ECFFFF2BEFFFFF29FAFFFF25A4C5FFAD7257FFD558
      21F71A00003100000000000000000000000093846FFFFFFFFFFFFAF0E7FFF8EE
      E3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFF3E2D0FFF2E0CBFFF2DDC7FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B900FF00B300FF00B300FF00B300FF00B300FF00B600FF00B2
      00FF00AE00FF009F00FF009100F8007700E3005A00C5001100540007002B0002
      000D000000020000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7BDCA09A9AFF7875
      A5FF8080CFFFA3A3E7FF7C7CD8FF6A6AD1FF4F4FC0FF4B4BB7FF8989CFFF3F3F
      B5FF4E4ECBFF4F4FCCFF4E4ECCFF4F4FCCFF5050CEFF5050CBFF4545B8FF8A8A
      CFFF4D4DB8FF5352C1FF6E6ED3FF8383D9FFA3A3E7FF6867C7FFABA9C1FFE0DE
      DEFF7C7B7BE40000001F00000006000000000000000000000000000000009824
      0FE2FFBD78FFFFC083FFEBCEB8FFF5F9FDFFFFFFFFFFFFFCFBFFFFFBF8FFFFF9
      F6FFFFF7F3FFFFF5F1FFFFF3EFFFFFF1ECFFFFF0EAFFFFFAEEFFB4A5B4FF2295
      BAFF82FAFFFFC5F9FFFF6CEFFFFF23E9FFFF29EDFFFF27F9FFFF2EA8C5FF862C
      2BF71800002B00000000000000000000000093846FFFFFFFFFFFFAF3EBFFFAF0
      E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFF3E2D0FFF2E0CBFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B700FF00B300FF00B300FF00B300FF00B300FF00A000FF009C
      00FF009300F8007800E3005A00C5001100540007002B0002000D000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001D1D1D3D908E8EFAA19A
      9EFF5857A6FFB8B8EFFF9E9EE2FF8282D8FF7373D4FF6262CAFF4C4CBBFF6161
      CCFF6161D0FF5E5ED0FF5E5ECFFF5E5ECFFF5F5FD0FF6363D0FF6362CCFF4E4E
      BBFF6666CBFF7777D4FF8787D9FFA0A0E3FF9999E1FF5C599FFFF7F7F7FF9897
      97FF1D1D1D5E0000000E00000001000000000000000000000000000000009822
      0FE2FFBD79FFFFC286FFEACCB5FFF4F8FBFFFFFDFCFFFFFBF8FFFFF9F5FFFFF6
      F4FFFFF6F1FFFFF4EEFFFFF2ECFFFFEFE9FFFFEDE6FFFFF0E8FFFFF9EFFFA09C
      B0FF1B9DC3FF8BFAFFFFC2F8FFFF65EDFFFF22E7FFFF28EBFFFF26F6FFFF2D87
      ABFC1907155700000000000000000000000093846FFFFFFFFFFFFBF6EFFFFAF3
      EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFF3E2D0FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001A
      0028009500FF00B300FF00B300FF00B200FF00AE00FF009F00FF009100F80077
      00E3005A00C5001100540007002B0002000D0000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666565B09D98
      98FF9F9AA6FF6565B6FFBABAEEFFA5A5E3FF8C8CDAFF7E7ED5FF7777D4FF7474
      D4FF7171D3FF6F6FD3FF6E6ED3FF6E6ED3FF7171D3FF7373D3FF7676D4FF7A7A
      D4FF8383D7FF9191DAFFA7A7E5FFA6A6E6FF404098FFE5E2E6FFC2C2C2FF716F
      6FCD000000160000000400000000000000000000000000000000000000009821
      0EE2FFBE79FFFFC387FFE8CAB3FFF3F6F9FFFFFCF9FFFFF8F5FFFFF7F4FFFFF5
      F1FFFFF3EEFFFFF1ECFFFFEFE9FFFFEDE6FFFFEEE7FFFFEFE9FFFFF3EDFFFFF7
      F0FF8589A5FF20ABD1FF9BFDFFFFBEF6FFFF57EAFFFF1EE3FFFF27EAFFFF27F1
      FFFF256D94E709071235000000000000000093846FFFFFFFFFFFFCF8F3FFFBF6
      EFFFFAF3EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000019
      0028009500FF00AD00FF00A000FF009C00FF009300F8007800E3005A00C50011
      00540007002B0002000D00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008281
      81E6A09C9CFF9D97A7FF6463B2FFC0C0EBFFB7B7EBFF9D9DE0FF9090DAFF8888
      D8FF8383D7FF8181D5FF8181D5FF8181D5FF8282D5FF8484D7FF8A8AD8FF9292
      DAFFA0A0E0FFB5B5EAFFA1A1DEFF484598FFD7D4D8FFDAD9D9FF878686F20000
      001A000000060000000000000000000000000000000000000000000000009B21
      0CE5FFC07BFFFFC48AFFE6C7B1FFF3F5F7FFFFFBF8FFFFF7F4FFFFF6F2FFFFF4
      EFFFFFF2EDFFFFF0EAFFFFEEE7FFFFEEE7FFFFF0EAFFFFF2ECFFFFF3EDFFFFF9
      F3FFFFF6F3FF7788A7FF23B5DBFFA2FBFFFFB8F4FFFF4DE7FFFF1CE1FFFF25E8
      FFFF27ECFCFF296082DC08050E290000000093846FFFFFFFFFFFFEFBF7FFFCF8
      F3FFFBF6EFFFFAF3EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000017
      0028009500FF009C00FF009100F8007700E3005A00C5001100540007002B0002
      000D000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      1020898888F39E9999FF98929EFF6A68ACFF8F8FCEFFD7D7F6FFB6B6E7FFA7A7
      E1FF9F9FDEFF9999DCFF9898DCFF9898DCFF9A9ADCFFA0A0DEFFAAAAE1FFB7B7
      E7FFCECEF3FF8382C6FF5C599CFFD4D0D4FFD1D0D0FF8B8B8BF5100E0E360000
      0007000000010000000000000000000000000000000000000000000000008C16
      06D9FFBA72FFFFD495FFE9D0B9FFF4FDFFFFFFFFFFFFFFFFFCFFFFFEFAFFFFFC
      F8FFFFFAF5FFFFF8F2FFFFF8F2FFFFFAF3FFFFFAF6FFFFFCF8FFFFFCF9FFFEFD
      FBFFFFFFFFFFFBF9F8FF638AAFFF26C7EAFFA7FAFFFFB1F3FFFF47E4FFFF1EDF
      FFFF23E8FFFF1ED0F6FF233760C40000000093846FFFFFFFFFFFFEFEFCFFFEFB
      F7FFFCF8F3FFFBF6EFFFFAF3EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000016
      0028009500FF007700E2005A00C5001100540007002B0002000D000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010101020828181E69D9999FFA49D9DFF7E79A3FF6463ADFF8080C2FFBFBF
      E6FFC2C2E7FFCACAEEFFC6C6EDFFC6C6EDFFC9C9EDFFC1C1E7FFB2B2E1FF7C7A
      C0FF6462A5FF9997B1FFD9D5D5FFB5B4B4FF878686F2100F0F32000000060000
      0001000000000000000000000000000000000000000000000000000000003A00
      006CC5471BFFE68946FFDB895FFFD79375FFD99373FFD89172FFD89171FFD690
      70FFD68E6EFFD58E6EFFD58D6EFFD38D6CFFD38D6CFFD28C6CFFD18B6BFFD08B
      6BFFCF8969FFD5906FFFCD7659FF464C6AFF2ECFF3FFAFF9FFFFAFF3FFFF32DD
      FFFF13CDFFFF11A9F0FF222E57C00000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000002B0000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000010
      0020005200A20011004E0007002A0002000D0000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000696868B0928F8FFAA19C9CFF9E989EFF908BA9FF6967
      A0FF5F5DA6FF5C5AA5FF615FB0FF5F5FAFFF5F5DA5FF5C59A0FF6F6CA0FFA19E
      B0FFC1BDC5FFC5C1C1FF969595FB6F6E6EC80000000E00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000100
      00022E0000574A0100864A0100844A000084490000844A0000844A0000844900
      00844A0000844A0000844A0000844A0000844A0000844A0000844A0000844A00
      00844A0000844A0000844D0200834401038021466DD346DEFAFF82F1FFFF1BCE
      FFFF0BB3FEFF1F5491EF0C0A173E0000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000000E00000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000004
      0008000900190003000B00010002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001D1D1D3D7D7C7CDC908E8EFBA09D9DFFA59E
      9EFFAAA4A4FFADA7A7FFB1ABABFFB4AFAFFFB7B2B2FFBBB6B6FFBBB6B6FFB2AF
      AFFF979696FF7D7C7CDF1D1D1D47000000060000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000009030A271E5B88DF14C0F1FF129C
      E2FF204983E30F0C1A4D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000101010205D5B5B9E8382
      82DD8E8C8CEE8E8B8BFF9A9898FF9C9999FF8F8E8EFF8B8A8AEE7D7C7CDE5A5A
      5AA2101010290000000400000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B09153B253665D31D22
      43A207050D280000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      002D000000190000001E000000230000001C0000002B0000003A0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000002B0000000E0000000000000000000000050000000E000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      0013000000130000000E00000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000050000000E000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      0013000000130000000E00000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001D0814055E1D4F14F30000003593846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF0000003A0000001300000000000000000000000E0000002B0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A0000002B0000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000E0000002B0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A0000002B0000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000005000000130A1F
      087A1C4E14FF1E5415FF0000003A93846FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9384
      6FFF0000003A00000013000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      153000003379000045AA000052CA000059D8000059D900004ECC000040AE0000
      2F800000153B0000010200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001000000060000001712340DB11455
      15FF0B3C0DFF1E5415FF0000003A93846FFFFFFFFFFFFAF2E9FFF8EFE5FFF7ED
      E1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1CCFFF2DEC9FFFFFFFFFF9384
      6FFF0000003A00000013000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001B3B00004BAB0000
      70F1111291FF1C1FA9FF2125B7FF2025BCFF1D21BBFF191BB3FF1213A3FF080A
      87FF000061F700003FB700001A49000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000202050120194411D80E6F1DFF0A89
      1EFF0E6C12FF1E5415FF0000003A93846FFFFFFFFFFFFBF4EDFFFAF2E9FFF8EF
      E5FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1CCFFFFFFFFFF9384
      6FFF0000003A00000013000000000000000093846FFFFFFFFFFFFAF2E9FFF8EF
      E5FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1CCFFF2DEC9FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFBF4EEFFFAF2
      E9FFF8EFE5FFF7EDE0FFF6EADCFFF4E6D7FFF4E3D3FFF3E1CEFFF2DEC9FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000040700003D81010177F81C20A4FF373E
      D0FF3B44E0FF2D38D8FF1F29CCFF1720C5FF151CC3FF171EC4FF1B20CBFF1D22
      D5FF171AC4FF0B0D96FF000061FD000033950000040E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030B03221B4913E10C7A25FF1FB734FF28C7
      2DFF13841CFF1E5415FF0000003A93846FFFFFFFFFFFFBF6F0FFFBF4EDFFFAF2
      E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5D4FFF3E3D0FFFFFFFFFF9384
      6FFF0000003A00000013000000000000000093846FFFFFFFFFFFFBF4EDFFFAF2
      E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1CCFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFBF6F0FFFAF3
      EBFFFAF0E7FFF8EEE2FFF7EBDEFFF6E9D9FFF4E6D5FFF3E3D0FFF2E1CCFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000080F000050A70C0D8DFF3C43CDFF4954E8FF2634
      D3FF0712BFFF0000C2FF0000CFFF0104D4FF0205D3FF0000CBFF0000B9FF0002
      ACFF0D12B9FF181CD5FF1215BDFF030474FF000040BE00000A1D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030A02211B4A13E096B891FF86EA8EFF3ED9
      44FF179826FF1E5415FF0000003A93846FFFFFFFFFFFFCF8F4FFFBF6F0FFFBF4
      EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5D4FFFFFFFFFF9384
      6FFF0000003A00000013000000000000000093846FFFFFFFFFFFFBF6F0FFFBF4
      EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5D4FFF3E3D0FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFCF8F3FFFBF6
      EFFFFAF3EAFFF8EFE6FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E2CFFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000204000053A5111296FF4F58DFFF4554E7FF0E1DC8FF0000
      C5FF2526E1FF807EF5FFB4B4F7FFCDCCF5FFCECEF6FFB8B7F7FF8989F6FF3132
      E0FF0000B6FF0005A5FF1317CAFF1518CDFF04057BFF000040BD0000040E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002050110173F11C0659661FF6FD9
      86FF1AA72DFF1E5415FF0000003A93846FFFFFFFFFFFFEFBF8FFFCF8F4FFFBF6
      F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFFFFFFFFF9384
      6FFF0000003A00000013000000000000000093846FFFFFFFFFFFFCF8F4FFFBF6
      F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5D4FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFCFAF7FFFCF7
      F2FFFBF4EEFFFAF2E9FFF8EFE5FFF7EDE0FFF6EADAFFF4E6D7FFF4E3D1FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000040790D0F94FF5660E0FF4556E7FF0414C9FF0303D1FF7876
      F3FFE8E8F5FFFEFEEBFFFFFFE8FFFFFFECFFFFFFECFFFFFFE9FFFFFFEAFFF0F0
      F5FF8D8CF6FF0D0DC7FF00009FFF1114C2FF1518CCFF030375FF000033960000
      000000000000000000000000000000000000000000050000000E000000130000
      001300000013000000130000001300000013000000130000001313350EAE3476
      36FF1D9642FF1E5415FF0000003993846FFFFFFFFFFFFFFEFCFFFEFBF8FFFCF8
      F4FFFBF6F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFFFFFFFFF9384
      6FFF0000003A00000013000000000000000093846FFFFFFFFFFFFEFBF8FFFCF8
      F4FFFBF6F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFEFCFAFFFCF8
      F4FFFBF6F0FFFAF3EBFFFAF0E7FFF8EEE2FFF7EBDEFFF6E9D9FFF4E6D5FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000001A2E000084F34B54D3FF5768EFFF051BCFFF0003D1FF9997F2FFFFFF
      F0FFFDFDEAFFE9E9F1FFA7A5EFFF807DEAFF7D7BEAFFA19FEFFFE2E2F3FFFDFD
      EBFFFFFFEEFFB0B0F8FF0909C3FF00029FFF1317CAFF1215BDFF000061FD0000
      1947000000000000000000000000000000000000000E0000002B0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A000000670A1F
      079A1E5B1AFF1E5415FF0000002E93846FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9384
      6FFF0000002B0000000E000000000000000093846FFFFFFFFFFFFFFEFCFFFEFB
      F8FFFCF8F4FFFBF6F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFFFFF
      FFFF93846FFF0000003A00000015000000070000000A000000090000000E0000
      0013000000130000001300000013000000130000001300000013000000130000
      001300000013000000130000000E0000000593846FFFFFFFFFFFFFFEFCFFFEFB
      F8FFFCF8F3FFFBF6EFFFFAF3EAFFF8EFE6FFF7EDE1FFF7EADDFFF6E7D8FFFFFF
      FFFF93846FFF0000003F00000022000000130000001300000013000000130000
      00130000000E0000000500000000000000050000000D0000000B000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000057A0262CB2FF6E7DF5FF1833DCFF0000CEFF6F6EE7FFFFFFF1FFFAFA
      EDFFBFBEF1FF3635DAFF0000C7FF0000BFFF0000BDFF0000BFFF2928D3FFADAC
      EFFFF9F9EEFFFFFFF0FF8D8CEEFF0000AFFF0308A7FF181CD5FF0B0D96FF0000
      3FB70000010600000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF7064
      55FF727156FF1C4E13F30000001C93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF0000000E00000005000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000002D000000190000001E000000230000001C0000002B0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A0000003A0000002B0000000E93846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF000000480000003F0000003A0000003A0000003A0000003A0000
      003A0000002B0000000E000000000000000E0000002800000028000000130000
      0005000000000000000000000000000000000000000000000000000000000000
      1422000082E65C67DDFF485FEDFF0011D5FF1E21D6FFE3E2F2FFFDFEEEFFC2C1
      F0FF0F10CEFF0007C3FF0014C1FF0014BEFF0012BCFF0011B9FF0004B3FF0504
      C2FFABABEDFFFEFFEFFFF1F1F5FF3434CFFF00009FFF0F13BDFF171AC4FF0000
      61F70000153B00000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000001D0814055E1D4F14F30000003593846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF0000003A0000001393846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF0000003A00000013000000001E5415FF12340CB400000042000000300000
      0018000000070000000100000000000000000000000000000000000000000000
      3965181CA8FF7687F5FF1F3CE4FF0005D4FF6D6EDFFFFFFFF2FFF5F4F4FF3C3D
      D5FF0006C8FF0019CAFF0015C7FF0014C4FF0013C2FF0012BFFF0011BAFF0002
      B3FF2426CAFFE7E7F3FFFFFFF3FF8788E3FF0000A9FF040AACFF1D22D6FF090A
      87FF00002E8200000000000000000000000093846FFFFFFFFFFFFAF2E9FFF8EF
      E5FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1CCFFF2DEC9FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005000000130A1F087A1C4E14FF1E5415FF0000003A93846FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF93846FFF0000003A000000130000000000000000000000000000
      000000000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9384
      6FFF0000003A00000013000000001E5415FF1E5415FF194512DD010500510000
      00350000001D0000000A00000002000000000000000000000000000000000000
      56963A41C2FF7086F8FF0828E3FF0008D0FF9D9CE1FFFFFFF5FFBABAE8FF0005
      C5FF0011CEFF0117CCFF0215C9FF0002BEFF0001BCFF000EC0FF0012BFFF000C
      B7FF0000B4FFA09FE4FFFFFFF5FFB6B5E9FF0505B1FF0004A6FF1A1FD0FF1213
      A3FF000040AF00000000000000000000000093846FFFFFFFFFFFFBF4EDFFFAF2
      E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1CCFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000060000
      001712340DB1145515FF0B3C0DFF1E5415FF0000003A93846FFFFFFFFFFFFAF2
      E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1CCFFF2DE
      C9FFFFFFFFFF93846FFF0000003A000000130000000000000000000000000000
      000000000000000000000000000093846FFFFFFFFFFFFBF4EEFFFAF2E9FFF8EF
      E5FFF7EDE0FFF6EADCFFF4E6D7FFF4E3D3FFF3E1CEFFF2DEC9FFFFFFFFFF9384
      6FFF0000003A00000013000000001E5415FF10670EFA1A5A13FE1C4F14F4050F
      046A0000003A000000220000000D000000020000000000000000000000000000
      70BE4F58D3FF5F77F7FF001EE6FF020FCFFFB4B2E3FFFFFFF8FF9494DDFF161F
      CDFF4553E3FF5B61E7FF3F41D0FF8D8BDCFF9896E0FF3839CCFF2E33DDFF2029
      D4FF0506BEFF7C7DD8FFFFFFF9FFCBCAECFF0D0EB2FF0003A7FF161DCAFF191B
      B3FF000050CD00000000000000000000000093846FFFFFFFFFFFFBF6F0FFFBF4
      EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5D4FFF3E3D0FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002020501201944
      11D80E6F1DFF0A891EFF0E6C12FF1E5415FF0000003A93846FFFFFFFFFFFFBF4
      EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E3D0FFF3E1
      CCFFFFFFFFFF93846FFF0000003A000000130000000000000000000000000000
      000000000000000000000000000093846FFFFFFFFFFFFBF6F0FFFAF3EBFFFAF0
      E7FFF8EEE2FFF7EBDEFFF6E9D9FFF4E6D5FFF3E3D0FFF2E1CCFFFFFFFFFF9384
      6FFF0000003A00000013000000001E5415FF0E8210FA0B820DF8176112FD1E54
      15FF0C1F078E0000003A0000001E000000070000000000000000000000000000
      7DD05A64DBFF5974F8FF001EE9FF020FCDFFB2B0E0FFFFFFFAFF9393D9FF6060
      DBFFA09EF6FF8180EFFF5F5ED1FFFFFFF7FFFFFFFBFF6161D0FF3F3EE3FF4B4A
      EDFF1D1ED6FF8080D4FFFFFFFAFFC9C9EAFF0C0DAFFF0004ABFF161EC8FF1D21
      BBFF000057D900000000000000000000000093846FFFFFFFFFFFFCF8F4FFFBF6
      F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5D4FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030B03221B4913E10C7A
      25FF1FB734FF28C72DFF13841CFF1E5415FF0000003A93846FFFFFFFFFFFFBF6
      F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5D4FFF3E3
      D0FFFFFFFFFF93846FFF0000003A000000130000000000000000000000000000
      000000000000000000000000000093846FFFFFFFFFFFFCF8F3FFFBF6EFFFFAF3
      EAFFF8EFE6FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E2CFFFFFFFFFFF9384
      6FFF0000003A00000013000000001E5415FF129616FA16A019F40B8E0EF71268
      10FB1E5415FF0E250A910000001E000000070000000000000000000000000000
      7DCE5C68DCFF5C78FBFF0021EBFF0006CFFF9795D7FFFFFFFCFFBBBBE3FF5050
      CCFFA5A5F8FF8585EEFF5D5DCDFFF1F1F3FFFFFFF8FF5E5ECBFF4646E1FF5353
      EDFF1F1FCAFFA7A7DCFFFFFFFCFFB1B1E0FF0203AAFF0007AFFF1821CBFF2025
      BCFF000058D800000000000000000000000093846FFFFFFFFFFFFEFBF8FFFCF8
      F4FFFBF6F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030A02211B4A13E096B8
      91FF86EA8EFF3ED944FF179826FF1E5415FF0000003A93846FFFFFFFFFFFFCF8
      F4FFFBF6F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7D9FFF4E5
      D4FFFFFFFFFF93846FFF0000003A000000130000000000000000000000000000
      000000000000000000000000000093846FFFFFFFFFFFFCFAF7FFFCF7F2FFFBF4
      EEFFFAF2E9FFF8EFE5FFF7EDE0FFF6EADAFFF4E6D7FFF4E3D1FFFFFFFFFF9384
      6FFF0000003A00000013000000001E5415FF1BA622FA1FB325F40EA416F7126F
      11FB1E5415FF0E2B0A910000000D000000020000000000000000000000000000
      71B9555FD7FF6B87FEFF001CEEFF4051E3FF7B79CBFFFBFBF9FFF8F8F8FF5D5D
      C3FF8181E3FF9D9DF6FF5F5FC9FFF1F1F3FFFFFFFAFF5F5FC7FF5656E6FF4848
      E3FF3E3EBDFFF0F0F4FFFFFFFCFF807ECFFF0105BCFF000AB2FF1E28D0FF2125
      B7FF000052CA00000000000000000000000093846FFFFFFFFFFFFFFEFCFFFEFB
      F8FFFCF8F4FFFBF6F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFFFFF
      FFFF93846FFF0000003A00000015000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000002050110173F
      11C0659661FF6FD986FF1AA72DFF1E5415FF0000003A93846FFFFFFFFFFFFEFB
      F8FFFCF8F4FFFBF6F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EADDFFF6E7
      D9FFFFFFFFFF93846FFF0000003A000000130000000000000000000000000000
      000000000000000000000000000093846FFFFFFFFFFFFEFCFAFFFCF8F4FFFBF6
      F0FFFAF3EBFFFAF0E7FFF8EEE2FFF7EBDEFFF6E9D9FFF4E6D5FFFFFFFFFF9384
      6FFF0000003A00000013000000001E5415FF30B23BFA23C32FF81A7819FC1E54
      15FF0C2008720000000A00000002000000000000000000000000000000000000
      5A914048C9FF7C95FFFF5B75F6FFEAEBFDFF6766C2FFC5C5E5FFFFFFFCFFCFCF
      E9FF4A4AB9FF8989E6FF6868C9FFF1F1F3FFFFFFFBFF6363C4FF5353DFFF3434
      B9FFC0C0E2FFFFFFFCFFE7E7EFFF302FBAFF2727E5FF121ACBFF2C36D7FF1C1F
      A9FF000045AA00000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000002D00000019000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000050000000E000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      001314340DA7347636FF1D9642FF1E5415FF0000003593846FFFFFFFFFFFFFFE
      FCFFFEFBF8FFFCF8F4FFFBF6F0FFFBF4EDFFFAF2E9FFF8EFE5FFF7EDE1FFF7EA
      DDFFFFFFFFFF93846FFF0000003A00000013000000050000000E000000130000
      001300000013000000130000001393846FFFFFFFFFFFFFFEFCFFFEFBF8FFFCF8
      F3FFFBF6EFFFFAF3EAFFF8EFE6FFF7EDE1FFF7EADDFFF6E7D8FFFFFFFFFF9384
      6FFF0000003A00000013000000001E5415FF45A74DFA246B1FFE1D4F14F2060F
      0344000000080000000100000000000000000000000000000000000000000000
      3B5D1418B2FF97A8FCFFEDEFFEFFFFFFFFFFB7B7E6FF5D5DB7FFF7F7FAFFFFFF
      FFFFA5A5D5FF4B4BBDFF6F6FC8FFEFEFF4FFFFFFFCFF6767C3FF2E2EBAFF9696
      CCFFFFFFFFFFFFFFFEFF6F6FBDFF2222CCFF3E3EEAFF2F2FE9FF373EE7FF1112
      8FFF0000337A00000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000002E00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000E0000002B0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A0C1F077C1E5B1AFF1E5415FF0000002293846FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF93846FFF0000002B0000000E0000000E0000002B0000003A0000
      003A0000003A0000003A0000003A93846FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9384
      6FFF0000002B0000000E000000001E5415FF1E5415FF194411D7030A02320000
      0006000000010000000000000000000000000000000000000000000000000000
      121B00008DDF8F96E6FFFFFFFFFFFBFBFFFFFFFFFFFF8C8CCDFF6F6FBAFFE3E3
      F0FF7878BEFF8181D6FF7070C2FFF0F0F5FFFFFFFDFF6767BDFF5454D3FF6565
      B9FFECECF2FF8D8DC3FF2828B9FF5252EDFF4444E5FF3A39F9FF2D30DDFF0101
      6DF1000015310000000000000000000000000000000E0000002B0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000003A061004401C4F14EF0000000A93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF0000000E0000000593846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF0000000E00000005000000001E5415FF13340EA40204011A000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      000000005F942F35C1FFEEF0FEFFFFFFFFFFFDFDFFFFFDFDFFFF9191CDFF5A5A
      ACFF7B7BC7FFC5C5F8FF6C6CBBFFEFEFF6FFFFFFFFFF6565B6FF8282EAFF5858
      C9FF4C4CA9FF3E3EBCFF6464EEFF5B5BEAFF4E4EEEFF4749FFFF1A1DA8FF0000
      4BAC0000000300000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000001621000096E97981DFFFFFFFFFFFFFFFFFFFFDFDFFFFFAFAFFFFDEDE
      F4FFE0E0FCFFCCCCF7FF6E6EB6FFEEEEF5FFFFFFFFFF6666B2FF8787E6FF9696
      F5FF7979EAFF7C7CF2FF7171ECFF6363ECFF5D5EFFFF393CD6FF010275F80000
      1A390000000000000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFAF0E7FFF8EE
      E3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFF3E2D0FFF2E0CBFFF2DDC7FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFBF4EEFFFAF2
      E9FFF8EFE5FFF7EDE0FFF6EADCFFF4E6D7FFF4E3D3FFF3E1CEFFF2DEC9FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000004265090CABFEA5ACEDFFFFFFFFFFFFFFFFFFFCFCFFFFF5F5
      FFFFE8E8FDFFD5D5F6FF7272B3FFF5F5F9FFFFFFFFFF6A6AAEFF8F8FE5FF9E9E
      F5FF9292F3FF8686EEFF7A79EFFF7272FEFF5156EAFF0B0D8CFF00003D810000
      00000000000000000000000000000000000093846FFFFFFFFFFFFAF0E7FFF8EE
      E3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFF3E2D0FFF2E0CBFFF2DDC7FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFAF3EBFFFAF0
      E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFF3E2D0FFF2E0CBFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFBF6F0FFFAF3
      EBFFFAF0E7FFF8EEE2FFF7EBDEFFF6E9D9FFF4E6D5FFF3E3D0FFF2E1CCFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000010100005B8D0C0EB1FFA4AAECFFFFFFFFFFFFFFFFFFFCFC
      FFFFF2F2FEFFE8E8FBFF6969A9FF9C9CBFFFACACC9FF5656A0FFA6A6EFFFA7A8
      F4FF9B9BF2FF9191F5FF8A8BFFFF5E62E9FF111395FF000050A8000003050000
      00000000000000000000000000000000000093846FFFFFFFFFFFFAF3EBFFFAF0
      E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFF3E2D0FFF2E0CBFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFBF6EFFFFAF3
      EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFF3E2D0FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFCF8F3FFFBF6
      EFFFFAF3EAFFF8EFE6FFF7EDE1FFF7EADDFFF6E7D8FFF4E5D4FFF3E2CFFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000020300005A8C070AADFF7982DFFFEAEEFFFFFFFF
      FFFFFFFFFFFFF8F8FFFFC3C2E3FF7171AFFF6A6AACFF9D9DD9FFC1C1FCFFB1B1
      F8FFABAAFDFF9498FFFF535AD9FF0C0F93FF000052A40000080F000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFBF6EFFFFAF3
      EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFF3E2D0FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFCF8F3FFFBF6
      EFFFFAF3EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFCFAF7FFFCF7
      F2FFFBF4EEFFFAF2E9FFF8EFE5FFF7EDE0FFF6EADAFFF4E6D7FFF4E3D1FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000004164000095E82F35C0FF9399
      E5FFDADFFCFFF2F4FFFFFBFCFFFFFAFAFFFFEFEEFFFFDDDDFFFFC1C2FFFFA4A8
      FCFF6E73E2FF2A2FB3FF000082F3000040790000030600000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFCF8F3FFFBF6
      EFFFFAF3EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFF4E5D4FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFEFBF7FFFCF8
      F3FFFBF6EFFFFAF3EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFEFCFAFFFCF8
      F4FFFBF6F0FFFAF3EBFFFAF0E7FFF8EEE2FFF7EBDEFFF6E9D9FFF4E6D5FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000172300005C920000
      8CDC1317B2FF454BC9FF676DD6FF747ADDFF7176DBFF5E64D4FF3F44C2FF171A
      A8FF000080E30000579F00001B30000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFEFBF7FFFCF8
      F3FFFBF6EFFFFAF3EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFF6E7D8FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFEFEFCFFFEFB
      F7FFFCF8F3FFFBF6EFFFFAF3EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFFFEFCFFFEFB
      F8FFFCF8F3FFFBF6EFFFFAF3EAFFF8EFE6FFF7EDE1FFF7EADDFFF6E7D8FFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      131D00003B5D00005990000070B800007BCE00007CD000006EBD000056950000
      3965000015240000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFEFEFCFFFEFB
      F7FFFCF8F3FFFBF6EFFFFAF3EBFFFAF0E7FFF8EEE3FFF7EDE0FFF6EADCFFFFFF
      FFFF93846FFF0000003A00000013000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000002B0000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000002B0000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF93846FFF0000002B0000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000000E00000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000000E00000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF0000000E00000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000210000
      0047000000470000004700000047000000470000004700000047000000210000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BF03FF24CA
      30FF2CD434FF2BD333FF2AD232FF2AD02EFF2BCB2FFF2BC72FFF29C52DFF25C1
      28FF22C022FF1FBB1FFF1BB91BFF18B418FF19B315FF15B012FF14AE10FF09AD
      05FF0D7600AF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000080000000F000000140000001700000017000000180000
      0018000000180000001800000018000000180000001800000018000000170000
      0017000000140000000F00000008000000030000000000000000000000000000
      0000000000010000000800000010000000100000001000000010000000100000
      0010000000100000001000000010000000100000001000000010000000100000
      001000000010000000100000001000000010000000110000000B000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000060000008F000300C2001D
      00FF014500FF035F00FF036600FF036200FF014A00FF002400FF000500C20000
      008F000000060000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BE03FF5DE3
      67FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEDFDE6FFE3F4DFFFDEED
      D8FFD4E8CFFFCCE1C6FFC5DCBDFFBBD6B3FFB5CFAEFFAECAA5FFAAC9A0FFA1C4
      99FF0BAE00FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000F0000001A000000230000002800000029000000290000
      0029000000290000002900000029000000290000002900000029000000290000
      0028000000230000001A0000000F000000060000000000000000000000000000
      0000000000032E2E2E7E565656B2525252B0525252B0525252B0525252B05252
      52B0525252B0525252B0545454B0555555B0555555B0525252B0525252B05252
      52B0525252B0525252B0525252B0525252B0545454B24747479C000000150000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000013000700B9002200FF047203FF08A3
      06FF0FB70DFF17C614FF19CA17FF18C715FF10BA0EFF08A706FF057D04FF002B
      00FF000800B90000001300000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000011C71EFF18C8
      24FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEFFBEAFFEAFDE2FFE6F5E0FFE0F2
      D9FFDBEDD4FFD5EACDFFD1E7C8FFCCE3C2FFC6E0BBFFBFDAB5FFBBD7B0FFB5D5
      A8FF25B721FF0536005000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000001400000023000000300000003600000037000000380000
      0038000000380000003800000038000000380000003800000038000000370000
      0036000000300000002300000014000000080000000000000000000000000000
      0000000000006F6F6FAEF2F2F2FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFE6E6E6FFEBEBEBFFEFEFEFFFDFDFDFFFE3E3E3FFEAEAEAFFE9E9
      E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFEFEFEFFFB1B1B1DE000000090000
      00000000000000000000000000000000000000000000000000050000000E0000
      0013000000130000001300000013000000130000001300000013000000130000
      0013000000130000001300000013000100A6013D02FF07A70AFF13C016FF1AC0
      1DFF1ABA1DFF1AB61CFF1AB51CFF1AB61CFF1ABA1DFF1BC01DFF15C117FF09B0
      0CFF024B04FF000600CA0000003B0000000E00000000000000050000000E0000
      00130000001300000013000000130000001300000013000000131BCD28FF2EDC
      3EFFA0F3A6FFF5F5F5FFF5F5F5FFF5F5F5FFEDFCE7FFE7F9E0FFE3F4DDFFDEF0
      D7FFD8EBD0FFD4E9CCFFCFE5C6FFC8E0BFFFC4DEB9FFBDD9B2FFB9D6ADFFB3D2
      A7FF5EC656FF086C00AD000000130000000E00000000000000050000000E0000
      0013000000130000001300000013000000130000001300000013000000130000
      001300000013443006D38F6412D58C620ED88D5F03DAAAA3A6DAAAA19DDA1B18
      18DA150C00DAAAA1A1DAA89E99DAA69E9ADAA8A1A5DA8C5F03DA8F640FDA8F66
      11DA443007D800000038000000280000001700000001000000100000001C0000
      001C0000001513131359E6E6E6FBEEEEEEFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEAFFE9E9E9FFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFF4F4F4FF36363686000000130000
      001C0000001C0000001C0000000D00000000000000000000000E0000002B0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A0000003A00000072003605E706A40EFF16BD1EFF1ABA22FF1AB8
      21FF1BC423FF1CCE25FF1DD126FF1CCB25FF1BC023FF19B721FF1AB922FF16BC
      1EFF07AD10FF024905FF0002008C0000002B000000000000000E0000002B0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A1FCD2BFF6AF0
      84FF4AE054FFC3FEDBFFB9FED5FFADFEC8FF9FFEB8FF90FDA2FF83F68EFF80F7
      8BFF6DF374FF58EA5BFF42E442FF3AE43AFF3BDD37FF41D436FF3DCE32FF3EC2
      30FF27AB19F30C9700EC0000003A0000002B000000000000000E0000002B0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A8F6511DAC1A16CDDBD9B60DFBD9758E0C3C0C4E0C9C9C9E13B37
      37E1787473E1C9C9C9E1C2BCB8E1C2BCB9E1C3C2C4E1BD9857E1BD9A60E0C1A1
      6CE08F6412DF0000005A0000004C00000032020202254F4F4FAB707070C76D6D
      6DC66C6C6CC4686868C5C1C1C1F7E6E6E6FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
      E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
      E1FFE1E1E1FFE1E1E1FFE1E1E1FFE4E4E4FFD4D4D4FE6E6E6ECD6D6D6DC36D6D
      6DC66D6D6DC6727272C7434343A00000001A00000000D27727FFCF7325FFCD6F
      23FFCB6C21FFC8681FFFC6641CFFC3611AFFC15D18FFBE5916FFBE5916FFBE59
      16FFBE5916FFB45414FF54460DFF059212FF16BD25FF19BA27FF19BB28FF19BC
      28FF29CE38FFD3F8D6FFF6FDF6FFD3F7D6FF28CD38FF19BC28FF19BB27FF19BA
      27FF15BB24FF069E15FF043005FF0001006100000000D27727FFCF7325FFCD6F
      23FFCB6C21FFC8681FFFC6641CFFC3611AFFC15D18FFBE5916FF22CE2EFFABFE
      CCFF16CA23FFDCFDF2FFADFECDFF93FEB9FF83FEA9FF68F880FF68FC82FF5AFC
      6DFF48F858FF34F441FF16EC20FF02DA02FF02D802FF06D301FF09CA00FF11C4
      00FF31A900FF14AE00FFBE5916FF0000003A00000000D27727FFCF7325FFCD6F
      23FFCB6C21FFC8681FFFC6641CFFC3611AFFC15D18FFBE5916FFBE5916FFBE59
      16FFBE5916FFB37514FFE0AF6DFFD9A358FFD69E4EFFE0CFC6FFE6D7CDFF5642
      35FF917A6EFFE6D7CDFFDBC4B4FFDAC4B4FFDFCEC6FFD69E4EFFD8A258FFDDAC
      6CFFAE7313FF9F4A12FFAC5013FF0000004123232365E5E5E5FFDDDDDDFFDCDC
      DCFFDDDDDDFFD5D5D5FFA8A8A8FFE5E5E5FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFEAEAEAFFA6A6A6FFBEBEBEFFE0E0E0FFDCDC
      DCFFDCDCDCFFDDDDDDFFE1E1E1FF1515155300000000D37828FFF5F2F2FFF3F0
      F0FFF2EEEEFFF0ECECFFEFEAEBFFEDE8E9FFEDE8E9FFEDE8E9FFEDE8E9FFEDE8
      E9FFEDE8E9FFBBBBB9FF02540CFF0EB623FF18BC2CFF19BE2DFF19BF2EFF19BF
      2EFF2CC941FFFFFFFFFFFFFFFFFFFFFFFFFF2DCF42FF18BF2EFF18BE2EFF19BD
      2DFF18BC2DFF10BB25FF02670FFF0008016300000000D37828FFF5F2F2FFF3F0
      F0FFF2EEEEFFF0ECECFFEFEAEBFFEDE8E9FFEDE8E9FFEDE8E9FF23CF2FFFB9FE
      DEFF3AE24EFF89F092FFD1FEECFFAFFED4FF89FEAAFF7AFA93FF76FE8DFF61FD
      77FF50FA60FF3AF447FF25F12FFF11EB16FF09D204FF09CC00FF09CA00FF11C4
      00FF39C01DFF26B812FFA43100FF0000003A00000000D37828FFF5F2F2FFF3F0
      F0FFF2EEEEFFF0ECECFFEFEAEBFFEDE8E9FFEDE8E9FFEDE8E9FFEDE8E9FFEDE8
      E9FFEDE8E9FFBC913BFFE7C894FFDDB571FFDBB067FFE8E7E9FFECE6E3FF8E87
      83FF5D5755FFEDE6E3FFE0D7CEFFDFD6CEFFE7E6E9FFDBB067FFDCB46FFFE2C3
      90FFB58A35FFBEB6B6FF942C00FF000000412D2D2D70E3E3E3FFD8D8D8FFD8D8
      D8FFDADADAFFCECECEFF3C3C3CFF636363FF727272FF707070FF6F6F6FFF6F6F
      6FFF6E6E6EFF6E6E6EFF6D6D6DFF6D6D6DFF6D6D6DFF6C6C6CFF6C6C6CFF6C6C
      6CFF6B6B6BFF6B6B6BFF6C6C6CFF686868FF171717FFA0A0A0FFE1E1E1FFDADA
      DAFFD8D8D8FFDADADAFFE0E0E0FF1919195C00000000D47A29FFFFFFFFFFFFFF
      FFFFFEFDFDFFFDFCFCFFFCFBFBFFFDFBFBFFFFF7F7FFFFE2E2FFFFF6F6FFFFF6
      F6FFFFF4F4FFCAD2C4FF027A17FF10BA2DFF18C134FF1DD33CFF2ADE49FF2DDF
      4BFF3DD858FFFEFEFEFFFEFEFEFFFEFEFEFF3FE55BFF2EE34DFF2ADB48FF1DCF
      3BFF18C034FF12BB2FFF05921CFF0018056300000000D47A29FFFFFFFFFFFFFF
      FFFFFEFDFDFFFDFCFCFFFCFBFBFFFDFBFBFFFFF7F7FFFFE2E2FF23D12FFFB9FE
      DEFF74F490FF3EDE49FFDCFDF2FFC5FEE1FFA2EDB2FFB5FED4FF8FFEACFF6CFE
      82FF57F96AFF42F64EFF2CF235FF18EE1DFF16DC16FF13D10FFF0DC200FF11C1
      00FF3CC320FF37C01FFF279900FF0000003A00000000D47A29FFFFFFFFFFFFFF
      FFFFFEFDFDFFFDFCFCFFFCFBFBFFFDFBFBFFFFF7F7FFFFE2E2FFFFF6F6FFFFF6
      F6FFFFF4F4FFBF933DFFEBCB99FFDFB46CFFDEAE64FFEDEEEEFFE1D6CFFFE5D9
      D1FFE5DAD1FFE2D6CDFFDFD3CCFFDED4CDFFEDEEEEFFDDAE63FFDDB26BFFE7C7
      96FFB88E38FFBFB8B9FF942C00FF000000413535357AE8E8E8FFDEDEDEFFDEDE
      DEFFDFDFDFFFDADADAFF292929FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFB6B6B6FFE5E5E5FFE3E3
      E3FFE4E4E4FFE1E1E1FFE5E5E5FF1A1A1A5A00000000D57B2AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFDFDFFFDFCFCFFFEFDFDFFFFF8F8FFFFE2E2FFFFF2F2FFFFD9
      D9FFFFD3D3FFCAC1ADFF059524FF12BE36FF18C53CFF48DE68FFE7FCEBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFE7FCEBFF48DD
      67FF18C53CFF15C039FF09AA2BFF0120066300000000D57B2AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFDFDFFFDFCFCFFFEFDFDFFFFF8F8FFFFE2E2FF25D331FFB9FE
      DEFFB3FED8FF0BC918FFD3FEE2FFC2F7C5FFCFFEDEFFCDFEF1FFB9FED9FFA5FE
      C4FF89FEA5FF70FE8CFF5CFE77FF4AFE63FF37FB4EFF27F335FF1DE727FF1BC8
      0EFF22C10DFF3EC123FF0EB000FF0000003A00000000D57B2AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFDFDFFFDFCFCFFFEFDFDFFFFF8F8FFFFE2E2FFFFF2F2FFFFD9
      D9FFFFD3D3FFBF8D36FFEBC799FFDFAB60FFDCA75BFFDDBEA1FFF0E9E9FFF0E9
      E9FFF0E9E9FFEFE9E9FFEEE9E9FFEFE9E9FFDDBEA1FFDCA75AFFDDAA5FFFE7C8
      9BFFB88E37FFC1BABBFF942C00FF000000413535357AEDEDEDFFE3E3E3FFE3E3
      E3FFE3E3E3FFE8E8E8FFB8B8B8FF808080FF808080FF808080FF808080FF8080
      80FF808080FF808080FF818181FF818181FF818181FF818181FF818181FF8181
      81FF818181FF818181FF818181FF808080FF9F9F9FFFE5E5E5FFE4E4E4FFE3E3
      E3FFE2E2E2FFE4E4E4FFEAEAEAFF1A1A1A5A00000000D67D2BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFEFEFFFFF8F8FFFFE2E2FFFFF6F6FFFFF6
      F6FFFFF2F2FFCAD7C3FF05992AFF13C23EFF18C743FF51D772FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFF52D9
      73FF18C843FF16C541FF09AD31FF0120086300000000D67D2BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFEFEFFFFF8F8FFFFE2E2FF25D731FFB9FE
      DEFFB3FED8FF44E65BFF5AE467FF9CED9EFFACF9B5FFA1F8B2FF98F7A8FF90F7
      A1FF87F697FF7CF491FF74F484FF79F989FF70FE8CFF3CFE5CFF36FE57FF36FE
      57FF2CF43FFF10C507FF0CB500FF034200A000000000D67D2BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFEFEFFFFF8F8FFFFE2E2FFFFF6F6FFFFF6
      F6FFFFF2F2FFBF923CFFEBCEA3FFDEAB5CFFDAA857FFD9A44EFFD9A047FFD89F
      46FFD8A046FFD89F45FFD89F46FFD9A148FFD9A34DFFDAA755FFDCAA5AFFE7CB
      A0FFB88E37FFC1BBBCFF942C00FF000000413636367AF2F2F2FFE8E8E8FFE8E8
      E8FFE8E8E8FFE8E8E8FFEFEFEFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF1F1F1FFE9E9E9FFE9E9E9FFE4E4
      E4FFE0E0E0FFE7E7E7FFEFEFEFFF1A1A1A5A00000000D77E2BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFEFEFFFFF8F8FFFFE2E2FFFFF8F8FFFFFE
      FEFFFFF8F8FFCAC5B6FF028A29FF10C644FF17CC4AFF38D264FFB5EEC6FFD0F5
      DBFFD4F5DEFFFFFFFFFFFFFFFFFFFFFFFFFFD4F5DEFFD0F4DBFFB5EEC6FF38D3
      65FF17CC4AFF12C946FF059F31FF001B086300000000D77E2BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFEFEFFFFF8F8FFFFE2E2FF27D934FFB9FE
      DEFFB3FED8FF90FDACFF3BCF3FFF6EEA7AFF6EEA77FF6DE775FF69E572FF68E4
      6EFF65E36BFF61E167FF60E063FF1FC727FF66ED72FF68FE82FF38FE59FF36FE
      57FF3CFE5CFF10EE25FF20AF00FF077B00CF00000000D77E2BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFEFEFFFFF8F8FFFFE2E2FFFFF8F8FFFFFE
      FEFFFFF8F8FFBF8F38FFECD1A9FFDAA751FFE6D6B8FFEEEFEFFFEDEAE9FFEDEA
      E8FFEDEEECFFEDEAE9FFEDEAE9FFEDEEECFFEDEAEAFFE6D0B2FFD8A44FFFE8CE
      A5FFB88E36FFC3BDBEFF942C00FF000000413636367AF8F8F8FFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEEEEFFEDEFF1FFEFF1F3FFEFF1F3FFEFF1
      F3FFEFF1F3FFEFF1F3FFEFF1F3FFEFF1F3FFEFF1F3FFEFF1F3FFEFF1F3FFEFF2
      F3FFEFF2F4FFEFF3F4FFEEF1F3FFEEEFEFFFEDEDEDFFEDEDEDFFEDEDEDFFEEEE
      EEFFEFEFEFFFEFEFEFFFF3F3F3FF1A1A1A5A00000000D8812CFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFF8F8FFFFE2E2FFFFF8F8FFFFFE
      FEFFFFFAFAFFCAC6C0FF006621FF0FC94AFF17D052FF16CE51FF16CD51FF16CD
      51FF2AD25FFFFEFEFEFFFEFEFEFFFEFEFEFF2AD25FFF16CD51FF16CE51FF17CF
      51FF17D152FF10CB4BFF017927FF000F056300000000D8812CFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFF8F8FFFFE2E2FF2BD937FFB9FE
      DEFFB3FED8FF93E499FFC4EABFFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFEFFB
      EAFFEBFDE4FFE7FDDEFFE5FBDCFFCDF5C8FF1DC725FF57E761FF76F483FF74F4
      81FF70F27DFF6BEC73FF68D95EFF05A800F600000000D8812CFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFF8F8FFFFE2E2FFFFF8F8FFFFFE
      FEFFFFFAFAFFBF913BFFEED4ADFFDAA244FFEDEFEFFFEEECE6FFEEE9E1FFEDE8
      E0FFEDEAE3FFEDEAE2FFEDE9E1FFEBE9E1FFECE8E2FFECEDEDFFD8A043FFE9D2
      ABFFB88D36FFC5BFC0FF942C00FF000000413636367AFDFDFDFFF4F4F4FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F6F6FFF7ECDFFFEFDABEFFEDD8BEFFEEDA
      C3FFEEDCC6FFEEDDC8FFEEDDC7FFEEDCC5FFEEDAC2FFEED8BDFFEED5B9FFEED0
      B4FFEECBAEFFEEC6AAFFF3D6C4FFF3F1EFFFF5F6F6FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF4F4F4FFF8F8F8FF1A1A1A5A00000000D9822DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFF8F8FFFFE2E2FFFFF8F8FFFFFE
      FEFFFFF8F8FFF2CECEFF70916EFF04AE3FFF14D356FF16D257FF16D157FF16D0
      57FF29D464FFFDFEFDFFFFFFFFFFFDFEFDFF29D464FF16D057FF16D157FF16D3
      58FF15D457FF07BC46FF485816FF0002014400000000D9822DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFF8F8FFFFE2E2FF2DD93DFFB9FE
      DEFFB3FED8FF9EF3B0FF8FD087FFD5F0CFFFF5F5F5FFF5F5F5FFF5F5F5FFEFFB
      EAFFEBFDE4FFE7FDDEFFE5FBDCFFE1F6D9FFCBF2C5FF59DB5CFF5ADA5DFF54D8
      57FF38BB33FF6DC165FF527300FF045B00B300000000D9822DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFF8F8FFFFE2E2FFFFF8F8FFFFFE
      FEFFFFF8F8FFBF8D37FFF0D2AFFFDA9A37FFEEE8E6FF878487FFA69FA1FFEEE4
      D9FF868484FFA7A1A2FFA5A3A4FFECE7DDFFA29C9FFFEBE5E4FFD89E3BFFECD5
      B2FFB88E37FFC6C1C1FF952C00FF000000413636367AFFFFFFFFFEFEFEFFFDFD
      FDFFFDFDFDFFFDFDFDFFFEFFFFFFFFF6EDFFE1A974FFC88844FFC98F4FFFC993
      57FFC9955CFFC9975FFFC9965EFFC9955BFFC99254FFC98E4DFFC98744FFC97D
      3AFFC97430FFC86821FFD87537FFF5D4C2FFFEFFFFFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFF1A1A1A5A00000000DA832EFFF9FFFFFFECFD
      FCFFF9F7F7FFFFF5F5FFFFF5F5FFFFF6F6FFFFF6F6FFFFE2E2FFFFF8F8FFFFFE
      FEFFFFFAFAFFFFEEEEFFB7AEAAFF1E7B40FF07C550FF15D75FFF16D55FFF16D4
      5EFF1FD464FF93EAB5FFB4F1CCFF93EAB5FF1FD464FF16D45EFF16D660FF17DA
      61FF0BCD55FF1B8D46FF742F03FF0000003A00000000DA832EFFF9FFFFFFECFD
      FCFFF9F7F7FFFFF5F5FFFFF5F5FFFFF6F6FFFFF6F6FFFFE2E2FF30DA40FFB9FE
      DEFFB3FED8FFABFED2FFA1FEC4FF8ADF8CFFA0D697FFE6FDE2FFF5F5F5FFEFFB
      EAFFEBFDE4FFE7FDDEFFE5FBDCFFE1F6D9FFDFF6D5FFDBF3D2FFE4F9DCFF85CC
      76FFBBD6B1FFE4DCDDFFA43100FF0000003A00000000DA832EFFF9FFFFFFECFD
      FCFFF9F7F7FFFFF5F5FFFFF5F5FFFFF6F6FFFFF6F6FFFFE2E2FFFFF8F8FFFFFE
      FEFFFFFAFAFFBF923AFFF3DCBCFFA37128FFEFECE9FFEFE8DDFFEFE5DBFFEDE3
      D9FFEEE5DBFFEDE4DAFFEDE4DAFFECE4D9FFEBE3D9FFEEE9E7FFA17228FFEEDB
      BCFFB88E37FFC0B9BAFF952C00FF000000413636367AFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDECDFFFDC9961FFD69A63FFD9A46DFFD9A8
      72FFD9AB76FFD9AB77FFD9AB77FFD8A873FFD9A770FFD9A26BFFD99B65FFD994
      5DFFD98C54FFD8824AFFD77134FFF0C0A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1A5A00000000DA852FFFECFFFEFF9CF8
      F6FFECD9D9FFFFD4D4FFFFD4D4FFFFD9D9FFFFF2F2FFFFE2E2FFFFF8F8FFFFFE
      FEFFFFF8F8FFFFD9D9FFFFD3D3FFBFADA4FF1A9047FF09D35AFF13D962FF16DA
      65FF16D864FF16D763FF16D763FF16D764FF16D864FF16DB65FF15DD65FF0CD8
      5EFF1AA753FFACBFB1FFA43100FF0000003A00000000DA852FFFECFFFEFF9CF8
      F6FFECD9D9FFFFD4D4FFFFD4D4FFFFD9D9FFFFF2F2FFFFE2E2FF31DB41FFB9FE
      DEFFB3FED8FFABFED2FFA5FECBFF9FFEC5FF87F49CFF71CB6BFFC4E8BBFFF0FB
      ECFFEBFDE4FFE7FDDEFFE5FBDCFFE1F6D9FFDFF6D5FFDEF4D5FFBBE8B3FF7EC6
      74FFD3E1CAFFE6DEDFFFA43100FF0000003A00000000DA852FFFECFFFEFF9CF8
      F6FFECD9D9FFFFD4D4FFFFD4D4FFFFD9D9FFFFF2F2FFFFE2E2FFFFF8F8FFFFFE
      FEFFFFF8F8FFBF8D36FFF5DDC1FF835522FFF2ECECFF898787FF898383FFA8A1
      A1FFA6A4A4FFEBDDD2FF868080FFA7A5A5FFA6A0A1FFF2ECECFF815A27FFF1E0
      C5FFBA8F37FFC6BFC0FF972D00FF000000403737377AFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE7DAFFEFAF81FFEBB383FFE8B380FFE8B7
      84FFE7B986FFE7BB88FFE8BB89FFEDC294FFE9B786FFE7B07CFFE7AB77FFE7A3
      71FFE79C69FFEA9A6AFFED9262FFF1C1AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1818185700000000DB8630FFF5F7F7FFE2E3
      E4FFF5E7E8FFFFEDEDFFFFF3F3FFFFF6F6FFFFF6F6FFFFE2E2FFFFF6F6FFFFF6
      F6FFFFF2F2FFFFEDEDFFFFEBEBFFFFEBEBFFDEDED6FF1E7D45FF02B64EFF0DD5
      61FF13DF69FF13DE69FF14DE69FF13DF69FF14E169FF0EDA64FF03BE51FF1F91
      4FFFDEEFE4FFE7E0E1FFA43100FF0000003A00000000DB8630FFF5F7F7FFE2E3
      E4FFF5E7E8FFFFEDEDFFFFF3F3FFFFF6F6FFFFF6F6FFFFE2E2FF1DCD2DFF62EA
      72FF60EA70FF5AEA6BFF54E865FF4EE860FF15C922FFFAF7F7FFBCDDB4FFA0D6
      93FFDAF6D3FFE8FDE0FFE5FBDCFFE1F6D9FFDFF6D5FFE4F9DCFF78C468FFE9E7
      E0FFFFFEFEFFE7E0E1FFA43100FF0000003A00000000DB8630FFF5F7F7FFE2E3
      E4FFF5E7E8FFFFEDEDFFFFF3F3FFFFF6F6FFFFF6F6FFFFE2E2FFFFF6F6FFFFF6
      F6FFFFF2F2FFC1923BFFF6E6D0FFD99329FFF5F3F3FFEAE0D5FFEADFD4FFEADF
      D3FFE9DED3FFE8DCD1FFEADED3FFEADFD3FFE8DED3FFF5F4F4FFD8952AFFF4E6
      D1FFBD923AFFCFC9CAFF9A2E00FF0000003F24242463FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE4D7FFDE9766FFCC8F5EFFC98F5DFFCE93
      5DFFD4955AFFD4975CFFD4985DFFD99F69FFD4945AFFD48D51FFD4884CFFD482
      46FFD3783CFFD5753AFFDF7B47FFEFBEA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFCFCFF0E0E0E3E00000000DC8830FFF5E7E9FFC979
      83FFF5C2C3FFFFDADAFFFFF8F8FFFFFEFEFFFFF8F8FFFFE3E3FFFFF2F2FFFFD9
      D9FFFFD3D3FFFFD3D3FFFFD3D3FFFFD4D4FFFFDADAFFDBD7D6FF6F927EFF2387
      4EFF00903FFF00A348FF02B24FFF01A549FF009440FF249053FF6F9A82FFDBDD
      DBFFFFFEFEFFE9E2E3FFA43100FF0000003A00000000DC8830FFF5E7E9FFC979
      83FFF5C2C3FFFFDADAFFFFF8F8FFFFFEFEFFFFF8F8FFFFE3E3FFFFF2F2FFFFD9
      D9FFFFD3D3FFFFD3D3FFFFD3D3FFFFD4D4FFFFDADAFFFFF9F9FFFFFFFFFFE2EB
      DCFF94CD88FFBAE2AFFFEAFDE2FFE1F6D9FFE5F9DEFF97D58AFFC8DEBEFFFFFE
      FEFFFFFEFEFFE9E2E3FFA43100FF0000003A00000000DC8830FFF5E7E9FFC979
      83FFF5C2C3FFFFDADAFFFFF8F8FFFFFEFEFFFFF8F8FFFFE3E3FFFFF2F2FFFFD9
      D9FFFFD3D3FFC38F39FFFAE3CAFFF6DEC2FFF9F2F2FFF9F8F8FFF9F9F9FFF9F9
      F9FFF9F7F7FFF9F3F3FFF9F8F8FFF9F9F9FFF9F9F9FFF9F9F9FFF6E6CAFFF9EA
      D2FFC0953FFFDBD4D5FF9E2F00FF0000003C0707072EF4F4F4FDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8DED0FFE3A37EFFD3AB93FFD3AE96FFDAB2
      95FFE6B792FFE5B691FFE4B590FFE3B38CFFE4B18CFFE4AE89FFE4AB86FFE5A8
      84FFE7A885FFECAD8EFFEBA07CFFECBBA2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC5C5C5E40000001100000000DD8931FFF6F6F0FFE2E1
      CDFFF6E7E0FFFFEDEDFFFFF3F3FFFFF7F7FFFFF6F6FFFFE3E3FFFFF6F6FFFFF6
      F6FFFFF3F3FFFFEDEDFFFFEBEBFFFFEDEDFFFFF5F5FFFFFAFAFFFFF6F6FFCFC8
      C8FFB8C1B9FFB8C9BAFFB8D3C0FFB8D2C1FFB8C1B8FFCFCAC8FFFFFCFCFFFFFE
      FEFFFFFEFEFFEBE4E5FFA43100FF0000003A00000000DD8931FFF6F6F0FFE2E1
      CDFFF6E7E0FFFFEDEDFFFFF3F3FFFFF7F7FFFFF6F6FFFFE3E3FFFFF6F6FFFFF6
      F6FFFFF3F3FFFFEDEDFFFFEBEBFFFFEDEDFFFFF5F5FFFFFAFAFFFFF6F6FFFFF6
      F6FFFFF8F8FFC0DEB8FF92CE86FFCEEFC8FFD2F1CCFF99CE8CFFFFFCFCFFFFFE
      FEFFFFFEFEFFEBE4E5FFA43100FF0000003A00000000DD8931FFF6F6F0FFE2E1
      CDFFF6E7E0FFFFEDEDFFFFF3F3FFFFF7F7FFFFF6F6FFFFE3E3FFFFF6F6FFFFF6
      F6FFFFF3F3FF786037FFC4953EFFC29239FFC29238FFC29337FFC29236FFC292
      36FFC29337FFC29135FFC29236FFC29337FFC29236FFC29238FFC2953CFFC398
      41FF776339FFE5DEDFFFA23000FF0000003B000000016E6E6EA8FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DBCEFFEEB69DFFEEC2AFFFEEC2AFFFEFC6
      B1FFEFC8AFFFEEC5ACFFEDC3A9FFECC2A7FFECC0A5FFEDBFA4FFEEBEA4FFEFBD
      A4FFF0BDA5FFF0BCA5FFEFB499FFEBBFA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF393939780000000000000000DE8B32FFEDFDE7FF9DF0
      79FFEDD8C2FFFFD4D4FFFFD4D4FFFFDADAFFFFF3F3FFFFE3E3FFFFF8F8FFFFFF
      FFFFFFF9F9FFFFD9D9FFFFD4D4FFFFD9D9FFFFF9F9FFFFF8F8FFFFD9D9FFFFD9
      D9FFFFF3F3FFFFD9D9FFFFD9D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF8F8FFFFFE
      FEFFFFFEFEFFECE6E7FFA43100FF0000003A00000000DE8B32FFEDFDE7FF9DF0
      79FFEDD8C2FFFFD4D4FFFFD4D4FFFFDADAFFFFF3F3FFFFE3E3FFFFF8F8FFFFFF
      FFFFFFF9F9FFFFD9D9FFFFD4D4FFFFD9D9FFFFF9F9FFFFF8F8FFFFD9D9FFFFD9
      D9FFFFF3F3FFFFD9D9FFE8EDE3FF98CF8CFF85C777FFFFD9D9FFFFF8F8FFFFFE
      FEFFFFFEFEFFECE6E7FFA43100FF0000003A00000000DE8B32FFEDFDE7FF9DF0
      79FFEDD8C2FFFFD4D4FFFFD4D4FFFFDADAFFFFF3F3FFFFE3E3FFFFF8F8FFFFFF
      FFFFFFF9F9FFFFD9D9FFFFD4D4FFFFD9D9FFFFF9F9FFFFF8F8FFFFD9D9FFFFD9
      D9FFFFF3F3FFFFD9D9FFFFD9D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF8F8FFFFFE
      FEFFFFFEFEFFECE6E7FFA43100FF0000003A000000000000000E4545457E9696
      96C2DBDBDBEEFDFDFDFFFFFFFFFFF7D7C8FFF3C4AFFFF9DACAFFF8D8C8FFF7D6
      C5FFF6D4C3FFF6D4C2FFF6D4C2FFF6D2C1FFF6D1BFFFF5CFBDFFF6CEBBFFF5CD
      BAFFF5CDB9FFF5CDBAFFF4C6B0FFEAC0AAFFFFFFFFFFF2F2F3FFE7E7E7FCB8B8
      B8DC7A7A7AAD2F2F2F68000000030000000000000000DF8C33FFF9FCF5FFEDF3
      DDFFF9EDE5FFFFEBEBFFFFEDEDFFFFF5F5FFFFF7F7FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFFBFBFFFFEFEFFFFFEDEDFFFEF4F4FFFEFCFCFFFFFAFAFFFFEEEEFFFFEF
      EFFFFFF6F6FFFFEFEFFFFFEEEEFFFFF6F6FFFFEEEEFFFFEEEEFFFFFAFAFFFFFE
      FEFFFFFEFEFFE3D9DAFFA43100FF0000003A00000000DF8C33FFF9FCF5FFEDF3
      DDFFF9EDE5FFFFEBEBFFFFEDEDFFFFF5F5FFFFF7F7FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFFBFBFFFFEFEFFFFFEDEDFFFEF4F4FFFEFCFCFFFFFAFAFFFFEEEEFFFFEF
      EFFFFFF6F6FFFFEFEFFFFFEEEEFFFFF6F6FFFFEEEEFFFFEEEEFFFFFAFAFFFFFE
      FEFFFFFEFEFFE3D9DAFFA43100FF0000003A00000000DF8C33FFF9FCF5FFEDF3
      DDFFF9EDE5FFFFEBEBFFFFEDEDFFFFF5F5FFFFF7F7FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFFBFBFFFFEFEFFFFFEDEDFFFEF4F4FFFEFCFCFFFFFAFAFFFFEEEEFFFFEF
      EFFFFFF6F6FFFFEFEFFFFFEEEEFFFFF6F6FFFFEEEEFFFFEEEEFFFFFAFAFFFFFE
      FEFFFFFEFEFFE3D9DAFFA43100FF0000003A0000000000000000000000000000
      0000030303185A5A5AA2EAEEEFFFDFC1B3FFEDBBA3FFF4D2C3FFF5D1C1FFF7D4
      C5FFF8D8C9FFF8DACCFFF9DBCDFFF9DACCFFF9DACCFFF9D9CAFFF8D6C7FFF8D3
      C2FFF6CFBEFFF3CEBDFFEFBCA5FFDCB39FFFEFF3F4FF8D8D8DCA0808082E0000
      00080000000000000000000000000000000000000000E08E34FFFFF9F9FFFFDA
      DAFFFFD4D4FFFFD4D4FFFFDADAFFFFF9F9FFFFF9F9FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFF9F9FFFFDADAFFFFDADAFFFFF9F9FFFEFEFEFFFEF8F8FFFFD9D9FFFFD9
      D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF8F8FFFFFE
      FEFFFFFEFEFFE4DCDDFFA43100FF0000003A00000000E08E34FFFFF9F9FFFFDA
      DAFFFFD4D4FFFFD4D4FFFFDADAFFFFF9F9FFFFF9F9FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFF9F9FFFFDADAFFFFDADAFFFFF9F9FFFEFEFEFFFEF8F8FFFFD9D9FFFFD9
      D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF8F8FFFFFE
      FEFFFFFEFEFFE4DCDDFFA43100FF0000003A00000000E08E34FFFFF9F9FFFFDA
      DAFFFFD4D4FFFFD4D4FFFFDADAFFFFF9F9FFFFF9F9FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFF9F9FFFFDADAFFFFDADAFFFFF9F9FFFEFEFEFFFEF8F8FFFFD9D9FFFFD9
      D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF8F8FFFFFE
      FEFFFFFEFEFFE4DCDDFFA43100FF0000003A0000000000000000000000000000
      0000000000003D3D3D84F3F3F3FFCACAC9FFF8EEEAFFF4E3DBFFF3DCD2FFF1D7
      CBFFF0D8CDFFF0DAD1FFEFDBD2FFEDD9D0FFEBD8CEFFEAD5CBFFE6CEC2FFE5CF
      C5FFE4CFC6FFE2D0C8FFE0D4CEFFD9D7D6FFF3F3F3FF747474B0000000000000
      00000000000000000000000000000000000000000000E18F35FFFBF8FCFFF3E5
      F2FFFBE8ECFFFFEBEBFFFFEDEDFFFFF5F5FFFFF7F7FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFFBFBFFFFEFEFFFFFEDEDFFFFF5F5FFFFFDFDFFFEFAFAFFFEEEEEFFFFEE
      EEFFFFF6F6FFFFEEEEFFFFEEEEFFFFF6F6FFFFEEEEFFFFEEEEFFFFFAFAFFFFFE
      FEFFFFFEFEFFE6DEDFFFA43100FF0000003A00000000E18F35FFFBF8FCFFF3E5
      F2FFFBE8ECFFFFEBEBFFFFEDEDFFFFF5F5FFFFF7F7FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFFBFBFFFFEFEFFFFFEDEDFFFFF5F5FFFFFDFDFFFEFAFAFFFEEEEEFFFFEE
      EEFFFFF6F6FFFFEEEEFFFFEEEEFFFFF6F6FFFFEEEEFFFFEEEEFFFFFAFAFFFFFE
      FEFFFFFEFEFFE6DEDFFFA43100FF0000003A00000000E18F35FFFBF8FCFFF3E5
      F2FFFBE8ECFFFFEBEBFFFFEDEDFFFFF5F5FFFFF7F7FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFFBFBFFFFEFEFFFFFEDEDFFFFF5F5FFFFFDFDFFFEFAFAFFFEEEEEFFFFEE
      EEFFFFF6F6FFFFEEEEFFFFEEEEFFFFF6F6FFFFEEEEFFFFEEEEFFFFFAFAFFFFFE
      FEFFFFFEFEFFE6DEDFFFA43100FF0000003A0000000000000000000000000000
      00000000000042424289FFFFFFFFD8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFFFFFFFAFDFDFFF7FAFBFFF4F7F8FFF2F4F6FFEFF3F4FFEDF0
      F2FFEAEEEFFFE8EBECFFE7E9EAFFDCDDDDFFF3F3F3FF787878B4000000000000
      00000000000000000000000000000000000000000000E29035FFF3EFFCFFBFA2
      E8FFF3C9D6FFFFD4D4FFFFD4D4FFFFDADAFFFFF3F3FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFF9F9FFFFDADAFFFFD4D4FFFFDADAFFFFF9F9FFFFF9F9FFFFD9D9FFFFD9
      D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF8F8FFFFFE
      FEFFFFFEFEFFE7E0E1FFA43100FF0000003A00000000E29035FFF3EFFCFFBFA2
      E8FFF3C9D6FFFFD4D4FFFFD4D4FFFFDADAFFFFF3F3FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFF9F9FFFFDADAFFFFD4D4FFFFDADAFFFFF9F9FFFFF9F9FFFFD9D9FFFFD9
      D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF8F8FFFFFE
      FEFFFFFEFEFFE7E0E1FFA43100FF0000003A00000000E29035FFF3EFFCFFBFA2
      E8FFF3C9D6FFFFD4D4FFFFD4D4FFFFDADAFFFFF3F3FFFFE3E3FFFFF9F9FFFFFF
      FFFFFFF9F9FFFFDADAFFFFD4D4FFFFDADAFFFFF9F9FFFFF9F9FFFFD9D9FFFFD9
      D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF2F2FFFFD9D9FFFFD9D9FFFFF8F8FFFFFE
      FEFFFFFEFEFFE7E0E1FFA43100FF0000003A0000000000000000000000000000
      00000000000042424289FFFFFFFFDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDFFFBFBFBFFF8F8F8FFF5F5F5FFF3F3F3FFF0F0F0FFEEEE
      EEFFEBEBEBFFE9E9E9FFE8E8E8FFDDDDDDFFF3F3F3FF787878B4000000000000
      00000000000000000000000000000000000000000000E39236FFFBF8FCFFF3E5
      F2FFFBE8ECFFFFEDEDFFFFF3F3FFFFF7F7FFFFF7F7FFFFE3E3FFFFF7F7FFFFF7
      F7FFFFF3F3FFFFEDEDFFFFEBEBFFFFEDEDFFFFF5F5FFFFFBFBFFFFF7F7FFFEF6
      F6FFFFF8F8FFFFEEEEFFFFEEEEFFFFF8F8FFFFF6F6FFFFF6F6FFFFFCFCFFFFFE
      FEFFFFFEFEFFE9E2E3FFA43100FF0000003A00000000E39236FFFBF8FCFFF3E5
      F2FFFBE8ECFFFFEDEDFFFFF3F3FFFFF7F7FFFFF7F7FFFFE3E3FFFFF7F7FFFFF7
      F7FFFFF3F3FFFFEDEDFFFFEBEBFFFFEDEDFFFFF5F5FFFFFBFBFFFFF7F7FFFEF6
      F6FFFFF8F8FFFFEEEEFFFFEEEEFFFFF8F8FFFFF6F6FFFFF6F6FFFFFCFCFFFFFE
      FEFFFFFEFEFFE9E2E3FFA43100FF0000003A00000000E39236FFFBF8FCFFF3E5
      F2FFFBE8ECFFFFEDEDFFFFF3F3FFFFF7F7FFFFF7F7FFFFE3E3FFFFF7F7FFFFF7
      F7FFFFF3F3FFFFEDEDFFFFEBEBFFFFEDEDFFFFF5F5FFFFFBFBFFFFF7F7FFFEF6
      F6FFFFF8F8FFFFEEEEFFFFEEEEFFFFF8F8FFFFF6F6FFFFF6F6FFFFFCFCFFFFFE
      FEFFFFFEFEFFE9E2E3FFA43100FF0000003A0000000000000000000000000000
      00000000000042424289FFFFFFFFE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFDFFFAFAFAFFF7F7F7FFF4F4F4FFF2F2F2FFEFEF
      EFFFEDEDEDFFEAEAEAFFEAEAEAFFDDDDDDFFF2F2F2FF787878B4000000000000
      00000000000000000000000000000000000000000000E49337FFFFF9F9FFFFDA
      DAFFFFD4D4FFFFDADAFFFFF9F9FFFFFFFFFFFFF9F9FFFFE3E3FFFFF3F3FFFFDA
      DAFFFFD4D4FFFFD4D4FFFFD4D4FFFFD4D4FFFFDADAFFFFF9F9FFFFFFFFFFFFFF
      FFFFFEF8F8FFFFD9D9FFFFD9D9FFFFF8F8FFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
      FEFFFFFEFEFFEBE4E5FFA43100FF0000003A00000000E49337FFFFF9F9FFFFDA
      DAFFFFD4D4FFFFDADAFFFFF9F9FFFFFFFFFFFFF9F9FFFFE3E3FFFFF3F3FFFFDA
      DAFFFFD4D4FFFFD4D4FFFFD4D4FFFFD4D4FFFFDADAFFFFF9F9FFFFFFFFFFFFFF
      FFFFFEF8F8FFFFD9D9FFFFD9D9FFFFF8F8FFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
      FEFFFFFEFEFFEBE4E5FFA43100FF0000003A00000000E49337FFFFF9F9FFFFDA
      DAFFFFD4D4FFFFDADAFFFFF9F9FFFFFFFFFFFFF9F9FFFFE3E3FFFFF3F3FFFFDA
      DAFFFFD4D4FFFFD4D4FFFFD4D4FFFFD4D4FFFFDADAFFFFF9F9FFFFFFFFFFFFFF
      FFFFFEF8F8FFFFD9D9FFFFD9D9FFFFF8F8FFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
      FEFFFFFEFEFFEBE4E5FFA43100FF0000003A0000000000000000000000000000
      00000000000042424289FFFFFFFFE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFF8F8F8FFF6F6F6FFF3F3F3FFF0F0
      F0FFEFEFEFFFEBEBEBFFEAEAEAFFDEDEDEFFF2F2F2FF787878B4000000000000
      00000000000000000000000000000000000000000000E59438FFFFFDFDFFFFF7
      F7FFFFF5F5FFFFF7F7FFFFFDFDFFFFFFFFFFFFF9F9FFFFE3E3FFFFF7F7FFFFF7
      F7FFFFF5F5FFFFF5F5FFFFF5F5FFFFF5F5FFFFF7F7FFFFFDFDFFFFFFFFFFFFFF
      FFFFFFFDFDFFFEF6F6FFFEF5F5FFFDFAFAFFFDFBFBFFFFFEFEFFFFFEFEFFFFFE
      FEFFFFFEFEFFECE6E7FFA43100FF0000003A00000000E59438FFFFFDFDFFFFF7
      F7FFFFF5F5FFFFF7F7FFFFFDFDFFFFFFFFFFFFF9F9FFFFE3E3FFFFF7F7FFFFF7
      F7FFFFF5F5FFFFF5F5FFFFF5F5FFFFF5F5FFFFF7F7FFFFFDFDFFFFFFFFFFFFFF
      FFFFFFFDFDFFFEF6F6FFFEF5F5FFFDFAFAFFFDFBFBFFFFFEFEFFFFFEFEFFFFFE
      FEFFFFFEFEFFECE6E7FFA43100FF0000003A00000000E59438FFFFFDFDFFFFF7
      F7FFFFF5F5FFFFF7F7FFFFFDFDFFFFFFFFFFFFF9F9FFFFE3E3FFFFF7F7FFFFF7
      F7FFFFF5F5FFFFF5F5FFFFF5F5FFFFF5F5FFFFF7F7FFFFFDFDFFFFFFFFFFFFFF
      FFFFFFFDFDFFFEF6F6FFFEF5F5FFFDFAFAFFFDFBFBFFFFFEFEFFFFFEFEFFFFFE
      FEFFFFFEFEFFECE6E7FFA43100FF0000003A0000000000000000000000000000
      0000000000003F3F3F8AFFFFFFFFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFAFAFAFFF8F8F8FFF5F5F5FFF2F2
      F2FFEFEFEFFFEDEDEDFFECECECFFDFDFDFFFF1F1F1FF787878B4000000000000
      00000000000000000000000000000000000000000000E59538FFFFE1BFFFFFE0
      BDFFFFDEBBFFFFDBB9FFFFD9B7FFFFD6B4FFFFD4B1FFFFD1AFFFFFCEACFFFFCB
      A9FFFFC8A6FFFFC5A3FFFFC2A0FFFFBF9DFFFFBC9AFFFFB996FFFFB693FFFFB3
      90FFFFB08DFFFFAC89FFFFA885FFFEA582FFFEA27EFFFDA17DFFFDA17DFFFDA0
      7CFFFCA07CFFE38C75FFA43100FF0000003A00000000E59538FFFFE1BFFFFFE0
      BDFFFFDEBBFFFFDBB9FFFFD9B7FFFFD6B4FFFFD4B1FFFFD1AFFFFFCEACFFFFCB
      A9FFFFC8A6FFFFC5A3FFFFC2A0FFFFBF9DFFFFBC9AFFFFB996FFFFB693FFFFB3
      90FFFFB08DFFFFAC89FFFFA885FFFEA582FFFEA27EFFFDA17DFFFDA17DFFFDA0
      7CFFFCA07CFFE38C75FFA43100FF0000003A00000000E59538FFFFE1BFFFFFE0
      BDFFFFDEBBFFFFDBB9FFFFD9B7FFFFD6B4FFFFD4B1FFFFD1AFFFFFCEACFFFFCB
      A9FFFFC8A6FFFFC5A3FFFFC2A0FFFFBF9DFFFFBC9AFFFFB996FFFFB693FFFFB3
      90FFFFB08DFFFFAC89FFFFA885FFFEA582FFFEA27EFFFDA17DFFFDA17DFFFDA0
      7CFFFCA07CFFE38C75FFA43100FF0000003A0000000000000000000000000000
      00000000000039393980FCFCFCFFE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFF9F9F9FFF7F7F7FFF3F3
      F3FFF1F1F1FFEFEFEFFFEEEEEEFFDFDFDFFFF1F1F1FF787878B4000000000000
      00000000000000000000000000000000000000000000E59538FFFFC884FFFFC4
      80FFFFC07AFFFFBB76FFFFB670FFFFB16BFFFFAB66FFFFA660FFFFA05AFFFF9A
      54FFFF944EFFFF8E48FFFF8842FFFF823BFFFF7A35FFFF742FFFFF6E28FFFF67
      22FFFF611BFFFF5A15FFFF540EFFFF4E08FFFF4802FFFF4802FFFF4802FFFF48
      02FFFF4802FFD92F02FFA43100FF0000003A00000000E59538FFFFC884FFFFC4
      80FFFFC07AFFFFBB76FFFFB670FFFFB16BFFFFAB66FFFFA660FFFFA05AFFFF9A
      54FFFF944EFFFF8E48FFFF8842FFFF823BFFFF7A35FFFF742FFFFF6E28FFFF67
      22FFFF611BFFFF5A15FFFF540EFFFF4E08FFFF4802FFFF4802FFFF4802FFFF48
      02FFFF4802FFD92F02FFA43100FF0000003A00000000E59538FFFFC884FFFFC4
      80FFFFC07AFFFFBB76FFFFB670FFFFB16BFFFFAB66FFFFA660FFFFA05AFFFF9A
      54FFFF944EFFFF8E48FFFF8842FFFF823BFFFF7A35FFFF742FFFFF6E28FFFF67
      22FFFF611BFFFF5A15FFFF540EFFFF4E08FFFF4802FFFF4802FFFF4802FFFF48
      02FFFF4802FFD92F02FFA43100FF0000003A0000000000000000000000000000
      000000000000010101180C0C0C3C919191CFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFBFBFBFFF8F8F8FFF5F5
      F5FFF3F3F3FFF0F0F0FFEFEFEFFFE0E0E0FFF1F1F1FF787878B4000000000000
      00000000000000000000000000000000000000000000E59538FFFFCE8AFFFFC9
      85FFFFC580FFFFBF7AFFFFBA75FFFFB56FFFFFAF69FFFFA963FFFFA35DFFFF9D
      57FFFF9751FFFF914BFFFF8B44FFFF843EFFFF7D38FFFF7631FFFF702BFFFF6A
      24FFFF631DFFFF5D17FFFF5610FFFF4F0AFFFF4903FFFF4802FFFF4802FFFF48
      02FFFF4802FFD92F02FFA43100FF0000003400000000E59538FFFFCE8AFFFFC9
      85FFFFC580FFFFBF7AFFFFBA75FFFFB56FFFFFAF69FFFFA963FFFFA35DFFFF9D
      57FFFF9751FFFF914BFFFF8B44FFFF843EFFFF7D38FFFF7631FFFF702BFFFF6A
      24FFFF631DFFFF5D17FFFF5610FFFF4F0AFFFF4903FFFF4802FFFF4802FFFF48
      02FFFF4802FFD92F02FFA43100FF0000003400000000E59538FFFFCE8AFFFFC9
      85FFFFC580FFFFBF7AFFFFBA75FFFFB56FFFFFAF69FFFFA963FFFFA35DFFFF9D
      57FFFF9751FFFF914BFFFF8B44FFFF843EFFFF7D38FFFF7631FFFF702BFFFF6A
      24FFFF631DFFFF5D17FFFF5610FFFF4F0AFFFF4903FFFF4802FFFF4802FFFF48
      02FFFF4802FFD92F02FFA43100FF000000340000000000000000000000000000
      0000000000000000000000000000818181BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF9F9F9FFF7F7
      F7FFF4F4F4FFF1F1F1FFF0F0F0FFE0E0E0FFF0F0F0FF777777B4000000000000
      00000000000000000000000000000000000000000000E59538FFF5BB6DFFFFCE
      8AFFFFC985FFFFC480FFFFBE79FFFFB873FFFFB26DFFFFAC67FFFFA660FFFFA0
      5AFFFF9A54FFFF934DFFFF8D47FFFF8640FFFF803AFFFF7933FFFF722DFFFF6B
      26FFFF651FFFFF5E19FFFF5812FFFF510BFFFF4A04FFFF4802FFFF4802FFFF48
      02FFFD4602FFC53001FFA43100FF0000002000000000E59538FFF5BB6DFFFFCE
      8AFFFFC985FFFFC480FFFFBE79FFFFB873FFFFB26DFFFFAC67FFFFA660FFFFA0
      5AFFFF9A54FFFF934DFFFF8D47FFFF8640FFFF803AFFFF7933FFFF722DFFFF6B
      26FFFF651FFFFF5E19FFFF5812FFFF510BFFFF4A04FFFF4802FFFF4802FFFF48
      02FFFD4602FFC53001FFA43100FF0000002000000000E59538FFF5BB6DFFFFCE
      8AFFFFC985FFFFC480FFFFBE79FFFFB873FFFFB26DFFFFAC67FFFFA660FFFFA0
      5AFFFF9A54FFFF934DFFFF8D47FFFF8640FFFF803AFFFF7933FFFF722DFFFF6B
      26FFFF651FFFFF5E19FFFF5812FFFF510BFFFF4A04FFFF4802FFFF4802FFFF48
      02FFFD4602FFC53001FFA43100FF000000200000000000000000000000000000
      0000000000000000000000000001929292C8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFE9E9E9FFEFEFEFFF787878B5000000000000
      0000000000000000000000000000000000000000000056381461E59538FFEBA4
      4DFFE9A04AFFE89B47FFE69744FFE49341FFE28F3EFFE08A3AFFDE8637FFDD82
      34FFDB7C31FFD9782DFFD7732AFFD56F27FFD36A24FFD26620FFD0621DFFCE5D
      1AFFCC5917FFCA5413FFC85010FFC74B0DFFC54709FFC34307FFC14005FFBF3E
      04FFBB3902FFA53200FF3E12006E0000000A0000000056381461E59538FFEBA4
      4DFFE9A04AFFE89B47FFE69744FFE49341FFE28F3EFFE08A3AFFDE8637FFDD82
      34FFDB7C31FFD9782DFFD7732AFFD56F27FFD36A24FFD26620FFD0621DFFCE5D
      1AFFCC5917FFCA5413FFC85010FFC74B0DFFC54709FFC34307FFC14005FFBF3E
      04FFBB3902FFA53200FF3E12006E0000000A0000000056381461E59538FFEBA4
      4DFFE9A04AFFE89B47FFE69744FFE49341FFE28F3EFFE08A3AFFDE8637FFDD82
      34FFDB7C31FFD9782DFFD7732AFFD56F27FFD36A24FFD26620FFD0621DFFCE5D
      1AFFCC5917FFCA5413FFC85010FFC74B0DFFC54709FFC34307FFC14005FFBF3E
      04FFBB3902FFA53200FF3E12006E0000000A0000000000000000000000000000
      00000000000000000000000000004A4A4A878F8F8FBF8E8E8EBF8E8E8EBF8E8E
      8EBF8E8E8EBF8E8E8EBF8E8E8EBF8E8E8EBF8E8E8EBF8E8E8EBF8E8E8EBF8E8E
      8EBF8E8E8EBF8E8E8EBF8D8D8DBDA7A7A7D5FFFFFFFF747474AB000000000000
      00000000000000000000000000000000000000000000000000002B1C0A313825
      0D4239250E4438240D4438230D4436220B4436200B44361F0A44351E0A44351E
      0A44341C0A44331B0944331A0944321A07443118064431180644311606443016
      06442F1605442E1405442E1303442D1202442D1202442C1102442B0F02442B0E
      02442A0E01441F090034000000030000000100000000000000002B1C0A313825
      0D4239250E4438240D4438230D4436220B4436200B44361F0A44351E0A44351E
      0A44341C0A44331B0944331A0944321A07443118064431180644311606443016
      06442F1605442E1405442E1303442D1202442D1202442C1102442B0F02442B0E
      02442A0E01441F090034000000030000000100000000000000002B1C0A313825
      0D4239250E4438240D4438230D4436220B4436200B44361F0A44351E0A44351E
      0A44341C0A44331B0944331A0944321A07443118064431180644311606443016
      06442F1605442E1405442E1303442D1202442D1202442C1102442B0F02442B0E
      02442A0E01441F09003400000003000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000C2929295207070725000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000E00000000100010000000000000E00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000008000000100000000
      FFFFFFFF00000000E000000300000000FFFFFFFF00000000F000000F00000000
      F3FFFFFF00000000E000000F00000000E01FFFFF00000000E000000F00000000
      E0007FFF00000000E000000F00000000E00003FF00000000E000000F00000000
      E000001F00000000E000000F00000000E000000100000000E000000F00000000
      C000000100000000E000000F00000000C000000000000000E000000F00000000
      C000000000000000E000000F00000000C000000000000000E000000F00000000
      C000000300000000E000000F000000008000000300000000E000000F00000000
      8000000300000000E000000F000000008000000300000000E000000F00000000
      8000000700000000E000000F000000008000000700000000E000000F00000000
      0000000700000000E000000F000000000000000700000000E000000F00000000
      0000000700000000E000000F000000000000000F00000000E000000F00000000
      0000000F00000000E000000F000000008000000F00000000E000000700000000
      FC00000F00000000E000000700000000FFE0000F00000000E000000700000000
      FFFF001F00000000E000000700000000FFFFF81F00000000E000000F00000000
      FFFFFFFF00000000E000000F00000000FFFFFFFF00000000E000000F00000000
      FFFFFFFF00000000FFFFFFFF0000000080000001FFFFFFFFFFFFFFFFFFFFFFFF
      00000000FFFC7FFFF0000007FFF00FFF00000000FFF83FFFF0000007FF8001FF
      00000000FFF00FFFF0000007FE00007F00000000FFE007FFF0000007F800001F
      00000000FFC003FFF0000007F000000F00000000FF8001FFF0000007E0000007
      00000000FF0000FFF0000007C000000300000000FE00007FF0000007C0000003
      00000000FC00003FF00000078000000100000000F000001FF000000780000001
      00000000E0000007F00000078000000100000000C0000003F800000F00000000
      0000000080000001FC00001F000000000000000000000000FF00007F00000000
      0000000000000000FFC001FF000000000000000000000000FFC001FF00000000
      0000000000000000FFC000FF000000000000000000000000FF8000FF00000000
      0000000000000000FF00007F0000000000000000FE00007FFF00007F00000000
      00000000FE00007FFF00007F8000000100000000FE00007FFF00007F80000001
      00000000FE00007FFF00007F8000000300000000FE00007FFF00007FC0000003
      00000000FE00007FFF8000FFE000000700000000FE00007FFF8000FFF000000F
      00000000FE00007FFF8000FFF800001F00000000FE00007FFF8000FFFC00003F
      00000000FE00007FFFC001FFFF0000FF00000000FF0000FFFFE003FFFFE007FF
      80000001FFFFFFFFFFF007FFFFFFFFFF0000000000000000E000000100003FFF
      0000000000000000E000000100003FFF0000000000000000E000000100000000
      0000000000000000E0000001800000000000000000000000E000000180000000
      0000000000000000E0000001800000000000000000000000E000000180000000
      0000000000000000E0000001800000000000000000000000E000000100000000
      0000000000000000E0000001000000000000000000000000E000000100000000
      0000000000000000E0000001800000000000000000000000E0000001C0000000
      0000000000000000E0000001C00000000000000000000000E0000001C0000000
      0000000000000000E0000001C00000000000000000000000F0000003F0000000
      0000000000000000FE03F00FF00000000000000000000000FC03F00FF0000000
      0000000000000000FC03F00FF00000000000000000000000FC01F00FF0000000
      0000000000000000FC01E00FF00000000000000000000000FC00C00FF0000000
      0000000000000000FC00001FF00000000000000000000000FE00001FF0000000
      0000000000000000FE00001FF00000000000000000000000FE00001FF0000000
      0000000000000000FF00003FF00000000000000000000000FF80007FF0000000
      0000000000000000FFC000FFF00000000000000000000000FFE003FFF0000000
      0000000000000000FFFE1FFFF000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object il_16: TImageList
    ColorDepth = cd32Bit
    Left = 344
    Top = 296
    Bitmap = {
      494C01011E002100040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
      00000000000000000000000000000000000000000000000000040000002A0000
      0024000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027100360813708FF8137
      08FF5E4427FF6A6A6AFF6B6B6BFF646464FF797979FF6B6B6BFF626262FF5151
      51FF5E4427FF7C2600FF632602FF421702AF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000060012006500DF001B
      00A20002005C0000001C00000002000000000000000000000000000000000000
      00000000000000000000000000000000000000000000833808FFB54F0CFFB64F
      0DFF5E4427FF676767FF7C2600FF7C2600FFA3A3A3FFA9A9A9FF8F8F8FFF6B6B
      6BFF5E4427FF7C2600FF7B2D02FF762A03FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000C0014009C00FF0093
      00FB005900DD000800820000003E000000120000000100000000000000000000
      000000000000000000000000000000000000000000008F3F09FFBA540EFFBB54
      0EFF5E4427FF626262FF7C2600FF7C2600FFB5B5B5FFC0C0C0FFA0A0A0FF7777
      77FF5E4427FF7C2600FF7B2E03FF762A03FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D001400A500FF00B1
      00FF00A500FE008500F4003A00C6000400720000002700000006000000000000
      0000000000000000000000000000000000000000000092420BFFBF5910FFC05A
      10FF5E4427FF5C5C5CFF7C2600FF7C2600FFC5C5C5FFDADADAFFB7B7B7FF8585
      85FF5E4427FF7C2600FF7D3003FF772B03FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D001400A700FF00B3
      00FF00B300FF00AF00FF009E00FE006200E3001B00A200010047000000130000
      0002000000000000000000000000000000000000000096460CFFC46013FFC562
      14FF5E4427FF575757FF575757FF575757FFC9C9C9FFF3F3F3FFD0D0D0FF9595
      95FF5E4427FF7C2600FF7E3103FF792C04FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D001400A700FF00B3
      00FF00B300FF00B300FF00B300FF00AC00FF008D00F8003A00C60006007E0000
      003A0000000900000000000000000000000000000000994E14FFCA6C21FFCB6E
      24FF91541DFF5E4427FF5E4427FF5E4427FF5E4427FF5E4427FF5E4427FF5E44
      27FF683510FF752C02FF883806FF7B2D04FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D001400A700FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B200FF00A000FE008400F40022
      00AF0001005D000000260000000600000000000000009D571EFFBA682AFFC394
      6DFFC0916BFFBE8E68FFBB8B65FFB98760FFB5825AFFB48058FFB37E57FFB17D
      57FFB07C56FFAF7B56FFA2440EFF7C2E04FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D001400A700FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00A800FF0096
      00FB005F00E1001B00A1000100360000000200000000A0612BFFC38551FFEBEB
      EBFFE7E7E7FFE2E2E2FFDDDDDDFFD9D9D9FFD4D4D4FFD0D0D0FFCBCBCBFFCACA
      CAFFCACACAFFCACACAFFA85B29FF7D3004FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D001400A700FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00B300FF00A9
      00FF009A00FF007700E80002003E0000000200000000A46936FFC18758FFDCDC
      DCFFD8D8D8FFD4D4D4FFD1D1D1FFCECECEFFCACACAFFC7C7C7FFC3C3C3FFBFBF
      BFFFBCBCBCFFBABABAFFA55926FF7D3105FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D001400A700FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00B300FF00B200FF00AC00FF0090
      00F6005300BD00150053000100080000000000000000A87141FFCC9568FFFEFE
      FEFFFBFBFBFFF7F7F7FFF2F2F2FFEEEEEEFFE9E9E9FFE5E5E5FFE0E0E0FFDADA
      DAFFD7D7D7FFD1D1D1FFAA5D2BFF7E3105FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D001400A700FF00B3
      00FF00B300FF00B300FF00B300FF00B300FF00AC00FF009000F6005300BD0016
      00540003000E00000000000000000000000000000000A9764AFFC79269FFE1E1
      E1FFE1E1E1FFE1E1E1FFE0E0E0FFDDDDDDFFD9D9D9FFD7D7D7FFD3D3D3FFCFCF
      CFFFCCCCCCFFC9C9C9FFA95C29FF7E3105FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D001400A700FF00B3
      00FF00B300FF00B300FF00AC00FF009000F6005300BD001600540003000E0000
      00000000000000000000000000000000000000000000AA784EFFCF9C73FFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFCFCFFF8F8F8FFF4F4F4FFEFEF
      EFFFEBEBEBFFE6E6E6FFB0632EFF803205FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D001400A500FF00B2
      00FF00AC00FF009000F6005300BD001600540003000E00000000000000000000
      00000000000000000000000000000000000000000000AA774BFFC7946AFFE1E1
      E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFDEDE
      DEFFDCDCDCFFD8D8D8FFAC602BFF7E3205FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000C0014009C00FF0090
      00F6005300BD001600540003000E000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AA774BFFBA8258FFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFAFAFAFFA95E2EFF742B03FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000A0012005200B40016
      00540003000E0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AA774BFFBA8258FF2814
      77FF281477FF281477FF281477FF281477FF281477FF281477FF281477FF2814
      77FF281477FF281477FFA95E2EFF742B03FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000010002000200090000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000582E0FC1723323FF320C
      57FF320C57FF320C57FF320C57FF320C57FF320C57FF320C57FF320C57FF320C
      57FF320C57FF320C57FF692412FF511E02C10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000008
      0A100991B4FF0991B4FF00181F300000000000000000002E3E600991B4FF0991
      B4FF00080A100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF323232FF006599FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000482323B3482323B34823
      23B3482323B3482323B3482323B3482323B3482323B3482323B3482323B34823
      23B3482323B3482323B3482323B3000000000000000000000000000000000991
      B4FF57CCDEFF5BD7E6FF0991B4FF0991B4FF0991B4FF0C99BAFF20C9DEFF14B8
      D1FF0991B4FF00000000000000000000000024242430BDBDBDFFCCCCCCFFCCCC
      CCFFCCCCCCFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FFC7C7C7FFC5C5C5FFC5C5
      C5FFC5C5C5FFC5C5C5FFC0C0C0FF24242430FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF006599FFF0FBFFFF003265FF003265FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000482323B30DB1DAFF0DB1
      DAFF0DB1DAFF0DB1DAFF0DB1DAFF0DB1DAFF0DB1DAFF0DB1DAFF0DB1DAFF0DB1
      DAFF0DB1DAFF0DB1DAFF482323B3000000000000000000000000000000000991
      B4FF80E3EFFF6EE0EDFF58D5E6FF51D8E7FF3ECEE1FF35D0E3FF28CCE1FF1DC7
      DEFF0991B4FF000000000000000000000000464646EF747474FFE2E2E2FFFBFB
      FBFFFAFAFAFFF8F8F8FFF4F4F4FFF0F0F0FFEBEBEBFFE5E5E5FFDDDDDDFFDCDC
      DCFFDCDCDCFFD4D4D4FF838383FF464646EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF006599FFF0FBFFFFCCFFFFFF65CCFFFF993200FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000482323B3FD001DFFFD00
      1DFFFD001DFFFD001DFFFD001DFFFD001DFFFD001DFFFD001DFFFD001DFFFD00
      1DFFFD001DFFFD001DFF482323B3000000000000000000000000000000000991
      B4FF88E5F0FF71DCE9FF4EC6DAFF58CADDFF51C9DCFF32BFD5FF2DC9DEFF20C1
      D8FF0991B4FF000000000000000000000000423F3EFF030202FF989797FFF3F3
      F3FFFAFAFAFFF8F8F8FFF4F4F4FFEFEFEFFFEAEAEAFFE5E5E5FFDDDDDDFFDCDC
      DCFFDCDCDCFFB5B5B5FF0A0909FF423F3EFF545454FF323232FF323232FF3232
      32FF323232FFB2B2B2FFFFFFFFFF006599FF65CCFFFFCC9932FFFF9900FF9932
      00FFFFFFFFFFB2B2B2FF323232FF545454FF00000000482323B3FD001DFF21BD
      E1FF21BDE1FF21BDE1FF21BDE1FF21BDE1FF21BDE1FF21BDE1FF21BDE1FF21BD
      E1FF21BDE1FF21BDE1FF482323B300000000002633500991B4FF0991B4FF4FC6
      DAFF6CD5E5FF74D5E3FF0991B4FF0991B4FF0991B4FF0991B4FF45C9DDFF27C2
      D9FF12A7C5FF0991B4FF0991B4FF001015206C6562FF766963FF262323FF6767
      67FF777777FF767676FF757575FF747474FF727272FF6F6F6FFF6D6D6DFF6C6C
      6CFF686868FF474443FF766963FF6C6562FF656565FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF006599FFF0CAA6FFFFFFCCFFCC9932FFFF99
      00FF993200FFFFFFFFFFFFFFFFFF656565FF00000000482323B3FD001DFF2CC2
      E4FF2CC2E4FF2CC2E4FF2CC2E4FF2CC2E4FF2CC2E4FF2CC2E4FF2C0096FF2C00
      96FF2C0096FF2C0096FF482323B3000000000991B4FF35BFD7FF45C7DCFF69DE
      EBFF62CCDEFF0991B4FF919191FF919191FF919191FF919191FF0991B4FF3FC2
      D8FF2CCCE1FF17B5D0FF10B0CBFF0991B4FF6E6764FF8E7E77FF1C1817FF0604
      04FF060404FF060404FF060404FF060404FF060404FF060404FF060404FF0604
      04FF060404FF1C1817FF8E7E77FF6E6764FF656565FFFFFFFFFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFF8F8F8FFFFFFFFFFCC6500FFF0CAA6FFFFFFCCFFCC99
      32FFFF9900FF993200FFFFFFFFFFC0C0C0FF00000000482323B3FD001DFF36C8
      E7FF36C8E7FF36C8E7FF2C0096FF2C0096FF2C0096FF2C0096FF36C8E7FF2C00
      96FF36C8E7FF36C8E7FF482323B3000000000991B4FF46D5E6FF53D8E9FF48C9
      DCFF0991B4FF919191FFFEFEFEFFFCFCFCFFF4F4F4FFDDDDDDFF919191FF0991
      B4FF2CC5DAFF29CCE1FF1DC7DEFF0991B4FF716A67FF93867EFF322A29FF291F
      21FF291F21FF291F21FF291F21FF291F21FF291F21FF291F21FF291F21FF291F
      21FF291F21FF322A29FF93867EFF716A67FF656565FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC6500FFF0CAA6FFFFFF
      CCFFCC9932FFFF9900FF993200FFFFFFFFFF00000000482323B3FD001DFF40CE
      EBFF40CEEBFF2C0096FF40CEEBFF2C0096FF40CEEBFF40CEEBFF40CEEBFF2C00
      96FF40CEEBFF40CEEBFF482323B3000000000991B4FF2BBCD4FF49D5E6FF39C0
      D7FF0991B4FF919191FFF7F7F7FFF7F7F7FFF0F0F0FFDDDDDDFF919191FF0991
      B4FF2ABCD4FF33CFE2FF14ACC9FF0991B4FF766F6CFF9E918BFF24201FFF1C18
      19FF1C1819FF1C1819FF1C1819FF1C1819FF1C1819FF1C1819FF1C1819FF1C18
      19FF1C1819FF1B1717FF9E918BFF766F6CFF767676FFFFFFFFFFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFFFFFFFFFCC6500FFF0CA
      A6FFFFFFCCFFCC9932FF0032FFFF0000CCFF00000000482323B3FD001DFF2C00
      96FF2C0096FF4AD4EEFF4AD4EEFF2C0096FF4AD4EEFF4AD4EEFF4AD4EEFF4AD4
      EEFF4AD4EEFF4AD4EEFF482323B300000000000000000991B4FF2DBCD4FF33BF
      D5FF0991B4FF919191FFE1E1E1FFE9E9E9FFE2E2E2FFCFCFCFFF919191FF0991
      B4FF32BDD5FF1EABC7FF0991B4FF000000007D7775FFACA09CFF030202FF3934
      34FF393434FF393434FF393434FF393434FF393434FF393434FF393434FF3934
      34FF393434FF030202FFACA09CFF7D7775FF767676FFFFFFFFFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFF1F1F1FFEAEAEAFFFFFFFFFFCC65
      00FFF0CAA6FFFFFFFFFF0032FFFF0000CCFF00000000482323B3FD001DFF54DA
      F2FF2C0096FF54DAF2FF54DAF2FF2C0096FF54DAF2FF54DAF2FF54DAF2FF54DA
      F2FF54DAF2FF54DAF2FF482323B30000000000000000001015200991B4FF43D4
      E6FF0991B4FF919191FFAAAAAAFFC9C9C9FFC5C5C5FFA6A6A6FF919191FF0991
      B4FF55D8E9FF0991B4FF0000000000000000636261FF655F5EFF080707FF5856
      56FF585656FF585656FF585656FF585656FF585656FF585656FF585656FF5856
      56FF585656FF080707FF736D6BFF636261FF767676FFFFFFFFFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFF8F8F8FFF8F8F8FFFFFFFFFFFFFF
      FFFFCC6500FF0032FFFFFFCCFFFF0032CCFF00000000482323B3FD001DFF5EE0
      F5FF2C0096FF5EE0F5FF5EE0F5FF5EE0F5FF5EE0F5FF5EE0F5FF5EE0F5FF5EE0
      F5FF5EE0F5FF5EE0F5FF482323B30000000000000000002633500991B4FF3AD1
      E3FF34C4D9FF0991B4FF919191FF919191FF919191FF919191FF0991B4FF54CB
      DEFF61DCEAFF0991B4FF00181F30000000000F0F0F3004040440000000400303
      04CF000000FF020202FF040303FF060404FF070505FF040303FF020202FF0000
      00FF010104CF00000040040404400F0F0F30808080FFFFFFFFFFFFECCCFFFFEC
      CCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFF8F8F8FFD7D7D7FFD7D7D7FFF1F1
      F1FFFFFFFFFF0032CCFF0000CCFFFFFFFFFF00000000482323B3FD001DFF69E5
      F8FF2C0096FF69E5F8FF69E5F8FF69E5F8FF69E5F8FF69E5F8FF69E5F8FF69E5
      F8FF69E5F8FF69E5F8FF482323B300000000000000000991B4FF27CBE1FF32CF
      E2FF3DD3E5FF37C4D9FF0991B4FF0991B4FF0991B4FF0991B4FF71D7E6FF7CE2
      EEFF6BDEEBFF5CDAEAFF0991B4FF000000000000000000000000000000000C0C
      14BF25202DFF18151DFF100D12FF0F0D12FF0F0C11FF0E0C10FF151217FF201A
      22FF0C0B11BF000000000000000000000000808080FFFFFFFFFFF0CAA6FFFFEC
      CCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBFF00000000482323B373EBFCFF73EB
      FCFF73EBFCFF73EBFCFF73EBFCFF73EBFCFF73EBFCFF73EBFCFF73EBFCFF73EB
      FCFF73EBFCFF73EBFCFF482323B300000000000000000991B4FF1DC0D8FF23C2
      D9FF0991B4FF40D3E5FF4CD7E7FF58D9E9FF66DDEBFF73E1EDFF76DDEAFF0991
      B4FF77E1EEFF5FD7E6FF0991B4FF000000000000000000000000000000000806
      0EBF26212EFF27222FFF27222EFF26202CFF251F2BFF241E29FF231E27FF211B
      24FF06060EBF000000000000000000000000868686FFFFFFFFFFF8F8F8FFF8F8
      F8FFFFFFFFFF414141FF282828FF282828FF282828FF282828FF383838FFFFFF
      FFFFF8F8F8FFF8F8F8FFFFFFFFFF868686FF00000000482323B37DF1FFFF7DF1
      FFFF7DF1FFFF7DF1FFFF7DF1FFFF7DF1FFFF7DF1FFFF7DF1FFFF7DF1FFFF7DF1
      FFFF7DF1FFFF7DF1FFFF482323B3000000000000000000080A100991B4FF0991
      B4FF002633500991B4FF0991B4FF4FD7E7FF5BDAEAFF0991B4FF0991B4FF0026
      33500991B4FF0991B4FF00080A10000000000000000000000000000000000303
      0550171420FF27222FFF27222EFF26202CFF251F2BFF241E29FF231E27FF1411
      1BFF03030550000000000000000000000000868686FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5E5E5EFFFFFFFFFFF8F8F8FFF8F8F8FFFFFFFFFF5E5E5EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF868686FF00000000482323B3482323B34823
      23B3482323B3482323B3482323B3482323B3482323B3482323B3482323B34823
      23B3482323B3482323B3482323B3000000000000000000000000000000000000
      000000000000000000000991B4FF46D4E6FF52D8E7FF0991B4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006060B9F181521FF27222EFF26202CFF251F2BFF241E29FF16131DFF0606
      0B9F00000000000000000000000000000000969696FF969696FF868686FF8686
      86FF969696FF767676FFFFECCCFFFFCCCCFFFFCCCCFFFFECCCFF767676FF9696
      96FF868686FF868686FF969696FF969696FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000045F78AF0991B4FF0991B4FF00364870000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003030765080811C813111CFF13111BFF08080FC8030307650000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202221616165F1F1F1F712626
      267D2E2E2E8A2E2E2E89393939983A3A3A9A3A3A3A9A393939982E2E2E892E2E
      2E8A2626267D1F1F1F711414155A0101011A0000000000000000000000000000
      0000030100203B1E0D8F80411DCFCC6A34FFCF7038FF874720CF41220F8F0301
      0020000000000000000000000000000000000000000000000000000000000000
      000000000000000000003F332800005F93000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000180C06206B35198F9E5025CFCC6A34FFCF7038FFA55727CF753E1B8F1B0E
      0620000000000000000000000000000000000000000D040404284C4C4CA89292
      92E3939393E49F9FA0ED9D9D9EEC9D9D9EEC9D9D9EEC9D9D9EEC9F9FA0ED9393
      93E4919292E34E4F51A9302B1F8C4F4126AA000000000000000000000010391D
      0D8FC25E29FFD1652AFFDA6F35FFDE7B41FFE38A4EFFE89A5EFFE69D61FFDE88
      4AFF4424108F0000001000000000000000000000000000000000000000000000
      00000000000000000000005F9300E7FAFF00003A5D00003A5D00000000000000
      00000000000000000000000000000000000000000000000000000B0603106733
      188FC25E29FFD1652AFFDA6F35FFDE7B41FFE38A4EFFE89A5EFFE69D61FFDE88
      4AFF7A411D8F0E07031000000000000000000000000000000000969696D8C4C4
      C5FFB9B6AEFFBBB6AFFFBBB6AFFFBBB6AFFFBBB6AFFFBAB5AEFFBAB5AEFFBAB7
      AFFFC6C9CDFFB3A88EFCAF8427FFAF8D49E70000000000000010773A1BCFC65A
      29FFD25F25FFD66729FFDA702FFFDF7936FFE4843DFFE98F45FFEF9C52FFF4B9
      78FFEEAB6BFF914E22CF00000010000000000000000000000000000000000000
      00000000000000000000005F9300E7FAFF00D0F9FF0052CBFF00A13400000000
      000000000000000000000000000000000000000000000B050310934721CFC65A
      29FFD25F25FFD66729FFDA702FFFDF7936FFE4843DFFE98F45FFEF9C52FFF4B9
      78FFEEAB6BFFB3602ACF0E070310000000000000000000000000959595D6C6C6
      C6FFC1C1BEFFBDB9B4FFBDBAB6FFBEBBB6FFBEBAB5FFC2C1C0FFC2C1C0FFC3C4
      C4FFBEB8ABFFAA7E25FFD2A85AFF0605032B00000000371A0C8FC25B2EFFCE5A
      26FFD25F23FFD66729FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF994DFFF4A5
      55FFFAC17BFFEFAD6DFF4424108F000000005D534A003F3328003E3327003E33
      27003E332700B0ABA60000000000005F930052CBFF00E2943100FF9D0000A134
      000000000000B0ABA6003F3328005F544A00000000006330168FC25B2EFFCE5A
      26FFD25F23FFD66729FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF994DFFF4A5
      55FFFAC17BFFEFAD6DFF7A411D8F0000000000000000000000009A9A9AD6CCCC
      CCFFCACBCAFFC2C0BBFFC3C1BCFFC0BDB9FFBDBAB5FFB9B9B8FFB2B2B2FFB2B4
      B6FFB1A68DFFCA9E45FF1C170E560000000002010020B85A2EFFCB5D2EFFCE57
      1DFFD15E22FFD56628FFDA6F2EFFFFFFFFFFFFFFFFFFE88C43FFED964AFFF19F
      51FFF5A656FFF5BB7AFFDF894BFF030100207369600000000000000000000000
      0000000000000000000000000000005F9300F4D7A500FFFAD100E2943100FF9D
      0000A1340000000000000000000073696000160A0520B85A2EFFCB5D2EFFCE57
      1DFFD15E22FFD56628FFDA6F2EFFFFFFFFFFFFFFFFFFE88C43FFED964AFFF19F
      51FFF5A656FFF5BB7AFFDF894BFF1B0E062000000000000000009D9D9DD6D1D1
      D1FFCFCECEFFB4B0A6FFB5B0A6FFC9C8C5FFC3C4C4FFC2C2C2FFDADADBFFDADA
      DAFFBEC0C4FFA1A19DE1000000000000000035190C8FC4663DFFCA531CFFCD56
      1CFFD05D21FFD46426FFD86C2DFFFFFFFFFFFFFFFFFFE5873FFFE98F45FFED96
      4BFFEF9B4EFFF09F54FFE79F64FF41220F8F7368600000000000F1EAE300F1EA
      E400F1EAE400F1EAE400F9F6F40000000000D56B0300F4D7A500FFFAD100E294
      3100FF9D0000A134000000000000C5C1BE00602D158FC4663DFFCA531CFFCD56
      1CFFD05D21FFD46426FFD86C2DFFFFFFFFFFFFFFFFFFE5873FFFE98F45FFED96
      4BFFEF9B4EFFF09F54FFE79F64FF753E1B8F0000000000000000A2A2A2D6D6D6
      D6FFD4D3D1FFD5D5D5FFD5D5D5FFD3D4D2FFC3C3C3FFDDDDDCFFE2E1E0FFE5E4
      E5FFDFDFDFFFCECECFFF0000000000000000713519CFD07850FFCA5019FFCC54
      1BFFCF5A1FFFD36124FFD7692AFFFFFFFFFFFFFFFFFFE2803BFFE58740FFE88D
      44FFEA9046FFEA9147FFE99D61FF874720CF776D630000000000FFFEFB00FFFF
      FB00FFFFFB00FFFFFB00FFFFFB00FFFFFE0000000000D0690600F4D7A500FFFA
      D100E2943100FF9D0000A1340000000000008B411FCFD07850FFCA5019FFCC54
      1BFFCF5A1FFFD36124FFD7692AFFFFFFFFFFFFFFFFFFE2803BFFE58740FFE88D
      44FFEA9046FFEA9147FFE99D61FFA55727CF0000000000000000A4A4A4D6DBDC
      DDFFBEB8B1FFC2BEB8FFC2BEB7FFC4C1BBFFCFCFD0FFD4D1CDFFD6D4CFFFDAD8
      D4FFE7E7E7FFD8D8D8FF0000000000000000B55F38FFD37C55FFCF612DFFCC55
      1CFFCE571DFFD15E22FFD46427FFFFFFFFFFFFFFFFFFDE7835FFE17E39FFE383
      3DFFE5853EFFE5863FFFE48D50FFD07139FF7C71660000000000FFF8EA00FFF8
      EC00FFF8EC00FFF8EC00FFF8EC00FFF9EC00FBF9F80000000000CC690800F4D7
      A500FFFAD100E29431000024F6000015C800B55F38FFD37C55FFCF612DFFCC55
      1CFFCE571DFFD15E22FFD46427FFFFFFFFFFFFFFFFFFDE7835FFE17E39FFE383
      3DFFE5853EFFE5863FFFE48D50FFD07139FF0000000000000000A8A8A8D6DEDE
      DEFFDDDEDFFFBCB8AFFFBFBBB2FFBAB6ACFFD7D6D5FFD6D6D6FFECECECFFEBEB
      ECFFD2D2D2FFB7B7B7E20000000000000000B5603AFFD5825BFFD06533FFD165
      31FFD05F27FFCF5B21FFD26023FFFFFFFFFFFFFFFFFFDB7030FFDD7533FFDE79
      36FFDF7B37FFE07B37FFDF7E44FFCC6B35FF80756B0000000000FFF2DE00FFF3
      E000FFF3E000FFF3E000FFF3E000FFF3DF00F7F4F100EDE9E50000000000CD6C
      0C00F4D7A500000000000024F6000015C800B5603AFFD5825BFFD06533FFD165
      31FFD05F27FFCF5B21FFD26023FFFFFFFFFFFFFFFFFFDB7030FFDD7533FFDE79
      36FFDF7B37FFE07B37FFDF7E44FFCC6B35FF0000000000000000AAAAAAD6E2E2
      E2FFDFDEDEFFBAB5ACFFBBB6ADFFD7D5D2FFE2E2E3FFDFDFDFFFD9D9D9FFDADA
      DAFFE1E1E1FFBEBEBEE400000000000000006E3219CFD98D6AFFD06433FFD165
      33FFD26733FFD36833FFFFFFFFFFFFFFFFFFFFFFFFFFD7692AFFD96D2DFFDA70
      2FFFDB7130FFDB7131FFDA7138FF80411DCF84786E0000000000FFEDD000FFEE
      D300FFEED300FFEED300FFEED300FFEED100F7F5F300FAF8F400FDFDFB000000
      0000CD6C0C000024F600FFCCFF00153ACF00883F1ECFD98D6AFFD06433FFD165
      33FFD26733FFD36833FFFFFFFFFFFFFFFFFFFFFFFFFFD7692AFFD96D2DFFDA70
      2FFFDB7130FFDB7131FFDA7138FF9E5025CF0000000000000000ADADADD6E8E6
      E5FFECE8E6FFEFECE9FFEFECE9FFEDE9E7FFECE8E5FFECE8E6FFEAE6E3FFEBE7
      E4FFE8E6E5FFC2C2C2E4000000000000000033180B8FD58E6EFFD16A3CFFD065
      33FFD16633FFD26733FFD36A34FFD56C35FFD66E36FFD76F35FFD87035FFD971
      36FFDA7236FFDA7337FFD36E35FF3C1E0D8F897D720000000000FFE7C300FFE9
      C700FFE9C700FFE9C700FFE9C700FFE8C400F9F8F800DFD6CE00E0D7CF00F2EF
      EB00000000000B32CD000013C500000000005D2B148FD58E6EFFD16A3CFFD065
      33FFD16633FFD26733FFD36A34FFD56C35FFD66E36FFD76F35FFD87035FFD971
      36FFDA7236FFDA7337FFD36E35FF6C35198F0000000000000000B2B1AFD6C7D8
      E5FF9DC4E0FFA2C6E1FFA2C6E1FFA2C6E1FFA2C6E1FFA2C6E1FFA2C6E1FF9DC4
      E0FFC7D8E5FFC8C6C5E4000000000000000002010020B86643FFDB8F6CFFD064
      33FFD06533FFD16633FFD26733FFFCF6F2FFFCF6F3FFD56D36FFD66E36FFD76F
      37FFD87037FFD87037FFC4632FFF030100208D81750000000000FFE0B000FFE2
      B400FFE4B700FFECBF00FFF0C300FFEFC000000000000000000000000000FEFB
      FA00FEFDFC000000000000000000D0CBC600150A0520B86643FFDB8F6CFFD064
      33FFD06533FFD16633FFD26733FFFCF6F2FFFCF6F3FFD56D36FFD66E36FFD76F
      37FFD87037FFD87037FFC4632FFF180C06200000000000000000B3B3B1D667AE
      E2FF0078DAFF007CDAFF007CDAFF007CDAFF007CDAFF007CDAFF007CDAFF007D
      E3FF6DB8EEFFD4D4D4E900000000000000000000000033180B8FCB8260FFD988
      62FFD06433FFD06533FFD16533FFFCF6F2FFFCF6F2FFD36934FFD46A35FFD46B
      35FFD56C37FFCA6532FF3A1D0D8F000000009185780000000000FAF9F900FAFA
      FB0000000000483E360032281F0032271E0032261B0033271B00473C32000000
      0000FBF9F700FBF8F6000000000091857800000000005C2B148FCB8260FFD988
      62FFD06433FFD06533FFD16533FFFCF6F2FFFCF6F2FFD36934FFD46A35FFD46B
      35FFD56C37FFCA6532FF6733188F000000000000000000000000B3B3B2D6A7CF
      ECFF68B9EEFF6DBCEEFF6DBCEEFF6DBCEEFF6DBCEEFF6DBCEEFF6DC1F7FF7B80
      82FF736E69FF14141467000000000000000000000000000000106C3218CFCB82
      60FFDB8F6BFFD16A3CFFD06533FFD36F40FFD46F40FFD26733FFD26936FFD26C
      3FFFC76337FF773A1BCF0000001000000000978B7E0000000000000000000000
      0000000000006A615700FFFFFC00FEFAF400FEFAF400FFFFFC006A6157000000
      0000000000000000000000000000978B7E00000000000A050210853D1DCFCB82
      60FFDB8F6BFFD16A3CFFD06533FFD36F40FFD46F40FFD26733FFD26936FFD26C
      3FFFC76337FF934721CF0B060310000000000000000000000000B7B7B7D9F3EF
      EDFFF9F1ECFFF9F1ECFFF9F1ECFFF9F1ECFFF9F1ECFFF9F1ECFFFFFEF9FF605F
      5DFF0E0E0E650000000000000000000000000000000000000000000000103318
      0B8FB86642FFD48E6DFFD98C69FFD5815AFFD27B53FFD17A53FFC86F48FFBA5E
      33FF371A0C8F000000100000000000000000A09487009B8F82009A8D80009A8D
      80009D91830079706600FFE4E100FAD9D600FAD9D600FFE4E100797066009D91
      83009A8D80009A8D80009B8F8200A094870000000000000000000A0502105C2B
      148FB86642FFD48E6DFFD98C69FFD5815AFFD27B53FFD17A53FFC86F48FFBA5E
      33FF6330168F0B05031000000000000000000000000000000000545454939C9C
      9CCF989898CC989898CC989898CC989898CC989898CC989898CCA7A7A7D10B0B
      0B62000000000000000000000000000000000000000000000000000000000000
      00000201002033180B8F6E3219CFB55F39FFB45E37FF713519CF35190C8F0201
      0020000000000000000000000000000000000000000000000000000000000000
      000000000000968B7E0000000000000000000000000000000000968B7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000150A05205D2B148F883F1ECFB55F39FFB45E37FF8B411FCF602D158F160A
      0520000000000000000000000000000000000000000000000000000000000000
      0000000000000000000011117ABF1717A3FF1717A3FF11117ABF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000080869BF0A0A8CFF0A0A8CFF080869BF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000090909462426278D494C4EC76A6E72F06A6E72F0494C4EC72426278D0909
      09460000000000000000000000000000000000000000929292FF929292FF9292
      92FF929292FF929292FF1717A3FF8484F6FF5F5FEDFF1717A3FF000000000000
      00000000000000000000000000000000000000000000787878FF787878FF7878
      78FF787878FF787878FF0A0A8CFF6969F3FF4444E7FF0A0A8CFF000000000000
      00000000000000000000000000000000000000000000482323B3482323B34823
      23B3482323B3482323B3482323B3482323B3482323B3482323B3482323B34823
      23B3482323B3482323B3482323B3000000000000000000000000010202202425
      268C7D8084EDBCBEC1FEE2E1E3FFF7F7F8FFF7F7F8FFE2E2E4FFBDC0C2FE7E81
      85ED2425268C01020220000000000000000000000000929292FF000000000000
      0000000000000000000011117ABF1717A3FF1717A3FF11117ABF000000000000
      00000000000000000000000000000000000000000000787878FF000000000000
      00000000000000000000080869BF0A0A8CFF0A0A8CFF080869BF000000000000
      00000000000000000000000000000000000000000000482323B30DB1DAFF0DB1
      DAFF0DB1DAFF0DB1DAFF0DB1DAFF0DB1DAFF0DB1DAFF0DB1DAFF0DB1DAFF0DB1
      DAFF0DB1DAFF0DB1DAFF482323B3000000000000000001020220313234A3B2B5
      BAFBF9F9F9FFFDF3EFFFF6C7AEFFF08C41FFF59A41FFFDDAADFFFFF9EFFFF9F9
      F9FFB4B9BBFB313234A3010202200000000000000000929292FF000000000000
      00000000000000000000206B1EBF2A8F29FF2A8F29FF206B1EBF000000000000
      00000000000000000000000000000000000000000000787878FF000000000000
      00000000000000000000115711BF177516FF177516FF115711BF000000000000
      00000000000000000000000000000000000000000000482323B3FD001DFFFD00
      1DFFFD001DFFFD001DFFFD001DFFFD001DFFFD001DFFFD001DFFFD001DFFFD00
      1DFFFD001DFFFD001DFF482323B300000000000000002425268CB2B5BAFBFDFA
      F9FFEB9884FFDB3A02FFE24E01FFFFFFFFFFFFFFFFFFF98900FFFE9A03FFFED2
      8DFFFEFDFAFFB4B8BBFB2425268C0000000000000000929292FF929292FF9292
      92FF929292FF929292FF2A8F29FF87E087FF60CC60FF2A8F29FF000000000000
      00000000000000000000000000000000000000000000787878FF787878FF7878
      78FF787878FF787878FF177516FF6CD76CFF45BD45FF177516FF000000000000
      00000000000000000000000000000000000000000000482323B3FD001DFF21BD
      E1FF21BDE1FF21BDE1FF21BDE1FF21BDE1FF21BDE1FF21BDE1FF21BDE1FF21BD
      E1FF21BDE1FF21BDE1FF482323B300000000090909467C8084EDF9F9F9FFED9E
      84FFD52A02FFD93602FFE14901FFFFFFFFFFFFFFFFFFF68100FFFC9100FFFE9B
      04FFFED088FFF9F9F9FF7E8085ED0909094600000000929292FF000000000000
      00000000000000000000206B1EBF2A8F29FF2A8F29FF206B1EBF000000000000
      00000000000000000000000000000000000000000000787878FF000000000000
      00000000000000000000115711BF177516FF177516FF115711BF000000000000
      00000000000000000000000000000000000000000000482323B3FD001DFF2CC2
      E4FF2CC2E4FF2CC2E4FF2CC2E4FF2CC2E4FF2CC2E4FF2CC2E4FF2C0096FF2C00
      96FF2C0096FF2C0096FF482323B3000000002426278DBCBFC2FEFDF4EFFFDB3B
      01FFD62D02FFD73002FFDE4201FFE55401FFEB6400FFF17400FFF68200FFFA8C
      00FFFC9000FFFFF8EFFFBCBFC2FE2426278D00000000929292FF000000000000
      00000000000000000000177BADBF1EA4E7FF1EA4E7FF177BADBF000000000000
      00000000000000000000000000000000000000000000787878FF000000000000
      000000000000000000000B6AA7BF0E8EE0FF0E8EE0FF0B6AA7BF000000000000
      00000000000000000000000000000000000000000000482323B3FD001DFF36C8
      E7FF36C8E7FF36C8E7FF2C0096FF2C0096FF2C0096FF2C0096FF36C8E7FF2C00
      96FF36C8E7FF36C8E7FF482323B300000000494C4EC7E2E2E4FFF7CEB8FFDD40
      01FFD83302FFD52A02FFDA3802FFFFFFFFFFFFFFFFFFF08C40FFF07000FFF378
      00FFF47B00FFFBD5ADFFE2E2E4FF494C4EC700000000929292FF929292FF9292
      92FF929292FF929292FF1EA4E7FF56FFFFFF23FFFFFF1EA4E7FF000000000000
      00000000000000000000000000000000000000000000787878FF787878FF7878
      78FF787878FF787878FF0E8EE0FF3CFFFFFF12FFFFFF0E8EE0FF000000000000
      00000000000000000000000000000000000000000000482323B3FD001DFF40CE
      EBFF40CEEBFF2C0096FF40CEEBFF2C0096FF40CEEBFF40CEEBFF40CEEBFF2C00
      96FF40CEEBFF40CEEBFF482323B3000000006A6E72F0F7F7F8FFF2A776FFE568
      2EFFDB3D06FFD62D02FFD62D02FFFFFFFFFFFFFFFFFFEC8040FFE95E01FFEB65
      00FFEC6700FFF18E41FFF7F7F8FF6A6E72F000000000929292FF000000000000
      00000000000000000000177BADBF1EA4E7FF1EA4E7FF177BADBF000000000000
      00000000000000000000000000000000000000000000787878FF000000000000
      000000000000000000000B6AA7BF0E8EE0FF0E8EE0FF0B6AA7BF000000000000
      00000000000000000000000000000000000000000000482323B3FD001DFF2C00
      96FF2C0096FF4AD4EEFF4AD4EEFF2C0096FF4AD4EEFF4AD4EEFF4AD4EEFF4AD4
      EEFF4AD4EEFF4AD4EEFF482323B3000000006A6E72F0F7F7F8FFF4AA73FFEB82
      45FFE67443FFDD4B1CFFD62F07FFD62E02FFFFFFFFFFFFFFFFFFE97940FFE451
      01FFE55401FFEB8041FFF7F7F8FF6A6E72F0732F00BF9A3F00FF9A3F00FF732F
      00BF0000000000000000000000000000000000000000060629401717A3FF0606
      294000000000060629401717A3FF06062940611D00BF822700FF822700FF611D
      00BF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000482323B3FD001DFF54DA
      F2FF2C0096FF54DAF2FF54DAF2FF2C0096FF54DAF2FF54DAF2FF54DAF2FF54DA
      F2FF54DAF2FF54DAF2FF482323B300000000494C4EC7E2E2E4FFFBDCC2FFEE88
      41FFEA7C43FFE67446FFE36A44FFDE5634FFDB4A27FFFFFFFFFFFFFFFFFFE77A
      4FFFE25C26FFF6CFBFFFE2E2E4FF494C4EC79A3F00FFEAC83AFFDCA216FF9A3F
      00FF00000000000000000000000000000000000000001717A3FF3232DAFF1717
      A3FF060629401717A3FF0202B1FF1717A3FF822700FFE3B823FFD18B09FF8227
      00FF000000000000000000000000000000000000000000000000A09281FFA092
      81FFA09281FFA09281FFA09281FFA09281FF00000000482323B3FD001DFF5EE0
      F5FF2C0096FF5EE0F5FF5EE0F5FF5EE0F5FF5EE0F5FF5EE0F5FF5EE0F5FF5EE0
      F5FF5EE0F5FF5EE0F5FF482323B3000000002426278DBDC0C2FEFEF9F3FFF28F
      3DFFED853FFFFFFFFFFFFFFFFFFFE46F46FFE36B49FFFFFFFFFFFFFFFFFFE992
      7CFFE36F52FFFDF6F4FFBEC0C3FE2426278D732F00BF9A3F00FF9A3F00FF732F
      00BF0000000000000000000000000000000000000000060629401717A3FF2B2B
      E6FF1717A3FF1616C3FF1717A3FF06062940611D00BF822700FF822700FF611D
      00BF000000000000000000000000000000000000000000000000A09281FFF2DE
      CAFFBA7758FF9D3F12FFF2DECAFFA09281FF00000000482323B3FD001DFF69E5
      F8FF2C0096FF69E5F8FF69E5F8FF69E5F8FF69E5F8FF69E5F8FF69E5F8FF69E5
      F8FF69E5F8FF69E5F8FF482323B300000000090909467F8186EDF9F9F9FFFACC
      9FFFF18E3BFFFBE6D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F4FFE36E
      4BFFF1B9A9FFF9F9F9FF7F8186ED090909460000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060629401717
      A3FF2828E4FF1717A3FF06062940000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A09281FFF2DE
      CAFF96360EFFCB7A3DFFAA562BFFA09281FF00000000482323B373EBFCFF73EB
      FCFF73EBFCFF73EBFCFF73EBFCFF73EBFCFF73EBFCFF73EBFCFF73EBFCFF73EB
      FCFF73EBFCFF73EBFCFF482323B300000000000000002425268CB5B9BCFBFEFC
      FAFFFACC9EFFF28F39FFF5B688FFFDF1EAFFFEF7F4FFED966BFFE77644FFF3BC
      A6FFFEFBFBFFB6B9BCFB2425268C000000000000000000000000000000000000
      00000000000000000000000000000000000000000000060629401717A3FF9D9D
      F7FF1717A3FF5454DEFF1717A3FF060629400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A09281FFF2DE
      CAFF96360EFF96360EFFAB4C17FFA78168FF00000000482323B37DF1FFFF7DF1
      FFFF7DF1FFFF7DF1FFFF7DF1FFFF7DF1FFFF7DF1FFFF7DF1FFFF7DF1FFFF7DF1
      FFFF7DF1FFFF7DF1FFFF482323B3000000000000000001020220313234A3B5B9
      BCFBF9F9F9FFFEF8F2FFFBDCBFFFF5AA6BFFF3A66DFFF9D7C1FFFEF7F3FFF9F9
      F9FFB6B9BCFB313234A301020220000000000000000000000000000000000000
      000000000000000000000000000000000000000000001717A3FFCCCCFCFF1717
      A3FF060629401717A3FF6262D4FF1717A3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A09281FFF2DE
      CAFFF2DECAFFE5C7B2FF96360EFF883B19FF00000000482323B3482323B34823
      23B3482323B3482323B3482323B3482323B3482323B3482323B3482323B34823
      23B3482323B3482323B3482323B3000000000000000000000000010202202425
      268C7F8286EDBDC0C2FEE2E2E4FFF7F7F8FFF7F7F8FFE2E2E4FFBEC0C3FE7F81
      86ED2425268C0102022000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000060629401717A3FF0606
      294000000000060629401717A3FF060629400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A09281FFA092
      81FFA09281FFA09281FFA09281FFA09281FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000090909462426278D494C4EC76A6E72F06A6E72F0494C4EC72426278D0909
      0946000000000000000000000000000000000000000000000000000000000000
      0000000000002F1D019F754D07FF634006FF2012008000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000686868FF686868FF676767FF676767FF666666FF656565FF656565FF6464
      64FF636363FF636363FF636363FF000000000000000000000000000000000000
      0000000000000000002D0000001E0000001C0000003A0000003A0000003A0000
      003A0000003A0000003A0000000E000000000000000000000000000000000000
      00000000000000000000080869BF0A0A8CFF0A0A8CFF080869BF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0600306B4506FF2214008F2B1700AF573402FF140A0050000000000000
      00000000000000000000000000000000000000000000246595FF246595FF2465
      95FF787878FFF7F7F7FF98A9CBFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEE
      EEFFEEEEEEFFF6F6F6FF727272FF000000000000000000000000000000000000
      0000000000050A1F087A1E5415FF93846FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF93846FFF000000130000000000000000787878FF787878FF7878
      78FF787878FF787878FF0A0A8CFF6969F3FF4444E7FF0A0A8CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C060030613C05FF140A005000000000361E00BF3D2402BF000000000000
      00000000000000000000000000000000000000000000246595FF4C9DC1FF4E9F
      C4FF868686FF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFF818181FF000000000000000000000000000000000000
      0002194411D80A891EFF1E5415FF93846FFFFBF4EDFFF8EFE5FFF7EADDFFF4E5
      D4FFF3E1CCFF93846FFF000000130000000000000000787878FF000000000000
      00000000000000000000080869BF0A0A8CFF0A0A8CFF080869BF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003D2300DF543305EF140A0050341D00BF452702BF000000000000
      00000000000000000000000000000000000000000000246595FF4EA0C5FF50A3
      C6FF919191FFF2F2F2FF98A9CBFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5
      E5FFE2E2E2FFF0F0F0FF8C8C8CFF00000000000000000000000000000000030A
      022196B891FF3ED944FF1E5415FF93846FFFFCF8F4FFFBF4EDFFF8EFE5FFF7EA
      DDFFF4E5D4FF93846FFF000000130000000000000000787878FF000000000000
      00000000000000000000115711BF177516FF177516FF115711BF000000000000
      0000000000000000000000000000000000000C0600302214008F2214008F1009
      00400000000010090040754507FFA46514FF7D4808FF20120080000000000000
      00000000000000000000000000000000000000000000296B99FF51A4C7FF52A7
      C9FF999999FFD9B08CFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFF979797FF000000000000000E00000013000000130000
      001300000013347636FF1E5415FF93846FFFFFFEFCFFFCF8F4FFFBF4EDFFF8EF
      E5FFF7EADDFF93846FFF000000130000000000000000787878FF787878FF7878
      78FF787878FF787878FF177516FF6CD76CFF45BD45FF177516FF000000000000
      000000000000000000000000000000000000543603EF5E3A02EF552F02DF5932
      02FF311C00AF040200102214008FA4590EFF391F00CF00000000000000000000
      000000000000000000000000000000000000000000002F729FFF53A9CAFF54AB
      CCFFA0A0A0FFF6F6F6FF98A9CBFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEBEB
      EBFFEAEAEAFFF3F3F3FF9E9E9EFF0000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF706455FF1C4E13F393846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF000000050000000000000000787878FF000000000000
      00000000000000000000115711BF177516FF177516FF115711BF000000000000
      000000000000000000000000000000000000623D02FF20120080000000002715
      009F91540AFF4C2B02DF100900404E2A02EF512C02DF00000000000000000000
      000000000000000000000000000000000000000000003477A4FF55ACCCFF56AF
      CFFFA6A6A6FF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFFA4A4A4FF00000000FFFFFFFFF8EFE5FFF7EADDFFF4E5
      D4FFF3E1CCFFFFFFFFFF0000003A000000000000000000000000000000000000
      00000000000000000000000000000000000000000000787878FF000000000000
      000000000000000000000B6AA7BF0E8EE0FF0E8EE0FF0B6AA7BF000000000000
      000000000000000000000000000000000000432901CF4A2C01EF10090040140A
      00508F520AFFA55A0EFF683805FF2F1A00BF462903FF1F1C1560000000000000
      000000000000000000000000000000000000000000003C83ADFF57B0D0FF59B2
      D3FFA9A9A9FFF8F8F8FF98A9CBFFF3F3F3FFF4F4F4FFF3F3F3FFF3F3F3FFF2F2
      F2FFEFEFEFFFF6F6F6FFA7A7A7FF00000000FFFFFFFFFBF4EDFFF8EFE5FFF7EA
      DDFFF4E5D4FFFFFFFFFF0000003A000000000000000000000000000000000000
      00000000000000000000000000000000000000000000787878FF787878FF7878
      78FF787878FF787878FF0E8EE0FF3CFFFFFF12FFFFFF0E8EE0FF000000000000
      0000000000000000000000000000000000000C0600303E2400DF543001FF5A32
      02FF573203EF5F3406BE341D00BF462903FF625B51FF626262EF121212300000
      00000000000000000000000000000000000000000000428AB2FF59B4D4FF5BB6
      D7FFACACACFFD9B08CFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFD9B08CFFABABABFF00000000FFFFFFFFFCF8F4FFFBF4EDFFF8EF
      E5FFF7EADDFFFFFFFFFF0000003A000000000000000000000000000000000000
      00000000000000000000000000000000000000000000787878FF000000000000
      000000000000000000000B6AA7BF0E8EE0FF0E8EE0FF0B6AA7BF000000000000
      0000000000000000000000000000000000000000000000000000100900401009
      0040080400200000000000000000161411405F5F5FEFA0A0A0FF5C5C5CEF1212
      123000000000000000000000000000000000000000004791B8FF5BB7D7FF5DBA
      D9FFADADADFFFBFBFBFF98A9CBFFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF6F6
      F6FFF3F3F3FFF8F8F8FFADADADFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0000002D000000000000000000000000000000000000
      000000000000000000000000000000000000611D00BF822700FF822700FF611D
      00BF000000000000000000000000000000000000000000000000000000000223
      0594043D08FF0223059400000000000000000000000000000000000000000000
      000000000000000000000000000000000000121212306C6C6CEF7A7A7AFF6060
      60EF12121230000000000000000000000000000000004F9AC0FF5EBBD9FF5FBD
      DCFFAFAFAFFF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFB6B6
      B6FFB4B4B4FFBFBFBFFFADADADFF000000000000002B0000003A0000003A0000
      003A0000003A0000003A0000003A000000000000000000000000000000000000
      000000000000000000000000000000000000822700FFE3B823FFD18B09FF8227
      00FF00000000000000000000000000000000000000000000000000000000043D
      08FF10A916FF043D08FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001E1E1E507C7C7CFF7575
      75FF6D6D6DEF1E1E1E50000000000000000000000000509DC1FF61BFDDFF62C1
      DEFFAFAFAFFFFCFCFCFF98A9CBFFFAFAFAFFFBFBFBFFFAFAFAFFFAFAFAFFBCBC
      BCFFE9E9E9FFBABABAFF6D6D6D9F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0000003A000000000000000000000000000000000000
      000000000000000000000000000000000000611D00BF822700FF822700FF611D
      00BF000000000000000000000000000000000000000002230594043D08FF043D
      08FF42BF43FF043D08FF043D08FF022305940000000000000000000000000000
      0000000000000000000000000000000000000000000000000000323232807676
      76FF606060EF626262FF242424600000000000000000519EC2FF63C2E0FF898C
      8EFF787C7DFF717475FF696C6DFF696C6DFF626566FF626566FF626566FFE2E2
      E2FFBBBBBBFF6D6D6D9F0000000000000000FFFFFFFFFAF0E7FFF7EDE0FFF6E7
      D8FFF3E2D0FFFFFFFFFF0000003A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000043D08FF96E998FF8FE3
      90FF65D764FF45C747FF099D0EFF043D08FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3D9F565656DF1E1E1E505C5C5CEF2424246000000000529FC2FF65C6E2FF66A7
      BAFF696B6BFF717374FF878C8EFF8F9899FF757878FF696A6BFF959595FFAFAF
      AFFF799EAFFF000000000000000000000000FFFFFFFFFBF6EFFFFAF0E7FFF7ED
      E0FFF6E7D8FFFFFFFFFF0000003A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002230594043D08FF043D
      08FF88E089FF043D08FF043D08FF022305940000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      0610505050CF2424246006060610242424600000000053A0C4FF67CAE6FF69CC
      E7FF6E6F6FFFADB2B4FFA3A9AAFFB8C2C4FFB0B5B6FF676868FF74E1F7FF76E3
      F8FF368BB5FF000000000000000000000000FFFFFFFFFEFBF7FFFBF6EFFFFAF0
      E7FFF7EDE0FFFFFFFFFF0000003A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000043D
      08FF8AE18CFF043D08FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006060610434343AF00000000000000000000000054A3C5FF54A3C5FF55A4
      C6FF517587FF577D8EFF697880FF6B7C83FF507586FF527888FF57A9CBFF4AA0
      C5FF4096BCFF00000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF0000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000223
      0594043D08FF0223059400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000696969FF696969FF686868FF676767FF666666FF666666FF656565FF6464
      64FF646464FF636363FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000797979FFF7F7F7FF98A9CBFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEE
      EEFFF6F6F6FF747474FF00000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000000000000013
      2140003761BF004B89FF000000000000000000000000AF9E7DFFAB9977FFA695
      72FFA38F6BFF9F8A66FF9A865FFF97815AFF0000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000000000000000
      0000888888FF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFF838383FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000029498F045B
      9DFF1B7CDAFB0861B1FF004B89FF004B89FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000696969FF696969FF6262
      62FF939393FFF3F3F3FF98A9CBFFE7E7E7FFE7E7E7FFE7E7E7FFE6E6E6FFE3E3
      E3FFF0F0F0FF909090FF00000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000025490FF56B1
      EBFA66B8F1F52B8CEDF51A6DE9F5004B89FF00000000AF9E7DFFAB9977FFA695
      72FFA38F6BFF9F8A66FF9A865FFF97815AFF0000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF0000000000000000000000000000000000000000797979FFF7F7F7FF8E96
      AAFF9D9D9DFFD9B08CFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFF999999FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000002039701263
      97FF7ABBE5FA126DB2FF004B89FF004B89FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000888888FF7C7C7DFF8E96
      AAFFA3A3A3FFF6F6F6FF98A9CBFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEBEB
      EBFFF4F4F4FFA0A0A0FF00000000000000000000000000000000001321400037
      61BF004B89FF000000000000000000000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF000000000000000000000000000000000013
      2140014679DF004B89FF000000000000000000000000AF9E7DFFAB9977FFA695
      72FFA38F6BFF9F8A66FF9A865FFF97815AFF0000000000000000000000000046
      7AEF00467AEF001321400000000000000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF0000000000000000939393FFF3F3F3FF8E96
      AAFFA7A7A7FF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFA6A6A6FF0000000000000000000000000029498F045B9DFF1B7C
      DAFB0861B1FF004B89FF004B89FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000467AEF004A82FF004A
      82FF0B5CABF7004A82FF00264180000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D9D9DFFD9B08CFF8E96
      AAFFABABABFFFAFAFAFF98A9CBFFF6F6F6FFF6F6F6FFF4F4F4FFF3F3F3FFF2F2
      F2FFF7F7F7FFAAAAAAFF000000000000000000000000025490FF56B1EBFA66B8
      F1F52B8CEDF51A6DE9F5004B89FF00000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF0000000000000000000000000000000000000000004A82FF5AA7E5ED65AE
      EAED398FE9ED0B5BB8F5004A82FF00000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF0000000000000000A3A3A3FFF6F6F6FF8E96
      AAFFADADADFFD9B08CFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFD9B08CFFD9B0
      8CFFD9B08CFFACACACFF00000000000000000000000000203970126397FF7ABB
      E5FA126DB2FF004B89FF004B89FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000467AEF004A82FF004A
      82FF1C70B3F6004A82FF0029498F000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A7A7FF7C7C7DFF8E96
      AAFFADADADFFFBFBFBFF98A9CBFFFAFAFAFFFAFAFAFFF8F8F8FFA5A5A5FFA5A5
      A5FFBFBFBFFFADADADFF00000000000000000000000000000000001321400146
      79DF004B89FF000000000000000000000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000000000000046
      7AEF00467AEF001829500000000000000000AF9E7DFFAB9977FFA69572FFA38F
      6BFF9F8A66FF9A865FFF97815AFF0000000000000000ABABABFFFAFAFAFF8E96
      AAFFAFAFAFFF7C7C7DFF98A9CBFFD9B08CFFD9B08CFFD9B08CFFA5A5A5FFF2F2
      F2FFC9C9C9FF8E8E8ECF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADADFFD9B08CFF8E96
      AAFFAFAFAFFFFEFEFEFF98A9CBFFFEFEFEFFFEFEFEFFFCFCFCFFBBBBBBFFBDBD
      BDFF8E8E8ECF0B0B0B1000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF0000000000000000000000000000000000000000ADADADFFFBFBFBFF8E96
      AAFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF8E8E
      8ECF0B0B0B100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AFAFAFFF7C7C7DFF8E96
      AAFFB5AAA0FFB5AAA0FFB5AAA0FFB5AAA0FFA5A5A5FFB8B8B8FF8E8E8ECF0000
      0000000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF000000000000000000000000000000000000000000000000AF9E7EFFAC9A
      7AFFAA9776FFA69372FFA4906DFFA08E69FF9E8A65FF9C8762FF98835DFF9680
      59FF0000000000000000000000000000000000000000AFAFAFFFFEFEFEFF98A9
      CBFFFEFEFEFFFEFEFEFFFCFCFCFFFBFBFBFFBDBDBDFF8E8E8ECF0B0B0B100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF8E8E8ECF0B0B0B10000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060F03301C4F14EF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000024242430BDBDBDFFCCCCCCFFCCCC
      CCFFCCCCCCFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FFC7C7C7FFC5C5C5FFC5C5
      C5FFC5C5C5FFC5C5C5FFC0C0C0FF242424300000000000000000000000000000
      000000000000000000000C1F07601C4F14EF1E5415FF0000000093846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000464646EF747474FFE2E2E2FFFBFB
      FBFFFAFAFAFFF8F8F8FFF4F4F4FFF0F0F0FFEBEBEBFFE5E5E5FFDDDDDDFFDCDC
      DCFFDCDCDCFFD4D4D4FF838383FF464646EF0000000000000000000000000000
      00000000000010300B8F206719FF149616FF1E5415FF0000000093846FFFFAF2
      E9FFF7EDE0FFF6E7D7FFF3E2CFFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000423F3EFF030202FF989797FFF3F3
      F3FFFAFAFAFFF8F8F8FFF4F4F4FFEFEFEFFFEAEAEAFFE5E5E5FFDDDDDDFFDCDC
      DCFFDCDCDCFFB5B5B5FF0A0909FF423F3EFF0000000000000000000000000000
      00000C1F07601E5415FF51CF5AFF33CE39FF1E5415FF0000000093846FFFFBF7
      F0FFFAF2E9FFF7EDE0FFF4E7D7FF93846FFF93846FFFFAF2E9FFF7EDE0FFF6E7
      D7FFF3E2CFFF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFAF2E9FFF7EDE0FFF6E7
      D7FFF3E2CFFF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6562FF766963FF262323FF6767
      67FF777777FF767676FF757575FF747474FF727272FF6F6F6FFF6D6D6DFF6C6C
      6CFF686868FF474443FF766963FF6C6562FF93846FFF93846FFF93846FFF9384
      6FFF93846FFF5F6E47FF2A6522FF37BC3CFF1E5415FF0000000093846FFFFEFC
      FAFFFBF7F0FFFAF0E7FFF7EDE0FF93846FFF93846FFFFBF7F0FFFAF2E9FFF7ED
      E0FFF4E7D7FF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFBF7F0FFFAF2E9FFF7ED
      E0FFF6E7D7FF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E6764FF8E7E77FF1C1817FF0604
      04FF060404FF060404FF060404FF060404FF060404FF060404FF060404FF0604
      04FF060404FF1C1817FF8E7E77FF6E6764FF93846FFFFAF2E9FFF7EDE0FFF6E7
      D7FFF3E2CFFF93846FFF0A1A06501C4F14EF1E5415FF0000000093846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFFFEFCFAFFFBF7F0FFFAF0
      E7FFF7EDE0FF93846FFF00000000060F03301C4F14EF00000000000000000000
      00000000000000000000000000000000000093846FFFFEFBFAFFFBF7F0FFFAF2
      E9FFF7EDE0FF93846FFF00000000000000000000000000000000000000000E24
      0A7002050110000000000000000000000000716A67FF93867EFF322A29FF291F
      21FF291F21FF291F21FF291F21FF291F21FF291F21FF291F21FF291F21FF291F
      21FF291F21FF322A29FF93867EFF716A67FF93846FFFFBF7F0FFFAF2E9FFF7ED
      E0FFF4E7D7FF93846FFF00000000060F0330194411CF00000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF0C1F07601C4F14EF1E5415FF0000000093846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF000000001E54
      15FF194411CF040B03200000000000000000766F6CFF9E918BFF24201FFF1C18
      19FF1C1819FF1C1819FF1C1819FF1C1819FF1C1819FF1C1819FF1C1819FF1C18
      19FF1C1819FF1B1717FF9E918BFF766F6CFF93846FFFFEFCFAFFFBF7F0FFFAF0
      E7FFF7EDE0FF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010300B8F206719FF149616FF1E5415FF0000000093846FFFFAF2
      E9FFF7EDE0FFF6E7D7FFF3E2CFFF93846FFF0000000000000000000000000000
      000093846FFFFAF2E9FFF7EDE0FFF6E7D7FFF3E2CFFF93846FFF000000001E54
      15FF1A6E16F71C4F14EF0A1A0650000000007D7775FFACA09CFF030202FF3934
      34FF393434FF393434FF393434FF393434FF393434FF393434FF393434FF3934
      34FF393434FF030202FFACA09CFF7D7775FF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C1F07601E5415FF51CF5AFF33CE39FF1E5415FF0000000093846FFFFBF7
      F0FFFAF2E9FFF7EDE0FFF4E7D7FF93846FFF0000000000000000000000000000
      000093846FFFFBF7F0FFFAF2E9FFF7EDE0FFF6E7D7FF93846FFF000000001E54
      15FF21AB23ED1C6C17F81E5415FF00000000636261FF655F5EFF080707FF5856
      56FF585656FF585656FF585656FF585656FF585656FF585656FF585656FF5856
      56FF585656FF080707FF736D6BFF636261FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E240A702A6522FF37BC3CFF1E5415FF0000000093846FFFFEFC
      FAFFFBF7F0FFFAF0E7FFF7EDE0FF93846FFF0000000000000000000000000000
      000093846FFFFEFBFAFFFBF7F0FFFAF2E9FFF7EDE0FF93846FFF000000001E54
      15FF298725F61C4F14EF0C1F0760000000000F0F0F3004040440000000400303
      04CF000000FF020202FF040303FF060404FF070505FF040303FF020202FF0000
      00FF010104CF00000040040404400F0F0F3093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF0A1A06501C4F14EF1E5415FF0000000093846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF93846FFF93846FFF93846FFF93846FFF000000001E54
      15FF194411CF060F033000000000000000000000000000000000000000000C0C
      14BF25202DFF18151DFF100D12FF0F0D12FF0F0C11FF0E0C10FF151217FF201A
      22FF0C0B11BF00000000000000000000000093846FFFFAF2E9FFF7EDE0FFF6E7
      D7FFF3E2CFFF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFAF2E9FFF7EDE0FFF6E7
      D7FFF3E2CFFF93846FFF00000000060F0330194411CF00000000000000000000
      00000000000000000000000000000000000093846FFFFAF2E9FFF7EDE0FFF6E7
      D7FFF3E2CFFF93846FFF0000000000000000000000000000000000000000102B
      0B80020501100000000000000000000000000000000000000000000000000806
      0EBF26212EFF27222FFF27222EFF26202CFF251F2BFF241E29FF231E27FF211B
      24FF06060EBF00000000000000000000000093846FFFFBF7F0FFFAF2E9FFF7ED
      E0FFF4E7D7FF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFBF7F0FFFAF2E9FFF7ED
      E0FFF4E7D7FF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFBF7F0FFFAF2E9FFF7ED
      E0FFF6E7D7FF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      0550171420FF27222FFF27222EFF26202CFF251F2BFF241E29FF231E27FF1411
      1BFF0303055000000000000000000000000093846FFFFEFCFAFFFBF7F0FFFAF0
      E7FFF7EDE0FF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFEFCFAFFFBF7F0FFFAF0
      E7FFF7EDE0FF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFFFEFBFAFFFBF7F0FFFAF2
      E9FFF7EDE0FF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006060B9F181521FF27222EFF26202CFF251F2BFF241E29FF16131DFF0606
      0B9F0000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000093846FFF93846FFF93846FFF9384
      6FFF93846FFF93846FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003030765080811C813111CFF13111BFF08080FC8030307650000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000818181FF818181FF8181
      81FF808080FF808080FF808080FF808080FF808080FF7E7E7EFF7E7E7EFF7E7E
      7EFF7E7E7EFF7E7E7EFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000181818185A825DA2129F
      1FFF139F1FFF5A825DA218181818000000000000000027100360813708FF8137
      08FF5E4427FF6A6A6AFF6B6B6BFF646464FF797979FF6B6B6BFF626262FF5151
      51FF5E4427FF7C2600FF632602FF421702AF0000000000000000000000000000
      0000002000400050009F007200DF199F19FF1B9F1BFF007200DF0050009F0020
      004000000000000000000000000000000000000000008E8E8EFFFDFDFDFFACBA
      D7FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF8F8F8FFF8F8F8FFF8F8
      F8FFFDFDFDFF8C8C8CFF00000000000000000000000000000000000000000000
      000000000000000000000000000006080809191919194C4C4C4C65A369D683EE
      A8FF84F0ACFF65A56BD64C4C4C4C1818181800000000833808FFB54F0CFFB64F
      0DFF5E4427FF676767FF7C2600FF7C2600FFA3A3A3FFA9A9A9FF8F8F8FFF6B6B
      6BFF5E4427FF7C2600FF7B2D02FF762A03FF0000000000000000000800100059
      00AF039F03FF29D829FF6FFA6FFF9EFF9EFFA5FFA5FF7EFC7EFF34DA34FF059F
      05FF005900AF00080010000000000000000000000000989898FF949495FFACBA
      D7FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0
      A2FFE2C0A2FF969696FF00000000000000000000000000000000000000000000
      00000000000000000000000000002626262657845AA7189823F60C9717FC64E0
      90FF64E493FF0C9718FC189823F65A825DA2000000008F3F09FFBA540EFFBB54
      0EFF5E4427FF626262FF7C2600FF7C2600FFB5B5B5FFC0C0C0FFA0A0A0FF7777
      77FF5E4427FF7C2600FF7B2E03FF762A03FF0000000000080010006A00CF00B8
      00FF02DE02FF3FE13FFF78E578FF92E792FF95E995FF80E780FF48E348FF08DE
      08FF00B600FF006A00CF000800100000000000000000A1A1A1FFFAFAFAFFACBA
      D7FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEAFFE9E9E9FFE8E8E8FFE7E7
      E7FFF9F9F9FFA0A0A0FF00000000000000000C7C93FF087A91FF087A91FF087A
      91FF087A91FF087A91FF087A91FF228AA1FF119E1CFF81DF9CFF62D486FF1FC0
      58FF22C960FF65E494FF84F2ADFF139F20FF0000000092420BFFBF5910FFC05A
      10FF5E4427FF5C5C5CFF7C2600FF7C2600FFC5C5C5FFDADADAFFB7B7B7FF8585
      85FF5E4427FF7C2600FF7D3003FF772B03FF00000000005900AF00B700FF01D8
      01FF3DC73DFF61CA61FF6FD36FFF78D978FF7ADA7AFF73D573FF65CC65FF40C9
      40FF01D401FF00B200FF005900AF0000000000000000A9A9A9FFE2C0A2FFACBA
      D7FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0
      A2FFE2C0A2FFA7A7A7FF000000000000000007788FFFA3E6FFFF50D0FFFF40CA
      FFFF41CAFFFF40CAFFFF44CBFFFF8EE2FFFF139E1BFF84DD99FF62D283FF1FB7
      51FF1FC259FF64E190FF84EEA9FF129F1FFF0000000096460CFFC46013FFC562
      14FF5E4427FF575757FF575757FF575757FFC9C9C9FFF3F3F3FFD0D0D0FF9595
      95FF5E4427FF7C2600FF7E3103FF792C04FF00200040009A00FF00D800FF0A8F
      0AFF109210FF48BB48FF59C659FF61CB61FF62CB62FF45BA45FF52C152FF46B7
      46FF2AB52AFF00D000FF009700FF0020004000000000AEAEAEFFFBFBFBFFACBA
      D7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEEEEEEFFECEC
      ECFFFAFAFAFFADADADFF0000000000000000087A91FF49A6BCFF53D1FFFF14BC
      FBFF13BBFBFF13BBFBFF16BBFBFF43CBFFFF46BA95FF159D27FF099818FF62D1
      83FF62D587FF0C9618FB189823F65A825DA200000000994E14FFCA6C21FFCB6E
      24FF91541DFF5E4427FF5E4427FF5E4427FF5E4427FF5E4427FF5E4427FF5E44
      27FF683510FF752C02FF883806FF7B2D04FF0050009F00C500FF08BF08FF279F
      27FF9AD59AFF0C900CFF40B540FF49BB49FF139613FF35A635FF109310FF35AC
      35FF2AA32AFF08BA08FF00BC00FF0050009F00000000B4B4B4FFE2C0A2FFACBA
      D7FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0
      A2FFE2C0A2FFB3B3B3FF0000000000000000087A91FF229DBFFF89DCF8FF2CC7
      FEFF1BC1FDFF1DC1FDFF1EC1FDFF24C5FDFF37CBFFFF70DCFFFF58BC7CFF83DD
      99FF83E29DFF51A868F14949494918181818000000009D571EFFBA682AFFC394
      6DFFC0916BFFBE8E68FFBB8B65FFB98760FFB5825AFFB48058FFB37E57FFB17D
      57FFB07C56FFAF7B56FFA2440EFF7C2E04FF007000DF00D800FF0C990CFF0284
      02FFEAF7EAFFADDEADFF129212FF119311FF058905FFFFFFFFFF88CE88FF0589
      05FF1B961BFF0E990EFF00CA00FF007000DF00000000B7B7B7FF949495FFACBA
      D7FFF4F4F4FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF3F3F3FFF2F2F2FFF1F1
      F1FFFBFBFBFFB7B7B7FF0000000000000000087A91FF35C9FFFF4FA8B9FF5ED9
      FFFF24C7FDFF24C7FDFF24C8FDFF24C7FDFF20C6FDFF3DD0FFFF4ABE95FF139E
      1BFF129E1CFF4BAE7BFF3A42464D0000000000000000A0612BFFC38551FFEBEB
      EBFFE7E7E7FFE2E2E2FFDDDDDDFFD9D9D9FFD4D4D4FFD0D0D0FFCBCBCBFFCACA
      CAFFCACACAFFCACACAFFA85B29FF7D3004FF009600FF00DA00FF088008FF0786
      07FF65BD65FFE9E9E9FFEFEFEFFFADDEADFF65BD65FFEEEEEEFFD9D9D9FFC1E6
      C1FF088908FF068206FF00CA00FF009200FF00000000BABABAFFE2C0A2FFACBA
      D7FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0
      A2FFE2C0A2FFB9B9B9FF0000000000000000087A91FF40D1FFFF0D94BCFF90E3
      FBFF38D1FDFF2ACDFCFF2CCEFCFF2CCEFCFF2BCDFCFF33CFFCFF56D9FFFF7EE2
      FFFF82E3FFFFA4EFFFFF146576C70000000000000000A46936FFC18758FFDCDC
      DCFFD8D8D8FFD4D4D4FFD1D1D1FFCECECEFFCACACAFFC7C7C7FFC3C3C3FFBFBF
      BFFFBCBCBCFFBABABAFFA55926FF7D3105FF069906FF88F489FF3EB43EFF20A1
      20FF0B8F0BFFC1E6C1FFE9E9E9FFE5E5E5FFEFEFEFFFEBEBEBFFE2E2E2FFEEEE
      EEFFEAF6EAFF139313FF7AEE7CFF059605FF00000000BCBCBCFFFDFDFDFFACBA
      D7FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF6F6F6FFF5F5F5FFF4F4
      F4FFFCFCFCFFBCBCBCFF0000000000000000087A91FF44D1FFFF19C3FBFF57AB
      BDFF68DFFFFF36D3FEFF35D2FEFF35D2FEFF35D2FEFF36D2FEFF37D2FEFF38D3
      FEFF37D2FEFF57DCFFFF71C4DCFF091F213400000000A87141FFCC9568FFFEFE
      FEFFFBFBFBFFF7F7F7FFF2F2F2FFEEEEEEFFE9E9E9FFE5E5E5FFE0E0E0FFDADA
      DAFFD7D7D7FFD1D1D1FFAA5D2BFF7E3105FF007000DFAAF8AAFF56C556FF39B1
      39FF29AB29FF058B05FF65BD65FFEAF7EAFFFFFFFFFFFEFEFEFFFEFEFEFFFFFF
      FFFFADDEADFF129512FF98F399FF007000DF00000000BDBDBDFFE2C0A2FFACBA
      D7FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0
      A2FFE2C0A2FFBDBDBDFF0000000000000000087A91FF46D4FFFF25CDFFFF1299
      BAFFA6E6FAFF8AE4FEFF87E4FDFF88E4FDFF88E4FDFF88E4FDFF86E4FDFF85E5
      FFFF86E6FFFF8BE5FFFFBFF7FFFF125F70C200000000A9764AFFC79269FFE1E1
      E1FFE1E1E1FFE1E1E1FFE0E0E0FFDDDDDDFFD9D9D9FFD7D7D7FFD3D3D3FFCFCF
      CFFFCCCCCCFFC9C9C9FFA95C29FF7E3105FF0050009F95E396FF82E182FF4DB8
      4DFF41B541FF38B138FF1A9D1AFF098F09FF129312FFFFFFFFFFFFFFFFFF75C5
      75FF119211FF64D564FF82DE83FF0050009F00000000BEBEBEFFFDFDFDFFACBA
      D7FFFAFAFAFFFAFAFAFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF8F8F8FFF6F6
      F6FFFDFDFDFFBEBEBEFF0000000000000000087A91FF4BD6FFFF29CDFDFF2ACA
      F9FF09829BFF087A91FF087A91FF087A91FF087A91FF087A91FF087A91FF087A
      91FF087A91FF087A91FF087A91FF0B6E81E000000000AA784EFFCF9C73FFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFCFCFFF8F8F8FFF4F4F4FFEFEF
      EFFFEBEBEBFFE6E6E6FFB0632EFF803205FF002000402DA42DFFC1FCC1FF72CB
      72FF5ABD5AFF51BA51FF4BB84BFF48B748FF0B8F0BFFFFFFFFFF44AD44FF249F
      24FF6CCA6CFF99F399FF28A329FF0020004000000000BFBFBFFFE2C0A2FFACBA
      D7FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFE2C0A2FFBFBFBFFFCBCB
      CBFFDBDBDBFFB2B2B2EF0000000000000000087A91FF4ED8FFFF2CCEFEFF2FCF
      FEFF30D2FFFF2FD1FFFF33D3FFFF4BD9FFFF52DDFFFF52DDFFFF6AE4FFFF67BF
      D3FF0005060900000000000000000000000000000000AA774BFFC7946AFFE1E1
      E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFDEDE
      DEFFDCDCDCFFD8D8D8FFAC602BFF7E3205FF00000000005900AF76CB77FFC2FA
      C2FF81CF81FF6CC46CFF67C167FF64C164FF219D21FF159515FF3AAA3AFF79CF
      79FF98F098FF66CA67FF005900AF0000000000000000BFBFBFFF949495FFACBA
      D7FFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFAFAFAFFCBCBCBFFE2E2
      E2FFB3B3B3EF24242430000000000000000017859AFF75E4FFFF35D1FEFF31D0
      FEFF2FD0FEFF36D1FEFF70E2FFFF1C8AA0FF087A91FF087A91FF087A91FF107E
      94FF0105050800000000000000000000000000000000AA774BFFBA8258FFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFAFAFAFFA95E2EFF742B03FF0000000000080010056F05CF79CE
      79FFD3FCD3FFA9E9A9FF8ED58EFF82CB82FF83CB83FF88D488FF93E393FFADF6
      AFFF6ACA6AFF006800CF000800100000000000000000BFBFBFFFFFFFFFFFACBA
      D7FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFAFAFAFFDBDBDBFFB3B3
      B3EF24242430000000000000000000000000032C33572D94A9FF7DE7FFFF53DC
      FFFF52DCFFFF79E7FFFF2B94A9FF022228440000000000000000000000000000
      00000000000000000000000000000000000000000000AA774BFFBA8258FF2814
      77FF281477FF281477FF281477FF281477FF281477FF281477FF281477FF2814
      77FF281477FF281477FFA95E2EFF742B03FF0000000000000000000800100059
      00AF31A531FFAAE5AAFFD0FBD1FFC1FAC2FFB8F8B8FFBFF8C0FF99E29AFF2CA4
      2CFF005900AF00080010000000000000000000000000BFBFBFFFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFB3B3B3EF2424
      2430000000000000000000000000000000000000000006212836138297FF087A
      91FF087A91FF158398FF03222941000000000000000000000000000000000000
      00000000000000000000000000000000000000000000582E0FC1723323FF320C
      57FF320C57FF320C57FF320C57FF320C57FF320C57FF320C57FF320C57FF320C
      57FF320C57FF320C57FF692412FF511E02C10000000000000000000000000000
      0000002000400050009F007000DF229E22FF229E22FF007000DF0050009F0020
      004000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0087FF80000000000081FF800000000000
      807F800000000000803F800000000000800F8000000000008007800000000000
      8001800000000000800080000000000080008000000000008001800000000000
      8007800000000000801F800000000000807F80000000000081FF800000000000
      87FF8000000000009FFF800000000000FFFFE187FFFF00008001E00700000000
      8001E007000000008001E0070000000080010000000000008001000000000000
      8001000000000000800100000000000080018001000000008001800300000000
      800180010000000080018001E007000080018001E007000080018001E0070000
      8001FC3FF00F0000FFFFFC3FF81F0000000000000000F00F000000000000C003
      0000000000008001000000000000800100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080010000000000008001
      000000000000C003000000000000F00F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object dlgOpenProject: TOpenDialog
    DefaultExt = 'xrcx'
    Filter = 'X-Ray Calc project|*.xrcx'
    Title = 'Load project'
    Left = 296
    Top = 392
  end
  object dlgSaveProject: TSaveDialog
    DefaultExt = 'xrcx'
    Filter = 'X-Ray Calc project|*.xrcx'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save project'
    Left = 392
    Top = 392
  end
  object dlgLoadData: TOpenDialog
    DefaultExt = 'dat'
    Filter = 'ASCII data|*.txt;*.csv;*.tet|Counter files|*.dat|All files|*.*'
    Title = 'Load curve from file'
    Left = 296
    Top = 456
  end
  object dlgSaveResult: TSaveDialog
    DefaultExt = 'dat'
    Filter = 'ASCII data|*.dat'
    Title = 'Save result to file'
    Left = 392
    Top = 456
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = PeriodInsert
                Caption = '&Insert'
                ImageIndex = 8
              end>
            Action = PeriodAdd
            Caption = '&Add'
            ImageIndex = 9
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end
          item
            Action = PeriodDelete
            Caption = '&Delete'
            ImageIndex = 10
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = LayerInsert
                Caption = '&Insert'
                ImageIndex = 6
                ShortCut = 45
              end>
            Action = LayerAdd
            Caption = '&Add'
            ImageIndex = 5
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end
          item
            Caption = '-'
          end
          item
            Action = LayerDelete
            Caption = '&Delete'
            ImageIndex = 7
            ShortCut = 16430
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
      end
      item
        Items = <
          item
            ChangesAllowed = [caModify]
            Items = <
              item
                Action = FileNew
                Caption = '&New project'
                ImageIndex = 0
              end
              item
                Action = FileOpen
                Caption = '&Open project ...'
                ImageIndex = 1
                ShortCut = 114
              end
              item
                Action = FileSave
                Caption = '&Save project'
                ImageIndex = 2
                ShortCut = 16467
              end
              item
                Action = FilePrint
                Caption = '&Print'
                ImageIndex = 3
              end
              item
                Action = FileClose
                Caption = '&Exit'
                ImageIndex = 4
              end>
            Caption = '&ActionClientItem0'
            KeyTip = 'F'
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = LayerCopy
            Caption = '&Copy'
            ImageIndex = 11
            ShortCut = 24643
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = LayerCut
            Caption = 'C&ut'
            ImageIndex = 12
            ShortCut = 24664
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Items = <
              item
                Action = LayerPasteBefore
                Caption = '&Paste before'
              end
              item
                Action = LayerPasteAfter
                Caption = 'P&aster after'
              end
              item
                Action = LayerPaste
                Caption = 'Pa&ste'
                ImageIndex = 13
                ShortCut = 24662
              end>
            Action = LayerPaste
            Caption = '&Paste'
            ImageIndex = 13
            ShortCut = 24662
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end>
      end
      item
        Items = <
          item
            Action = CalcRun
            Caption = '&Run'
            ImageIndex = 14
            ShortCut = 116
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items = <
          item
            Caption = '&ActionClientItem0'
            CommandStyle = csControl
            CommandProperties.Width = 250
          end>
      end
      item
        Items = <
          item
            Caption = '&CheckBox1'
            CommandStyle = csControl
            CommandProperties.Width = 250
          end>
      end
      item
        Items = <
          item
            Caption = '&Edit1'
            CommandStyle = csControl
            CommandProperties.Width = 250
            CommandProperties.ContainedControl = edWidth
          end>
      end
      item
        Items = <
          item
            Action = ModelCreate
            Caption = '&New'
            ImageIndex = 15
          end
          item
            Action = ModelProperites
            Caption = '&Properies'
            ImageIndex = 17
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = DataPaste
                Caption = '&From clipboard'
              end>
            Action = DataLoad
            Caption = '&Load'
            ImageIndex = 1
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end>
      end
      item
        Items = <
          item
            Caption = '&Label6'
            CommandStyle = csComboBox
            CommandProperties.Width = -1
          end>
      end
      item
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ResultCopy
                Caption = '&Copy to clipboard'
                ImageIndex = 11
              end>
            Action = ResultSave
            Caption = '&Save'
            ImageIndex = 2
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end>
      end
      item
        Items = <
          item
            Caption = '&ActionClientItem0'
            CommandStyle = csControl
            CommandProperties.Width = 250
            CommandProperties.ContainedControl = pnlAngleParams
          end>
      end
      item
        Items = <
          item
            Caption = '&ActionClientItem0'
          end>
      end
      item
        Items = <
          item
            ChangesAllowed = [caModify]
            Items = <
              item
                Action = FileNew
                Caption = '&New project'
                ImageIndex = 0
              end
              item
                Action = FileOpen
                Caption = '&Open project ...'
                ImageIndex = 1
                ShortCut = 114
              end
              item
                Visible = False
                Action = FileAppend
              end
              item
                Items = <
                  item
                    Action = FileSave
                    Caption = '&Save project'
                    CommandStyle = csMenu
                    ImageIndex = 16
                    ShortCut = 16467
                    CommandProperties.Width = -1
                    CommandProperties.Content.Strings = (
                      'Save project with the same file name')
                    CommandProperties.Font.Charset = DEFAULT_CHARSET
                    CommandProperties.Font.Color = clWindowText
                    CommandProperties.Font.Height = -11
                    CommandProperties.Font.Name = 'Tahoma'
                    CommandProperties.Font.Style = []
                    CommandProperties.Height = 0
                    CommandProperties.ShowRichContent = True
                  end
                  item
                    Action = FileSaveAs
                    Caption = 'S&ave project As ...'
                    CommandStyle = csMenu
                    ImageIndex = 11
                    ShortCut = 113
                    CommandProperties.Width = -1
                    CommandProperties.Content.Strings = (
                      'Select file name and location')
                    CommandProperties.Font.Charset = DEFAULT_CHARSET
                    CommandProperties.Font.Color = clWindowText
                    CommandProperties.Font.Height = -11
                    CommandProperties.Font.Name = 'Tahoma'
                    CommandProperties.Font.Style = []
                    CommandProperties.Height = 0
                    CommandProperties.ShowRichContent = True
                  end>
                Action = FileSave
                Caption = '&Save project'
                ImageIndex = 2
                ShortCut = 16467
              end
              item
                Caption = '-'
              end
              item
                ContextItems.SmallIcons = False
                ContextItems = <>
                Items = <
                  item
                    Action = FilePlotToFile
                    Caption = '&Save plot as file ...'
                    CommandStyle = csMenu
                    ImageIndex = 14
                    CommandProperties.Width = -1
                    CommandProperties.Font.Charset = DEFAULT_CHARSET
                    CommandProperties.Font.Color = clWindowText
                    CommandProperties.Font.Height = -11
                    CommandProperties.Font.Name = 'Tahoma'
                    CommandProperties.Font.Style = []
                    CommandProperties.Height = 0
                  end
                  item
                    Action = FileCopyPlotBMP
                    Caption = '&Copy as BMP'
                    CommandStyle = csMenu
                    ImageIndex = 13
                    CommandProperties.Width = -1
                    CommandProperties.Content.Strings = (
                      'Copy plot to clipboard as bitmap')
                    CommandProperties.Font.Charset = DEFAULT_CHARSET
                    CommandProperties.Font.Color = clWindowText
                    CommandProperties.Font.Height = -11
                    CommandProperties.Font.Name = 'Tahoma'
                    CommandProperties.Font.Style = []
                    CommandProperties.Height = 0
                    CommandProperties.ShowRichContent = True
                  end
                  item
                    Action = FilePlotCopyWMF
                    Caption = 'C&opy as WMF'
                    CommandStyle = csMenu
                    ImageIndex = 13
                    CommandProperties.Width = -1
                    CommandProperties.Content.Strings = (
                      'Copy plot to clipboard as Windows metafile')
                    CommandProperties.Font.Charset = DEFAULT_CHARSET
                    CommandProperties.Font.Color = clWindowText
                    CommandProperties.Font.Height = -11
                    CommandProperties.Font.Name = 'Tahoma'
                    CommandProperties.Font.Style = []
                    CommandProperties.Height = 0
                    CommandProperties.ShowRichContent = True
                  end>
                Caption = 'E&xport plot'
                ImageIndex = 15
              end
              item
                Action = FilePrint
                Caption = '&Print'
                ImageIndex = 3
              end
              item
                Caption = '-'
              end
              item
                Action = FileClose
                Caption = '&Exit'
                ImageIndex = 4
              end>
            Caption = '&ActionClientItem0'
            KeyTip = 'F'
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = ModelCreate
            Caption = '&New'
            ImageIndex = 15
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Action = PeriodAdd
            Caption = '&Add'
            ImageIndex = 9
          end
          item
            Action = PeriodInsert
            Caption = '&Insert'
            ImageIndex = 8
          end
          item
            Action = PeriodDelete
            Caption = '&Delete'
            ImageIndex = 10
          end>
        ActionBar = RibbonGroup1
      end
      item
        Items = <
          item
            Items = <
              item
                Action = LayerInsert
                Caption = '&Insert'
                ImageIndex = 6
                ShortCut = 45
              end>
            Action = LayerAdd
            Caption = '&Add'
            ImageIndex = 5
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end
          item
            Caption = '-'
          end
          item
            Action = LayerCopy
            Caption = '&Copy'
            ImageIndex = 11
            ShortCut = 24643
          end
          item
            Items = <
              item
                Action = LayerPasteBefore
                Caption = '&Paste before'
              end
              item
                Action = LayerPasteAfter
                Caption = 'P&aster after'
              end>
            Action = LayerPaste
            Caption = '&Paste'
            ImageIndex = 13
            ShortCut = 24662
            CommandProperties.ButtonType = btSplit
          end
          item
            Items = <
              item
                Action = LayerCut
                Caption = '&Cut'
                ImageIndex = 12
                ShortCut = 24664
              end>
            Action = LayerDelete
            Caption = '&Delete'
            ImageIndex = 7
            ShortCut = 16430
            CommandProperties.ButtonType = btSplit
          end>
        ActionBar = RibbonGroup2
      end
      item
        Items = <
          item
            Action = CalcRun
            Caption = '&Run'
            ImageIndex = 9
            ShortCut = 116
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Caption = '-'
          end
          item
            Action = CalcStop
            Caption = '&Stop'
            ImageIndex = 4
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Color = 16776176
            Caption = '-'
          end
          item
            Action = CalcFitting
            Caption = '&Fitting'
            ImageIndex = 17
            ShortCut = 117
            CommandProperties.ButtonSize = bsLarge
          end>
        ActionBar = RibbonGroupCalc
      end
      item
        Items = <
          item
            Action = ResultSave
            Caption = '&Save'
            ImageIndex = 2
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ResultCopy
                Caption = '&Copy to clipboard'
                ImageIndex = 11
              end>
            Action = ResultSave
            Caption = '&Save'
            ImageIndex = 16
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end>
        ActionBar = RibbonGroup9
      end
      item
        Items = <
          item
            Caption = '&ActionClientItem0'
            CommandStyle = csControl
            CommandProperties.Width = 150
            CommandProperties.ContainedControl = edtrPeriod.RzPanel2
          end>
      end
      item
        Items = <
          item
            Action = ProjectAddFolder
            Caption = '&New Folder'
          end>
      end
      item
        Items = <
          item
            Caption = '&RibbonSpinEdit1'
          end>
      end
      item
        Items = <
          item
            Action = ModelCreate
            Caption = 'N&ew Model'
            ImageIndex = 15
          end
          item
            Action = ProjectAddFolder
            Caption = '&New Folder'
            ImageIndex = 1
          end
          item
            Action = ProjectItemExtension
            Caption = 'Ne&w extension'
            ImageIndex = 14
          end
          item
            Caption = '-'
          end
          item
            Action = ProjectItemCopy
            Caption = '&Copy as text'
            ImageIndex = 11
          end
          item
            Action = ModelProperites
            Caption = '&Properies'
            ImageIndex = 17
          end
          item
            Action = ProjectItemDelete
            Caption = '&Delete Item'
            ImageIndex = 16
          end>
        ActionBar = RibbonGroup13
      end
      item
        Items = <
          item
            Items = <
              item
                Action = DataPaste
                Caption = '&From clipboard'
                ImageIndex = 13
              end>
            Action = DataLoad
            Caption = '&Load'
            ImageIndex = 17
            KeyTip = #1087#1086#1088#1087#1087#1086#1088#1087#1086#1087#1086#1088#1086
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end
          item
            Caption = '-'
          end
          item
            Action = DataNormAuto
            Caption = '&Auto merge'
          end
          item
            Action = DataNormMan
            Caption = '&Manual merge'
          end
          item
            Action = DataNorm
            Caption = '&Normalize'
          end>
        ActionBar = RibbonGroup6
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Action = FileNew
            Caption = '&New'
            ImageIndex = 0
          end
          item
            Action = FileAppend
            Caption = 'App&end'
            ImageIndex = 1
          end
          item
            Caption = '-'
          end
          item
            Tag = 888
            Action = FileOpen
            Caption = '&Open'
            ImageIndex = 1
            ShortCut = 114
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end
          item
            Caption = '-'
          end
          item
            Action = FileSave
            Caption = '&Save'
            ImageIndex = 2
            ShortCut = 16467
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Caption = '-'
          end
          item
            Action = FileSaveAs
            Caption = 'S&ave as'
            ImageIndex = 2
            ShortCut = 113
          end
          item
            Items = <
              item
                Action = FileCopyPlotBMP
                Caption = '&Copy as BMP'
              end
              item
                Action = FilePlotCopyWMF
                Caption = 'C&opy as WMF'
              end
              item
                Caption = '&ActionClientItem2'
              end>
            Action = FilePrint
            Caption = '&Print'
            ImageIndex = 4
          end>
        ActionBar = rbngrpProject
      end
      item
        Items = <
          item
            Items = <
              item
                Action = FileCopyPlotBMP
                Caption = '&Copy as BMP'
              end
              item
                Action = FilePlotCopyWMF
                Caption = 'C&opy as WMF'
              end>
            Action = FilePlotToFile
            Caption = '&Save'
            ImageIndex = 15
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btSplit
          end>
        ActionBar = rbngrpPlot
      end
      item
        Items = <
          item
            Action = HelpRegistration
            Caption = '&Input Serial'#13#10'Number'
            ImageIndex = 18
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
        Items = <
          item
            Action = HelpContent
            Caption = '&Manual'
            ImageIndex = 26
            ShortCut = 112
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = HelpAbout
            Caption = '&About'
            ImageIndex = 25
            CommandProperties.ButtonSize = bsLarge
          end>
        ActionBar = rbngrpHelp
      end
      item
        Items = <
          item
            Action = actHomePage
            Caption = '&Home'#13#10'Page'
            ImageIndex = 19
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = actWiki
            Caption = '&Wiki'
            ImageIndex = 20
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = actSupport
            Caption = '&Support'
            ImageIndex = 22
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = actCheckUpdate
            Caption = '&Check for'#13#10'Update'
            ImageIndex = 21
            CommandProperties.ButtonSize = bsLarge
          end>
        ActionBar = rbngrpWebhelp
      end
      item
        Items = <
          item
            Action = actQuickStart
            Caption = '&Getting started'
            ImageIndex = 23
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Caption = '-'
          end
          item
            Action = actHelpStructure
            Caption = '&Multilayer'#13#10'Structure'
            ImageIndex = 24
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = actHelpFitting
            Caption = '&Fitting'
            ImageIndex = 24
            CommandProperties.ButtonSize = bsLarge
          end>
        ActionBar = rbngrpTutorials
      end
      item
        Items = <
          item
            Action = CalcGenetic
            Caption = '&Start'
            ImageIndex = 9
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Caption = '-'
          end
          item
            Action = CalcStop
            Caption = 'S&top'
            ImageIndex = 4
            CommandProperties.ButtonSize = bsLarge
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = actShowLibrary
            Caption = '&Library'
            ImageIndex = 19
            CommandProperties.ButtonSize = bsLarge
          end>
        ActionBar = grpMaterial
      end>
    LargeImages = il_32
    Images = il_16
    Left = 648
    Top = 256
    StyleName = 'Ribbon - Luna'
    object FileNew: TAction
      Category = 'Help'
      Caption = 'New project'
      ImageIndex = 0
      OnExecute = FileNewExecute
    end
    object FileOpen: TAction
      Category = 'Help'
      Caption = 'Open project ...'
      ImageIndex = 1
      ShortCut = 114
      OnExecute = FileOpenExecute
    end
    object FileSave: TAction
      Category = 'Help'
      Caption = 'Save project'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = FileSaveExecute
    end
    object FilePrint: TAction
      Category = 'Help'
      Caption = 'Print'
      ImageIndex = 3
      OnExecute = FilePrintExecute
    end
    object FileClose: TAction
      Category = 'Help'
      Caption = 'Exit'
      ImageIndex = 4
      OnExecute = FileCloseExecute
    end
    object LayerAdd: TAction
      Category = 'Layer'
      Caption = 'Add'
      ImageIndex = 5
      OnExecute = LayerAddExecute
    end
    object LayerInsert: TAction
      Category = 'Layer'
      Caption = 'Insert'
      ImageIndex = 6
      ShortCut = 45
      OnExecute = LayerInsertExecute
    end
    object LayerDelete: TAction
      Category = 'Layer'
      Caption = 'Delete'
      ImageIndex = 7
      ShortCut = 16430
      OnExecute = LayerDeleteExecute
    end
    object PeriodAdd: TAction
      Category = 'Period'
      Caption = 'Add'
      ImageIndex = 9
      OnExecute = PeriodAddExecute
    end
    object PeriodInsert: TAction
      Category = 'Period'
      Caption = 'Insert'
      ImageIndex = 8
      OnExecute = PeriodInsertExecute
    end
    object PeriodDelete: TAction
      Category = 'Period'
      Caption = 'Delete'
      ImageIndex = 10
      OnExecute = PeriodDeleteExecute
    end
    object LayerCopy: TAction
      Category = 'Layer'
      Caption = 'Copy'
      ImageIndex = 11
      ShortCut = 24643
      OnExecute = LayerCopyExecute
    end
    object LayerCut: TAction
      Category = 'Layer'
      Caption = 'Cut'
      ImageIndex = 12
      ShortCut = 24664
      OnExecute = LayerCutExecute
    end
    object LayerPaste: TAction
      Category = 'Layer'
      Caption = 'Paste'
      Hint = 'Paste & replace'
      ImageIndex = 13
      ShortCut = 24662
      OnExecute = LayerPasteExecute
    end
    object LayerPasteBefore: TAction
      Category = 'Layer'
      Caption = 'Paste before'
    end
    object LayerPasteAfter: TAction
      Category = 'Layer'
      Caption = 'Paster after'
    end
    object CalcRun: TAction
      Category = 'Calc'
      Caption = 'Run'
      Hint = 'Start calculation'
      ImageIndex = 12
      ShortCut = 116
      OnExecute = CalcRunExecute
    end
    object ModelCreate: TAction
      Category = 'Project Item'
      Caption = 'New'
      ImageIndex = 15
      OnExecute = ModelCreateExecute
    end
    object ModelProperites: TAction
      Category = 'Project Item'
      Caption = 'Properies'
      ImageIndex = 17
      OnExecute = ModelProperitesExecute
    end
    object DataLoad: TAction
      Category = 'Data'
      Caption = 'Load'
      ImageIndex = 17
      OnExecute = DataLoadExecute
    end
    object DataPaste: TAction
      Category = 'Data'
      Caption = 'From clipboard'
      ImageIndex = 13
      OnExecute = DataPasteExecute
    end
    object ResultSave: TAction
      Category = 'Result'
      Caption = 'Save'
      ImageIndex = 16
      OnExecute = ResultSaveExecute
    end
    object ResultCopy: TAction
      Category = 'Result'
      Caption = 'Copy to clipboard'
      ImageIndex = 11
      OnExecute = ResultCopyExecute
    end
    object FileSaveAs: TAction
      Category = 'Help'
      Caption = 'Save project As ...'
      ImageIndex = 2
      ShortCut = 113
      OnExecute = FileSaveAsExecute
    end
    object CalcTest: TAction
      Category = 'Calc'
      Caption = 'Test run'
    end
    object ProjectAddFolder: TAction
      Category = 'Project Item'
      Caption = 'New Folder'
      ImageIndex = 1
      OnExecute = ProjectAddFolderExecute
    end
    object CalcAll: TAction
      Category = 'Calc'
      Caption = 'Calc all models'
      ShortCut = 123
      OnExecute = CalcAllExecute
    end
    object ProjectItemDelete: TAction
      Category = 'Project Item'
      Caption = 'Delete Item'
      ImageIndex = 16
      OnExecute = ProjectItemDeleteExecute
    end
    object ProjectItemCopy: TAction
      Category = 'Project Item'
      Caption = 'Copy as text'
      ImageIndex = 11
      OnExecute = ProjectItemCopyExecute
    end
    object CalcStop: TAction
      Category = 'Calc'
      Caption = 'Stop'
      ImageIndex = 13
      OnExecute = CalcStopExecute
    end
    object DataNormAuto: TAction
      Category = 'Data'
      Caption = 'Auto'
      OnExecute = DataNormAutoExecute
    end
    object DataNormMan: TAction
      Category = 'Data'
      Caption = 'Manual'
      OnExecute = DataNormManExecute
    end
    object DataNorm: TAction
      Category = 'Data'
      Caption = 'Normalize'
      OnExecute = DataNormExecute
    end
    object FilePlotToFile: TAction
      Category = 'Help'
      Caption = 'Save plot as file ...'
      OnExecute = FilePlotToFileExecute
    end
    object FileCopyPlotBMP: TAction
      Category = 'Help'
      Caption = 'Copy as BMP'
      OnExecute = FileCopyPlotBMPExecute
    end
    object FilePlotCopyWMF: TAction
      Category = 'Help'
      Caption = 'Copy as WMF'
      OnExecute = FilePlotCopyWMFExecute
    end
    object FileAppend: TAction
      Category = 'Help'
      Caption = 'Append project ...'
      OnExecute = FileAppendExecute
    end
    object CalcGenetic: TAction
      Category = 'Calc'
      Caption = 'Genetic'
      Enabled = False
      OnExecute = CalcGeneticExecute
    end
    object HelpHelp: TAction
      Category = 'Help'
      Caption = 'Help'
      ImageIndex = 18
      OnExecute = HelpHelpExecute
    end
    object HelpRegistration: TAction
      Category = 'Help'
      Caption = 'Registration'
      ImageIndex = 22
    end
    object HelpAbout: TAction
      Category = 'Help'
      Caption = 'About ...'
      ImageIndex = 21
      OnExecute = HelpAboutExecute
    end
    object HelpContent: TAction
      Category = 'Help'
      Caption = 'Help content'
      ImageIndex = 19
      ShortCut = 112
      OnExecute = HelpContentExecute
    end
    object actHomePage: TAction
      Category = 'Help'
      Caption = 'Home'#13#10'Page'
      OnExecute = actHomePageExecute
    end
    object actCheckUpdate: TAction
      Category = 'Help'
      Caption = 'Check for'#13#10'Update'
      OnExecute = actCheckUpdateExecute
    end
    object actWiki: TAction
      Category = 'Help'
      Caption = 'Wiki'
      OnExecute = actWikiExecute
    end
    object actSupport: TAction
      Category = 'Help'
      Caption = 'Support'
      OnExecute = actSupportExecute
    end
    object actQuickStart: TAction
      Category = 'Help'
      Caption = 'Getting Started'
      OnExecute = actQuickStartExecute
    end
    object actHelpStructure: TAction
      Category = 'Help'
      Caption = 'Multilayer'#13#10'Structure'
      OnExecute = actHelpStructureExecute
    end
    object actHelpFitting: TAction
      Category = 'Help'
      Caption = 'Fitting'
      OnExecute = actHelpFittingExecute
    end
    object ProjectItemExtension: TAction
      Category = 'Project Item'
      Caption = 'New extension'
      ImageIndex = 14
      OnExecute = ProjectItemExtensionExecute
    end
    object DataCopyClpbrd: TAction
      Category = 'Data'
      Caption = 'DataCopyClpbrd'
      OnExecute = DataCopyClpbrdExecute
    end
    object DataExport: TAction
      Category = 'Data'
      Caption = 'DataExport'
      OnExecute = DataExportExecute
    end
    object CalcFitting: TAction
      Category = 'Calc'
      Caption = 'Fitting'
      ImageIndex = 17
      ShortCut = 117
      OnExecute = CalcFittingExecute
    end
    object actShowLibrary: TAction
      Category = 'Materials'
      Caption = 'Show Library'
      OnExecute = actShowLibraryExecute
    end
  end
  object RzVersionInfo: TRzVersionInfo
    Left = 80
    Top = 328
  end
  object ScreenTipsManager: TScreenTipsManager
    FooterImage.Data = {
      07544269746D61709E020000424D9E0200000000000036000000280000000E00
      00000E000000010018000000000068020000C40E0000C40E0000000000000000
      0000FF0099FF0099FF0099B8B8B8DADADABDAFAAC7ACA2C9AEA3C1B3ADE7E7E7
      CFCFCFFF0099FF0099FF00990000FF0099FF0099C7C7C7BDA49BA65336B85029
      BC532AC1572BC55A2CB86039CBB0A4D9D9D9FF0099FF00990000FF0099C7C7C7
      9D6B5CAE4927B24C28BC6241DCBCAFDDAF9CC2582BC5592CC4592BB37E68D9D9
      D9FF00990000C7C7C7B9A099A84426AC4727B14B28C18E7CCFCFCFE3E3E3BF55
      2AC0562BC0562BBE552AC8AEA4CFCFCF0000DCDCDCA4543AA84627AA4626AE49
      27B25231B5826FC4836BBA522ABB532ABB532ABA5229AA5636E7E7E70000BEB1
      ADB0502FB65631A84426AB4727AD5B3FA8A8A8AB9188B64F29B75029B64F29B5
      4E29B34D28BFB1AC0000C2ABA3B35633BD6138B85932A84426AB4727A2A2A2A7
      A7A7AE5C3FB24C28B24C28B14B28AF4A27C4ABA20000C8B2AAB55B37BD643BC2
      693CBE6338AF4E2CA66855A8A8A8A9A3A1B3684EAD4827AC4827AB4726C2A9A1
      0000CFC6C2B96744BC673EC06A3EC26B3EC46C3DBF6538BF907CC7C7C7CFC2BE
      AA4727AE4B29AC4929BCAFAB0000EBEBEBC89780BB6A42BE6C41C98B6ADCC1B2
      CF9474DBBAA9E8E8E8EEEEEEC06137BA5932A6553BDBDBDB0000B8B8B8EBE3E0
      C2805DBB6F45CA8F6FF4F4F4F5F5F5F5F5F5F6F6F6E5C9BCBB5E37B25230C0A7
      A0C7C7C70000FF0099CECECEDBCAC1C2835FBE7952D8AE96E9D1C4EEDACFD9AA
      93BF6C47B45936A37465C7C7C7FF00990000FF0099FF0099DCDCDCEBE4E1C9A0
      87BC7751B96F46BA6C44B96740B06B4DC1AAA2C7C7C7FF0099FF00990000FF00
      99FF0099FF0099D6D6D6ECECECD3CCC8D1BFB5CEBBB2C9BFBADEDEDEB8B8B8FF
      0099FF0099FF00990000}
    LinkedActionLists = <
      item
        ActionList = ActionManager
        Caption = 'ActionManager'
      end>
    ScreenTips = <
      item
        Action = FileNew
        Description.Strings = (
          'Create new empty project')
        Header = 'New project'
      end
      item
        Action = FileOpen
        Description.Strings = (
          'Open existing project')
        Header = 'Open project'
      end
      item
        Action = FileSave
        Description.Strings = (
          'Save project with the same file name')
        Header = 'Save project'
      end
      item
        Action = FilePrint
        Header = 'Print'
      end
      item
        Action = FileClose
        Description.Strings = (
          'Close application')
        Header = 'FileClose'
      end
      item
        Action = LayerAdd
        Description.Strings = (
          'Add a new layer to the selected stack')
        Header = 'Add'
      end
      item
        Action = LayerInsert
        Description.Strings = (
          'Insert a new layer into the selected stack')
        Header = 'Insert'
      end
      item
        Action = LayerDelete
        Description.Strings = (
          'Delete the selected layer')
        Header = 'Delete'
      end
      item
        Action = PeriodAdd
        Description.Strings = (
          'Add a new stack (group of layers) to the model')
        Header = 'Add'
      end
      item
        Action = PeriodInsert
        Description.Strings = (
          'Insert a new stack')
        Header = 'Insert'
      end
      item
        Action = PeriodDelete
        Description.Strings = (
          'Delete the selected stack')
        Header = 'Delete'
      end
      item
        Action = LayerCopy
        Description.Strings = (
          'Copy the selected layer to the clipboard')
        Header = 'Copy'
      end
      item
        Action = LayerCut
        Description.Strings = (
          'Cut the selected layer to the clipboard')
        Header = 'Cut'
      end
      item
        Action = LayerPaste
        Description.Strings = (
          'Paste & replace')
        Header = 'Paste'
      end
      item
        Action = LayerPasteBefore
        Header = 'Paste before'
      end
      item
        Action = LayerPasteAfter
        Header = 'Paster after'
      end
      item
        Action = CalcRun
        Description.Strings = (
          'Calculate the active model')
        Header = 'Run'
      end
      item
        Action = ModelCreate
        Description.Strings = (
          'Create a new empty model')
        Header = 'New'
      end
      item
        Action = ModelProperites
        Description.Strings = (
          'Item'#39's properties')
        Header = 'Edit'
      end
      item
        Action = DataLoad
        Description.Strings = (
          'Create a new dataset and load data a file')
        Header = 'Load'
      end
      item
        Action = DataPaste
        Description.Strings = (
          
            'Create new dataset and paste experimental data from the clipboar' +
            'd')
        Header = 'From clipboard'
      end
      item
        Action = ResultSave
        Description.Strings = (
          'Save results to ASCII file ')
        Header = 'Save'
      end
      item
        Action = ResultCopy
        Description.Strings = (
          'Copy results to the clipboard')
        Header = 'Copy to clipboard'
      end
      item
        Action = FileSaveAs
        Description.Strings = (
          'Select new file name and save the project')
        Header = 'Save project As ...'
      end
      item
        Action = CalcTest
        Description.Strings = (
          'Run the test calculation to estimate the performance')
        Header = 'Test run'
      end
      item
        Action = ProjectAddFolder
        Description.Strings = (
          'Add a new folder')
        Header = 'Add'
      end
      item
        Action = CalcAll
        Description.Strings = (
          #1057'alculate all models')
        Header = 'Calc all models'
      end
      item
        Action = ProjectItemDelete
        Description.Strings = (
          'Delete the selected project item (Folder, Model, or Data)')
        Header = 'Delete Item'
      end
      item
        Action = ProjectItemCopy
        Description.Strings = (
          
            'Copy content of the selected item to the clipboard as plain text' +
            ' ')
        Header = 'Copy as text'
      end
      item
        Action = CalcStop
        Header = 'Stop'
      end
      item
        Action = DataNormAuto
        Header = 'Auto'
      end
      item
        Action = DataNormMan
        Header = 'Manual'
      end
      item
        Action = DataNorm
        Header = 'Normalize'
      end
      item
        Action = FilePlotToFile
        Header = 'Save plot as file ...'
      end
      item
        Action = FileCopyPlotBMP
        Header = 'Copy as BMP'
      end
      item
        Action = FilePlotCopyWMF
        Header = 'Copy as WMF'
      end
      item
        Action = FileAppend
        Header = 'Append project ...'
      end
      item
        Action = CalcGenetic
        Header = 'Genetic'
      end
      item
        Action = HelpHelp
        Header = 'Help'
      end
      item
        Action = HelpRegistration
        Header = 'Registration'
      end
      item
        Action = HelpAbout
        Header = 'About ...'
      end
      item
        Action = HelpContent
        Header = 'Help content'
      end
      item
        Action = actHomePage
        Header = 'Home'#13#10'Page'
      end
      item
        Action = actCheckUpdate
        Header = 'Check for'#13#10'Update'
      end
      item
        Action = actWiki
        Header = 'Wiki'
      end
      item
        Action = actSupport
        Header = 'Support'
      end
      item
        Action = actQuickStart
        Header = 'Quick'#13#10'Start'
      end
      item
        Action = actHelpStructure
        Header = 'Multilayer'#13#10'Structure'
      end
      item
        Action = actHelpFitting
        Header = 'Fitting'
      end
      item
        Action = ProjectItemExtension
        Header = 'New extension'
      end
      item
        Action = DataCopyClpbrd
        Header = 'DataCopyClpbrd'
      end
      item
        Action = DataExport
        Header = 'DataExport'
      end
      item
        Action = CalcFitting
        Description.Strings = (
          'Show the manual fitting floating panel')
        Header = 'Fitting'
      end
      item
        Action = actShowLibrary
        Header = 'Show Library'
      end>
    Left = 608
    Top = 376
  end
  object pmProject: TPopupMenu
    OnPopup = pmProjectPopup
    Left = 128
    Top = 368
    object pmiNorm: TMenuItem
      Caption = 'Normalize'
      object Auto1: TMenuItem
        Action = DataNormAuto
      end
      object Manual1: TMenuItem
        Action = DataNormMan
      end
    end
    object pmiVisible: TMenuItem
      AutoCheck = True
      Caption = 'Visible'
      OnClick = pmiVisibleClick
    end
    object pmiLinked: TMenuItem
      AutoCheck = True
      Caption = 'Linked'
      OnClick = pmiLinkedClick
    end
    object pmiEnabled: TMenuItem
      AutoCheck = True
      Caption = 'Enabled'
      ShortCut = 114
      OnClick = pmiEnabledClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Properties1: TMenuItem
      Caption = 'Properties'
      OnClick = Properties1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object pmCopytoclipboard: TMenuItem
      Action = DataCopyClpbrd
      Caption = 'Copy to clipboard'
    end
    object pmExporttofile: TMenuItem
      Action = DataExport
      Caption = 'Export to file'
    end
  end
  object dlgExport: TSaveDialog
    Filter = 
      'Bitmaps (*.bmp)|*.bmp|Enhanced Metafiles (*.emf)|*.emf|Metafiles' +
      ' (*.wmf)|*.wmf'
    Left = 496
    Top = 464
  end
  object dlgPrint: TPrintDialog
    Left = 552
    Top = 465
  end
  object pmStructure: TPopupMenu
    OnPopup = pmStructurePopup
    Left = 712
    Top = 368
    object Edit1: TMenuItem
      Caption = 'Edit'
      ShortCut = 16453
      OnClick = Edit1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object miCopy: TMenuItem
      Action = LayerCopy
    end
    object miCut: TMenuItem
      Action = LayerCut
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miAddStack: TMenuItem
      Action = PeriodAdd
      Caption = 'Add stack'
    end
    object miAdd: TMenuItem
      Action = LayerAdd
      Caption = 'Add layer'
    end
    object miInsert: TMenuItem
      Action = LayerInsert
      Caption = 'Insert layer'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object miDelete: TMenuItem
      Action = LayerDelete
      Caption = 'Delete layer'
    end
    object miDeleteStack: TMenuItem
      Action = PeriodDelete
      Caption = 'Delete stack'
    end
  end
  object UnZip: TAbUnZipper
    Left = 754
    Top = 502
  end
  object Zip: TAbZipper
    AutoSave = False
    DOSMode = False
    Left = 842
    Top = 494
  end
end
