unit rptBulkAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseAcc, Db, QuickRpt, Qrctrls, ExtCtrls, ADODB, rptBasePort,
  Unit32;

type
  TrepBulkAcc = class(TrepBasePort)
    qlBatchNo: TQRLabel;
    qlEffDate: TQRLabel;
    qlTransDesc: TQRLabel;
    qlDebit: TQRLabel;
    qlCredit: TQRLabel;
    qlBalance: TQRLabel;
    qdbtBatchNo: TQRDBText;
    qdbtEffDate: TQRDBText;
    qdbtTransDesc: TQRDBText;
    qdbtD: TQRExpr;
    qdbtC: TQRExpr;
    SumBand: TQRBand;
    lblBulk: TQRLabel;
    memQrBulkNote: TQRMemo;
    qlClientDet: TQRLabel;
    qlNameSurname: TQRLabel;
    qlAccCode: TQRLabel;
    qdbtPersonKey: TQRDBText;
    QRLabel12: TQRLabel;
    qlLoanStatus: TQRLabel;
    QRExprMemo1: TQRExprMemo;
    qlRM: TQRLabel;
    qlLM: TQRLabel;
    qlAccDet: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    qryAdr: TADODataSet;
    qlTotal: TQRLabel;
    qltotD: TQRLabel;
    qlTotC: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRBalance: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    qlIDno: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    qshpLoanDet: TQRShape;
    qlLoanDet: TQRLabel;
    qlTotLoan: TQRLabel;
    qlLoanCode: TQRLabel;
    qlStartDate: TQRLabel;
    qlPayInss: TQRLabel;
    qlLoanPrd: TQRLabel;
    qdbtLoanID: TQRDBText;
    qdbtStartDate: TQRDBText;
    qdbtLPrd: TQRDBText;
    qlTotLoanAmt: TQRLabel;
    qlsAmtFin: TQRLabel;
    qlsInstDate: TQRLabel;
    qdbtInsDate: TQRDBText;
    qlNoInst: TQRLabel;
    qdbtNoInst: TQRDBText;
    qlArrAmts: TQRLabel;
    qlAmtFin: TQRLabel;
    qlPayIns: TQRLabel;
    qlArrAmt: TQRLabel;
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qbGrpFootBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure repTitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qrGroupBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    totD, totC : Currency;
    procedure SetRatePrinting(inStatus :boolean);
    procedure DoNotPrintRate;
    procedure SetDataStatus(Ready: boolean);
    procedure SetDefAdr(DefAdr: Integer);
  public
    { Public declarations }
  end;

implementation

uses dmLS, uLScentral;

{$R *.DFM}

procedure TrepBulkAcc.SetDataStatus(Ready: boolean);
begin
  qryAdr.Active := Ready;
end;

procedure TrepBulkAcc.repTitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qlNameSurname.Caption := dtmLS.cdsBulkState.FieldByName('Name').AsString+
    ' '+dtmLS.cdsBulkState.FieldByName('Surname').AsString;
  qlTotLoanAmt.Caption := FloatToStrF(
    dtmLS.cdsBulkState.FieldByName('AmtToFin').AsFloat+
    dtmLS.cdsBulkState.FieldByName('TotInterest').AsFloat,ffCurrency,15,2);
  //
  qlAmtFin.Caption := FloatToStrF(dtmLS.cdsBulkState.FieldByName('AmtToFin').AsCurrency,ffCurrency,15,2);
  qlPayIns.Caption := FloatToStrF(dtmLS.cdsBulkState.FieldByName('PayIns').AsCurrency,ffCurrency,15,2);
  qlArrAmt.Caption := FloatToStrF(dtmLS.cdsBulkState.FieldByName('ArrearsAmt').AsCurrency,ffCurrency,15,2);

  SetDefAdr(dtmLS.cdsBulkState.FieldByName('DefAdr').AsInteger);
  if qryAdr.FieldByName('Address1').AsString = ''  then
  begin
    if dtmLS.cdsBulkState.FieldByName('DefAdr').AsInteger = 1 then
      SetDefAdr(2)
    else
      SetDefAdr(1);
  end
end;

procedure TrepBulkAcc.SetDefAdr(DefAdr: Integer);
begin
  qryAdr.Close;
  qryAdr.Parameters.ParamByName('DefAdr').Value := DefAdr;
  qryAdr.Parameters.ParamByName('EntityID').Value :=
    dtmLS.cdsBulkState.FieldByName('EntityID').Value;
  qryAdr.Open;
end;

procedure TrepBulkAcc.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  qlLoanStatus.Caption := GetLoanStatus(dtmLS.cdsBulkState.FieldByName('Status').AsInteger);
  if memQrBulkNote.Lines.Text = '' then
    memQrBulkNote.Enabled := False;
  totD := 0; totC := 0;
end;

procedure TrepBulkAcc.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  dtmLS.OpenBal := dtmLs.OpenBal + dtmLS.qryBulkAcc.FieldByName('AmtPost').AsCurrency;
  QRBalance.Caption := CurrToStrF(dtmLS.OpenBal,ffCurrency,2);
  if dtmLS.qryBulkAcc.FieldByName('AmtPost').AsCurrency > 0 then
    totD := totD + dtmLS.qryBulkAcc.FieldByName('AmtPost').AsCurrency
  else
    totC := totC + dtmLS.qryBulkAcc.FieldByName('AmtPost').AsCurrency;
end;

procedure TrepBulkAcc.qbGrpFootBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qltotD.Caption := FloatToStrF(totD,ffCurrency,15,2);
  qltotC.Caption := FloatToStrF(totC,ffCurrency,15,2);
end;

procedure TrepBulkAcc.SetRatePrinting(inStatus: boolean);
begin
//  qlCurRateL.Enabled := inStatus;
//  qlRate.Enabled  := inStatus;
end;

procedure TrepBulkAcc.DoNotPrintRate;
begin
  // Do not print rate
  if FileExists(AppDir+'Flat.flt') then
    SetRatePrinting(False)
  else
    SetRatePrinting(True);
end;

procedure TrepBulkAcc.FormCreate(Sender: TObject);
begin
  inherited;
  SetDataStatus(True);
  DoNotPrintRate;
  //
{  if dtmLS.cdsBulkState.FieldByName('PrintMR').AsInteger = 1 then
    qlRate.Caption := FloatToStrF(dtmLS.cdsBulkState.FieldByName('IntRate').AsFloat/12,
      ffFixed,15,2)+' % per month'
  else
    qlRate.Caption := FloatToStrF(dtmLS.cdsBulkState.FieldByName('IntRate').AsFloat,
      ffFixed,15,2)+' % annual';
}      
end;

procedure TrepBulkAcc.FormDestroy(Sender: TObject);
begin
  inherited;
  SetDataStatus(False);
end;

procedure TrepBulkAcc.qrGroupBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  QRLabel2.Caption := CurrToStrF(dtmLS.OpenBal,ffCurrency,2);
end;

end.
