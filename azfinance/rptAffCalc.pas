unit rptAffCalc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepAffCalc = class(TrepBasePort)
    QRSubDetail1: TQRSubDetail;
    QRSubDetail2: TQRSubDetail;
    txtExpenseTypes: TQRDBText;
    txtExpAmounts: TQRDBText;
    lblIncome: TQRLabel;
    QRGroup1: TQRGroup;
    lblExpense: TQRLabel;
    QRDBText5: TQRDBText;
    QRBand1: TQRBand;
    QRDBText7: TQRDBText;
    lblTotal: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape2: TQRShape;
    txtEntCode: TQRDBText;
    txtName: TQRDBText;
    txtName2: TQRDBText;
    lblEntCode: TQRLabel;
    lblName: TQRLabel;
    lblName2: TQRLabel;
    lblTelNo1: TQRLabel;
    lblTelNo2: TQRLabel;
    lblFaxNo: TQRLabel;
    lblEmail: TQRLabel;
    txtTelNo1: TQRDBText;
    txtTelNo2: TQRDBText;
    txtFaxNo: TQRDBText;
    txtEmail: TQRDBText;
    QRShape3: TQRShape;
    lblTotInc: TQRLabel;
    lblNetInc: TQRLabel;
    lblTotExp: TQRLabel;
    lblGrossInc: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    lblMinAmt: TQRLabel;
    QRShape8: TQRShape;
    lblMaxIns: TQRLabel;
    QRShape9: TQRShape;
    QRShape5: TQRShape;
    QRSysData1: TQRSysData;
    txtIncomeTypes: TQRDBText;
    QRShape1: TQRShape;
    txtIncAmounts: TQRDBText;
    lblNetSal: TQRLabel;
    QRDBText4: TQRDBText;
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FrptTotInc: Currency;
    { Private declarations }
  public
    { Public declarations }
    property rptTotInc : Currency read FrptTotInc write FrptTotInc;
  end;

implementation

uses dmMain, dmAffordability, dmAffordCalc;

{$R *.DFM}

procedure TrepAffCalc.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  lblTotInc.Caption := FloatToStrF(dtmAffordCalc.TotInc,ffCurrency,15,2);
  lblTotExp.Caption := FloatToStrF(dtmAffordCalc.TotExp,ffCurrency,15,2);
  lblTotal.Caption  := FloatToStrF(dtmAffordCalc.TotalAmt,ffCurrency,15,2);
end;

end.
