﻿(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit frm_main;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, ActnMan, ToolWin, ActnCtrls, Ribbon,
  RibbonLunaStyleActnCtrls, RibbonSilverStyleActnCtrls, RzTabs, ExtCtrls,
  RzPanel, VirtualTrees, ActnMenus, RibbonActnMenus, TeEngine, Series,
  TeeProcs, Chart, StdCtrls, Mask, RzEdit, RzSplit, unit_types, RzCmboBx,
  RzSpnEdt, RzButton, RzRadChk, RzRadGrp, XPMan, RzStatus, ActiveX, ScreenTips,
  Menus, GestureMgr, System.Actions, unit_calc,
  unit_VersionChecker, Vcl.Buttons, VclTee.TeeGDIPlus, System.ImageList,
  editor_Gradient, unit_consts, AbBase, AbBrowse, AbZBrows, AbUnzper, AbZipper, AbUtils, System.IOUtils;


type
  TfrmMain = class(TForm)
    il_32: TImageList;
    RzStatusBar1: TRzStatusBar;
    il_16: TImageList;
    Panel: TRzSizePanel;
    RzPanel1: TRzPanel;
    Pages: TRzPageControl;
    tsCalc: TRzTabSheet;
    Chart: TChart;
    tsStructure: TRzTabSheet;
    Project: TVirtualStringTree;
    Tree: TVirtualStringTree;
    dlgOpenProject: TOpenDialog;
    dlgSaveProject: TSaveDialog;
    dlgLoadData: TOpenDialog;
    dlgSaveResult: TSaveDialog;
    RzPanel3: TRzPanel;
    ActionManager: TActionManager;
    FileNew: TAction;
    FileOpen: TAction;
    FileSave: TAction;
    FilePrint: TAction;
    FileClose: TAction;
    LayerAdd: TAction;
    LayerInsert: TAction;
    LayerDelete: TAction;
    PeriodAdd: TAction;
    PeriodInsert: TAction;
    PeriodDelete: TAction;
    LayerCopy: TAction;
    LayerCut: TAction;
    LayerPaste: TAction;
    LayerPasteBefore: TAction;
    LayerPasteAfter: TAction;
    CalcRun: TAction;
    ModelCreate: TAction;
    ModelProperites: TAction;
    DataLoad: TAction;
    DataPaste: TAction;
    ResultSave: TAction;
    ResultCopy: TAction;
    FileSaveAs: TAction;
    Ribbon: TRibbon;
    rbStructure: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    rbnpgCalc: TRibbonPage;
    RibbonGroupCalc: TRibbonGroup;
    RibbonGroup5: TRibbonGroup;
    pnlAngleParams: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edStartTeta: TEdit;
    edEndTeta: TEdit;
    edWidth: TEdit;
    edLambda: TEdit;
    cb2Theta: TRzCheckBox;
    RibbonGroup10: TRibbonGroup;
    pnlWaveParams: TRzPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edStartL: TEdit;
    edEndL: TEdit;
    edTheta: TEdit;
    RibbonGroup11: TRibbonGroup;
    RzPanel6: TRzPanel;
    Label5: TLabel;
    edN: TEdit;
    RibbonGroup9: TRibbonGroup;
    rgPolarisation: TRadioGroup;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    rgCalcMode: TRadioGroup;
    edDL: TEdit;
    Label12: TLabel;
    RzStatusPane1: TRzStatusPane;
    RzStatusPane2: TRzStatusPane;
    StatusY: TRzStatusPane;
    StatusX: TRzStatusPane;
    RzStatusPane3: TRzStatusPane;
    RzStatusPane4: TRzStatusPane;
    StatusMaxX: TRzStatusPane;
    StatusRMax: TRzStatusPane;
    RzStatusPane5: TRzStatusPane;
    StatusD: TRzStatusPane;
    RzVersionInfo: TRzVersionInfo;
    spnTime: TRzStatusPane;
    CalcTest: TAction;
    btnChartScale: TRzBitBtn;
    ProjectAddFolder: TAction;
    RzPanel5: TRzPanel;
    mmDescription: TRzMemo;
    CalcAll: TAction;
    ScreenTipsManager: TScreenTipsManager;
    RibbonGroup13: TRibbonGroup;
    ProjectItemDelete: TAction;
    ProjectItemCopy: TAction;
    CalcStop: TAction;
    pmProject: TPopupMenu;
    pmiNorm: TMenuItem;
    Auto1: TMenuItem;
    Manual1: TMenuItem;
    DataNormAuto: TAction;
    DataNormMan: TAction;
    Properties1: TMenuItem;
    RibbonGroup6: TRibbonGroup;
    DataNorm: TAction;
    N1: TMenuItem;
    pmiVisible: TMenuItem;
    pmiLinked: TMenuItem;
    dlgExport: TSaveDialog;
    dlgPrint: TPrintDialog;
    FilePlotToFile: TAction;
    FileCopyPlotBMP: TAction;
    FilePlotCopyWMF: TAction;
    cbMinLimit: TRzComboBox;
    pmStructure: TPopupMenu;
    miAdd: TMenuItem;
    miCopy: TMenuItem;
    miCut: TMenuItem;
    miDelete: TMenuItem;
    miInsert: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Edit1: TMenuItem;
    N4: TMenuItem;
    spRegistered: TRzStatusPane;
    HelpHelp: TAction;
    HelpRegistration: TAction;
    HelpAbout: TAction;
    HelpContent: TAction;
    rbngrpProject: TRibbonGroup;
    rbngrpPlot: TRibbonGroup;
    rbnpgHelp: TRibbonPage;
    rbngrpHelp: TRibbonGroup;
    rbngrpWebhelp: TRibbonGroup;
    rbngrpTutorials: TRibbonGroup;
    actHomePage: TAction;
    actCheckUpdate: TAction;
    actWiki: TAction;
    actSupport: TAction;
    actQuickStart: TAction;
    actHelpStructure: TAction;
    actHelpFitting: TAction;
    Status: TRzStatusPane;
    ProjectItemExtension: TAction;
    pmiEnabled: TMenuItem;
    tsGradients: TRzTabSheet;
    chGradients: TChart;
    Series1: TPointSeries;
    pmCopytoclipboard: TMenuItem;
    pmExporttofile: TMenuItem;
    N5: TMenuItem;
    DataCopyClpbrd: TAction;
    DataExport: TAction;
    CalcFitting: TAction;
    grpMaterial: TRibbonGroup;
    actShowLibrary: TAction;
    UnZip: TAbUnZipper;
    Zip: TAbZipper;
    miAddStack: TMenuItem;
    miDeleteStack: TMenuItem;
    RzStatusPane7: TRzStatusPane;
    RzStatusPane10: TRzStatusPane;
    RzStatusPane6: TRzStatusPane;
    StatusRi: TRzStatusPane;
    Progress: TRzProgressStatus;
    actAutoFitting: TAction;
    spChiSqr: TRzStatusPane;
    procedure FileNewExecute(Sender: TObject);
    procedure LayerAddExecute(Sender: TObject);
    procedure FileCloseExecute(Sender: TObject);
    procedure FileOpenExecute(Sender: TObject);
    procedure FileSaveExecute(Sender: TObject);
    procedure LayerInsertExecute(Sender: TObject);
    procedure LayerDeleteExecute(Sender: TObject);
    procedure PeriodAddExecute(Sender: TObject);
    procedure PeriodInsertExecute(Sender: TObject);
    procedure PeriodDeleteExecute(Sender: TObject);
    procedure LayerCopyExecute(Sender: TObject);
    procedure LayerCutExecute(Sender: TObject);
    procedure LayerPasteExecute(Sender: TObject);
    procedure TreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure TreeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TreePaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      TextType: TVSTTextType);
    procedure TreeSaveNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Stream: TStream);
    procedure TreeLoadNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Stream: TStream);
    procedure CalcRunExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PagesChange(Sender: TObject);
    procedure ProjectGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure ProjectPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      TextType: TVSTTextType);
    procedure ProjectFocusChanging(Sender: TBaseVirtualTree;
      OldNode, NewNode: PVirtualNode; OldColumn, NewColumn: TColumnIndex;
      var Allowed: Boolean);
    procedure ProjectSaveNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Stream: TStream);
    procedure ProjectLoadNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Stream: TStream);
    procedure DataLoadExecute(Sender: TObject);
    procedure DataPasteExecute(Sender: TObject);
    procedure ModelCreateExecute(Sender: TObject);
    procedure ModelProperitesExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RibbonTabChange(Sender: TObject;
      const NewIndex, OldIndex: Integer; var AllowChange: Boolean);
    procedure seH_FSLChange(Sender: TObject);
    procedure ResultCopyExecute(Sender: TObject);
    procedure ResultSaveExecute(Sender: TObject);
    procedure FileSaveAsExecute(Sender: TObject);
    procedure rgModeClick(Sender: TObject);
    procedure ChartMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ChartMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ChartMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ChartZoom(Sender: TObject);
    procedure btnChartScaleClick(Sender: TObject);
    procedure ProjectAddFolderExecute(Sender: TObject);
    procedure ProjectDblClick(Sender: TObject);
    procedure ProjectDragOver(Sender: TBaseVirtualTree; Source: TObject;
      Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode;
      var Effect: Integer; var Accept: Boolean);
    procedure ProjectDragDrop(Sender: TBaseVirtualTree; Source: TObject;
      DataObject: IDataObject; Formats: TFormatArray; Shift: TShiftState;
      Pt: TPoint; var Effect: Integer; Mode: TDropMode);
    procedure CalcAllExecute(Sender: TObject);
    procedure ProjectItemDeleteExecute(Sender: TObject);
    procedure FilePrintExecute(Sender: TObject);
    procedure ProjectItemCopyExecute(Sender: TObject);
    procedure CalcStopExecute(Sender: TObject);
    procedure pmProjectPopup(Sender: TObject);
    procedure Properties1Click(Sender: TObject);
    procedure DataNormAutoExecute(Sender: TObject);
    procedure ProjectChange(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure DataNormExecute(Sender: TObject);
    procedure DataNormManExecute(Sender: TObject);
    procedure ProjectAfterCellPaint(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      CellRect: TRect);
    procedure pmiVisibleClick(Sender: TObject);
    procedure pmiLinkedClick(Sender: TObject);
    procedure ChartClickLegend(Sender: TCustomChart; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeBeforeCellPaint(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      CellPaintMode: TVTCellPaintMode; CellRect: TRect; var ContentRect: TRect);
    procedure RibbonRecentItemClick(Sender: TObject; FileName: string;
      Index: Integer);
    procedure FilePlotToFileExecute(Sender: TObject);
    procedure FileCopyPlotBMPExecute(Sender: TObject);
    procedure FilePlotCopyWMFExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure RibbonHelpButtonClick(Sender: TObject);
    procedure HelpHelpExecute(Sender: TObject);
    procedure HelpAboutExecute(Sender: TObject);
    procedure HelpContentExecute(Sender: TObject);
    procedure actHomePageExecute(Sender: TObject);
    procedure actSupportExecute(Sender: TObject);
    procedure actWikiExecute(Sender: TObject);
    procedure actHelpStructureExecute(Sender: TObject);
    procedure actHelpFittingExecute(Sender: TObject);
    procedure actQuickStartExecute(Sender: TObject);
    procedure actCheckUpdateExecute(Sender: TObject);
    procedure ProjectItemExtensionExecute(Sender: TObject);
    procedure pmiEnabledClick(Sender: TObject);
    procedure TreeCreateEditor(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; out EditLink: IVTEditLink);
    procedure TreeEditing(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; var Allowed: Boolean);
    procedure TreeFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure Edit1Click(Sender: TObject);
    procedure TreeDblClick(Sender: TObject);
    procedure DataCopyClpbrdExecute(Sender: TObject);
    procedure DataExportExecute(Sender: TObject);
    procedure CalcFittingExecute(Sender: TObject);
    procedure actShowLibraryExecute(Sender: TObject);
    procedure TreeChange(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure pmStructurePopup(Sender: TObject);
    procedure ChartAllowScroll(Sender: TChartAxis; var AMin, AMax: Double;
      var AllowScroll: Boolean);
    procedure TreeHeaderDrawQueryElements(Sender: TVTHeader;
      var PaintInfo: THeaderPaintInfo; var Elements: THeaderPaintElements);
    procedure TreeAdvancedHeaderDraw(Sender: TVTHeader;
      var PaintInfo: THeaderPaintInfo; const Elements: THeaderPaintElements);
    procedure ProjectAdvancedHeaderDraw(Sender: TVTHeader;
      var PaintInfo: THeaderPaintInfo; const Elements: THeaderPaintElements);
    procedure ProjectHeaderDrawQueryElements(Sender: TVTHeader;
      var PaintInfo: THeaderPaintInfo; var Elements: THeaderPaintElements);
    procedure actAutoFittingExecute(Sender: TObject);
  private
    { Private declarations }
    FSubstrate: PVirtualNode;

    FProjectDir: string;
    FProjectName: string;
    FProjectFileName: string;
    FIgnoreFocusChange: Boolean;

    FIgnore: Boolean;
    FLastID: Integer;

    FLayersList: TLayerComboItemList;

    FCurrentLayerData: PRowData;

    FModelsRoot: PVirtualNode;
    FDataRoot: PVirtualNode;

    FLayerBuff: array of TRowData;

    FVersionChecker: TVersionCheckerThread;
    FProjectVersion: Byte;

    IsStack: Boolean;
    IsLayer: Boolean;
    IsSubs: Boolean;

    procedure FillLayerCombos;
    procedure EditRow;
    procedure EditProjectItem;
    procedure PrepareDemoData;
    procedure CreateDefaultProject;

    procedure DeleteModel(Node: PVirtualNode; Data: PProjectData);

    procedure SaveProject(const FileName: string);
    procedure LoadProject(const FileName: string; Clear: Boolean = True);
    procedure PrintMax;
    procedure CreateNewModel(Node: PVirtualNode);

    function ModelName(Data: PProjectData): string;
    function DataName(Data: PProjectData): string;
    procedure DeleteFolder(Node: PVirtualNode);
    procedure DeleteData(Node: PVirtualNode; Data: PProjectData);
    function TreeToStr: string;

    procedure FillRecentList;
  private
    IsFolder, IsItem, IsData, IsModel, IsExtension: Boolean;
    LastNode, FLastModel: PVirtualNode;
    LastData: PProjectData;

    ThreadsRunning: Integer;

    procedure OnMyMessage(var Msg: TMessage); message WM_RECALC;
    procedure PlotResults(Calc: TCalc);
    procedure CreateNewExtension(Node: PVirtualNode);
    procedure DeleteExtension(Node: PVirtualNode);
    procedure WMStartEditing(var Message: TMessage); message WM_STARTEDITING;
    procedure FillExtensionPeriods(var Periods: TCombobox);
    procedure SaveData;
    procedure MoveModels(const OldPath, NewPath: string);
    procedure GetThreadParams(var CD: TThreadParams);
    procedure FinalizeCalc(Calc: TCalc);

  public
    { Public declarations }
    FResults: array of TDataArray;
    RT: TStringList;

    FActiveModel, FActiveData, FLinkedData: PProjectData;
    procedure GetNextLayer;
    procedure AddResult(const S: string);
    procedure AddRecentItem(const FileName: string;const First:boolean = False);
    procedure FillExtensionLayres(const Period: string; var Layres: TCombobox);
    procedure AfterConstruction; override;
  end;

var
  frmMain: TfrmMain;
  StartTime: TDateTime;

implementation

uses
  editor_Layer,
  unit_helpers,
  unit_settings,
  IniFiles,
  DateUtils,
  ClipBrd,
  math_complex,
  math_globals,
  unit_materials,
  editor_period,
  editor_proj_item,
  editor_Normalisation,
  editor_Substrate,
  frm_about,
  unit_VTEditors,
  frm_fitting,
  frm_MList,
  unit_Permutate,
  System.Math;

{$R *.dfm}

procedure TfrmMain.CalcAllExecute(Sender: TObject);
var
  Node: PVirtualNode;
  Data: PProjectData;
begin
  if FModelsRoot.ChildCount > 0 then
    Node := Project.GetFirstChild(FModelsRoot)
  else
    Exit;

  while Node <> FDataRoot do
  begin
    Data := Project.GetNodeData(Node);
    if Data.RowType = prItem then
    begin
      Project.FocusedNode := Node;
      CalcRunExecute(Sender);
    end;
    Node := Project.GetNext(Node);
  end;
end;

procedure TfrmMain.CalcFittingExecute(Sender: TObject);
var
  Data: PRowData;
  Node: PVirtualNode;
begin
  frmFitWin.Reset;
  frmFitWin.MainForm := Self.Handle;

  Node := Tree.GetLast;
  while Node <> nil do
  begin
    Data := Tree.GetNodeData(Node);
    if Data.RowType = rtLayer then
       frmFitWin.SetData(Data);
    if (Data.RowType = rtStack) and (Node <> Tree.GetFirst) then
       frmFitWin.AddSeparator;
    Node := Tree.GetPrevious(Node);
  end;
  frmFitWin.ShowModal;
end;

procedure TfrmMain.PlotResults(Calc: TCalc);    { TODO -ooleks -c : Move to unit_calc 17.03.2020 17:03:45 }
var
  j: Integer;
begin
  FActiveModel.Curve.Clear;
  for j := 0 to High(Calc.Results) do
      FActiveModel.Curve.AddXY(Calc.Results[j].t, Calc.Results[j].R);
end;

procedure TfrmMain.GetThreadParams(var CD: TThreadParams);
var
  StartT, EndT: single;
begin
  RT.Clear;

  StartTime := Now;

  Screen.Cursor := crHourGlass;
  FActiveModel.Curve.BeginUpdate;

  CalcRun.Enabled := False;

  StartT := StrToFloat(edStartTeta.Text);
  EndT := StrToFloat(edEndTeta.Text);

  if cb2Theta.Checked then
    CD.k := 2
  else
    CD.k := 1;

  if rgPolarisation.ItemIndex = 0 then
    CD.P := cmS
  else
    CD.P := cmSP;

  case rgCalcMode.ItemIndex of
    0:begin
        CD.Mode := cmTheta;
        CD.Lambda := StrToFloat(edLambda.Text);
        CD.StartT := StartT;
        CD.EndT   := EndT;
        CD.DT     := StrToFloat(edWidth.Text);
      end;

    1:
      begin
        ThreadsRunning := 1;
        SetLength(FResults, 1);
        CD.Mode := cmLambda;
        CD.Theta := StrToFloat(edTheta.Text);
        CD.StartL := StrToFloat(edStartL.Text);
        CD.EndL := StrToFloat(edEndL.Text);
        CD.DW := StrToFloat(edDL.Text);
      end;
  end;

  CD.RF := rfError;
  CD.N := StrToInt(edN.Text);
 end;

procedure TfrmMain.FinalizeCalc(Calc: TCalc);
var
  Hour, Min, Sec, MSec: Word;
begin
  PlotResults(Calc);
  DecodeTime(Now - StartTime, Hour, Min, Sec, MSec);
  spnTime.Caption := Format('Time: %d.%3.3d s.', [60 * Min + Sec, MSec]);
  FActiveModel.Curve.EndUpdate;
  FActiveModel.Curve.Repaint;
  StatusD.Caption := FloatToStrF(Calc.TotalD, ffFixed, 7, 2);
  tsGradients.TabVisible := Calc.HasGradients;
  Screen.Cursor := crDefault;
  CalcRun.Enabled := True;
  PrintMax;
end;


procedure TfrmMain.CalcRunExecute(Sender: TObject);
var
  CD: TThreadParams;
  Calc: TCalc;
begin
  if (FActiveModel = nil) or (Tree.ChildCount[Nil] = 0) then
    Exit;
  GetThreadParams(CD);
  try
    Calc := TCalc.Create;
    Calc.Model := FLastModel;

    if (FLinkedData <> nil) and FActiveData.Curve.Visible then
       Calc.ExpValues := SeriesToData(FLinkedData.Curve);

    try
      Calc.CalcData := CD;
      Calc.Limit := StrToFloat(cbMinLimit.Text);
      Calc.Tree := Tree;
      Calc.GradientChart  := chGradients;
      Pages.ActivePage := tsCalc;
      Calc.Run;
    except
      on E: exception do
      begin
        ShowMessage(E.Message);
        FActiveModel.Curve.EndUpdate;
        FActiveModel.Curve.Repaint;
        Screen.Cursor := crDefault;
        CalcRun.Enabled := True;
      end;
    end;
    FinalizeCalc(Calc);
  finally
    FreeAndNil(Calc);
  end;
end;

procedure TfrmMain.CalcStopExecute(Sender: TObject);
begin
  FActiveModel.Curve.Clear;
end;

procedure TfrmMain.PrintMax;
var
  X, Y, mx, x1, x2, my, RI, OldX: single;
  i: Integer;
begin
  if FActiveModel.Curve.Count = 0 then
    Exit;

  my := 0;
  x1 := Chart.BottomAxis.Minimum;
  x2 := Chart.BottomAxis.Maximum;
  RI := 0;
  OldX := FActiveModel.Curve.XValue[1];
  for i := 2 to FActiveModel.Curve.Count - 2 do
  begin
    X := FActiveModel.Curve.XValue[i];
    Y := FActiveModel.Curve.YValue[i];
    if (X > x1) and (X < x2) and (Y > my) then
    begin
      RI := RI + Y * abs(OldX - X);
      my := Y;
      mx := X;
    end;
    OldX := X;
  end;

  if my < 0.01 then
  begin
    StatusRMax.Caption := FloatToStrF(my, ffExponent, 3, 2);
    Chart.LeftAxis.AxisValuesFormat := '0.00e-0';
  end
  else
  begin
    StatusRMax.Caption := FloatToStrF(my, ffFixed, 4, 3);
    Chart.LeftAxis.AxisValuesFormat := '0.000';
  end;

  StatusMaxX.Caption := FloatToStrF(mx, ffFixed, 5, 4);
  StatusRi.Caption := FloatToStrF(RI, ffFixed, 7, 4);
end;

procedure TfrmMain.ChartAllowScroll(Sender: TChartAxis; var AMin, AMax: Double;
  var AllowScroll: Boolean);
begin
  AllowScroll := False;
end;

procedure TfrmMain.ChartClickLegend(Sender: TCustomChart; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Project.Repaint;
end;

procedure TfrmMain.ChartMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    Screen.Cursor := crSizeAll;
end;

procedure TfrmMain.ChartMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  xv, yv: single;
  R: TRect;
begin
  if FActiveModel = nil then
    Exit;

  xv := FActiveModel.Curve.XScreenToValue(X);
  yv := FActiveModel.Curve.YScreenToValue(Y);
  StatusX.Caption := FloatToStrF(xv, ffFixed, 4, 3);
  if yv < 0.01 then
    StatusY.Caption := FloatToStrF(yv, ffExponent, 3, 2)
  else
    StatusY.Caption := FloatToStrF(yv, ffFixed, 4, 3);

  R := Chart.Legend.RectLegend;

  if (X > R.Left) and (X < R.Right) and (Y > R.Top) and (Y < R.Bottom) then
    Chart.Cursor := crArrow
  else
    Chart.Cursor := crCross;

end;

procedure TfrmMain.ChartMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    Screen.Cursor := crDefault;
end;

procedure TfrmMain.ChartZoom(Sender: TObject);
begin
  PrintMax;
end;

procedure TfrmMain.CreateDefaultProject;
var
  Data: PRowData;
  PD: PProjectData;
  PG, PL: PVirtualNode;

begin
  if DirectoryExists(FProjectDir) then
    ClearDir(FProjectDir);
  RemoveDirectory(PChar(FProjectDir));

  Chart.SeriesList.Clear;
  Tree.Clear;
  Project.Clear;

  FLastID := 1;
  FProjectName := 'noname.xrcx';
  FProjectDir := IncludeTrailingPathDelimiter(Settings.TempPath + FProjectName);
  FProjectFileName := FProjectDir + FProjectName;
  CreateDir(FProjectDir);

  // дефолтный проект
  PG := Project.AddChild(Nil, Nil);
  PD := Project.GetNodeData(PG);
  PD.Title := 'Models';
  PD.Group := gtModel;
  PD.RowType := prGroup;

  FModelsRoot := PG;

  // добавляем модель
  PL := Project.AddChild(PG, Nil);
  PD := Project.GetNodeData(PL);
  PD.ID := FLastID;
  inc(FLastID);
  PD.Title := 'Model 1';
  PD.Group := gtModel;
  PD.RowType := prItem;
  PD.Curve := TLineSeries.Create(Chart);
  Chart.AddSeries(PD.Curve);
  PD.Curve.Title := PD.Title;
  PD.Curve.Color := clRed;
  PD.Color := clRed;
  PD.Curve.LinePen.Width := 2;
  FActiveModel := PD; // делаем ее дефолтной

  FSubstrate := Tree.AddChild(Nil);
  Data := Tree.GetNodeData(FSubstrate);
  Data.RowType := rtSubstrate;
  Data.Text := 'Si';
  Data.s := '5';
  Data.H := 'substrate';

  Tree.SaveToFile(ModelName(PD)); // сохраняем модель
  Project.Expanded[PG] := True;

  // данные
  PG := Project.AddChild(Nil, Nil);
  PD := Project.GetNodeData(PG);
  PD.Title := 'Data';
  PD.Group := gtData;
  PD.RowType := prGroup;
  Project.Expanded[PG] := True;

  FDataRoot := PG;

  Ribbon.DocumentName := FProjectName;
end;

procedure TfrmMain.CreateNewExtension(Node: PVirtualNode);
var
  Data: PProjectData;
begin
  Data := Project.GetNodeData(Node);

  Data.Group := gtModel;
  Data.Enabled := True;
  Data.RowType := prExtension;
  Data.Title := 'Gradient 1';
  Data.ExtType := etGradient;
  Data.Rate := 0.14;
  Data.ParentLayerName := 'C';
  Data.ParentStackName := 'Main';
  Data.Form := gtLine;

  Project.ClearSelection;
  Project.Selected[Node] := True;
  Tree.SaveToFile(ModelName(Data));
end;


procedure TfrmMain.CreateNewModel(Node: PVirtualNode);
var
  Data: PProjectData;
  MD: PRowData;
begin
  Data := Project.GetNodeData(Node);
  Data.ID := FLastID;
  if Data.Title = '' then
  begin // новая модель
    Data.Title := InputBox('New model', 'Model name',
      'Model ' + IntToStr(FLastID));
    Tree.Clear;
  end
  else // копия
    Data.Title := 'Model ' + IntToStr(FLastID);

  Data.Group := gtModel;
  Data.RowType := prItem;
  Data.Curve := TLineSeries.Create(Chart);
  Data.Curve.Title := Data.Title;
  Data.Color := Data.Curve.Color;
  Chart.AddSeries(Data.Curve);
  Data.Curve.LinePen.Width := 2;

  FSubstrate := Tree.AddChild(Nil);
  MD := Tree.GetNodeData(FSubstrate);
  MD.RowType := rtSubstrate;
  MD.Text := 'Si';
  MD.s := '5';
  MD.H := 'substrate';

  Project.ClearSelection;
  Tree.SaveToFile(ModelName(Data));
  FActiveModel := Data;
  inc(FLastID);
  Project.Selected[Node] := True;
end;

procedure TfrmMain.DeleteData(Node: PVirtualNode; Data: PProjectData);
begin
  DeleteFile(DataName(Data));
  Data.Curve.Free;
  Project.DeleteNode(Node);
  Project.Refresh;
end;

procedure TfrmMain.DeleteExtension(Node: PVirtualNode);
begin
  Project.DeleteNode(Node);
  Project.Refresh;
end;


procedure TfrmMain.DataCopyClpbrdExecute(Sender: TObject);
begin
  SeriesToClipboard(FActiveData.Curve);
end;

procedure TfrmMain.DataExportExecute(Sender: TObject);
begin
  if dlgSaveResult.Execute then
      SeriesToFile(FActiveData.Curve, dlgSaveResult.FileName);
end;

procedure TfrmMain.DataLoadExecute(Sender: TObject);
var
  Data: PProjectData;
  Node: PVirtualNode;
begin
  if not dlgLoadData.Execute then
    Exit;

  Node := Project.GetFirstSelected;
  if Node = nil then
    Node := FDataRoot;

  Data := Project.GetNodeData(Node);
  if (Data.RowType = prFolder) and (Data.Group = gtData) then
    Node := Project.AddChild(Node)
  else
    Node := Project.AddChild(FDataRoot);

  Data := Project.GetNodeData(Node);
  Data.ID := FLastID;
  inc(FLastID);
  Data.Title := ExtractFileName(dlgLoadData.FileName);
  Data.Group := gtData;
  Data.RowType := prItem;
  Data.Curve := TLineSeries.Create(Chart);
  Data.Curve.Title := Data.Title;
  Data.Color := Data.Curve.Color;
  Data.Curve.LinePen.Width := 2;

  SeriesFromFile(Data.Curve, dlgLoadData.FileName, Data.Description);
  Chart.AddSeries(Data.Curve);

  SeriesToFile(Data.Curve, DataName(Data));

  FActiveData := Data;
  Project.Expanded[FDataRoot] := True;
end;

procedure TfrmMain.DataPasteExecute(Sender: TObject);
var
  Data: PProjectData;
  Node: PVirtualNode;
begin
  Node := Project.AddChild(FDataRoot);
  Data := Project.GetNodeData(Node);

  Data.ID := DateTimeToUnix(Now);
  Data.Title := 'Data ' + IntToStr(Node.Index + 1) + '.dat';
  Data.Group := gtData;
  Data.RowType := prItem;
  Data.Curve := TLineSeries.Create(Chart);
  Data.Curve.Title := Data.Title;
  Data.Color := Data.Curve.Color;
  Data.Curve.LinePen.Width := 2;

  SeriesFromClipboard(Data.Curve);
  Chart.AddSeries(Data.Curve);
  SeriesToFile(Data.Curve, DataName(Data));
end;

procedure TfrmMain.DeleteModel(Node: PVirtualNode; Data: PProjectData);
begin
  Data.Curve.Free;
  DeleteFile(ModelName(FActiveModel));
  Project.DeleteNode(Node);
  Project.Repaint;
  FActiveModel := nil;
  Tree.Clear;
end;

procedure TfrmMain.Edit1Click(Sender: TObject);
begin
  EditRow;
end;

procedure TfrmMain.FillExtensionLayres(const Period: string; var Layres: TCombobox);
var
  Node: PVirtualNode;
  Data: PRowData;
  Inside: boolean;
begin
  Layres.Items.Clear;
  Node := Tree.GetFirst;
  while Node <> Nil do
  begin
    Data := Tree.GetNodeData(Node);
    if Data.RowType <> rtSubstrate then
    begin
      if Data.IsPeriod then
         Inside := Data.Text = Period;
      if Inside and Data.IsLayer then
         Layres.Items.Add(Data.Text)
    end;
    Node := Tree.GetNext(Node);
  end;
  Layres.ItemIndex := 0;
end;

procedure TfrmMain.FillExtensionPeriods(var Periods: TCombobox);
var
  Node: PVirtualNode;
  Data: PRowData;
begin
  Periods.Items.Clear;
  Node := Tree.GetFirst;
  while Node <> Nil do
  begin
    Data := Tree.GetNodeData(Node);
    if Data.RowType <> rtSubstrate then
    begin
      if Data.IsPeriod then
        Periods.Items.Add(Data.Text)
    end;
    Node := Tree.GetNext(Node);
  end;
end;

procedure TfrmMain.EditProjectItem;
var
  Node: PVirtualNode;
  Data: PProjectData;
begin
  Node := Project.GetFirstSelected;
  Data := Project.GetNodeData(Node);
  case Data.RowType of
    prFolder:
      begin
        Data.Title := InputBox('Folder', 'Edit the folder''s title', Data.Title);
        Tree.RepaintNode(Node);
      end;
    prItem:
      begin
        edtrProjectItem.Data := Data;
        if edtrProjectItem.ShowModal = mrOk then
        begin
          Data.Curve.Color := Data.Color;
          Data.Curve.Title := Data.Title;
          mmDescription.Lines.Text := Data.Description;
        end;
        Tree.Repaint;
      end;
    prExtension:
      begin
        edtrGradient.Data := Data;
        FillExtensionPeriods(edtrGradient.cbPeriod);
        if edtrGradient.ShowModal = mrOk then
        begin
          mmDescription.Lines.Text := Data.Description;
        end;
      end;
  end;

end;

procedure TfrmMain.EditRow;
var
  Data: PRowData;
  Node: PVirtualNode;

begin
  Node := Tree.FocusedNode;
  if Node = nil then
    Exit;

  Data := Tree.GetNodeData(Tree.FocusedNode);
  case Data.RowType of
    rtLayer:
      begin
        edtrLayer.Data := Data;
        edtrLayer.Tree := Tree;
        edtrLayer.ShowModal;
        Tree.RepaintNode(Tree.FocusedNode);
      end;
    rtStack:
      begin
        edtrPeriod.Data := Data;
        if edtrPeriod.ShowModal = mrOk then
          Tree.RepaintNode(Tree.FocusedNode);
      end;
    rtSubstrate:
      begin
        edtrSubstrate.Data := Data;
        if edtrSubstrate.ShowModal = mrOk then
          Tree.RepaintNode(Tree.FocusedNode);
      end;
  end;
end;

procedure TfrmMain.FileCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.FileCopyPlotBMPExecute(Sender: TObject);
begin
  case Pages.ActivePageIndex of
    0, 1: Chart.CopyToClipboardBitmap;
       2: chGradients.CopyToClipboardBitmap;
  end;
end;

procedure TfrmMain.FilePlotCopyWMFExecute(Sender: TObject);
begin
  case Pages.ActivePageIndex of
    0, 1: Chart.CopyToClipboardMetafile(True);
       2: chGradients.CopyToClipboardMetafile(True);
  end;
end;

procedure TfrmMain.FileNewExecute(Sender: TObject);
begin
  CreateDefaultProject;
end;

procedure TfrmMain.FileOpenExecute(Sender: TObject);
var
  FileName: String;
begin
  if (Sender as TAction).Tag = 99 then
  begin
    FileName := (Sender as TAction).Caption;
    FileName := StringReplace(FileName,'&','',[]);
    LoadProject(FileName);
    AddRecentItem(FileName);
  end
  else
    if dlgOpenProject.Execute then
    begin
      LoadProject(dlgOpenProject.FileName);
      AddRecentItem(FProjectFileName , True);
    end;
end;

function TfrmMain.TreeToStr: string;
begin
  Result := Tree.ContentToText(tstAll, '    ');
  Result := StringReplace(Result,
    'Material        Thickness    Roughness    Density    N',
    'Material   H, A     s, A   ro, g/cm3', []);
end;

procedure TfrmMain.WMStartEditing(var Message: TMessage);
var
  Node: PVirtualNode;

begin
  Node := Pointer(Message.WParam);
  // Note: the test whether a node can really be edited is done in the OnEditing event.
  Tree.EditNode(Node, 1);
end;

procedure TfrmMain.FilePlotToFileExecute(Sender: TObject);
begin
  if dlgExport.Execute then
    Case dlgExport.FilterIndex of
      1:
        Chart.SaveToBitmapFile(dlgExport.FileName + '.bmp');
      2:
        Chart.SaveToMetafileEnh(dlgExport.FileName + '.emf');
      3:
        Chart.SaveToMetafile(dlgExport.FileName + '.wmf');
    end;

end;

procedure TfrmMain.FilePrintExecute(Sender: TObject);
begin
  if dlgPrint.Execute then
  begin
    Chart.Title.Text.Text := TreeToStr;
    Chart.Title.Visible := True;
    Chart.PrintLandscape;
    Chart.Title.Visible := False;
  end;
end;

procedure TfrmMain.FileSaveAsExecute(Sender: TObject);
var
  OldProjectDir: string;
begin
  if dlgSaveProject.Execute then
  begin
    OldProjectDir := FProjectDir;
    FProjectName := ExtractFileName(dlgSaveProject.FileName);
    FProjectDir := IncludeTrailingPathDelimiter
      (Settings.TempPath + FProjectName);

    if DirectoryExists(FProjectDir) then
        ClearDir(FProjectDir, True);

    CreateDir(FProjectDir);
    SaveData;
    MoveModels(OldProjectDir, FProjectDir);
    SaveProject(dlgSaveProject.FileName);
    LoadProject(dlgSaveProject.FileName);
    FProjectFileName := dlgSaveProject.FileName;

    AddRecentItem(FProjectFileName, True);
  end;
end;

procedure TfrmMain.FileSaveExecute(Sender: TObject);
begin
  if FProjectName = 'noname.xrcx' then
    FileSaveAsExecute(Sender)
  else
    SaveProject(FProjectFileName);
end;

procedure TfrmMain.FillLayerCombos;
var
  Node: PVirtualNode;
  Data: PRowData;
  i, k: Integer;
begin
  SetLength(FLayersList, Tree.AbsoluteIndex(Tree.GetLast) + 1);
  i := 0;
  k := 0;

  Node := Tree.GetFirst;
  while Node <> Nil do
  begin
    Data := Tree.GetNodeData(Node);
    if Data.RowType <> rtSubstrate then
    begin
      if Data.IsPeriod then
      begin
        FLayersList[i].Title := Data.Text;
        FLayersList[i].ItemType := itHeader;
        inc(k);
      end
      else
      begin
        FLayersList[i].Title := IntToStr(k) + ':  ' + Data.Text;
        FLayersList[i].ItemType := itLayer;
      end;
      FLayersList[i].Data := Data;
      inc(i);
    end;
    Node := Tree.GetNext(Node);
  end;

end;

procedure TfrmMain.FillRecentList;
var
  P: Integer;
  S, tmpS: string;
begin
  S := Settings.RecentFiles;
  S := StringReplace(S, '&', '', [rfReplaceAll]);
  P := pos(';', s);
  while P <> 0 do
  begin
    tmpS := copy(s, 1, P - 1);
    AddRecentItem(tmpS);
    Delete(S, 1, P);
    P := pos(';', S);
  end;
end;

procedure TfrmMain.PrepareDemoData;
var
  Data: PRowData;
  MP, ML: PVirtualNode;

begin
  CreateDefaultProject;

  MP := Tree.AddChild(Nil);
  Data := Tree.GetNodeData(MP);
  Data.Text := 'Main';
  Data.RowType := rtStack;
  Data.N := 200;

  ML := Tree.AddChild(MP);
  Data := Tree.GetNodeData(ML);
  Data.Text := 'Si';
  Data.RowType := rtLayer;
  Data.H := '60';
  Data.s := '';
  Data.R := '';
  ML := Tree.AddChild(MP);
  Data := Tree.GetNodeData(ML);
  Data.Text := 'Mo';
  Data.RowType := rtLayer;
  Data.H := '40';
  Data.s := '';
  Data.R := '';
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FormatSettings.DecimalSeparator := '.';
  tsGradients.TabVisible := False;


  Tree.NodeDataSize := SizeOf(TRowData);
  Project.NodeDataSize := SizeOf(TProjectData);

  CreateSettings;
  CreateDir(Settings.TempDir);
  Pages.ActivePageindex := 0;

  if ParamCount <> 0 then
  begin
    if FileExists(ParamStr(1)) then
    begin
      FProjectFileName := ParamStr(1);
      LoadProject(FProjectFileName);
    end
    else
      CreateDefaultProject;
  end
  else
    CreateDefaultProject;

  FillRecentList;

  // ---------------------------------
  Panel.Width := Settings.SplitterPosition;
  cbMinLimit.Text := Settings.MinLimit;

  RT := TStringList.Create;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  ClearDir(FProjectDir, True);
  if DirectoryExists(Settings.TempDir) then
    ClearDir(Settings.TempDir);

   Settings.RecentFiles := RecentItemsToString(rbngrpProject.Items[2].Items);

  Settings.SplitterPosition := Panel.Width;
  Settings.MinLimit := cbMinLimit.Text;

  Settings.SaveSettings;

  RT := TStringList.Create;
end;

procedure TfrmMain.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    - 1:
      begin
        Pages.ActivePageindex := 0;
        Handled := True;
      end;
    -2:
      begin
        Pages.ActivePageindex := 1;
        Handled := True;
      end;
  end;
end;

procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F1) and (ssCtrl in Shift) then
    Pages.ActivePageindex := 0;
  if (Key = VK_F2) and (ssCtrl in Shift) then
    Pages.ActivePageindex := 0;
end;

procedure TfrmMain.GetNextLayer;
var
  Node: PVirtualNode;
begin
  Node := Tree.FocusedNode;
  Tree.ClearSelection;
  Node := Tree.GetNextSibling(Node);
  Tree.Selected[Node] := True;

  edtrLayer.Data := Tree.GetNodeData(Node);
end;

procedure TfrmMain.OnMyMessage(var Msg: TMessage);
begin
  CalcRunExecute(Self);
end;

procedure TfrmMain.HelpAboutExecute(Sender: TObject);
begin
  frmAbout.ShowModal;
end;

procedure TfrmMain.HelpContentExecute(Sender: TObject);
begin
  OpenHelpFile('Manual.pdf');
end;

procedure TfrmMain.HelpHelpExecute(Sender: TObject);
begin
  OpenHelpFile('Manual.pdf');
end;

procedure TfrmMain.LayerAddExecute(Sender: TObject);
var
  Data: PRowData;
  Node: PVirtualNode;
  Parent: PVirtualNode;
begin
  if Tree.GetFirst = FSubstrate then
  begin
    PeriodAddExecute(Sender);
    Parent := Tree.GetFirst;
  end
  else
    Parent := Tree.GetFirstSelected;

  if Parent = FSubstrate then
    Parent := Tree.GetFirst;

  if Tree.NodeParent[Parent] <> nil then
    Parent := Tree.NodeParent[Parent];

  if Parent = nil then Parent := Tree.GetFirst;

  Node := Tree.AddChild(Parent);
  Data := Tree.GetNodeData(Node);
  Data.RowType := rtLayer;
  Data.Text := 'Si';
  Data.H := '10';
  Data.RowType := rtLayer;
  Tree.Expanded[Parent] := True;
  Tree.ClearSelection;
  Tree.Selected[Node] := True;
end;

procedure TfrmMain.LayerCopyExecute(Sender: TObject);
var
  i: Integer;
  Node: PVirtualNode;
  Data: PRowData;
begin
  SetLength(FLayerBuff, Tree.SelectedCount);
  Node := Tree.GetFirstSelected;
  i := 0;
  while Node <> nil do
  begin
    Data := Tree.GetNodeData(Node);
    if Data.RowType = rtLayer then
    begin
      FLayerBuff[i] := Data^;
      inc(i);
    end;
    Node := Tree.GetNextSelected(Node);
  end;
end;

procedure TfrmMain.LayerCutExecute(Sender: TObject);
begin
  LayerCopyExecute(Sender);
  LayerDeleteExecute(Sender);
end;

procedure TfrmMain.LayerDeleteExecute(Sender: TObject);
var
  Data: PRowData;
  Node: PVirtualNode;
begin
  Node := Tree.GetFirstSelected;
  while Node <> nil do
  begin
    Data := Tree.GetNodeData(Node);
    if Data.RowType = rtSubstrate then
    begin
      ShowMessage('You couldn''t delete the substrate layer!');
    end
    else
      if Data.RowType = rtLayer then
        Tree.DeleteNode(Node);
    Node := Tree.GetNextSelected(Node);
  end;
end;

procedure TfrmMain.LayerInsertExecute(Sender: TObject);
var
  Node: PVirtualNode;
  Data: PRowData;
begin
  Node := Tree.GetFirstSelected;
  if (Node = nil) or (Node = FSubstrate) then
    Exit;

  Data := Tree.GetNodeData(Node);
  if Data.RowType = rtStack then
    Node := Tree.GetFirstChild(Node);

  if Node <> nil then
    Node := Tree.InsertNode(Node, amInsertBefore)
  else
    Node := Tree.AddChild(Tree.GetFirstSelected);

  Data := Tree.GetNodeData(Node);
  Data.Text := 'Si';
  Data.H := '10';
  Data.RowType := rtLayer;

  Tree.Repaint;
end;

procedure TfrmMain.LayerPasteExecute(Sender: TObject);
var
  i: Integer;
  Node: PVirtualNode;
  Data: PRowData;
begin
  Node := Tree.GetFirstSelected;
  if (Node = nil) then Exit;

  Data := Tree.GetNodeData(Node);

  if Data.RowType = rtSubstrate then Exit;


  if Data.IsLayer then
    Node := Node.Parent;

  if Node.ChildCount > 0 then
  begin
    Node := Tree.GetLastChild(Node);

    for i := 0 to Length(FLayerBuff) - 1 do
    begin
      if FLayerBuff[i].Text <> '' then
      begin
        Data := Tree.GetNodeData(Tree.InsertNode(Node, amInsertAfter));
        Data^ := FLayerBuff[i];
      end;
    end;
  end
  else
  begin
    for i := 0 to Length(FLayerBuff) - 1 do
    begin
      if FLayerBuff[i].Text <> '' then
      begin
        Data := Tree.GetNodeData(Tree.AddChild(Node));
        Data^ := FLayerBuff[i];
      end;
    end;

  end;
  Tree.Repaint;
end;

procedure TfrmMain.PagesChange(Sender: TObject);
begin
  Ribbon.TabIndex := Pages.ActivePageindex;
  if Pages.ActivePageindex = 1 then
    FillLayerCombos;
end;


procedure TfrmMain.PeriodDeleteExecute(Sender: TObject);
var
  Node: PVirtualNode;
  AllowDelete: Boolean;
begin
  Node := Tree.GetFirstSelected;

  if (Node = Tree.GetLast) or (Node = nil) then Exit;

  if Tree.NodeParent[Node] <> Nil then
    Node := Tree.NodeParent[Node];

  if Node.ChildCount > 0 then
    AllowDelete :=
      (MessageDlg('Selected period contains layers. Proceed with removal?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes)
  else
    AllowDelete := True;

  if AllowDelete then
    Tree.DeleteNode(Node);
end;

procedure TfrmMain.PeriodInsertExecute(Sender: TObject);
var
  Node: PVirtualNode;
  Data: PRowData;
  Text: string;
begin
  Text := 'Stack';
  if not InputQuery('New Stack', 'Input a title', Text) then
    Exit;

  Node := Tree.GetFirstSelected;
  if Node = Nil then Node := Tree.GetFirst;

  Data := Tree.GetNodeData(Node);

  if Data.IsLayer then
    Node := Tree.InsertNode(Node.Parent, amInsertBefore)
  else
    Node := Tree.InsertNode(Node, amInsertBefore);

  Data := Tree.GetNodeData(Node);
  Data.Text := Text;
  Data.N := 1;
  Data.RowType := rtStack;
  Tree.Refresh;
end;

procedure TfrmMain.PeriodAddExecute(Sender: TObject);
var
  Data: PRowData;
  Node: PVirtualNode;
  LastStack: PVirtualNode;
  Text: string;
begin
  Text := 'Stack';

  if not InputQuery('New stack', 'Input a title', Text) then
    Exit;

  Node := Tree.GetFirstSelected;
  if Node = Nil then //find the last stack
  begin
    LastStack:= nil;

    Node := Tree.GetFirst;
    while node <> nil do
    begin
      Data := Tree.GetNodeData(Node);
      if Data.IsPeriod then LastStack := Node;
      Node := Tree.GetNext(Node);
    end;

    if LastStack <> Nil then Node := LastStack
       else Node := Tree.GetFirst;
  end;

  Data := Tree.GetNodeData(Node);

  if Data.IsSubstrate then
    Node := Tree.InsertNode(Node, amInsertBefore)
  else
    if Data.IsLayer then
        Node := Tree.InsertNode(Node.Parent, amInsertAfter)
      else
        Node := Tree.InsertNode(Node, amInsertAfter);


  Data := Tree.GetNodeData(Node);
  Data.RowType := rtStack;
  Data.Text := Text;
  Data.N := 1;

  Tree.Repaint;
end;

procedure TfrmMain.pmiEnabledClick(Sender: TObject);
begin
  LastData.Enabled := not LastData.Enabled;
  Project.Repaint;
end;

procedure TfrmMain.pmiLinkedClick(Sender: TObject);
begin
  if not pmiLinked.Checked then
    FLinkedData := nil
  else
    FLinkedData := LastData;

  Project.Repaint;
end;

procedure TfrmMain.pmiVisibleClick(Sender: TObject);
begin
  LastData.Curve.Visible := not LastData.Curve.Visible;
  Project.Repaint;
end;

procedure TfrmMain.pmProjectPopup(Sender: TObject);
begin
  pmiNorm.Visible := IsData and IsItem;
  pmCopytoclipboard.Visible  := IsData and IsItem;
  pmExporttofile.Visible  := IsData and IsItem;
  N5.Visible  := IsData and IsItem;

  pmiVisible.Visible := IsItem;
  pmiEnabled.Visible := IsExtension;
  if pmiEnabled.Visible then
    pmiEnabled.Checked := LastData.Enabled;
  if pmiVisible.Visible then
    pmiVisible.Checked := LastData.Curve.Visible;
  pmiLinked.Visible := IsData and IsItem;
  if pmiLinked.Visible then
    pmiLinked.Checked := LastData = FLinkedData;
end;

procedure TfrmMain.pmStructurePopup(Sender: TObject);
begin
  miAddStack.Visible := IsSubs;

  miInsert.Visible   := IsStack or IsLayer;
  miAdd.Visible      := IsStack or IsLayer;
  miDelete.Visible   := IsStack or IsLayer;
  miInsert.Visible   := IsStack or IsLayer;
  miCut.Visible      := IsLayer;
  miCopy.Visible     := IsLayer;

  miDeleteStack.Visible := IsStack;
  miDelete.Visible      := IsLayer;
end;

procedure TfrmMain.ProjectAddFolderExecute(Sender: TObject);
var
  Node: PVirtualNode;
  Data: PProjectData;
  PD: PProjectData;

  s: string;
begin
  s := 'Folder';
  if not InputQuery('New folder', 'Input folder title', s) or (s = '') then
    Exit;

  Node := Project.GetFirstSelected;
  if Node = nil then
    Node := FModelsRoot;

  PD := Project.GetNodeData(Node);
  if PD.RowType <> prGroup then
  begin
    case PD.Group of
      gtModel:
        Node := Project.AddChild(FModelsRoot);
      gtData:
        Node := Project.AddChild(FDataRoot);
    end;
  end
  else
    Node := Project.AddChild(Node);
  Data := Project.GetNodeData(Node);
  Data.ID := 0;
  Data.Title := s;
  Data.Group := PD.Group;
  Data.RowType := prFolder;
  Project.ClearSelection;
  Project.Selected[Node] := True;
end;

procedure TfrmMain.ProjectAdvancedHeaderDraw(Sender: TVTHeader;
  var PaintInfo: THeaderPaintInfo; const Elements: THeaderPaintElements);
begin
  if hpeBackground in Elements then
  begin
    PaintInfo.TargetCanvas.Brush.Color := clSkyBlue; // <-- your color here
    if Assigned(PaintInfo.Column) then
      DrawFrameControl(PaintInfo.TargetCanvas.Handle, PaintInfo.PaintRectangle, DFC_BUTTON, DFCS_FLAT or DFCS_ADJUSTRECT); // <-- I think, that this keeps the style of the header background, but I'm not sure about that
    PaintInfo.TargetCanvas.FillRect(PaintInfo.PaintRectangle);
  end;
end;

procedure TfrmMain.ProjectAfterCellPaint(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  CellRect: TRect);
const
  Points: array [0 .. 2] of TPoint = ((X: 25; Y: 4), (X: 32; Y: 9),
    (X: 25; Y: 13));

var
  Data: PProjectData;
begin
  if (Column <> 0) or FIgnoreFocusChange then
    Exit;

  Data := Project.GetNodeData(Node);

  // TargetCanvas.Brush.Color := ;
  TargetCanvas.FillRect(CellRect);

  if Data = FActiveModel then
  begin
    TargetCanvas.Brush.Color := clRed;
    TargetCanvas.Pen.Color := clRed;
    TargetCanvas.Polygon(Points);
  end;

  if Data = FLinkedData then
  begin
    TargetCanvas.Pen.Color := clBlack;

    TargetCanvas.Ellipse(25, 2, 35, 15);
    TargetCanvas.Brush.Color := clGreen;
    TargetCanvas.Rectangle(25, 7, 35, 15);
    TargetCanvas.Rectangle(29, 9, 31, 13);
  end;

  TargetCanvas.Pen.Color := clGray;

  if Data.RowType = prItem then
  begin
    if Data.Curve.Visible then
      TargetCanvas.Brush.Color := Data.Curve.Color
    else
      TargetCanvas.Brush.Color := clLtGray;
    TargetCanvas.Rectangle(2, 5, 10, 13);
  end;
end;

procedure TfrmMain.ProjectChange(Sender: TBaseVirtualTree; Node: PVirtualNode);
begin
  if FIgnoreFocusChange then
    Exit;

  LastNode := Project.GetFirstSelected;
  LastData := Project.GetNodeData(LastNode);

  if LastData = nil then
  begin
    IsItem := False;
    IsData := False;
    IsModel := False;
    IsFolder := False;
    IsExtension := False;
    Exit;
  end;

  IsItem := LastData.RowType = prItem;
  IsExtension := LastData.RowType = prExtension;
  IsFolder := LastData.RowType = prFolder;
  IsData := LastData.Group = gtData;
  IsModel := (LastData.Group = gtModel) and IsItem;


  if IsItem and IsData then
    FActiveData := LastData;

  if IsModel then
     FLastModel := LastNode;

end;

procedure TfrmMain.ProjectDblClick(Sender: TObject);
begin
  EditProjectItem;
end;

procedure TfrmMain.DeleteFolder(Node: PVirtualNode);
begin
  if Node.ChildCount = 0 then
    Project.DeleteNode(Node)
  else
    ShowMessage('The folder is not empty! Can''t delete !');
end;

procedure TfrmMain.ProjectDragDrop(Sender: TBaseVirtualTree; Source: TObject;
  DataObject: IDataObject; Formats: TFormatArray; Shift: TShiftState;
  Pt: TPoint; var Effect: Integer; Mode: TDropMode);

// Определяем как поступать с данными. Перемещать или копировать
  procedure DetermineEffect;
  begin
    if Shift = [ssCtrl] then
      Effect := DROPEFFECT_COPY
    else
      Effect := DROPEFFECT_MOVE;
  end;

var
  Attachmode: TVTNodeAttachMode;
  Nodes: TNodeArray;
  Data: PProjectData;
  i: Integer;
begin
  Nodes := nil;
  // Определяем куда добавлять узел в зависимости от того, куда была
  // брошена ветка.
  case Mode of
    dmAbove:
      Attachmode := amInsertBefore;
    dmOnNode:
      Attachmode := amAddChildLast;
    dmBelow:
      Attachmode := amInsertAfter;
  else
    Attachmode := amNowhere;
  end;

  if Source = Project then
  begin
    // Вставка из VT. Можем спокойно пользоваться его методами
    // копирования и перемещения.
    DetermineEffect;
    // Получем список узлов, которые будут участвовать в Drag&Drop
    Nodes := Project.GetSortedSelection(True);
    // И работаем с каждым
    if Effect = DROPEFFECT_COPY then
    begin
      for i := 0 to High(Nodes) do
      begin
        Data := Project.GetNodeData(Nodes[i]);
        if Data.Group = gtModel then
          CreateNewModel(Project.CopyTo(Nodes[i], Sender.DropTargetNode,
            Attachmode, False))
        else
          Project.CopyTo(Nodes[i], Sender.DropTargetNode, Attachmode, False);
      end;
    end
    else
      for i := 0 to High(Nodes) do
        Project.MoveTo(Nodes[i], Sender.DropTargetNode, Attachmode, False);
  end
end;

procedure TfrmMain.ProjectDragOver(Sender: TBaseVirtualTree; Source: TObject;
  Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode;
  var Effect: Integer; var Accept: Boolean);
var
  Data: PProjectData;
  SData: PProjectData;
  Nodes: TNodeArray;
  Node: PVirtualNode;
  i: Integer;
begin
  Accept := True;
  SetLength(Nodes, 0);
  Node := Sender.DropTargetNode;

  if (Assigned(Node)) then
    Data := Project.GetNodeData(Project.DropTargetNode);

  Nodes := (Sender as TVirtualStringTree).GetSortedSelection(True);
  if Length(Nodes) > 0 then
  begin
    for i := 0 to Length(Nodes) - 1 do
    begin
      SData := Project.GetNodeData(Nodes[i]);
      Accept := (Data.RowType <> prItem) and (SData.Group = Data.Group) and
        (SData.RowType = prItem) and (Nodes[i].Parent <> Node);
      if not Accept then
        Exit;
    end;
  end;
end;

procedure TfrmMain.ProjectFocusChanging(Sender: TBaseVirtualTree;
  OldNode, NewNode: PVirtualNode; OldColumn, NewColumn: TColumnIndex;
  var Allowed: Boolean);
var
  Data: PProjectData;
begin
  Allowed := True;
  Data := Sender.GetNodeData(NewNode);
  if Data = nil then Exit;

  mmDescription.Lines.Text := Data.Description;

  if not((Data.RowType = prItem) and (Data.Group = gtModel)) then
    Exit;

  if not FIgnoreFocusChange and (FActiveModel <> nil) then
    Tree.SaveToFile(ModelName(FActiveModel));

  Tree.LoadFromFile(ModelName(Data));
  FActiveModel := Data;
  FillLayerCombos;
  Project.Repaint;
end;

procedure TfrmMain.ProjectGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
var
  Data: PProjectData;
begin
  Data := Project.GetNodeData(Node);
  case Column of
    1:
      CellText := Data.Title;
    0:
      CellText := '';
  end;
end;

procedure TfrmMain.ProjectHeaderDrawQueryElements(Sender: TVTHeader;
  var PaintInfo: THeaderPaintInfo; var Elements: THeaderPaintElements);
begin
  Elements := [hpeBackground];
end;

procedure TfrmMain.ProjectItemCopyExecute(Sender: TObject);
var
  Data: PProjectData;
begin
  Data := Project.GetNodeData(Project.GetFirstSelected);
  if (Data.Group = gtModel) and (Data.RowType = prItem) then
  begin
    Clipboard.AsText := TreeToStr;
  end;
  if (Data.Group = gtData) and (Data.RowType = prItem) then
    SeriesToClipboard(Data.Curve);
end;

procedure TfrmMain.ProjectItemDeleteExecute(Sender: TObject);
begin
  if IsModel and IsItem then
    DeleteModel(LastNode, LastData);
  if IsData and IsItem then
    DeleteData(LastNode, LastData);
  if IsFolder then
    DeleteFolder(LastNode);
  if IsExtension then
    DeleteExtension(LastNode);
  ProjectChange(Tree, Nil);
end;

procedure TfrmMain.ProjectItemExtensionExecute(Sender: TObject);
var
  Node: PVirtualNode;
  Data: PProjectData;
begin
  if FActiveModel <> nil then
    Tree.SaveToFile(ModelName(FActiveModel));

  Node := Project.GetFirstSelected;
  if Node = nil then Exit;

  Data := Project.GetNodeData(Node);
  if (Data.RowType = prItem) and (Data.Group = gtModel) then
    Node := Project.AddChild(Node);

  CreateNewExtension(Node);
end;

procedure TfrmMain.ProjectLoadNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Stream: TStream);
var
  Data: PProjectData;
  size: Integer;
  StrBuffer: PChar;

  function GetString: string;
  begin
    Stream.Read(size, SizeOf(size));
    StrBuffer := AllocMem(size);
    Stream.Read(StrBuffer^, size);
    Result := (StrBuffer);
    FreeMem(StrBuffer);
  end;

begin
  Data := Project.GetNodeData(Node);
  Stream.Read(Data.ID, SizeOf(Data.ID));
  Data.Title := GetString;
  Stream.Read(Data.RowType, SizeOf(Data.RowType));
  Stream.Read(Data.Group, SizeOf(Data.Group));
  Stream.Read(Data.Active, SizeOf(Data.Active));
  Stream.Read(Data.Visible, SizeOf(Data.Visible));
  Data.Description := GetString;
  Stream.Read(Data.Color, SizeOf(Data.Color));

  if FProjectVersion < 1 then Exit;

  Stream.Read(Data.Enabled, SizeOf(Data.Enabled));
  Stream.Read(Data.ExtType, SizeOf(Data.ExtType));
  Stream.Read(Data.Rate, SizeOf(Data.Rate));
  Data.ParentLayerName := GetString;
  Data.ParentStackName := GetString;
  Stream.Read(Data.Form, SizeOf(Data.Form));
  Stream.Read(Data.Subj, SizeOf(Data.Subj));
end;

procedure TfrmMain.ProjectPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
var
  Data: PProjectData;
begin
  Data := Project.GetNodeData(Node);
  if Data.RowType = prGroup then
    TargetCanvas.Font.Style := [fsBold];
  if Data.RowType = prFolder then
    TargetCanvas.Font.Style := [fsBold, fsItalic];
  if (Data.RowType <> prGroup) and  not Data.Enabled then
    TargetCanvas.Font.Color := clGray;
end;

procedure TfrmMain.ProjectSaveNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Stream: TStream);
var
  Data: PProjectData;
  size: Integer;

  procedure WriteString(const s: string);
  begin
    size := ByteLength(s) + 1;
    Stream.Write(size, SizeOf(size));
    Stream.Write(PChar(s)^, size);
  end;

begin
  Data := Project.GetNodeData(Node);
  if Data = Nil then
    Exit;

  if Data.RowType = prItem then
    Data.Visible := Data.Curve.Visible;

  Stream.Write(Data.ID, SizeOf(Data.ID));
  WriteString(Data.Title);
  Stream.Write(Data.RowType, SizeOf(Data.RowType));
  Stream.Write(Data.Group, SizeOf(Data.Group));
  Stream.Write(Data.Active, SizeOf(Data.Active));
  Stream.Write(Data.Visible, SizeOf(Data.Visible));
  WriteString(Data.Description);
  Stream.Write(Data.Color, SizeOf(Data.Color));
  Stream.Write(Data.Enabled, SizeOf(Data.Enabled));
  Stream.Write(Data.ExtType, SizeOf(Data.ExtType));
  Stream.Write(Data.Rate, SizeOf(Data.Rate));
  WriteString(Data.ParentLayerName);
  WriteString(Data.ParentStackName);
  Stream.Write(Data.Form, SizeOf(Data.Form));
  Stream.Write(Data.Subj, SizeOf(Data.Subj));
end;

procedure TfrmMain.Properties1Click(Sender: TObject);
begin
  EditProjectItem;
end;


procedure TfrmMain.rgModeClick(Sender: TObject);
begin
  case rgCalcMode.ItemIndex of
    0:
      begin
        pnlAngleParams.Enabled := True;
        pnlWaveParams.Enabled := False;
      end;
    1:
      begin
        pnlAngleParams.Enabled := False;
        pnlWaveParams.Enabled := True;
      end;
  end;
end;

procedure TfrmMain.ResultCopyExecute(Sender: TObject);
begin
  SeriesToClipboard(FActiveModel.Curve);
end;

procedure TfrmMain.ResultSaveExecute(Sender: TObject);

begin
  if dlgSaveResult.Execute then
    SeriesToFile(FActiveModel.Curve, dlgSaveResult.FileName);
end;

procedure TfrmMain.RibbonHelpButtonClick(Sender: TObject);
begin
  frmAbout.ShowModal;
end;

procedure TfrmMain.RibbonRecentItemClick(Sender: TObject; FileName: string;
  Index: Integer);
begin
  LoadProject(FileName);
  FProjectFileName := FileName;
end;

procedure TfrmMain.RibbonTabChange(Sender: TObject;
  const NewIndex, OldIndex: Integer; var AllowChange: Boolean);
begin
  AllowChange := True;
  if NewIndex = 1 then
    FillLayerCombos;
end;


procedure TfrmMain.actAutoFittingExecute(Sender: TObject);
var
  CD: TThreadParams;
  LayeredModel: TLayeredModel;
begin
   GetThreadParams(CD);
   LayeredModel := TLayeredModel.Create(Tree, chGradients, FLastModel);
   try
     LayeredModel.Generate(CD.Lambda);
     LayeredModel.ExportToFile('D:\input_structure.txt');
   finally
     FreeAndNil(LayeredModel);
       Screen.Cursor := crDefault;
   end;
end;

procedure TfrmMain.actCheckUpdateExecute(Sender: TObject);
begin
  FVersionChecker := TVersionCheckerThread.Create(True);
  FVersionChecker.URL := 'http://sci-progs.com/update/version.info';
  FVersionChecker.OldVersion := RzVersionInfo.FileVersion;
  FVersionChecker.Hidden := False;
  FVersionChecker.Start;
end;

procedure TfrmMain.actHelpFittingExecute(Sender: TObject);
begin
  OpenHelpFile('Fitting_Tutorial.pdf');
end;

procedure TfrmMain.actHelpStructureExecute(Sender: TObject);
begin
  OpenHelpFile('Model_Tutorial.pdf');
end;

procedure TfrmMain.actHomePageExecute(Sender: TObject);
begin
  SimpleShellExecute(Handle, 'https://github.com/OleksiyPenkov/X-RayCalc/');
end;

procedure TfrmMain.actQuickStartExecute(Sender: TObject);
begin
  OpenHelpFile('Getting_Started.pdf');
end;

procedure TfrmMain.actShowLibraryExecute(Sender: TObject);
begin
  frmMaterialList.ShowModal;
end;

procedure TfrmMain.actSupportExecute(Sender: TObject);
begin
  SimpleShellExecute(Handle, 'https://github.com/OleksiyPenkov/X-RayCalc/');
end;

procedure TfrmMain.actWikiExecute(Sender: TObject);
begin
  SimpleShellExecute(Handle, 'https://github.com/OleksiyPenkov/X-RayCalc/wiki');
end;

procedure TfrmMain.AddRecentItem(const FileName: string;const First:boolean = False);
var
  Item: TActionClientItem;
  i: Integer;
  S: string;
begin

  for I := 0 to rbngrpProject.Items[2].Items.Count - 1 do
  begin
    s := rbngrpProject.Items[2].Items[i].Caption;
    s := StringReplace(S, '&', '', []);
    if S = FileName then
    begin
      rbngrpProject.Items[2].Items[i].Index := 0;
      Exit;
    end;
  end;


  Item := rbngrpProject.Items[2].Items.Add;

  if First then Item.Index := 0;

  with Item do
  begin
    Action :=  TAction.Create(ActionManager);
    Action.OnExecute := FileOpenExecute;
    Action.Caption := FileName;
    Action.Tag := 99;
    ImageIndex := 20;
  end;

  if rbngrpProject.Items[2].Items.Count > 10 then
    rbngrpProject.Items[2].Items.Delete(10);

end;

procedure TfrmMain.AddResult(const S: string);
begin
  RT.Add(S);
end;

procedure SetUnaware(const val: Integer);
type
  PROCESS_DPI_AWARENESS = 0..2;

var
  handle : Integer;
  setProcessDPIAwareness : procedure(val: PROCESS_DPI_AWARENESS)stdcall;
begin
  handle := LoadLibrary('shcore.dll');
  try
    setProcessDPIAwareness := GetProcAddress(handle, 'SetProcessDpiAwareness');
    if Assigned(setProcessDPIAwareness) then
        setProcessDPIAwareness(val);
  finally
    FreeLibrary(handle);
  end;
end;


procedure TfrmMain.AfterConstruction;
const
  Default = 96;
var
  i: Integer;
begin
  inherited;

  if Screen.PixelsPerInch < 150 then
    SetUnaware(1)  // try to rescale for 125%
  else
    SetUnaware(0);  // give up otherwise

  if Screen.PixelsPerInch > Default then //as I’m designing at 96 DPI
  begin
    Ribbon.Font.Size := MulDiv(Ribbon.Font.Size, Default, Screen.PixelsPerInch);
  end;
end;

procedure TfrmMain.btnChartScaleClick(Sender: TObject);
begin
  if (FActiveModel.Curve.Count = 0) and (FActiveData = nil) then
    Exit;

  if Chart.LeftAxis.Logarithmic then
  begin
    Chart.LeftAxis.Logarithmic := False;
    btnChartScale.Caption := 'Log';
    if Chart.LeftAxis.Maximum > 0.01 then
      Chart.LeftAxis.AxisValuesFormat := '0.000'
    else
      Chart.LeftAxis.AxisValuesFormat := '0e-0';
  end
  else
  begin
    btnChartScale.Caption := 'Linear';
    Chart.LeftAxis.Minimum := StrToFloat(Settings.MinLimit);
    Chart.LeftAxis.Logarithmic := True;
    Chart.LeftAxis.AxisValuesFormat := '0e-0';
  end;
end;


procedure TfrmMain.SaveData;
var
  Data: PProjectData;
  Node: PVirtualNode;
begin
  Node := Project.GetFirstChild(Project.GetFirst);
  while Node <> Nil do
  begin
    Data := Project.GetNodeData(Node);
    if (Data.RowType = prItem) and (Data.Group =  gtData) then
    begin
      SeriesToFile(Data.Curve, DataName(Data));
    end;
    Node := Project.GetNext(Node);
  end;
end;

procedure TfrmMain.MoveModels;
var
  Node: PVirtualNode;
  Data: PProjectData;
begin
  Node := Project.GetFirst;
  while Node <> nil do
  begin
    Data := Project.GetNodeData(Node);
    if Data.IsModel then
       TFile.Move(Format('%smodel_%d.bin', [OldPath, Data.ID]), ModelName(Data));
    Node := Project.GetNext(Node);
  end;
end;

procedure TfrmMain.SaveProject(const FileName: string);
var
  INF: TMemIniFile;
begin
  INF := TMemIniFile.Create(FProjectDir + PARAMETERS_FILE_NAME);

  try
    INF.WriteString('PARAMS', 'N', edN.Text);
    INF.WriteInteger('PARAMS', 'Mode', rgCalcMode.ItemIndex);
    INF.WriteInteger('PARAMS', 'Polarisation', rgPolarisation.ItemIndex);

    INF.WriteString('ANGLE', 'Start', edStartTeta.Text);
    INF.WriteString('ANGLE', 'End', edEndTeta.Text);
    INF.WriteString('ANGLE', 'lambbda', edLambda.Text);
    INF.WriteString('ANGLE', 'width', edWidth.Text);
    INF.WriteBool('ANGLE', '2teta', cb2Theta.Checked);

    INF.WriteString('WAVE', 'Start', edStartL.Text);
    INF.WriteString('WAVE', 'End', edEndL.Text);
    INF.WriteString('WAVE', 'Teta', edTheta.Text);
    INF.WriteString('WAVE', 'width', edDL.Text);

    INF.WriteInteger('INFO', 'Version', CurrentProjectVersion);

    if FLinkedData <> nil then
      INF.WriteInteger('STATE', 'LinkedData', FLinkedData.ID);
    if FActiveModel <> nil then
      INF.WriteInteger('STATE', 'ActiveModel', FActiveModel.ID);

    if FActiveModel <> Nil then
      Tree.SaveToFile(ModelName(FActiveModel));

    INF.UpdateFile;

    if FileExists(FileName) then
      DeleteFile(FileName);

    Project.SaveToFile(FProjectDir + PROJECT_FILE_NAME);

    Zip.ArchiveType := atZip;
    Zip.AutoSave := True;
    Zip.ForceType := True;
    Zip.OpenArchive(FileName);
    Zip.BaseDirectory  := FProjectDir;

    Zip.AddFiles('*.*', faAnyFile and faDirectory);
    Zip.CloseArchive;
  finally
    INF.Free;
  end;
end;

procedure TfrmMain.seH_FSLChange(Sender: TObject);
begin
  if FIgnore then
    Exit;

  case (Sender as TRzSpinEdit).Tag of
    1:
      FCurrentLayerData.H := (Sender as TRzSpinEdit).Text;
    2:
      FCurrentLayerData.s := (Sender as TRzSpinEdit).Text;
    3:
      FCurrentLayerData.R := (Sender as TRzSpinEdit).Text;
  end;
  CalcRunExecute(Sender);
end;

procedure TfrmMain.LoadProject(const FileName: string; Clear: Boolean);
var
  INF: TMemIniFile;

  Node, First: PVirtualNode;
  Data: PProjectData;
  s: string;

  LinkedID, ActiveID: Integer;
begin
  FIgnoreFocusChange := True;

  FProjectFileName := FileName;
  FProjectName := ExtractFileName(FileName);
  FProjectDir := IncludeTrailingPathDelimiter(Settings.TempPath + FProjectName);

  if Clear then
  begin
    // удаляем папку старого проекта
    if DirectoryExists(FProjectDir) then
      ClearDir(FProjectDir, True);
    //
    CreateDir(FProjectDir);
  end;

  UnZip.BaseDirectory := FProjectDir;
  UnZip.FileName := FileName;
  unZip.OpenArchive(FileName);
  unZip.ExtractFiles('*.*');
  unZip.CloseArchive;

  INF := TMemIniFile.Create(FProjectDir + PARAMETERS_FILE_NAME);
  try
    edN.Text := INF.ReadString('PARAMS', 'N', '1000');
    rgCalcMode.ItemIndex := INF.ReadInteger('PARAMS', 'Mode', 0);
    rgPolarisation.ItemIndex := INF.ReadInteger('PARAMS', 'Polarisation', 0);

    edStartTeta.Text := INF.ReadString('ANGLE', 'Start', '0.01');
    edEndTeta.Text := INF.ReadString('ANGLE', 'End', '5');
    edLambda.Text := INF.ReadString('ANGLE', 'lambbda', '1.54043');
    edWidth.Text := INF.ReadString('ANGLE', 'width', '0.015');
    cb2Theta.Checked := INF.ReadBool('ANGLE', '2teta', True);

    edStartL.Text := INF.ReadString('WAVE', 'Start', '1');
    edEndL.Text := INF.ReadString('WAVE', 'End', '10');
    edTheta.Text := INF.ReadString('WAVE', 'Teta', '85');
    edDL.Text := INF.ReadString('WAVE', 'width', '0');

    LinkedID := INF.ReadInteger('STATE', 'LinkedData', -1);
    ActiveID := INF.ReadInteger('STATE', 'ActiveModel', -1);
    FProjectVersion := INF.ReadInteger('INFO', 'Version', 0);
  finally
    INF.Free;
  end;

  // восстанавливаем дерево проектов
  Project.LoadFromFile(FProjectDir + PROJECT_FILE_NAME);

  FModelsRoot := Project.GetFirst;
  FDataRoot := Project.GetNextSibling(FModelsRoot);

  // для каждой модели нужно создать series
  Chart.SeriesList.Clear;
  FActiveModel := nil;
  First := nil;
  FLastModel := nil;

  Node := Project.GetFirstChild(Project.GetFirst);
  while Node <> FDataRoot do
  begin
    Data := Project.GetNodeData(Node);
    if Data.RowType = prItem then
    begin
      if First = nil then
        First := Node;

      if ActiveID = Data.ID then
      begin
        FActiveModel := Data;
        LastNode := Node;
        FLastModel := Node;
        LastData := Data;
      end;

      Data.Curve := TLineSeries.Create(Chart);
      Data.Curve.Title := Data.Title;
      Chart.AddSeries(Data.Curve);
      Data.Curve.Color := Data.Color;
      Data.Curve.LinePen.Width := 2;
      Data.Curve.Visible := Data.Visible;
      if Data.ID > FLastID then
        FLastID := Data.ID;
    end;
    Node := Project.GetNext(Node);
  end;

  if FActiveModel = nil then
  begin
    LastNode := First;
    FActiveModel := Project.GetNodeData(First);
  end;

  inc(FLastID);

  FActiveData := nil;

  Node := Project.GetFirstChild(FDataRoot);
  while Node <> nil do
  begin
    Data := Project.GetNodeData(Node);
    if (Data.RowType = prItem) and FileExists(DataName(Data)) then
    begin
      if FActiveData = nil then
        FActiveData := Data;

      if Data.ID = LinkedID then
        FLinkedData := Data;

      Data.Curve := TLineSeries.Create(Chart);
      Data.Curve.Title := Data.Title;
      Data.Curve.Color := Data.Color;
      Data.Curve.Visible := Data.Visible;
      Data.Curve.LinePen.Width := 2;
      SeriesFromFile(Data.Curve, DataName(Data), s);
      Chart.AddSeries(Data.Curve);
    end
    else
      Project.DeleteNode(Node);
    Node := Project.GetNext(Node);
  end;



  if FActiveModel = nil then
  begin
    Project.FocusedNode := First;
    Project.Selected[First] := True;
  end
  else
  begin
    Project.FocusedNode := LastNode;
    Project.Selected[LastNode] := True;
  end;

  FIgnoreFocusChange := False;
  Ribbon.DocumentName := FProjectName;
  Project.Repaint;
end;

procedure TfrmMain.ModelCreateExecute(Sender: TObject);
var
  Node: PVirtualNode;
  Data: PProjectData;
begin
  if FActiveModel <> nil then
    Tree.SaveToFile(ModelName(FActiveModel));

  Node := Project.GetFirstSelected;
  if Node = nil then Node := Project.GetFirst;

  Data := Project.GetNodeData(Node);
  if (Data.RowType = prFolder) and (Data.Group = gtModel) then
    Node := Project.AddChild(Node)
  else
    Node := Project.AddChild(FModelsRoot);

  CreateNewModel(Node);
end;

function TfrmMain.ModelName(Data: PProjectData): string;
begin
  Result := Format('%smodel_%d.bin', [FProjectDir, Data.ID])
end;

function TfrmMain.DataName(Data: PProjectData): string;
begin
  Result := Format('%sdata_%d.dat', [FProjectDir, Data.ID])
end;

procedure TfrmMain.DataNormAutoExecute(Sender: TObject);
begin
  AutoMerge(FActiveData.Curve);
  SeriesToFile(FActiveData.Curve, DataName(FActiveData));
end;

procedure TfrmMain.DataNormExecute(Sender: TObject);
var
  s: string;
begin
  s := InputBox('Data normalization', 'Coefficient', '');
  if s <> '' then
  begin
    Normalize(StrToFloat(s), FActiveData.Curve);
    SeriesToFile(FActiveData.Curve, DataName(FActiveData));
  end;
end;

procedure TfrmMain.DataNormManExecute(Sender: TObject);
var
  Form: TedtrManualNorm;
begin
  try
    Form := TedtrManualNorm.Create(frmMain);
    if Form.ShowModal = mrOk then
    begin
      ManualMerge(Form.edPos.Value, Form.edK.Value, FActiveData.Curve);
      SeriesToFile(FActiveData.Curve, DataName(FActiveData));
    end;
  finally
    Form.Free
  end;
end;

procedure TfrmMain.ModelProperitesExecute(Sender: TObject);
begin
  EditProjectItem;
end;


procedure TfrmMain.TreeAdvancedHeaderDraw(Sender: TVTHeader;
  var PaintInfo: THeaderPaintInfo; const Elements: THeaderPaintElements);
begin
  if hpeBackground in Elements then
  begin
    PaintInfo.TargetCanvas.Brush.Color := clSkyBlue; // <-- your color here
    if Assigned(PaintInfo.Column) then
      DrawFrameControl(PaintInfo.TargetCanvas.Handle, PaintInfo.PaintRectangle, DFC_BUTTON, DFCS_FLAT or DFCS_ADJUSTRECT); // <-- I think, that this keeps the style of the header background, but I'm not sure about that
    PaintInfo.TargetCanvas.FillRect(PaintInfo.PaintRectangle);
    PaintInfo.TargetCanvas.Brush.Color := $00FFEECC;
    PaintInfo.TargetCanvas.FrameRect(PaintInfo.PaintRectangle);
  end;
end;

procedure TfrmMain.TreeBeforeCellPaint(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  CellPaintMode: TVTCellPaintMode; CellRect: TRect; var ContentRect: TRect);
var
  Data: PRowData;
begin
  Data := Tree.GetNodeData(Node);
  if Data.RowType = rtSubstrate then
  begin
    TargetCanvas.Brush.Color := clLtGray;
    TargetCanvas.FillRect(CellRect);
  end;
end;

procedure TfrmMain.TreeChange(Sender: TBaseVirtualTree; Node: PVirtualNode);
var
  Data: PRowData;
begin
  Data := Tree.GetNodeData(Node);

  if Data <> nil then
  begin
    IsStack := Data.RowType = rtStack;
    IsLayer := Data.RowType = rtLayer;
    IsSubs  := Data.RowType = rtSubstrate;
  end;
end;

procedure TfrmMain.TreeCreateEditor(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; out EditLink: IVTEditLink);
begin
  EditLink := TPropertyEditLink.Create;
end;

procedure TfrmMain.TreeDblClick(Sender: TObject);
begin
  EditRow;
end;

procedure TfrmMain.TreeEditing(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; var Allowed: Boolean);
begin
  Allowed := (Node.Parent <> Sender.RootNode) and (Column = 1);
end;

procedure TfrmMain.TreeFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
var
  Data: PRowData;
begin
  Data := Sender.GetNodeData(Node);
  Finalize(Data^);
end;

procedure TfrmMain.TreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
var
  Data: PRowData;
begin
  Data := Tree.GetNodeData(Node);
  if Data.RowType = rtStack then
  begin
    case Column of
      0:
        CellText := Data.Text;
      4:
        CellText := IntToStr(Data.N);
    else
      CellText := '';
    end;
  end
  else
    case Column of
      0:
        CellText := Data.Text;
      1:
        CellText := Data.H;
      2:
        CellText := Data.s;
      3:
        CellText := Data.R;
    else
      CellText := '';
    end;
end;

procedure TfrmMain.TreeHeaderDrawQueryElements(Sender: TVTHeader;
  var PaintInfo: THeaderPaintInfo; var Elements: THeaderPaintElements);
begin
  Elements := [hpeBackground];
end;

procedure TfrmMain.TreeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return then
    EditRow;
end;

procedure TfrmMain.TreeLoadNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Stream: TStream);
var
  Data: PRowData;
  size: Integer;
  StrBuffer: PChar;

  function GetString: string;
  begin
    Stream.Read(size, SizeOf(size));
    StrBuffer := AllocMem(size);
    Stream.Read(StrBuffer^, size);
    Result := (StrBuffer);
    FreeMem(StrBuffer);
  end;

begin
  Data := Tree.GetNodeData(Node);
  Data.Text := GetString;
  Stream.Read(Data.RowType, SizeOf(Data.RowType));
  Data.H := GetString;
  Data.s := GetString;
  Data.R := GetString;
  Stream.Read(Data.N, SizeOf(Data.N));
end;

procedure TfrmMain.TreePaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
var
  Data: PRowData;
begin
  Data := Tree.GetNodeData(Node);
  if Data.RowType = rtStack then
    TargetCanvas.Font.Style := [fsBold];
end;

procedure TfrmMain.TreeSaveNode(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Stream: TStream);
var
  Data: PRowData;
  size: Integer;

  procedure WriteString(const s: string);
  begin
    size := ByteLength(s) + 1;
    Stream.Write(size, SizeOf(size));
    Stream.Write(PChar(s)^, size);
  end;

begin
  Data := Tree.GetNodeData(Node);
  if Data = Nil then
    Exit;
  WriteString(Data.Text);
  Stream.Write(Data.RowType, SizeOf(Data.RowType));
  WriteString(Data.H);
  WriteString(Data.s);
  WriteString(Data.R);
  Stream.Write(Data.N, SizeOf(Data.N));
end;

end.
