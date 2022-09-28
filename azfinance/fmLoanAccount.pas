unit fmLoanAccount;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBaseGrd, Menus, Grids, DBGrids, ExtCtrls, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls, UConst, DBGrdClr, Buttons, DBStyleGrid, HyperLink;

type
  TfrmLoanAccount = class(TForm)
    Panel2: TPanel;
    grdBase: TDBStyleGrid;
    pnlTot: TPanel;
    lblTotals: TLabel;
    lblDR: TLabel;
    lblCR: TLabel;
    procedure grdBaseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Settlement1Click(Sender: TObject);
    procedure RepaymentTerm1Click(Sender: TObject);
    procedure ArrearsSettlement1Click(Sender: TObject);
  private
    { Private declarations }
    procedure DoSettleDetailFrm;
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLS, fmSettleDetail, uLSConst, uLScentral, Unit32,
  fmSettleArrears, dmSettleArrears, fmQuickRePay, fmLegalSettlement, ADODB,
  DB, fmSettleArrears2;

{$R *.DFM}

procedure TfrmLoanAccount.FormCreate(Sender: TObject);
begin
  dtmSettleArrears := TdtmSettleArrears.Create(Self);
  dtmSettleArrears.dbSettleArrears.Connected := False;
  dtmSettleArrears.dbSettleArrears.ConnectionString := dtmMain.dbData.ConnectionString;
  dtmSettleArrears.dbSettleArrears.Connected := True;

  dtmLS.SetAccStatus(True,acLA);
  grdBase.Realign;

  dtmMain.SetGrdColors(grdBase);

  ReadFormGrids(Self,ApplName,PersonalFolder);
end;

procedure TfrmLoanAccount.grdBaseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Column.FieldName = 'TransCode') or
    (Column.FieldName = 'TransDesc') then
  begin
    if not (gdSelected in State) then
    case dtmLS.cdsAcc.FieldByName('TransType').AsInteger of
      11: grdBase.Canvas.Font.Color := clNavy;
      12: grdBase.Canvas.Font.Color := clRed;
    end; {case}
    grdBase.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end; {if}
{  if Column.FieldName = 'Debit' then
  begin
    if Column.Field.AsCurrency < 0 then
      grdBase.Canvas.FillRect(Rect);
  end;
  if Column.FieldName = 'Credit' then
  begin
    if Column.Field.AsCurrency > 0 then
      grdBase.Canvas.FillRect(Rect);
  end;
  }
end;

procedure TfrmLoanAccount.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmLS.SetAccStatus(False,acLA);
end;

procedure TfrmLoanAccount.DoSettleDetailFrm;
var
  SettleDetForm : TfrmSettleDetail;
begin
  SettleDetForm := TfrmSettleDetail.Create(nil);
  try // User Grp
    SettleDetForm.btnSettleAcc.Enabled := True;
    SettleDetForm.ShowSettlementDetail(dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger);
  finally
    SettleDetForm.Free;
  end;
end;

procedure TfrmLoanAccount.FormDestroy(Sender: TObject);
begin
  WriteFormGrids(Self,ApplName,PersonalFolder);
  FreeAndNil(dtmSettleArrears);
end;

procedure TfrmLoanAccount.Settlement1Click(Sender: TObject);
begin
  if (dtmLS.qryEntLoan.FieldByName('Status').AsInteger = lnsHandover) and
    (dtmLS.qryEntLoan.FieldByName('JDProcessed').AsBoolean) then
  begin
    frmLegalSettlement := TfrmLegalSettlement.Create(Self);
    try
      frmLegalSettlement.ConnectionString := dtmMain.dbData.ConnectionString;
      frmLegalSettlement.LoanID := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
      frmLegalSettlement.ShowModal;
    finally
      FreeAndNil(frmLegalSettlement);
    end;
  end
  else
    DoSettleDetailFrm;
end;

procedure TfrmLoanAccount.RepaymentTerm1Click(Sender: TObject);
 var QRePay : TfrmQuickRePay;
begin
  QRePay := TfrmQuickRePay.Create(nil);
  try
    QRePay.ShowModal;
  finally
    QRePay.Free;
  end;
end;

procedure TfrmLoanAccount.ArrearsSettlement1Click(Sender: TObject);
begin
  frmSettleArrears2 := TfrmSettleArrears2.Create(Self);
  try
    frmSettleArrears2.LoanID := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    frmSettleArrears2.ShowModal;
  finally
    FreeAndNil(frmSettleArrears2);
  end;
end;

end.


