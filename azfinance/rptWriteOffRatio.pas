unit rptWriteOffRatio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLand, QuickRpt, Qrctrls, ExtCtrls, TeEngine, Series, TeeProcs,
  Chart, DBChart, QrTee;

type
  TrepWriteOffRatio = class(TrepBaseLand)
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBChart1: TQRDBChart;
    QRChart1: TQRChart;
    Series1: TBarSeries;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repWriteOffRatio: TrepWriteOffRatio;

implementation

uses fmReportDates, dmReports;

{$R *.DFM}

procedure TrepWriteOffRatio.FormCreate(Sender: TObject);
begin
  inherited;
  frmRptDates := TfrmRptDates.Create(self);
  Try
    frmRptDates.PanelVisible;
    frmRptDates.ShowModal;
  finally
    frmRptDates.Free;
  end;

  dtmReports.GetWriteOffParams;
end;

end.
