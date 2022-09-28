unit rptLoanAgeSum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLandTag, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepLoanAgeSum = class(TrepBaseLandTag)
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel18: TQRLabel;
    QRExpr12: TQRExpr;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr9: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr6: TQRExpr;
    QLAr1: TQRLabel;
    QLAr2: TQRLabel;
    QLAr3: TQRLabel;
    QLAr4: TQRLabel;
    QRExpr14: TQRExpr;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRExpr16: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr13: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel2: TQRLabel;
    lblRefNo: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr2: TQRExpr;
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qbGrpFootBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qbDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
    //To add arrears amount according to arrears indicator
    Ar1,Ar2,Ar3,Ar4 : Currency;
    procedure InitTotals;
  public
    { Public declarations }
  end;

implementation

uses dmReports;

{$R *.DFM}

procedure TrepLoanAgeSum.InitTotals;
begin
  Ar1 := 0.00;
  Ar2 := 0.00;
  Ar3 := 0.00;
  Ar4 := 0.00;
end;

procedure TrepLoanAgeSum.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  InitTotals;
end;

procedure TrepLoanAgeSum.qbGrpFootBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  //set arrears amounts labels
  QLAr1.Caption := FloatToStrF(Ar1,ffCurrency,15,2);
  QLAr2.Caption := FloatToStrF(Ar2,ffCurrency,15,2);
  QLAr3.Caption := FloatToStrF(Ar3,ffCurrency,15,2);
  QLAr4.Caption := FloatToStrF(Ar4,ffCurrency,15,2);
end;

procedure TrepLoanAgeSum.qbDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  case dtmReports.cdsLSum.FieldByName('ArrearsNo').AsInteger of
    0: begin end;
    1: Ar1 := Ar1 + dtmReports.cdsLSum.FieldByName('ArrearsAmt').AsFloat;
    2: Ar2 := Ar2 + dtmReports.cdsLSum.FieldByName('ArrearsAmt').AsFloat;
    3: Ar3 := Ar3 + dtmReports.cdsLSum.FieldByName('ArrearsAmt').AsFloat;
    else
       Ar4 := Ar4 + dtmReports.cdsLSum.FieldByName('ArrearsAmt').AsFloat;
  end;
end;

end.
