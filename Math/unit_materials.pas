(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2018 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit unit_materials;

interface

uses
  VirtualTrees,
  SysUtils, Chart, VCLTee.Series,
  unit_types,
  math_globals;

function FillLayers(Tree: TVirtualStringTree; Lambda: single; Chart: TChart): TLayers;
function FillGradients(Tree: TVirtualStringTree; Model: PVirtualNode): TGradients;


var
  Gradients: TGradients;

implementation

const
  kk = 0.54014E-5;

var
  Materials: array of TMaterial;


function FillGradients(Tree: TVirtualStringTree; Model: PVirtualNode): TGradients;
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
      Result[Count].ParentPeriod := Data.ParentPeriodName;
      Result[Count].ParentLayer := Data.ParentLayerName;
      Result[Count].Form := Data.Form;
      Result[Count].Subj := Data.Subj;
      inc(count)
    end;
    Item := Tree.GetNextSibling(Item);
  end;
end;



function SetFun(a: string): TFunctionRec;
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

procedure AddMaterial(Data: PRowData; Lambda: single);
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

function FindMaterial(Name: string): TMaterial;
var
  i: integer;
begin
  for i := 0 to length(Materials) - 1 do
    if Materials[i].Name = Name then
      Break;
  Result := Materials[i];
end;


procedure PrepareChart(var Chart: TChart);
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

function FillLayers(Tree: TVirtualStringTree; Lambda: single;  Chart: TChart): TLayers;
var
  Period, Layer: PVirtualNode;
  Data: PRowData;

  i, j, NM, NL, CurrentLayer, g: integer;

  LayersCount: integer;
  Substrate, Material: TMaterial;
  c, Delta: single;
  Str: string;
  GradientValue: single;

  Inside: boolean;
begin
  SetLength(Result, 0);
  SetLength(Materials, 0);

  PrepareChart(Chart);

  // считаем общее количество слоев
  LayersCount := 0;
  Period := Tree.GetFirst;
  while Period <> Nil do
  begin
    Data := Tree.GetNodeData(Period);
    if Data.RowType = rtPeriod then
      inc(LayersCount, Period.ChildCount * Data.N);
    Period := Tree.GetNextSibling(Period);
  end;

  SetLength(Result, LayersCount + 2);
  CurrentLayer := 1;

  // Находим материалы
  Period := Tree.GetFirst;
  while Period <> Nil do
  begin
    Data := Tree.GetNodeData(Period);
    if Data.RowType = rtLayer then
      AddMaterial(Data, Lambda);
    Period := Tree.GetNext(Period);
  end;

  // заполняем слои
  Period := Tree.GetFirst;
  while Period <> Nil do
  begin
    Data := Tree.GetNodeData(Period);
    if Data.RowType = rtPeriod then
    begin
      NL := Data.N;

      Inside := False;
      for g := 0 to High(Gradients) do
        if Data.Text = Gradients[g].ParentPeriod then
        begin
          Inside := True;
          Break;
        end;

      for i := 1 to NL do // повторяем по числу периодов
      begin
        // проходим по слоям внутри периода и заполняем массив слоев
        Layer := Period.FirstChild;
        for j := 0 to Period.ChildCount - 1 do
        begin
          Data := Tree.GetNodeData(Layer);

          Material := FindMaterial(Data.Text);

          if Data.r <> '' then
              Material.ro := StrToFloat(Data.r);
          if Data.s <> '' then
          begin
            Material.s := SetFun(Data.s);
            Material.s.a := Material.s.a / 1.41;
            Material.s.b := Material.s.b / 1.41;
          end
          else
          begin
            Material.s.a := 0;
            Material.s.b := 0;
          end;

          with Result[CurrentLayer] do
          begin
            L := StrToFloat(Data.H);

            for g := 0 to High(Gradients) do
            begin
              if Inside and (Data.Text = Gradients[g].ParentLayer) then
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

            c := kk * Material.ro / Material.am * sqr(Lambda);
            Delta := Delta + c * Material.f.re / 2 * Material.h.a;
            Material.f.re := 1 - Material.f.re * c;
            Material.f.im := Material.f.im * c;

            e := Material.f;
            s := Material.s.a;
          end;

          Layer := Tree.GetNextSibling(Layer);
          inc(CurrentLayer);
        end;
      end;
    end;
    Period := Tree.GetNextSibling(Period);
  end;

  with Substrate do // подложка
  begin
    Data := Tree.GetNodeData(Tree.GetLast);
    if Data.RowType = rtSubstrate then
    begin
      ReadHenke(Data.Text, 0, Lambda, f, am, ro);
      if Data.r <> '' then ro := StrToFloat(Data.r);
      if Data.s <> '' then
        s := SetFun(Data.s)
      else
        s.a := 0;
    end
    else
    begin
      ReadHenke('Si', 0, Lambda, f, am, ro);
      s.a := 5;
      s.b := 0;
    end;
    c := kk * (ro / am) * sqr(Lambda);
    Result[LayersCount + 1].L := 1E8;
    Result[LayersCount + 1].s := s.a;
    Result[LayersCount + 1].e.re := 1 - f.re * c;
    Result[LayersCount + 1].e.im := f.im * c;
  end;

  Result[0].L := 1E10;
  Result[0].e.re := 1;
  Result[0].e.im := 0;
end;

end.
