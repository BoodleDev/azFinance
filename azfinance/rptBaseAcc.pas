unit rptBaseAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls, Db, Unit32, ADODB;

type
  TrepBaseAcc = class(TrepBasePort)
    qlClientDet: TQRLabel;
    qlAccDet: TQRLabel;
    qlNameSurname: TQRLabel;
    qlLM: TQRLabel;
    qlRM: TQRLabel;
    qlAccCode: TQRLabel;
    qdbtPersonKey: TQRDBText;
    qshpTopSum: TQRShape;
    qshpBotSum2: TQRShape;
    qshpBotSum1: TQRShape;
    qlTotal: TQRLabel;
    qshpLoanDet: TQRShape;
    qlLoanDet: TQRLabel;
    qlTotLoan: TQRLabel;
    qlLoanCode: TQRLabel;
    qlStartDate: TQRLabel;
    qlPayIns: TQRLabel;
    qlLoanPrd: TQRLabel;
    qdbtLoanID: TQRDBText;
    qdbtStartDate: TQRDBText;
    qdbtLPrd: TQRDBText;
    qdbtPayIns: TQRDBText;
    qlTotLoanAmt: TQRLabel;
    qlsAmtFin: TQRLabel;
    qdbtAmtFin: TQRDBText;
    qlsInstDate: TQRLabel;
    qdbtInsDate: TQRDBText;
    qlNoInst: TQRLabel;
    qdbtNoInst: TQRDBText;
    qlArrAmt: TQRLabel;
    qdbtArrAmt: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    qlLoanStatus: TQRLabel;
    qryAdr: TADODataSet;
    QRExprMemo1: TQRExprMemo;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    qlIDno: TQRLabel;
    qlNetPay: TQRLabel;
    qlNetPayAmt: TQRLabel;
    procedure repTitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
//    procedure SetRatePrinting(inStatus :boolean);
    procedure DoNotPrintRate;
    procedure SetDataStatus(Ready: boolean);
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLS, uLScentral;

{$R *.DFM}

procedure TrepBaseAcc.SetDataStatus(Ready: boolean);
begin
  qryAdr.Active := Ready;
  dtmLS.qryLT.Active := Ready;
end;

procedure TrepBaseAcc.repTitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qlNameSurname.Caption := dtmMain.qryEntDet.FieldByName('Name').AsString+
    ' '+dtmMain.qryEntDet.FieldByName('Name2').AsString;
  qlIDno.Caption :=  dtmMain.qryEntDet.FieldByName('RegNo').AsString;
  qlTotLoanAmt.Caption := FloatToStrF(
    dtmLS.qryEntLoan.FieldByName('AmtToFin').AsFloat+
    dtmLS.qryEntLoan.FieldByName('TotInterest').AsFloat,ffCurrency,15,2);
  dtmLS.qryNetPay.Open;
  qlNetPayAmt.Caption := FloatToStrF(dtmLS.qryNetPay.Fields[0].AsCurrency * -1,
    ffCurrency,15,2);
  dtmLS.qryNetPay.Close;
end;

procedure TrepBaseAcc.FormCreate(Sender: TObject);
begin
  inherited;
  qlrepName.Caption := dtmLS.RepAccHead;
  SetDataStatus(True);
  DoNotPrintRate;
  //
  qdbtLPrd.Mask := '# '+uLSCentral.GetInstFreqDesc(
    dtmLS.qryEntLoan.FieldByName('LTaccT').AsInteger);
  //
{  if dtmLS.qryLT.FieldByName('PrintMR').AsInteger = 1 then
    qlRate.Caption := FloatToStrF(dtmLS.qryEntLoan.FieldByName('IntRate').AsFloat/12,
      ffFixed,15,2)+' % per month'
  else
    qlRate.Caption := FloatToStrF(dtmLS.qryEntLoan.FieldByName('IntRate').AsFloat,
      ffFixed,15,2)+' % annual';
 }      
end;

procedure TrepBaseAcc.FormDestroy(Sender: TObject);
begin
  inherited;
  SetDataStatus(False);
end;

procedure TrepBaseAcc.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  qlLoanStatus.Caption := GetLoanStatus(dtmLS.qryEntLoan.FieldByName('Status').AsInteger);
  DoNotPrintRate;
end;

{procedure TrepBaseAcc.SetRatePrinting(inStatus: boolean);
begin
//  qlCurRateL.Enabled := inStatus;
//  qlRate.Enabled  := inStatus;
end;
}

procedure TrepBaseAcc.DoNotPrintRate;
begin
  // Do not print rate
{  if FileExists(AppDir+'Flat.flt') then
    SetRatePrinting(False)
  else
    SetRatePrinting(True);
}
end;

end.
