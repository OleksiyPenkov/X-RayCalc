(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit math_complex;

interface

uses
  Math, SysUtils;

type
  TComplex = record
    Re, Im: single;
  end;

{-------- Conversions & Extractions ---------}

{ Convert R and I to complex }
function ToComplex(R, I: single): TComplex;
{ return real part of Z }
{ return imag part of Z }
function Imag(Z: TComplex): single;

{---------- Utility functions -----------------}

{ true if S is a valid complex string }
function IsValidComplexString(const S: string): boolean;
{ true if Z is a valid complex number }
function IsValidComplexNumber(Z: TComplex): boolean;
{ retun boolean as string }
function BoolToString(B: boolean): string;
{ convert Complex to a string }
function ComplexToString(Z: TComplex): string;
{ convert string to a TComplex }
function StringToComplex(const S: String): TComplex;

{------ Standard operators (+,-,*,/) for complex numbers ----}

{ add two complex numbers }
function AddZZ(const Z, Z2: TComplex): TComplex; inline;
{ add a complex and a real }
function AddZR(const Z: TComplex; R: single): TComplex; inline;
{ subtract two complex numbers }
function SubZZ(const Z, Z2: TComplex): TComplex; inline;
{ subtract Z.re from R (Z - R) }
function SubZR(const Z: TComplex;const R: single): TComplex; inline;
{ subtract R from Z.re (R - Z) }
function SubRZ(const R: single;const Z: TComplex): TComplex; inline;
{ multiply two complex numbers }
function MulZZ(const Z, Z2: TComplex): TComplex; inline;
{ multiply a real and a complex }
function MulRZ(const R: single;const Z: TComplex): TComplex; inline;
{ divide Z with R ( Z/R ) - let compiler handle divbyzero }
function DivZR(const Z: TComplex;const R: single): TComplex; inline;
{ divide R with Z ( R/Z) - let compiler handle divbyzero }
function DivRZ(const R: single;const Z: TComplex): TComplex; inline;
{ divide two complex numbers }
function DivZZ(const Z1, Z2: TComplex): TComplex; inline;

{--------- Specific functions ----------------}

{ return absolute value of Z. ( sqrt(x*x + y*y)) }
function AbsZ(const Z: TComplex): single; inline;
{ same as AbsZ }
function ModZ(const Z: TComplex): single; inline;
{ return the argument of Z in radians }
function ArgZ(Z: TComplex): single;
{ return conjugate of Z (  conjugate( x + iy ) := x - iy ) }
function ConjugateZ(Z: TComplex): TComplex;
{ return the square of the absolute value of Z }
function NormZ(Z: TComplex): single;
{ return negated value of complex number }
function NegZ(Z: TComplex): TComplex;
{ test for equality }
function EqualZZ(Z, Z2: TComplex): boolean;

{----------- Trig. and hyperbolic functions ----------}

{ return the cosine of Z }
function CosZ(Z: TComplex): TComplex;
{ return the hyperbolic cosine of Z }
function CoshZ(Z: TComplex): TComplex;
{ return the sine of Z }
function SinZ(Z: TComplex): TComplex;
{ return the Arcsine of Z }
function ArcSinZ(Z: TComplex): TComplex;
{ return the hyperbolic sine of Z }
function SinhZ(Z: TComplex): TComplex;
{ return the hyperbolic arcsine of Z }
function ArcSinhZ(Z: TComplex): TComplex;
{ return the tan of Z }
function TanZ(Z: TComplex): TComplex;
{ return the arctan of Z }
function ArcTanZ(Z: TComplex): TComplex;
{ return the arccos of Z }
function ArcCosZ(Z: TComplex): TComplex;
{ retun the hyperbolic tan of Z }
function TanhZ(Z: TComplex): TComplex;
{ return the hyperbolic arctan of Z }
function ArcTanhZ(Z: TComplex): TComplex;

{------ Math. functions -------------------}

{ returns e raised to Z  (e^Z) }
function ExpZ(const Z: TComplex): TComplex; inline;
{ returns the natural log of Z }
function LnZ(Z: TComplex): TComplex;
{ retuns the base 10 log of Z }
function Log10Z(Z: TComplex): TComplex;
{ return the complex number built from rect.coords. Range and Theta }
function PolarZ(Range, Angle: single): TComplex;
{ return the rectangular coordinates of Z }
procedure RectangularZ(Z: TComplex; var Range, Angle: single);
{ return the Square root of Z }
function SqrtZ(Z: TComplex): TComplex;
{ return Z^Z2 }
function PowZZ(Z, Z2: TComplex): TComplex;
{ return Z^R (R is int) }
function PowZR1(Z: TComplex; R: integer): TComplex;
{ return Z^R (R is real) }
function PowZR2(Z: TComplex; R: single): TComplex;
{ return R^Z }
function PowRZ(R: single; Z: TComplex): TComplex;

implementation

{========================= Conversion ========================================}

{ Convert R and I to complex }
function ToComplex(R, I: single): TComplex;
begin
  Result.Re := R;
  Result.Im := I;
end;

{ true if S is a valid complex string }
function IsValidComplexString(const S: string): boolean;
begin
  Result := True;
  try
    StringToComplex(S);
  except
    on EConvertError do
      Result := False;
  end;
end;

{ true if Z is a valid complex number }
function IsValidComplexNumber(Z: TComplex): boolean;
begin
  Result := True;
  try
    ComplexToString(Z);
  except
    on EConvertError do
      Result := False;
  end;
end;

{ return boolean as string }
function BoolToString(B: boolean): string;
const
  Bool: array [False .. True] of string = ('False', 'True');
begin
  Result := Bool[B];
end;

{ convert Z to a string }
{ Will raise EConvertError on failure. Call IsValidComplexNumber
  first to avoid this situation. }

function ComplexToString(Z: TComplex): string;
begin
  Result := Format('(%s ,%si)', [FloatToStr(Z.Re), FloatToStr(Z.Im)]);
end;

{ convert string S to a TComplex }
{
  Accepts any input that StrToFloat does, with these additions:
  1. Im and re part must be separated by any nonnumerical character
  2. If the re part has a sign, it cannot be separated from the number
  (i.e - 3.4 is invalid; -3.4 is OK). The im part sign can be separate
  from the numerical body, although it isn't recommended.

  Examples of valid input:
  +7.8,-0.56E-12
  +7.8  -             0.56E-12
  (+7.8,-0.56E-12)
  (     +7.8      ,         -     0.56E-12      )
  +7.8    +   .   5    6  E  -  1  2
  etc...

  Examples of invalid input:
  +7.8-0.56E-12 ( numbers can't stick together)
  + 7.8,-0.56E-12 ( first '+' must be connected with the number )
  +(-7.8) -0.56E-12 ( multiple signs or paranthesis in number not supported.
  etc...

  4. The global variable DecimalSeparator (the dot in the examples) controls
  what character is actually used for separating the integral and fractional
  parts of a number. This setting is controlled by the current settings in
  the registry. If you are uncertain what separator your country use,
  check Control Panel | Country | Numbers.

  5. Will raise an EConvertError (unhandled) if input isn't valid.
  To avoid this, call IsValidComplexString first.
}

function StringToComplex(const S: string): TComplex;
begin
  Result.Im := StrToFloat(S);
end;

{ return real part of Z }
function Real(Z: TComplex): single;
begin
  Result := Z.Re;
end;

{ return imag part of Z }
function Imag(Z: TComplex): single;
begin
  Result := Z.Im;
end;

{=========================== Standard Operators ===============================}

{ add two complex numbers: (x + yi) + (v + wi) = (x + v) + i(y + w) }
function AddZZ(const Z, Z2: TComplex): TComplex;
begin
  Result.Re := Z.Re + Z2.Re;
  Result.Im := Z.Im + Z2.Im;
end;

{ add a complex and a real: r + (x + yi) = (r + x) + yi }
function AddZR(const Z: TComplex; R: single): TComplex;
begin
  Result.Re := R + Z.Re;
  Result.Im := Z.Im;
end;

{ subtract two complex numbers: (x + yi) - (v + wi) = (x - v) + i(y -  w) }
function SubZZ(const Z, Z2: TComplex): TComplex;
begin
  Result.Re := Z.Re - Z2.Re;
  Result.Im := Z.Im - Z2.Im;
end;

{ subtract Z.re from R: (x +yi) - r = (x-r) + yi }
function SubZR(const Z: TComplex; const R: single): TComplex;
begin
  Result.Re := Z.Re - R;
  Result.Im := Z.Im;
end;

{ subtract R from Z.re: r - (x + yi) = (r-x) - yi }
function SubRZ(const R: single;const Z: TComplex): TComplex;
begin
  Result := SubZZ(ToComplex(R, 0), Z);
end;

{ multiply two complex numbers: (x + yi) * ( v + wi) = (xv - yw) + i(xw +yv) }
function MulZZ(const Z, Z2: TComplex): TComplex;
begin
  Result.Re := Z.Re * Z2.Re - Z.Im * Z2.Im;
  Result.Im := Z.Re * Z2.Im + Z.Im * Z2.Re;
end;

{ multiply a real and a complex: r(x+yi) = rx + ryi }
function MulRZ(const R: single;const Z: TComplex): TComplex;
begin
  Result.Re := R * Z.Re;
  Result.Im := R * Z.Im;
end;

{ divide Z with R ( Z/R ) - let compiler handle divbyzero: (x+yi) / r := x/r + yi/r }
function DivZR(const Z: TComplex;const  R: single): TComplex;
begin
  Result.Re := Z.Re / R;
  Result.Im := Z.Im / R;
end;

{ divide R with Z ( R/Z) - let compiler handle divbyzero: r/(x + yi) := r/x + r/yi }
function DivRZ(const R: single;const Z: TComplex): TComplex;
begin
  if (Z.Re = 0) and (Z.Im <> 0) then
    Result := ToComplex(0, R / Z.Im)
  else if (Z.Im = 0) and (Z.Re <> 0) then
    Result := ToComplex(R / Z.Re, 0)
  else
    Result := ToComplex(R / Z.Re, R / Z.Im);
end;

function DivZZ(const Z1, Z2: TComplex): TComplex;
begin
  Result.Re := (Z1.Re * Z2.Re + Z1.Im * Z2.Im) /
    (Z2.Re * Z2.Re + Z2.Im * Z2.Im);
  Result.Im := (Z1.Im * Z2.Re - Z1.Re * Z2.Im) /
    (Z2.Re * Z2.Re + Z2.Im * Z2.Im);
end;

{============================== Misc. complex specific =======================}
{ return absolute value of Z. ( sqrt(x*x + y*y)) }
function AbsZ(const Z: TComplex): single;
var
  x, y: single;
begin
  x := Abs(Z.Re);
  y := Abs(Z.Im);
  if x = 0 then
    Result := y
  else if y = 0 then
    Result := x
  else
  begin
    if x > y then
      Result := x * Sqrt(1 + Power(y / x, 2))
    else
      Result := y * Sqrt(1 + Power(x / y, 2));
  end;
end;

{ same as AbsZ }
function ModZ(const Z: TComplex): single;
begin
  Result := AbsZ(Z);
end;

{ return the argument of Z in radians: z = x + yi -> arctan(y/x) }
function ArgZ(Z: TComplex): single;
begin
  Result := ArcTan2(Z.Im, Z.Re);
end;

{ return conjugate of Z (  (x + iy)~ = x - iy ) }
function ConjugateZ(Z: TComplex): TComplex;
begin
  Result.Re := Z.Re;
  Result.Im := -Z.Im;
end;

{ return the square of the absolute value of Z:  |x + yi|^2 }
function NormZ(Z: TComplex): single;
begin
  Result := Z.Re * Z.Re + Z.Im * Z.Im;
end;

{ return negated value of complex number: x + yi = -x - yi }
function NegZ(Z: TComplex): TComplex;
begin
  Result := ToComplex(-Z.Re, -Z.Im);
end;

{ test for equality }
function EqualZZ(Z, Z2: TComplex): boolean;
begin
  Result := ((Z.Re = Z2.Re) and (Z.Im = Z2.Im));
end;

{===================================== Trigonometric ==========================}

{ return the cosine of Z }
function CosZ(Z: TComplex): TComplex;
begin
  Result := ToComplex(Cos(Z.Re) * Cosh(Z.Im), -(Sin(Z.Re) * Sinh(Z.Im)));
end;

{ return the arccosine of Z. Input value must be between -1..1 and -i..i }
function ArcCosZ(Z: TComplex): TComplex;
begin
  Result := ToComplex(ArcCos(Z.Re) * ArcCosh(Z.Im),
    ArcSin(Z.Re) * ArcSinh(Z.Im));
end;

{ return the hyperbolic cosine of Z }
function CoshZ(Z: TComplex): TComplex;
begin
  Result := ToComplex(Cosh(Z.Re) * Cos(Z.Im), Sinh(Z.Re) * Sin(Z.Im));
end;

{ return the sine of Z }
function SinZ(Z: TComplex): TComplex;
begin
  Result := ToComplex(Sin(Z.Re) * Cosh(Z.Im), Cos(Z.Re) * Sinh(Z.Im));
end;

{ return the arcsine of Z. Input value must be between -1..1 and -i..i }
function ArcSinZ(Z: TComplex): TComplex;
begin
  Result := ToComplex(ArcSin(Z.Re) * ArcCosh(Z.Im),
    ArcCos(Z.Re) * ArcSinh(Z.Im));
end;

{ return the hyperbolic sine of Z }
function SinhZ(Z: TComplex): TComplex;
begin
  Result := ToComplex(Sinh(Z.Re) * Cos(Z.Im), Cosh(Z.Re) * Sin(Z.Im));
end;

{ return the hyperbolic arcsine of Z }
function ArcSinhZ(Z: TComplex): TComplex;
begin
  Result := ToComplex(-Z.Im, Z.Re);
  Result := ArcSinZ(Result);
  Result := ToComplex(Result.Im, -Result.Re);
end;

{ return the tan of Z }
function TanZ(Z: TComplex): TComplex;
var
  x, y, t: single;
begin
  x := 2 * Z.Re;
  y := 2 * Z.Im;
  t := 1.0 / (Cos(x) + Cosh(y));
  Result := ToComplex(t * Sin(x), t * Sinh(y));
end;

{ return the arctan of Z. }
function ArcTanZ(Z: TComplex): TComplex;
var
  x, y, t: single;
begin
  x := 2 * Z.Re;
  y := 2 * Z.Im;
  t := 1.0 / (Cos(x) + Cosh(y));
  Result := ToComplex(t * ArcSin(x), t * ArcSinh(y));
end;

{ retun the hyperbolic tan of Z }
function TanhZ(Z: TComplex): TComplex;
var
  x, y, t: single;
begin
  x := 2 * Z.Re;
  y := 2 * Z.Im;
  t := 1.0 / (Cos(x) + Cosh(y));
  Result := ToComplex(t * Sinh(x), t * Sin(y));
end;

{ return the hyperbolic arctan of Z. Input value must be between -1..1 and -i..i }
function ArcTanhZ(Z: TComplex): TComplex;
begin
  Result := ToComplex(-Z.Im, Z.Re);
  Result := ArcTanZ(Result);
  Result := ToComplex(Result.Im, -Result.Re);
end;

{==================================== Math Functions ==========================}

{ returns e raised to Z:  e^(x + yi) }
function ExpZ(const Z: TComplex): TComplex;
var
  x: single;
begin
  x := Exp(Z.Re);
  Result.Re := x * Cos(Z.Im);
  Result.Im := x * Sin(Z.Im);
end;

{ returns the natural log of Z:  Ln(x + iy) }
function LnZ(Z: TComplex): TComplex;
begin
  Result := ToComplex(Ln(AbsZ(Z)), ArgZ(Z));
end;

{ retuns the base 10 log of Z:  log(x+yi) }
function Log10Z(Z: TComplex): TComplex;
begin
  Result := ToComplex(0.2171472409516259 * Ln(NormZ(Z)), ArgZ(Z));
end;

{ returns the complex number given by the rectangular coordinates Range and Angle:
  z = r(cos(angle) + i sin(angle))
  Range is the length of the straight line extending from 0,0i to the point x,yi
  Angle is the angle in radians between the real axis and the point x,yi
  }
function PolarZ(Range, Angle: single): TComplex;
begin
  Result := ToComplex(Range * Cos(Angle), Range * Sin(Angle));
end;

{ returns the rectangular coordinates Range and Angle of the complex number Z
  (see explanation above) }
procedure RectangularZ(Z: TComplex; var Range, Angle: single);
begin
  Angle := ArgZ(Z);
  Range := AbsZ(Z);
end;

{ return the Square root of Z: sqrt(x+yi) }
function SqrtZ(Z: TComplex): TComplex;
var
  LValue: Single;
begin
  if (Z.Re = 0) and (Z.Im = 0) then
    Result := ToComplex(1, 0)
  else begin
    LValue := AbsZ(Z);
    if Z.Re > 0 then
    begin
      LValue := LValue + Z.Re;
      Result := ToComplex(Sqrt(LValue / 2), Z.Im / Sqrt(LValue * 2));
    end
    else
    begin
      LValue := LValue - Z.Re;
      if Z.Im < 0 then
        Result := ToComplex(Abs(Z.Im) / Sqrt(LValue * 2), -Sqrt(LValue / 2))
      else
        Result := ToComplex(Abs(Z.Im) / Sqrt(LValue * 2), Sqrt(LValue / 2));
    end;
  end;
end;

{ return Z^Z2: (x+yi)^(v+wi) }
function PowZZ(Z, Z2: TComplex): TComplex;
var
  LogF, Phase: TComplex;
begin
  if (Z2.Re = 0) and (Z2.Im = 0) then
    Result := ToComplex(1, 0)
  else if Z2.Im = 0 then
    Result := PowZR2(Z, Z2.Re)
  else
  begin
    LogF.Re := Ln(AbsZ(Z));
    LogF.Im := ArcTan2(Z.Im, Z.Re);
    Phase.Re := Exp(LogF.Re * Z2.Re - LogF.Im * Z2.Im);
    Phase.Im := LogF.Re * Z2.Im + LogF.Im * Z2.Re;
    Result := ToComplex(Phase.Re * Cos(Phase.Im), Phase.Re * Sin(Phase.Im));
  end;
end;

{ return Z^R (R is int): (x+yi)^r }
function PowZR1(Z: TComplex; R: integer): TComplex;
begin
  Result := PowZZ(Z, ToComplex(Trunc(R), 0));
end;

{ return Z^R (R is real): (x +yi)^r }
function PowZR2(Z: TComplex; R: single): TComplex;
begin
  Result := PowZZ(Z, ToComplex(R, 0));
end;

{ return R^Z: r^(x + yi) }
function PowRZ(R: single; Z: TComplex): TComplex;
begin
  Result := PowZZ(ToComplex(R, 0), Z);
end;

end.
