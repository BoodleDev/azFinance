unit fmSetLoanStatus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ToolWin, ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, DB,
  Unit32, Mask, DBCtrls;

type
  TfrmSetLoanStatus = class(TfrmBase)
    btnOpenLoan: TToolButton;
    btnCloseLoan: TToolButton;
    pnlMain: TPanel;
    grdMain: TDBGrid;
    TimerType: TTimer;
    btnBadDebt: TToolButton;
    btnFroze: TToolButton;
    pnlTop: TPanel;
    shpOpen: TShape;
    Shape1: TShape;
    Label44: TLabel;
    Label1: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    edtLID: TDBEdit;
    Shape3: TShape;
    Label3: TLabel;
    Shape4: TShape;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdMainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TimerTypeTimer(Sender: TObject);
    procedure grdMainKeyPress(Sender: TObject; var Key: Char);
    procedure grdMainEnter(Sender: TObject);
    procedure btnBadDebtClick(Sender: TObject);
    procedure btnOpenLoanClick(Sender: TObject);
    procedure btnCloseLoanClick(Sender: TObject);
    procedure btnFrozeClick(Sender: TObject);
    procedure edtLIDChange(Sender: TObject);
  private
    { Private declarations }
    CurrentLookup : string;
    LookUpFld : String;
    SetStatus : integer;
    procedure WriteLoanStatus;
    procedure EmptyArrears; // emptys arrears and sets amount due to 0
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLoanMan, uLSConst, uLScentral;

{$R *.DFM}

{ TfrmSetLoanStatus }

procedure TfrmSetLoanStatus.FormCreate(Sender: TObject);
begin
  inherited;
  dtmLoanMan := TdtmLoanMan.Create(self);
end;

procedure TfrmSetLoanStatus.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmLoanMan.Free;
  dtmLoanMan := nil;
end;

procedure TfrmSetLoanStatus.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors(grdMain);
  dtmLoanMan.spcLoanStatus.Open;
  TimerType.Enabled := True;
  if grdMain.SelectedIndex = 0 then
    grdMain.SelectedIndex := 0;
  grdMain.Columns[grdMain.SelectedIndex].Title.Color := clTeal;
  edtLID.DataSource := dtmMain.dtsEntID;
end;

procedure TfrmSetLoanStatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmLoanMan.spcLoanStatus.Close;
  TimerType.Enabled := False;
end;

// WW 08/02/2001 arrears =0 amountdue =0
procedure TfrmSetLoanStatus.EmptyArrears;
begin
  if MesDlg('Do you want to empty the arrears information for this client?','C') = mrYes then
    dtmLoanMan.ClearArrInfo;
end;

// WW 17/11/2000 - procedure revamp by me.
procedure TfrmSetLoanStatus.WriteLoanStatus;
var
  strStatus : string;
begin
//  inherited;
  case SetStatus of
    lnsOpen    :  strStatus := lndOpen;
    lnsSettle  :  strStatus := lndSettle;
    lnsFrozen  :  strStatus := lndFrozen;
    lnsClose   :  strStatus := lndClose;
  end;
  if MesDlg('Are you sure you want to "'+strStatus+'" this loan?','C') =
    mrYes then
  begin
    if not (dtmLoanMan.SetLoanStatus(SetStatus,
      dtmLoanMan.spcLoanStatus.FieldByName('LoanID').AsInteger)) then
      MesDlg('Could not close loan.','E')
    else
      if strStatus = lndClose then EmptyArrears;
  end;
  dtmLoanMan.spcLoanStatus.DisableControls;
  dtmLoanMan.spcLoanStatus.Requery;
  dtmLoanMan.spcLoanStatus.EnableControls;
end;

procedure TfrmSetLoanStatus.grdMainDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Column.FieldName = 'EntCode' then
  begin
    grdMain.Canvas.Brush.Color :=
      ColorLoanStatus(dtmLoanMan.spcLoanStatus.FieldByName('Status').AsInteger); // Close
    grdMain.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  //
  if Column.FieldName = 'Status' then
  begin
    grdMain.Canvas.FillRect(Rect);
    grdMain.Canvas.TextOut(Rect.Left+2,Rect.Top+2,
      GetLoanStatus(dtmLoanMan.spcLoanStatus.FieldByName('Status').AsInteger));
  end;
end;

procedure TfrmSetLoanStatus.TimerTypeTimer(Sender: TObject);
begin
  inherited;
  CurrentLookUp := '';
end;

procedure TfrmSetLoanStatus.grdMainKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  CurrentLookUp := CurrentLookUp + Key;
  grdMain.DataSource.DataSet.Locate(LookUpFld,CurrentLookUp,
    [loCaseInsensitive,loPartialKey]);
end;

procedure TfrmSetLoanStatus.grdMainEnter(Sender: TObject);
begin
  inherited;
  LookUpFld := grdMain.SelectedField.FieldName;
end;

procedure TfrmSetLoanStatus.btnOpenLoanClick(Sender: TObject);
begin
//  inherited;
  if dtmLoanMan.spcLoanStatus.FieldByName('Status').AsInteger = lnsSettle then
  begin
    dtmLoanMan.qryChkSettle.Active := True;          // WW kyk of daar batch's is voor ek dit
    if dtmLoanMan.qryChkSettle.RecordCount = 0 then  // Client weer oop maak.
    begin
      SetStatus := lnsOpen;
      WriteLoanStatus;
    end
    else
      MesDlg('Could not open loan, please remove client''s settlement batch entries first.','E');
    dtmLoanMan.qryChkSettle.Active := False;
  end
  else
  begin
    SetStatus := lnsOpen;
    WriteLoanStatus;
  end;
end;

procedure TfrmSetLoanStatus.btnBadDebtClick(Sender: TObject);
begin
  inherited;
  //SetStatus := lnsBadDebt;
  WriteLoanStatus;
end;

procedure TfrmSetLoanStatus.btnCloseLoanClick(Sender: TObject);
begin
  inherited;
  SetStatus := lnsClose;
  if (dtmLoanMan.spcLoanStatus.FieldByName('AccBal').AsCurrency>-0.01) and
    (dtmLoanMan.spcLoanStatus.FieldByName('AccBal').AsCurrency<0.01) then
  begin
    WriteLoanStatus;
  end
  else
  begin
    if MesDlg('Account balance is not zero. Continue?','X')=mrYes then
      WriteLoanStatus;
  end;
end;

procedure TfrmSetLoanStatus.btnFrozeClick(Sender: TObject);
begin
  inherited;
  SetStatus := lnsFrozen;
  WriteLoanStatus;
end;

procedure TfrmSetLoanStatus.edtLIDChange(Sender: TObject);
begin
  inherited;
  dtmLoanMan.spcLoanStatus.Locate('EntityID',
    dtmMain.qryEntID.FieldByName('EntityID').AsInteger,[]);
end;

end.
