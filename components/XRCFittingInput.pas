unit XRCFittingInput;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, RzEdit, RzSpnEdt,
  RzPanel, RzButton, RzLabel, RzRadChk, RzCommon, Vcl.Graphics, unit_types,
  Messages, Winapi.Windows, unit_consts;

type

  TXRCFitInput = class (TRzPanel)
    private
      Name: TRzLabel;
      Thickness: TRzSpinEdit;
      Sigma: TRzSpinEdit;
      Rho: TRzSpinEdit;
      Link: TRzCheckBox;

      FData : PRowData;
      FOnSet:  boolean;
      FHandler: HWND;

      procedure ThicknessChange(Sender: TObject);
    public
      constructor Create(AOwner: TComponent; const Handler: HWND; const Data: PRowData);
      destructor  Destroy;
    published
  end;

implementation

{ TXRCFitInput }

constructor TXRCFitInput.Create(AOwner: TComponent; const Handler: HWND; const Data: PRowData);
begin
  inherited Create(AOwner);
  FHandler := Handler;
  Parent := AOwner as TWinControl;

  FOnset := True;
  FData           := Data;
  FOnset := False;

  AlignWithMargins := True;
  Align := alTop;
  BevelWidth := 5;
  BorderOuter := fsFlatRounded;

  //Name
  Name := TRzLabel.Create(Self);

  //Thickness
  Thickness := TRzSpinEdit.Create(Self);

  //Sigma
  Sigma := TRzSpinEdit.Create(Self);

  //Rho
  Rho := TRzSpinEdit.Create(Self);

  //RzCheckBox1
  Link := TRzCheckBox.Create(Self);


  //Name
  Name.Name := 'Name';
  Name.Parent := Self;
  Name.Left := 33;
  Name.Top := 14;
  Name.Width := 129;
  Name.Height := 13;
  Name.AutoSize := False;
  Name.Caption := 'Name';
  Name.Font.Height := -11;
  Name.Font.Name := 'Tahoma';
  Name.Font.Style := [fsBold];
  Name.ParentFont := False;

  //Thickness
  Thickness.Name := 'Thickness';
  Thickness.Parent := Self;
  Thickness.Left := 118;
  Thickness.Top := 11;
  Thickness.Width := 65;
  Thickness.Height := 21;
  Thickness.Decimals := 2;
  Thickness.Increment := 0.1;
  Thickness.Max := 1000;
  Thickness.TabOrder := 0;

  //Sigma
  Sigma.Name := 'Sigma';
  Sigma.Parent := Self;
  Sigma.Left := 189;
  Sigma.Top := 11;
  Sigma.Width := 65;
  Sigma.Height := 21;
  Sigma.Decimals := 2;
  Sigma.Increment := 0.1;
  Sigma.Max := 20;
  Sigma.TabOrder := 1;


  //Rho
  Rho.Name := 'Rho';
  Rho.Parent := Self;
  Rho.Left := 260;
  Rho.Top := 11;
  Rho.Width := 65;
  Rho.Height := 21;
  Rho.ButtonWidth := 20;
  Rho.Decimals := 2;
  Rho.Increment := 0.1;
  Rho.Max := 30;
  Rho.TabOrder := 2;


  //Link
  Link.Name := '';
  Link.Parent := Self;
  Link.Left := 8;
  Link.Top := 13;
  Link.Width := 19;
  Link.Height := 15;
  Link.TabOrder := 3;


  Name.Caption    := FData.Text;
  Thickness.Text  := FData.H;
  Sigma.Text      := FData.s;
  Rho.Text        := FData.r;


  Rho.OnChange := ThicknessChange;
  Sigma.OnChange := ThicknessChange;
  Thickness.OnChange := ThicknessChange;
end;

destructor TXRCFitInput.Destroy;
begin

end;

procedure TXRCFitInput.ThicknessChange;
begin
  if FOnSet then Exit;

  FData.H := Thickness.Text;
  FData.s := Sigma.Text;
  FData.r := Rho.Text;

  PostMessage(FHandler, WM_RECALC, 0, 0);
end;

end.
