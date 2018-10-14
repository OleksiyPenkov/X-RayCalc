unit editor_Gradient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, RzButton, Vcl.ExtCtrls, RzPanel, unit_types;

type
  TedtrGradient = class(TForm)
    RzPanel2: TRzPanel;
    btnOK: TRzBitBtn;
    btnCancel: TRzBitBtn;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    edRate: TJvCalcEdit;
    edTitle: TEdit;
    cbPeriod: TComboBox;
    cbLayer: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    mmDescription: TMemo;
    rgSubject: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cbPeriodChange(Sender: TObject);
  private
    FData: PProjectData;
    { Private declarations }
  public
    { Public declarations }
    property Data: PProjectData read FData write FData;
  end;

var
  edtrGradient: TedtrGradient;

implementation

{$R *.dfm}

uses frm_main;

procedure TedtrGradient.btnOKClick(Sender: TObject);
begin
  FData.Title := edTitle.Text;
  FData.ParentPeriodName := cbPeriod.Text;
  FData.ParentLayerName := cbLayer.Text;
  FData.Rate := edRate.Value;
  FData.Form := gtLine;
  FData.Description := mmDescription.Lines.Text;
  FData.Subj := TGradientSubject(rgSubject.ItemIndex);
end;

procedure TedtrGradient.cbPeriodChange(Sender: TObject);
begin
  frmMain.FillExtensionLayres(cbPeriod.Text, cbLayer);
end;

procedure TedtrGradient.FormShow(Sender: TObject);
begin
  edTitle.Text := FData.Title;
  cbPeriod.Text := FData.ParentPeriodName;
  cbLayer.Text := FData.ParentLayerName;
  edRate.Value := FData.Rate;
  rgSubject.ItemIndex := Ord(FData.Subj);
  mmDescription.Lines.Text := FData.Description;
end;

end.
