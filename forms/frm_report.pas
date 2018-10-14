unit frm_report;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.ActiveX, Vcl.ExtCtrls,
  Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, MSHTML, Vcl.Printers;

type
  TfrmReport = class(TForm)
    wb1: TWebBrowser;
    pnlTop: TPanel;
    btnPrint: TButton;
    dlgPrnt: TPrintDialog;
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadHTML(html: string);
  end;

var
  frmReport: TfrmReport;

implementation


procedure loadStringHtml(WebBrowser: TWebBrowser; HTMLCode: string) ;
var
   strList:   TStringList;
   memStream: TMemoryStream;
begin
   WebBrowser.Navigate('about:blank') ;
   while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

   if Assigned(WebBrowser.Document) then
   begin
     strList := TStringList.Create;
     try
       memStream := TMemoryStream.Create;
       try
         strList.Text := HTMLCode;
         strList.SaveToStream(memStream) ;
         memStream.Seek(0, 0) ;
         (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(memStream)) ;
       finally
         memStream.Free;
       end;
     finally
       strList.Free;
     end;
   end;
end;



{$R *.dfm}

{ TfrmReport }

procedure TfrmReport.btnPrintClick(Sender: TObject);
//var
// HTMLDoc: IHTMLDocument2;
// HTMLWnd: IHTMLWindow2;
// HTMLWindow3: IHTMLWindow3;
//begin
//   HTMLDoc:= wb1.Document as IHTMLDocument2;
//   if HTMLDoc <> nil then
//    begin
//     HTMLWnd:= HTMLDoc.parentWindow;
//     HTMLWindow3:= HTMLWnd as IHTMLWindow3;
//     HTMLWindow3.print;
//    end
//end;
var
  sh: HWND;
  ph: THANDLE;
  r:TRect;
begin
  if not dlgPrnt.Execute then Exit;


  OleInitialize(nil);

  Printer.Orientation := poLandscape;
  Printer.Title := 'X-Ray Calc';
  Printer.BeginDoc;
  try

    Printer.Canvas.Lock;
    try
      sh:=GetDC(0);
      ph:=Printer.Canvas.Handle;

      //TODO: make rect a bit smaller for a page margin
      //TODO: get page size from printer settings, assume A4 here (210x297mm)
      r.Left :=0;
      r.Top :=0;
      r.Right := 2970 * GetDeviceCaps(sh,LOGPIXELSX) div 254;
      r.Bottom := 2100 * GetDeviceCaps(sh,LOGPIXELSY) div 254;
      wb1.BoundsRect:=r;

      SetMapMode(ph,MM_ISOTROPIC);
      SetWindowExtEx(ph,r.Right,r.Bottom,nil);
      SetViewportExtEx(ph,r.Right,r.Bottom,nil);
      r.Right:=GetDeviceCaps(ph,HORZRES)-1;
      r.Bottom:=GetDeviceCaps(ph,VERTRES)-1;

      (wb1.ControlInterface as IViewObject).Draw(
        DVASPECT_CONTENT,
        1,
        nil,nil,0,ph,@r,nil,nil,0);
    finally
      Printer.Canvas.Unlock;
    end;
    Printer.EndDoc;
  except
    Printer.Abort;
    raise;
  end;
end;

procedure TfrmReport.LoadHTML(html: string);
begin
  loadStringHtml(wb1, html);
  ShowModal;
end;

end.
