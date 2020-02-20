(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit unit_types;

interface

uses
  SysUtils,
  math_complex,
  Series,
  Graphics;

type

  TRoughnessFunction = (rfError, rfExp, rfLinear, rfStep, rfSinus);

  // Inteface Data types

  TRowType = (rtStack, rtLayer, rtSubstrate);
  TProjectGroupType = (gtModel, gtData);
  TProjRowType = (prGroup, prItem, prFolder, prExtension);
  TExtentionType = (etNone, etGradient, etProfile);
  TGradientForm = (gtLine, gtExp, gtSin, gtCos);
  TGradientSubject = (gsL, gsS, gsRo);
  PProjectData = ^TProjectdata;

  TProjectData = record
    Title: string;
    Group: TProjectGroupType;
    Description: string;

    function IsModel:Boolean;

    case RowType: TProjRowType of
      prGroup, prFolder:
        ();
      prItem:
        (ID: integer;
         Curve: TLineSeries;
         Color: TColor;
         Active: boolean;
         Visible: boolean);
      prExtension:
         (Enabled: boolean;
          case ExtType: TExtentionType of
            etGradient:
              (ParentLayerName: string [40];
               ParentStackName: string [40];
               Rate: single;
               Form: TGradientForm;
               Subj: TGradientSubject;
               );
            etProfile:
              ();
         )
  end;

  PRowData = ^TRowData;

  TRowData = record
    Text: string;
    Changed: Boolean;

    function HV: single;

    function IsLayer: boolean;
    function IsPeriod: boolean;

    case RowType: TRowType of
      rtLayer:
        ( H: string[40];
          s: string[40];
          r: string[40];
          Fixed: boolean);
      rtStack:
        (N: integer);

  end;

  TCalcMode = (cmTheta, cmLambda, cmTest);


  TPolarisation = (cmS, cmSP);

  TThreadParams = record
    N: integer;
    K: integer;
    P: TPolarisation;
    RF: TRoughnessFunction;
    case Mode: TCalcMode of
      cmTheta:
        (StartT, EndT: single;
          Lambda: single);
      cmLambda:
        (StartL, EndL: single;
          Theta: single;
          DW: single);
  end;

  TLayerComboItemType = (itHeader, itLayer);

  TLayerComboItem = record
    Title: string;
    Data: PRowData;
    ItemType: TLayerComboItemType;
  end;

  // Calculation data types

  TLayer = record
    e: TComplex; { Epsilon }
    L, s: single; { Thickness, sigma, transition }
    K: TComplex; { kappa }
    RF, r: TComplex; { Френелевский коэф. }
    LID: byte;
  end;

  TLayerComboItemList = array of TLayerComboItem;

  TLayers = array of TLayer;

  TFunctionRec = record
    f: (fNone, fLine, fExp, fParabolic, fFiting);
    a, b, c: single;
  end;

  TGradientRec = record
    Rate: single;
    Form: TGradientForm;
    Subj: TGradientSubject;
    ParentPeriod: string;
    ParentLayer: string;
  end;
  TGradients = array of TGradientRec;

  TMaterial = record
    Name: string;
    ro, am, tl: single;
    f: TComplex;
    H, s: TFunctionRec;
  end;

  TDataPoint = record
    t, r: single;
  end;

  TDataArray = array of TDataPoint;

  TFitParam = record
    V, Vmin, Vmax, dv: single;
  end;

  TPerson = record
    Disp: double;
    H, s, r: array of TFitParam;
  end;

  TFitRange = record
    tet1, tet2: double;
    i1, i2: integer;
  end;

  TRangeCell = record
    Min, Max: string;
  end;

implementation

{ TRowData }

function TProjectData.IsModel:Boolean;
begin
  Result := (Group = gtModel) and (RowType = prItem);
end;

function TRowData.HV: single;
begin
  Result := StrToFloat(H);
end;

function TRowData.IsLayer: boolean;
begin
  Result := (RowType = rtLayer);
end;

function TRowData.IsPeriod: boolean;
begin
  Result := (RowType = rtStack);
end;

end.

