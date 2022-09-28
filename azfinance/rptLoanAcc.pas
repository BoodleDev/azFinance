unit rptLoanAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseAcc, Db, QuickRpt, Qrctrls, ExtCtrls, ADODB;

type
  TrepLoanAcc = class(TrepBaseAcc)
    qlBatchNo: TQRLabel;
    qlEffDate: TQRLabel;
    qlTransDesc: TQRLabel;
    qlBalance: TQRLabel;
    qlAddDC: TQRLabel;
    qlInstalment: TQRLabel;
    qlInterest: TQRLabel;
    qdbtBatchNo: TQRDBText;
    qdbtEffDate: TQRDBText;
    qdbtTransDesc: TQRDBText;
    qdbtAddDC: TQRDBText;
    qdbtBal: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    qlSettementAmt: TQRLabel;
    SumBand: TQRBand;
    lblBulk: TQRLabel;
    memQrBulkNote: TQRMemo;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLS;

{$R *.DFM}

procedure TrepLoanAcc.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
//  qlSettementAmt.Caption := 'Settlement amount on the '+DateToStr(Date)+' = '
//    +FloatToStrF(dtmMain.CurSettleAmt,ffCurrency,15,2);
  if memQrBulkNote.Lines.Text = '' then
    SumBand.Enabled := False;
end;

end.
