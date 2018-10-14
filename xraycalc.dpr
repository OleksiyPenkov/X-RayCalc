(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2011 Aleksey Penkov
  *   e-mail: alex.penkov@gmail.com
  *
  ****************************************************************************** *)

program xraycalc;

uses
  Forms,
  SysUtils,
  unit_types in 'units\unit_types.pas',
  unit_consts in 'units\unit_consts.pas',
  unit_helpers in 'units\unit_helpers.pas',
  unit_settings in 'units\unit_settings.pas',
  editor_Layer in 'editors\editor_Layer.pas' {edtrLayer},
  frm_main in 'forms\frm_main.pas' {frmMain},
  math_complex in 'Math\math_complex.pas',
  math_globals in 'Math\math_globals.pas',
  unit_materials in 'Math\unit_materials.pas',
  editor_period in 'editors\editor_period.pas' {edtrPeriod},
  editor_proj_item in 'editors\editor_proj_item.pas' {edtrProjectItem},
  unit_calc_thread_1 in 'Math\unit_calc_thread_1.pas',
  editor_Normalisation in 'editors\editor_Normalisation.pas' {edtrManualNorm},
  editor_Substrate in 'editors\editor_Substrate.pas' {edtrSubstrate},
  frm_GenParams in 'forms\frm_GenParams.pas' {frmFit},
  math_Gen in 'Math\math_Gen.pas',
  frm_MList in 'forms\frm_MList.pas' {frmMaterialList},
  frm_Splash in 'forms\frm_Splash.pas' {frmSplash},
  unit_calc_thread_2 in 'Math\unit_calc_thread_2.pas',
  math_complex2 in 'Math\math_complex2.pas',
  unit_VersionChecker in 'units\unit_VersionChecker.pas',
  frm_NewVersionInfo in 'forms\frm_NewVersionInfo.pas' {frmNewVersionInfo},
  frm_EditorBase in 'forms\frm_EditorBase.pas' {frmEditorBase},
  editor_Gradient in 'editors\editor_Gradient.pas' {edtrGradient},
  Vcl.Themes,
  Vcl.Styles,
  unit_VTEditors in 'units\unit_VTEditors.pas',
  MHLSimplePanel in 'components\MHLSimplePanel.pas',
  frm_about in 'forms\frm_about.pas' {frmAbout};

{$R *.res}

begin
  Application.Initialize;
  frmSplash := TfrmSplash.Create(Application);
  frmSplash.Show;   // Display the splash screen
  frmSplash.Update; // Update the splash screen to ensure it gets drawn
  while frmSplash.tmMainTimer.Enabled do
    Application.ProcessMessages;

  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TedtrLayer, edtrLayer);
  Application.CreateForm(TedtrPeriod, edtrPeriod);
  Application.CreateForm(TedtrProjectItem, edtrProjectItem);
  Application.CreateForm(TedtrManualNorm, edtrManualNorm);
  Application.CreateForm(TedtrSubstrate, edtrSubstrate);
  Application.CreateForm(TfrmFit, frmFit);
  Application.CreateForm(TfrmMaterialList, frmMaterialList);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmEditorBase, frmEditorBase);
  Application.CreateForm(TedtrGradient, edtrGradient);
  Application.CreateForm(TfrmAbout, frmAbout);
  frmSplash.Hide;  // Hide the splash screen
  frmSplash.Free;  // Free the splash screen


  Application.Run;
end.
