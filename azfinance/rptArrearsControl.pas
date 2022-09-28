
unit rptArrearsControl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLandTag, Qrctrls, QuickRpt, ExtCtrls, QRExport;

type
  TrepArrearsControl = class(TrepBaseLandTag)
    QRExpr2: TQRExpr;
    QRLabel17: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRExpr13: TQRExpr;
    QRShape4: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
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

procedure TrepArrearsControl.QuickReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  if qrGroup.Expression <> '' then
    qrGroup.Expression := qrGroup.Expression+';ArrearsNo'
  else
    qrGroup.Expression := 'ArrearsNo';
end;

end.
