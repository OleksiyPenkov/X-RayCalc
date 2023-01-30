unit frm_RIGraph;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

type
  TfrmRIGraph = class(TForm)
    Chart: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Add(const Lambda, Beta, Gamma: Single);
  end;

var
  frmRIGraph: TfrmRIGraph;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmRIGraph.Add(const Lambda, Beta, Gamma: Single);
begin
  Series1.AddXY(Lambda, Beta);
  Series2.AddXY(Lambda, Gamma);
end;

procedure TfrmRIGraph.Clear;
begin
  Series1.Clear;
  Series2.Clear;
end;

end.
