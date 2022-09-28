unit fmLoanAgree;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ToolWin, ExtCtrls, RichEdit, ActiveX;

type
  TfrmLoanAgree = class(TForm)
    rdtLoanAgree: TRichEdit;
    dlgPrint: TPrintDialog;
    Ruler: TPanel;
    FirstInd: TLabel;
    LeftInd: TLabel;
    RulerLine: TBevel;
    RightInd: TLabel;
    Bevel1: TBevel;
    StatusBar1: TStatusBar;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnClose: TToolButton;
    btnPrint: TToolButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RulerResize(Sender: TObject);
    procedure LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure RulerItemMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RulerItemMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

    procedure SelectionChange(Sender: TObject);
    procedure RightIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnPrintClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FUpdating: Boolean;
    FDragOfs: Integer;
    FDragging: Boolean;
    procedure UpdateCursorPos;
  public
    { Public declarations }
  end;

implementation

uses dmMain, uConst;

{$R *.DFM}

procedure TfrmLoanAgree.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmLoanAgree.FormCreate(Sender: TObject);
var
  R : TRect;
  LeftMargin:integer;
  RightMargin:integer;

begin
  LeftMargin := 20;
  RightMargin := 10;
  //RightMargin := 0;
  R := rdtLoanAgree.ClientRect;
  R.Left := R.Left + LeftMargin;
  R.Top := R.Top + 2;
  R.Bottom := R.Bottom - 2;
  R.Right := R.Right-RightMargin;
  SendMessage(rdtLoanAgree.Handle, EM_SETRECT, 0, Longint(@R));
end;

procedure TfrmLoanAgree.RulerResize(Sender: TObject);
begin
  RulerLine.Width := Ruler.ClientWidth - (RulerLine.Left*2);
end;

procedure TfrmLoanAgree.LeftIndMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  rdtLoanAgree.Paragraph.LeftIndent := Trunc((LeftInd.Left+FDragOfs-GutterWid) / RulerAdj)-rdtLoanAgree.Paragraph.FirstIndent;
  SelectionChange(Sender);
end;

procedure TfrmLoanAgree.SelectionChange(Sender: TObject);
begin
  with rdtLoanAgree.Paragraph do
  try
    FUpdating := True;
    FirstInd.Left := Trunc(FirstIndent*RulerAdj)-4+GutterWid;
    LeftInd.Left := Trunc((LeftIndent+FirstIndent)*RulerAdj)-4+GutterWid;
    RightInd.Left := Ruler.ClientWidth-6-Trunc((RightIndent+GutterWid)*RulerAdj);
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;


procedure TfrmLoanAgree.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(rdtLoanAgree.Handle, EM_EXLINEFROMCHAR, 0,
    rdtLoanAgree.SelStart);
  CharPos.X := (rdtLoanAgree.SelStart -
    SendMessage(rdtLoanAgree.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
end;


procedure TfrmLoanAgree.RulerItemMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragOfs := (TLabel(Sender).Width div 2);
  TLabel(Sender).Left := TLabel(Sender).Left+X-FDragOfs;
  FDragging := True;
end;

procedure TfrmLoanAgree.RulerItemMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if FDragging then
    TLabel(Sender).Left :=  TLabel(Sender).Left+X-FDragOfs
end;

procedure TfrmLoanAgree.RightIndMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  rdtLoanAgree.Paragraph.RightIndent := Trunc((Ruler.ClientWidth-RightInd.Left+FDragOfs-2) / RulerAdj)-2*GutterWid;
  SelectionChange(Sender);
end;

procedure TfrmLoanAgree.FirstIndMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  rdtLoanAgree.Paragraph.FirstIndent := Trunc((FirstInd.Left+FDragOfs-GutterWid) / RulerAdj);
  LeftIndMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmLoanAgree.btnPrintClick(Sender: TObject);
begin
  if dlgPrint.Execute then
  begin
    rdtLoanAgree.Print(Caption);
    MessageDlg('Document has been sent to printer',mtInformation,[mbOk],0);
  end;
end;

procedure TfrmLoanAgree.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLoanAgree.FormResize(Sender: TObject);
begin
  rdtLoanAgree.Repaint;
end;

end.
