unit rptInsurance;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, Qrctrls, QuickRpt, ExtCtrls;

type
  TrepInsurance = class(TrepBasePort)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRExpr2: TQRExpr;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    SummaryBand1: TQRBand;
    qMemFil: TQRMemo;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmReports;

{$R *.DFM}

procedure TrepInsurance.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  //
  if dtmReports.CurFilter <> '' then
  begin
    qMemFil.Lines.Add(dtmReports.CurFilter);
  end;
end;

end.
