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
      FLinkCheckBox: TRzCheckBox;

      FData : PRowData;
      FOnSet:  boolean;
      FHandler: HWND;

      FLinked : TXRCFitInput;

      procedure ValueChange(Sender: TObject);
      procedure SetIncrement(const Value: Double);
      procedure SetEnabled(const Value: Boolean);
      function GetEnabled: Boolean;
      function GetLinked: TXRCFitInput;
      procedure SetLinked(const Value: TXRCFitInput);
      function GetCheckBox: TRzCheckBox;
      procedure SetCheckBox(const Value: TRzCheckBox);
      function GetLinkChecked: Boolean;
    public
      constructor Create(AOwner: TComponent; const Handler: HWND; const Data: PRowData);
      destructor  Destroy;

    published
      property Increment: Double write SetIncrement;
      property Enabled: Boolean read GetEnabled write SetEnabled;
      property Linked:TXRCFitInput read GetLinked write SetLinked;
      property Onset: Boolean read FOnSet write FOnSet;
      property CheckBox:TRzCheckBox read GetCheckBox write SetCheckBox;
      property Checked: Boolean read GetLinkChecked;

      procedure IncreaseThickness;
      procedure DecreaseThickness;
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
  FLinkCheckBox := TRzCheckBox.Create(Self);


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
  FLinkCheckBox.Name := '';
  FLinkCheckBox.Parent := Self;
  FLinkCheckBox.Left := 8;
  FLinkCheckBox.Top := 13;
  FLinkCheckBox.Width := 19;
  FLinkCheckBox.Height := 15;
  FLinkCheckBox.TabOrder := 3;


  Name.Caption    := FData.Text;
  Thickness.Text  := FData.H;
  Sigma.Text      := FData.s;
  Rho.Text        := FData.r;

  FLinked := nil;


  Rho.OnChange := ValueChange;
  Sigma.OnChange := ValueChange;
  Thickness.OnChange := ValueChange;
end;

procedure TXRCFitInput.DecreaseThickness;
begin
  Thickness.Value := Thickness.Value - Thickness.Increment;
end;

destructor TXRCFitInput.Destroy;
begin

end;

procedure TXRCFitInput.SetCheckBox(const Value: TRzCheckBox);
begin
  FLinkCheckBox := Value;
end;

procedure TXRCFitInput.SetEnabled(const Value: Boolean);
begin
  Enabled := Value;
end;

function TXRCFitInput.GetCheckBox: TRzCheckBox;
begin
  Result := FLinkCheckBox;
end;

function TXRCFitInput.GetEnabled: Boolean;
begin
  Result := Enabled;
end;

function TXRCFitInput.GetLinkChecked: Boolean;
begin
  Result := FLinkCheckBox.Checked;
end;

function TXRCFitInput.GetLinked: TXRCFitInput;
begin
  Result := nil;
  Result := FLinked;
end;

procedure TXRCFitInput.IncreaseThickness;
begin
  Thickness.Value := Thickness.Value + Thickness.Increment;
end;

procedure TXRCFitInput.SetIncrement(const Value: Double);
begin
  Thickness.Increment := Value;
  Sigma.Increment     := Value;
  Rho.Increment       := Value;
end;

procedure TXRCFitInput.SetLinked(const Value: TXRCFitInput);
begin
  FLinked := Value;
end;


procedure TXRCFitInput.ValueChange;
var
  FOnSetOld: Boolean;
begin
  FOnSetOld := FOnSet;
  Onset := True;

  if (FLinked <> nil) and (not FLinked.OnSet) then
  begin
    FLinked.OnSet := True;
    if FData.H > Thickness.Text then FLinked.IncreaseThickness else FLinked.DecreaseThickness;



    FLinked.OnSet := False;

  end;

  FData.H := Thickness.Text;
  FData.s := Sigma.Text;
  FData.r := Rho.Text;

  FOnSet := FOnSetOld;
  if not FOnSet then PostMessage(FHandler, WM_RECALC, 0, 0);

end;

end.
