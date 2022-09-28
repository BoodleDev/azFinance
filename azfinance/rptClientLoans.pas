unit rptClientLoans;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, ADODB,Unit32;

type
  TrepClientLoans = class(TrepBasePort)
    QRDBText2: TQRDBText;
    qlLoanType: TQRLabel;
    qlLoanKey: TQRLabel;
    QRShape1: TQRShape;
    qlTotLoan: TQRLabel;
    qlStartDate: TQRLabel;
    qlMthIns: TQRLabel;
    qlLoanPeriod: TQRLabel;
    qlLPMths: TQRLabel;
    qlCurRateL: TQRLabel;
    qlRateP: TQRLabel;
    qdbtStartDate: TQRDBText;
    qdbtLPrd: TQRDBText;
    qdbtLoanType: TQRDBText;
    qdbtMthIns: TQRDBText;
    qlCapital: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel18: TQRLabel;
    qlLoanStatus: TQRLabel;
    QRDBText21: TQRDBText;
    QRExpr1: TQRExpr;
    qlAccCode: TQRLabel;
    qdbtPersonKey: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText26: TQRDBText;
    qryLUE: TADOQuery;
    lblLoanOfficer: TQRLabel;
    lblFunder: TQRLabel;
    procedure qbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    function LuEntity(iID:Integer):String;
  public
    { Public declarations }
  end;

implementation

uses  dmMain, dmLS, uLScentral;

{$R *.DFM}

procedure TrepClientLoans.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qlLoanStatus.Caption   := GetLoanStatus(dtmls.qryEntLoan.FieldByname('Status').AsInteger);
  lblFunder.Caption      := LuEntity(dtmLs.qryEntLoan.FieldByName('FunderID').AsInteger);
  lblLoanOfficer.Caption := LuEntity(dtmLs.qryEntLoan.FieldByName('LOID').AsInteger);
end;


function TrepClientLoans.LuEntity(iID: Integer): String;
begin
  RunQry(qryLUE,'Select (isNull(EntCode,'' '')+ '' - ''+ IsNull(Name,'' '')+ '' ''+ IsNull(Name2,'' '')) As Res from EntityData where'+
    ' EntityID = '+ IntToStr(iID),'O');
  Result := qryLUE.FieldByName('Res').AsString;
  qryLUE.Close;
end;

end.


