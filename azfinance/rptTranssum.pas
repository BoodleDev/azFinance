unit rptTransSum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLand, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepTransSum = class(TrepBaseLand)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape2: TQRShape;
    QRExpr2: TQRExpr;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRLabel8: TQRLabel;
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmReports;

{$R *.DFM}

procedure TrepTransSum.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
//  qrGroup.Expression := dtmReports.clnGrpFees.IndexFieldNames;
end;

procedure TrepTransSum.FormCreate(Sender: TObject);
begin
  inherited;
  qrGroup.Expression := Copy(dtmReports.cdsTsum.IndexFieldNames,0,
    Pos(';',dtmReports.cdsTsum.IndexFieldNames)-1);
end;

end.
