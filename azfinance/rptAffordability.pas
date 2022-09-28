unit rptAffordability;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepAffordability = class(TrepBasePort)
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    qlNote: TQRLabel;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    qlTotalAmount: TQRLabel;
    qlCategory: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    qlNetIncome: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qbDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrGroupBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qbGrpFootBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    TotalAmount, SubTotal: Currency;
  public
    { Public declarations }
  end;

var
  repAffordability: TrepAffordability;

implementation

uses dmAffordability;

{$R *.DFM}

procedure TrepAffordability.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  TotalAmount := 0;
  with dtmAffordability.qryReport do
  begin
    if FieldByName('Category').AsString = 'IN' then
      qlCategory.Caption := 'PLUS: Total Income'
    else if FieldByName('Category').AsString = 'EN' then
      qlCategory.Caption := 'LESS: Total Expenses'
    else if FieldByName('Category').AsString = 'DO' then
      qlCategory.Caption := 'LESS: Total Debit Orders'
    else
      qlCategory.Caption := 'LESS: Total Other Loans';
  end;
end;

procedure TrepAffordability.qbDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  TotalAmount := TotalAmount + dtmAffordability.qryReport.FieldByName('Amount').AsCurrency;
  SubTotal := SubTotal + dtmAffordability.qryReport.FieldByName('Amount').AsCurrency;
end;

procedure TrepAffordability.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qlTotalAmount.Caption := CurrToStrF(TotalAmount,ffCurrency,2);
end;

procedure TrepAffordability.qrGroupBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  SubTotal := 0;
end;

procedure TrepAffordability.qbGrpFootBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qlNetIncome.Caption :=
    CurrToStrF(dtmAffordability.qryReport.FieldByName('MonthGross').AsCurrency -
      SubTotal, ffCurrency, 2);
end;

end.
