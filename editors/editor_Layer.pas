(* *****************************************************************************
  *
  *   X-Ray Calc 2
  *
  *   Copyright (C) 2001-2020 Oleksiy Penkov
  *   e-mail: oleksiy.penkov@gmail.com
  *
  ****************************************************************************** *)

unit editor_Layer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzEdit, StdCtrls, Mask, RzBtnEdt, RzButton, ExtCtrls, RzPanel,
  unit_types, JvExMask, JvToolEdit, JvBaseEdits, VirtualTrees;

type
  TedtrLayer = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    btnOK: TRzBitBtn;
    btnCancel: TRzBitBtn;
    edMaterial: TRzButtonEdit;
    Label1: TLabel;
    Label2: TLabel;
    edRo: TJvCalcEdit;
    edH: TJvCalcEdit;
    edSigma: TJvCalcEdit;
    Label7: TLabel;
    Label6: TLabel;
    btnPrev: TRzBitBtn;
    btnNext: TRzBitBtn;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNextClick(Sender: TObject);

    procedure FillEdits;
    procedure SaveData;
    procedure ScrollTree(Tag: integer);
    procedure edMaterialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMaterialButtonClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Data : PRowData;
    Tree : TVirtualStringTree;
  end;

var
  edtrLayer: TedtrLayer;

implementation

uses frm_MList;

{$R *.dfm}

procedure TedtrLayer.FillEdits;
begin
  edMaterial.Text := Data.Text;
  edH.Text := Data.H;
  edSigma.Text := Data.S;
  edRo.Text := Data.R;
end;

procedure TedtrLayer.FormShow(Sender: TObject);
begin
  FillEdits;
  ActiveControl := edMaterial;
end;

procedure TedtrLayer.SaveData;
begin
  Data.Text := edMaterial.Text;
  Data.H := FloatToStr(edH.Value);
  Data.S := edSigma.Text;
  Data.R := edRo.Text;
end;

procedure TedtrLayer.ScrollTree(Tag: integer);
var
  Node: PVirtualNode;
  Parent: PVirtualNode;
begin
  SaveData;

  Node := Tree.GetFirstSelected;
  if Node = Nil then Exit;

  Parent := Node.Parent;
  Tree.ClearSelection;

  case Tag of
    1:begin
        Node := Tree.GetNextSibling(Node);
        if Node = Nil then
          Node := Tree.GetFirstChild(Parent);
      end;
    2:begin
        Node := Tree.GetPreviousSibling(Node);
        if Node = Nil then
          Node := Tree.GetLastChild(Parent);
      end;
  end;

  Tree.Selected[Node] := True;
  Data := Tree.GetNodeData(Node);
  Tree.RepaintNode(Node);
  FillEdits;
end;

procedure TedtrLayer.btnNextClick(Sender: TObject);
begin
  ScrollTree((Sender as TrzBitBtn).Tag);
end;

procedure TedtrLayer.btnOKClick(Sender: TObject);
begin
  SaveData;
end;

procedure TedtrLayer.edMaterialButtonClick(Sender: TObject);
begin
  edMaterial.Text := GetElementName;
end;

procedure TedtrLayer.edMaterialKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = VK_DOWN) then ScrollTree(1);
  if (ssCtrl in Shift) and (Key = VK_UP)  then ScrollTree(2);
end;

end.
