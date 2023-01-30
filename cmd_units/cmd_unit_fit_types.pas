unit cmd_unit_fit_types;

interface
uses
  SysUtils,
  cmd_math_complex;

type

  TFitParam = record
    val, min, max: Single;
    V, Vmin, Vmax: Single;
    procedure InitV(const k: Single);
    procedure UpdateV(const Best, w, c1, c2: Single);
    procedure Randomize;
  end;

  TFitLayer = record
    Name: string;
    H, s, r: TFitParam;
  end;

  TStack = record
    N: Integer;
    Hmin, Hmax: Single;
    Layers: array of TFitLayer;
    Invariants: array of TFitLayer;
  end;

  TFittedStructure = record
    Name: string;
    Stacks: array of TStack;
    Substrate: TFitLayer;
    Count: Integer;
  end;

implementation
{ TFitParam }

procedure TFitParam.InitV(const k: Single);
begin
  Vmax := (max - min) * k;
  Vmin := - Vmax;
  V    := Vmin + (Vmax - Vmin) * Random;
end;

procedure TFitParam.Randomize;
begin
  Val := min + (max - min) * Random;
end;

procedure TFitParam.UpdateV(const Best, w, c1, c2: Single);
begin
  V := V * w + c1 * Random * (Best - Val) + c2 * Random * (Best - Val);
  if V > Vmax then V := VMax;
  if V < Vmin then V := VMin;

  Val := Val + V;
  if Val > max  then Val := max;
  if Val < min  then Val := min;
end;

{ TFittedStructure }
end.
