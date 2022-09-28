
{===============================================================================
 Author         : Wynand Wessels
 Date           :
 Unit           :
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}
unit fmNLRTransaction;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Grids, DBGrids, ExtCtrls, pbBackGround,
  StdCtrls, Unit32, DBGrdClr;

type
  TfrmNLRTransaction = class(TForm)
    tlbDBBase: TToolBar;
    btnExit: TToolButton;
    btnDelete: TToolButton;
    btnConnect: TToolButton;
    btnClearAll: TToolButton;
    pnlMain: TPanel;
    pbMain: TpbBackGround;
    Panel1: TPanel;
    Panel2: TPanel;
    grdNLRToDo: TDBGrdClr;
    Label3: TLabel;
    btnViewResult: TToolButton;
    procedure btnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure grdNLRToDoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure btnViewResultClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmNLR, fmConnectNLR, dmMain, fmViewNLR;

{$R *.DFM}

procedure TfrmNLRTransaction.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNLRTransaction.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  dtmNlr := TdtmNlr.Create(nil);
  dtmNLR.qryNLRToDo.Open;
  Screen.Cursor := crDefault;
  grdNLRToDo.OddColor := dtmMain.OddGrdColor;
end;

procedure TfrmNLRTransaction.FormShow(Sender: TObject);
begin
  Self.Color             := dtmMain.ScrPnlColor;
  grdNLRToDo.Color       := dtmMain.GrdColor;
  grdNLRToDo.FixedColor  := dtmMain.FixGrdColor;
  tlbDBBase.Color        := dtmMain.RecBarColor;
  pbMain.SourceDir       := dtmMain.BackGroundSrc;
  pbMain.Active          := True;
end;

procedure TfrmNLRTransaction.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmNLR.qryNLRToDo.Close;
  dtmNLR.Free;
  dtmNLR := Nil;
end;

procedure TfrmNLRTransaction.btnDeleteClick(Sender: TObject);
begin
   if MesDlg('Are you sure you want to delete this record?','C') = mrYes then
     dtmNLR.qryNLRToDo.Delete;
end;

procedure TfrmNLRTransaction.btnClearAllClick(Sender: TObject);
begin
   if MesDlg('Are you sure you want to delete all records?','C') = mrYes then
   begin
     dtmNLR.qryNLRToDo.First;
     while not dtmNlr.qryNLRToDo.Eof do
       dtmNLR.qryNLRToDo.Delete;
   end;
end;

procedure TfrmNLRTransaction.btnConnectClick(Sender: TObject);
var
  ConNLR : TfrmConnectNLR;
begin
  ConNLR := TfrmConnectNLR.Create(nil);
  try
    ConNLR.StartProcess;
  finally
    ConNLR.Free;
  end;
end;

procedure TfrmNLRTransaction.grdNLRToDoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not dtmNLR.qryNLRToDo.Fields[0].IsNull then
  begin
    if (Column.FieldName = 'StatusCode') or (Column.FieldName = 'TransType') then
    begin
      grdNLRToDo.Canvas.FillRect(Rect);
      grdNLRToDo.Canvas.TextOut(Rect.Left+2,Rect.Top+1,dtmNLR.GetNLRStatus(Column.Field.AsInteger));
    end;
  end;
end;

procedure TfrmNLRTransaction.btnViewResultClick(Sender: TObject);
var
  frmViewNLR : TfrmViewNLR;
begin
  inherited;
  frmViewNLR := TfrmViewNLR.Create(nil);
  Try
    frmViewNLR.ViewNLRClient(dtmNLR.qryNLRToDo.FieldByName('LoanID').AsInteger);
  Finally
   frmViewNLR.Free;
  End;
end;

end.

