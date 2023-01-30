(* *****************************************************************************
  *
  *   X-Ray Calc CMD
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit cmd_unit_materials;

interface

uses
//  FastMM4,
  SysUtils,
  cmd_unit_types,
  cmd_math_globals;

type

  TLayeredModel = class
  private
    FMaterials: TMaterials;

    LayersCount: integer;
    Delta: single;

    FLambda: Single;
    FLayers: TLayers;

    function GetLayers: TLayers;
    function FindMaterial(const Name: string): TMaterial;
    procedure AddMaterial(AName: string; Lambda: single);
    procedure SetSize(const Value: integer);
    procedure SetLayers(const Value: TLayers);
    function GetSize: integer;
  published
    constructor Create;
    procedure InitLayer(const index: Integer; AName: string; AH, ASigma, Arho: single);
    procedure InitSubstrate(AName: string; AH, Asigma, Arho: single);
    procedure CalcOpticalConstants(const Lambda: single);
//    procedure Update(const NewValues: TFitLayers);

    property Size:integer read GetSize write SetSize;
    property Layers:TLayers Read GetLayers write SetLayers;
    property Materials: TMaterials read FMaterials write FMaterials;
  end;

implementation

const
  kk = 0.54014E-5;

{ TLayeredModel }

procedure TLayeredModel.AddMaterial(AName: string; Lambda: single);
var
  i, size: integer;
begin
  size := length(FMaterials);
  for i := 0 to size - 1 do
    if FMaterials[i].Name = AName then
      Exit;

  SetLength(FMaterials, size + 1);

  with FMaterials[size] do
  begin
    Name := AName;
    ReadHenke(Name, 0, Lambda, f, am, rho);
  end;
end;

function TLayeredModel.FindMaterial(const Name: string): TMaterial;
var
  i: integer;
  Found: Boolean;
begin
  Found := False;
  for i := 0 to length(FMaterials) - 1 do
    if FMaterials[i].Name = Name then
    begin
      Found := True;
      Break;
    end;
  if Found then
    Result := FMaterials[i]
  else begin
    AddMaterial(Name, FLambda);
    Result := FMaterials[Length(FMaterials) - 1]
  end;
end;

procedure TLayeredModel.InitLayer(const index: Integer; AName: string; AH, ASigma, Arho: single);
begin
  with FLayers[Index] do
  begin
    Name := AName;
    H := aH;
    s := aSigma / 1.41;
    rho := Arho;
  end;
end;

procedure TLayeredModel.InitSubstrate;
begin
  FLayers[LayersCount + 1].Name := AName;
  FLayers[LayersCount + 1].Rho  := Arho;
  FLayers[LayersCount + 1].H    := 1E8;
  FLayers[LayersCount + 1].s    := ASigma  / 1.41;
end;

procedure TLayeredModel.CalcOpticalConstants(const Lambda: single);
var
  i: Integer;
  c: Single;
  Material: TMaterial;
begin
  FLambda := Lambda;

  for I := 1 to High(FLayers) do
  begin
    Material := FindMaterial(FLayers[i].Name);

    with FLayers[i] do
    begin
      if rho = 0 then
          rho := Material.rho;

      c := kk * rho / Material.am * sqr(FLambda);
      Delta := Delta + c * Material.f.re / 2 * H;
      Material.f.re := 1 - Material.f.re * c;
      Material.f.im := Material.f.im * c;

      e := Material.f;
    end;
  end;
end;

constructor TLayeredModel.Create;
begin
  inherited ;
end;


function TLayeredModel.GetLayers: TLayers;
begin
  Result := Copy(FLayers, 0, Length(FLayers));
end;

function TLayeredModel.GetSize: integer;
begin
  Result := High(FLayers) + 1;
end;

procedure TLayeredModel.SetLayers(const Value: TLayers);
begin
  SetLength(Flayers, 0);
  FLayers := Copy(Value, 0, Length(Value));
end;

procedure TLayeredModel.SetSize(const Value: integer);
begin
  SetLength(FLayers, 0);
  SetLength(FMaterials, 0);

  SetLength(FLayers, Value + 2);

  FLayers[0].H := 1E10;
  FLayers[0].e.re := 1;
  FLayers[0].e.im := 0;

  LayersCount := Value;
end;

//procedure TLayeredModel.Update(const NewValues: TFitLayers);
//var
//  i: Integer;
//begin
//  for i := 1 to High(FLayers) - 1 do
//  begin
//    FLayers[i].H   := NewValues[i].H.val;
//    FLayers[i].s   := NewValues[i].s.val;
//    FLayers[i].Rho := NewValues[i].r.val;
//  end;
//end;

end.
