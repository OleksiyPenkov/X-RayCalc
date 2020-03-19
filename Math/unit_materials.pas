(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit unit_materials;

interface

uses
  FastMM4,
  VirtualTrees,
  SysUtils, Chart, VCLTee.Series,
  unit_types,
  math_globals;

type

  TLayeredModel = class
  private
    Materials: array of TMaterial;
    Gradients: TGradients;

    Chart: TChart;
    Tree: TVirtualStringTree;
    Model: PVirtualNode;

    Stack, Layer: PVirtualNode;
    FData: PRowData;

    NM, NL, CurrentLayer: integer;

    LayersCount: integer;
    Substrate, Material: TMaterial;
    Delta: single;
    Str: string;
    GradientValue: single;

    Inside: boolean;
    InsideMain: Boolean;

    FLayers: TLayers;
    FLambda: Single;
    FTotalD: single;

    function GetLayers: TLayers;
    function CountLayers: Integer;
    procedure FillLayer(i: Integer);
    procedure FillMaterial;
    procedure FillStacks;
    procedure FillSubstrate;
    procedure PrepareMaterials;
    function FindMaterial(const Name: string): TMaterial;
    procedure AddMaterial(Data: PRowData; Lambda: single);
    function SetFun(a: string): TFunctionRec;
    function FillGradients: TGradients;
    procedure PrepareChart(var Chart: TChart);
    function IfHasGradients: Boolean;
  published
    constructor Create(ATree: TVirtualStringTree; AChart: TChart; AModel: PVirtualNode);
    procedure Generate(const Lambda: Single);

    property Layers:TLayers Read GetLayers;
    property TotalD:Single read FTotalD;
    property Lamda:single write FLambda;
    property HasGradients:Boolean read IfHasGradients;
  end;

implementation

const
  kk = 0.54014E-5;


function TLayeredModel.FillGradients: TGradients;
var
  Item: PVirtualNode;
  Data: PProjectData;
  Count: integer;
begin
  SetLength(Result, 0);
  Count := 0;
  Item := Tree.GetFirstChild(Model);
  while Item <> Nil do
  begin
    Data := Tree.GetNodeData(Item);
    if (Data.RowType = prExtension) and (Data.Enabled) and (Data.ExtType = etGradient) then
    begin
      SetLength(Result, Count + 1);
      Result[Count].Rate := Data.Rate;
      Result[Count].ParentPeriod := Data.ParentStackName;
      Result[Count].ParentLayer := Data.ParentLayerName;
      Result[Count].Form := Data.Form;
      Result[Count].Subj := Data.Subj;
      inc(count)
    end;
    Item := Tree.GetNextSibling(Item);
  end;
end;

function TLayeredModel.SetFun(a: string): TFunctionRec;
var
  f: TFunctionRec;
  c: char;
  p1, p2: double;
  b: string;
  p: integer;
begin
  p := Pos(',', a);
  if p = 0 then
  begin
    f.f := fNone;
    f.a := StrToFloat(a);
    f.b := 0;
  end
  else
  begin
    c := a[1];
    Delete(a, 1, p);
    p := Pos(',', a);
    b := Copy(a, 1, p - 1);
    p1 := StrToFloat(b);
    Delete(a, 1, p);
    p2 := StrToFloat(a);
    f.a := p1;
    f.b := p2;
    case c of
      'L':
        f.f := fLine;
      'E':
        f.f := fExp;
      'P':
        f.f := fParabolic;
    end;
  end; { Else }
  Result := f;
end;

procedure TLayeredModel.AddMaterial(Data: PRowData; Lambda: single);
var
  i, size: integer;
begin
  size := length(Materials);
  for i := 0 to size - 1 do
    if Materials[i].Name = Data.Text then
      Exit;

  SetLength(Materials, size + 1);

  with Materials[size] do
  begin
    Name := Data.Text;
    ReadHenke(Name, 0, Lambda, f, am, ro);
  end;
end;

function TLayeredModel.FindMaterial(const Name: string): TMaterial;
var
  i: integer;
begin
  for i := 0 to length(Materials) - 1 do
    if Materials[i].Name = Name then
      Break;
  Result := Materials[i];
end;


procedure TLayeredModel.PrepareChart(var Chart: TChart);
var
  i: integer;
  Series: TPointSeries;
  S: string;
begin
  Chart.SeriesList.Clear;
  for I := 0 to High(Gradients) do
  begin
    Series := TPointSeries.Create(Chart);
    Series.Visible := True;
    Series.ParentChart := Chart;
    case Gradients[i].Subj of
      gsL : S:= 'H';
      gsS : S:= 'sigma';
      gsRo : S:= 'rho';
    end;
    Series.Title := Format('%s - %s (%s)',[Gradients[i].ParentPeriod, Gradients[i].ParentLayer, S]);
  end;
end;


procedure TLayeredModel.FillMaterial;
begin
  Material := FindMaterial(FData.Text);

  if FData.r <> '' then
      Material.ro := StrToFloat(FData.r);
  if FData.s <> '' then
  begin
    Material.s := SetFun(FData.s);
    Material.s.a := Material.s.a / 1.41;
    Material.s.b := Material.s.b / 1.41;
  end
  else
  begin
    Material.s.a := 0;
    Material.s.b := 0;
  end;
end;

procedure TLayeredModel.FillLayer(i: Integer);
var
  g: integer;
  c: Single;
begin
  with FLayers[CurrentLayer] do
  begin
    L := StrToFloat(FData.H);

    if (i = 1) and InsideMain then
      FTotalD := FTotalD + L;

    for g := 0 to High(Gradients) do
    begin
      if Inside and (FData.Text = Gradients[g].ParentLayer) then
      begin
        case Gradients[g].Subj of
          gsL : case Gradients[g].Form of
                  gtLine : begin
                             L := L * (1 + i/(NL)* Gradients[g].Rate);
                             GradientValue := L;
                           end;
                end;
          gsS : case Gradients[g].Form of
                  gtLine :begin
                            Material.s.a  := Material.s.a * (1 + i/(NL)* Gradients[g].Rate);
                            Material.s.b  := Material.s.a * (1 + i/(NL)* Gradients[g].Rate);
                            GradientValue := Material.s.a;
                          end;
                end;
          gsRo: case Gradients[g].Form of
                  gtLine : Material.ro := Material.ro * (1 + i/(NL)* Gradients[g].Rate)
                end;

        end;
        Chart.Series[g].AddXY(i, GradientValue);
      end;
    end;

    c := kk * Material.ro / Material.am * sqr(FLambda);
    Delta := Delta + c * Material.f.re / 2 * Material.h.a;
    Material.f.re := 1 - Material.f.re * c;
    Material.f.im := Material.f.im * c;

    e := Material.f;
    s := Material.s.a;
  end;
end;

procedure TLayeredModel.FillSubstrate;
var
    c: Single;
begin
  with Substrate do // подложка
  begin
    FData := Tree.GetNodeData(Tree.GetLast);
    if FData.RowType = rtSubstrate then
    begin
      ReadHenke(FData.Text, 0, FLambda, f, am, ro);
      if FData.r <> '' then ro := StrToFloat(FData.r);
      if FData.s <> '' then
        s := SetFun(FData.s)
      else
        s.a := 0;
    end
    else
    begin
      ReadHenke('Si', 0, FLambda, f, am, ro);
      s.a := 5;
      s.b := 0;
    end;
    c := kk * (ro / am) * sqr(FLambda);
    FLayers[LayersCount + 1].L := 1E8;
    FLayers[LayersCount + 1].s := s.a;
    FLayers[LayersCount + 1].e.re := 1 - f.re * c;
    FLayers[LayersCount + 1].e.im := f.im * c;
  end;
end;

function TLayeredModel.CountLayers: Integer;
begin
  Result := 0;
  Stack := Tree.GetFirst;
  while Stack <> Nil do
  begin
    FData := Tree.GetNodeData(Stack);
    if FData.RowType = rtStack then
      inc(Result, Stack.ChildCount * FData.N);
    Stack := Tree.GetNextSibling(Stack);
  end;
end;


procedure TLayeredModel.FillStacks;
var
  g, i, j: Integer;
begin
  Stack := Tree.GetFirst;
  while Stack <> Nil do
  begin
    FData := Tree.GetNodeData(Stack);
    if FData.RowType = rtStack then
    begin
      NL := FData.N;

      Inside := False;
      for g := 0 to High(Gradients) do
        if FData.Text = Gradients[g].ParentPeriod then
        begin
          Inside := True;
          Break;
        end;

      InsideMain := Pos('Main', FData.Text) <> 0;
      if InsideMain then FTotalD := 0;

      for i := 1 to NL do
      begin
        Layer := Stack.FirstChild;
        for j := 0 to Stack.ChildCount - 1 do
        begin
          FData := Tree.GetNodeData(Layer);

          FillMaterial;
          FillLayer(i);

          Layer := Tree.GetNextSibling(Layer);
          inc(CurrentLayer);
        end;
      end;
    end;
    Stack := Tree.GetNextSibling(Stack);
  end;
end;

procedure TLayeredModel.PrepareMaterials;
begin
  Stack := Tree.GetFirst;
  while Stack <> Nil do
  begin
    FData := Tree.GetNodeData(Stack);
    if FData.RowType = rtLayer then
      AddMaterial(FData, FLambda);
    Stack := Tree.GetNext(Stack);
  end;
end;


{ TLayeredModel }

constructor TLayeredModel.Create;
begin
  Tree    := ATree;
  Chart   := AChart;
  Model   := AModel;
end;

procedure TLayeredModel.Generate;
begin
  FLambda := Lambda;

  Gradients := FillGradients;
  LayersCount := CountLayers;

  SetLength(FLayers, 0);
  SetLength(Materials, 0);

  PrepareChart(Chart);
  SetLength(FLayers, LayersCount + 2);
  CurrentLayer := 1;

  PrepareMaterials;
  FillStacks;
  FillSubstrate;

  FLayers[0].L := 1E10;
  FLayers[0].e.re := 1;
  FLayers[0].e.im := 0;
end;

function TLayeredModel.GetLayers: TLayers;
begin
  Result := Copy(FLayers, 0, Length(FLayers));
end;

function TLayeredModel.IfHasGradients: Boolean;
begin
  Result := Length(Gradients) > 0;
end;

end.
