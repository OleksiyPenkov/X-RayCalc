(* *****************************************************************************
  *
  *   X-Ray Calc CMD
  *
  *   Copyright (C) 2001-2022 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit cmd_unit_types;

interface

uses
  SysUtils,
  cmd_math_complex;

type

  TRoughnessFunction = (rfError, rfExp, rfLinear, rfStep, rfSinus);

  // Inteface Data types

  TExtentionType = (etNone, etGradient, etProfile);
  TGradientForm = (gtLine, gtExp, gtSin, gtCos);
  TGradientSubject = (gsL, gsS, gsRo);

  TCalcMode = (cmTheta, cmLambda, cmTest);

  TPolarisation = (cmS, cmSP);

  TCalcParams = record
    N: integer;
    K: integer;
    P: TPolarisation;
    RF: TRoughnessFunction;
    Mode: TCalcMode;
    StartT, EndT, DT: single;
    Lambda: single;
    StartL, EndL: single;
    Theta: single;
    DW: single;
  end;

  // Calculation data types

  TLayer = record
    Name: string;
    e: TComplex; { Epsilon }
    H, S, Rho: single; { Thickness, sigma, rho }
    K: TComplex; { kappa }
    RF, r: TComplex; { Френелевский коэф. }
  end;

  TLayers = array of TLayer;


  TFunctionRec = record
    f: (fNone, fLine, fExp, fParabolic, fFiting);
    a, b, c: single;
  end;

  TMaterial = record
    Name: string;
    rho, am: single;
    f: TComplex;
  end;

  TMaterials = array of TMaterial;

  TDataPoint = record
    t, r: single;
  end;

  TDataArray = array of TDataPoint;

var
  InputStructureFileName: string = 'input_structure.txt';
  OutputFileName : string = 'reflectivity.dat';
  InputDataFile: string = '';
  NumberOfFiles: Integer;

  Population: Integer = 5;
  Iterations: Integer = 1;

implementation

end.

