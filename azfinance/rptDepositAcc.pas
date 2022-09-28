unit rptDepositAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseAcc, Db, QuickRpt, Qrctrls, ExtCtrls, ADODB;

type
  TrepDepositAcc = class(TrepBaseAcc)
    qlBatchNo: TQRLabel;
    qlEffDate: TQRLabel;
    qlTransDesc: TQRLabel;
    qlDebit: TQRLabel;
    qlCredit: TQRLabel;
    qlBalance: TQRLabel;
    qdbtBatchNo: TQRDBText;
    qdbtEffDate: TQRDBText;
    qdbtTransDesc: TQRDBText;
    qdbtBalance: TQRDBText;
    qltotD: TQRLabel;
    qlTotC: TQRLabel;
    qdbtD: TQRExpr;
    qdbtC: TQRExpr;
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qbGrpFootBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    totD, totC : Currency;
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLS;

{$R *.DFM}

procedure TrepDepositAcc.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  totD := 0; totC := 0;
end;

procedure TrepDepositAcc.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if dtmLS.cdsDA.FieldByName('Debit').AsCurrency > 0 then
    totD := totD + dtmLS.cdsDA.FieldByName('Debit').AsCurrency
  else
    totC := totC + dtmLS.cdsDA.FieldByName('Debit').AsCurrency;
end;

procedure TrepDepositAcc.qbGrpFootBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qltotD.Caption := FloatToStrF(totD,ffCurrency,15,2);
  qltotC.Caption := FloatToStrF(totC,ffCurrency,15,2);
end;

end.
