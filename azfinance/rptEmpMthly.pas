unit rptEmpMthly;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLandTag, QuickRpt, Qrctrls, ExtCtrls, Unit32, Jpeg;

type
  TrepEmpMthly = class(TrepBaseLandTag)
    QRDBText2: TQRDBText;
    qrlblTotalDue: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRExpr3: TQRExpr;
    QRExpr5: TQRExpr;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    qrlblTotal: TQRLabel;
    qrLogo: TQRImage;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    procedure qbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qbGrpFootBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FTotalDue : Currency;
  private
    { Private declarations }
    property TotalDue : Currency read FTotalDue write FTotalDue;
  public
    { Public declarations }
  end;


implementation

uses dmReports, uLSConst;

{$R *.DFM}

procedure TrepEmpMthly.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  DayNo : Integer;
  Due   : Currency;
begin
  inherited;
  //
  case dtmReports.Reporttag of
    1  : DayNo := 4;
    2  : DayNo := 3;
    3  : DayNo := 2;
    4  : DayNo := 1;
  else
    DayNo := 1;
  end;
  due := (dtmReports.cdsLSum.FieldByName('PayIns').AsCurrency / 4) +
          (dtmReports.cdsLSum.FieldByName('ArrearsAmt').AsCurrency / DayNo);
  qrlblTotalDue.Caption := CurrToStrF(Due,ffCurrency,2);
  TotalDue := TotalDue + Due;
end;

procedure TrepEmpMthly.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  TotalDue := 0.00;
  lblLegend.Caption := 'Employee weekly report for '+
    FormatDateTime('mm/yyyy',Date) + ' week no. ' + IntToStr(dtmReports.ReportTag);
end;

procedure TrepEmpMthly.qbGrpFootBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qrlblTotal.Caption := CurrToStrF(TotalDue,ffCurrency,2);
end;

end.
