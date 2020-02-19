(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit frm_MList;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Spin,
  Grids,
  ExtCtrls,
  RzPanel,
  Menus;

type
  TfrmMaterialList = class(TForm)
    lbFiles: TListBox;
    RzGroupBox1: TRzGroupBox;
    StringGrid1: TStringGrid;
    Add: TButton;
    SpinEdit1: TSpinEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Inserttothetable1: TMenuItem;
    N1: TMenuItem;
    Deletefile1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure lbFilesDblClick(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AddClick(Sender: TObject);
    procedure lbFilesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Deletefile1Click(Sender: TObject);
  private
    { Private declarations }
    function NewElement: boolean;
  public
    { Public declarations }
  end;

function GetElementName: string;

var
  frmMaterialList: TfrmMaterialList;

implementation

uses
  unit_helpers,
  unit_settings,
  math_complex,
  math_globals,
  System.UITypes;

{$R *.dfm}

function GetElementName: string;
begin
  if frmMaterialList.ShowModal = mrOk then
    Result := frmMaterialList.lbFiles.Items[frmMaterialList.lbFiles.ItemIndex];
end;

procedure TfrmMaterialList.AddClick(Sender: TObject);
begin
  if NewElement then
  begin
    ShowMessage('Material ' + Edit1.Text + ' was created succefully.');
    lbFiles.Items.Add(Edit1.Text);

    Edit1.Text := '';
    Edit2.Text := '';
    SpinEdit1.Value := 1;
    stringGrid1.Cells[0,1] := '';
    stringGrid1.Cells[1,1] := '';
  end;
end;

procedure TfrmMaterialList.Deletefile1Click(Sender: TObject);
var
  Name: string;
begin
  Name := lbFiles.Items[frmMaterialList.lbFiles.ItemIndex];
  if MessageDlg('File will be deleted! Do you want to continue?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    lbFiles.Items.Delete(frmMaterialList.lbFiles.ItemIndex);
    DeleteFile(Settings.HenkePath + Name + '.bin');
  end;
end;

procedure TfrmMaterialList.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0, 0] := 'Element';
  StringGrid1.Cells[1, 0] := 'Conc. at%';
end;

procedure TfrmMaterialList.FormShow(Sender: TObject);
begin
  FillElementsList(Settings.HenkePath, lbFiles);

end;

procedure TfrmMaterialList.lbFilesDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmMaterialList.lbFilesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return  then lbFilesDblClick(Sender);
end;

function TfrmMaterialList.NewElement: boolean;
var
  i, N: integer;
  s: string;
  e1: single;
  f1, f2: TComplex;
  Size: integer;
  Na, Nro, sNa: single;
  StreamIn, StreamOut : TMemoryStream;
  StrBuffer: PChar;

  function GetString(Stream: TMemoryStream): string;
  begin
    Stream.Read(size, SizeOf(size));
    StrBuffer := AllocMem(size);
    Stream.Read(StrBuffer^, size);
    Result := (StrBuffer);
    FreeMem(StrBuffer);
  end;

  procedure WriteString(const s: string);
  begin
    size := ByteLength(s) + 1;
    StreamOut.Write(size, SizeOf(size));
    StreamOut.Write(PChar(s)^, size);
  end;

begin
  Result := False;
  N := SpinEdit1.Value;
  // считаем атомный вес
  sNa := 0;
  for I := 1 to N do
  begin
    ReadHenke(stringGrid1.Cells[0,i], 100, 0, f1, Na, Nro);
    sNa := sNa + Na * StrToFloat(stringGrid1.Cells[1,i])/100;
  end;

  try
    StreamIn := TMemoryStream.Create;
    StreamOut := TMemoryStream.Create;

    StreamIn.LoadFromFile(Settings.HenkePath + StringGrid1.Cells[0,1] + '.bin');

    s := GetString(StreamIn);
    WriteString(Edit1.Text);

    Size := SizeOf(Na);

    StreamIn.Read(Na, Size);
    StreamIn.Read(Nro, Size);

    Nro := StrToFloat(Edit2.Text);
    StreamOut.Write(sNa, Size);
    StreamOut.Write(Nro, Size);

    while StreamIn.Position < StreamIn.Size do
    begin
      StreamIn.Read(e1, Size);
      StreamIn.Read(f1.re, Size);
      StreamIn.Read(f1.im, Size);

      f1.Re := f1.Re*StrToFloat(stringGrid1.Cells[1,1])/100;
      f1.Im := f1.Im*StrToFloat(stringGrid1.Cells[1,1])/100;

      for I := 2 to N do
      begin
        ReadHenke(stringGrid1.Cells[0,i], e1, 0, f2, Na, Nro);
        f1.Re := f1.Re + f2.Re*StrToFloat(stringGrid1.Cells[1,i])/100;
        f1.Im := f1.Im + f2.Im*StrToFloat(stringGrid1.Cells[1,i])/100;
      end;

      StreamOut.Write(e1, Size);
      StreamOut.Write(f1.Re, Size);
      StreamOut.Write(f1.Im, Size);
    end;
    StreamOut.SaveToFile(Settings.HenkePath + Edit1.Text + '.bin');
    Result := True;
  finally
    StreamIn.Free;
    StreamOut.Free;
  end;
end;

procedure TfrmMaterialList.SpinEdit1Change(Sender: TObject);
begin
  StringGrid1.RowCount := SpinEdit1.Value + 1;
end;

end.
