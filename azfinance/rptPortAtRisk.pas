unit rptPortAtRisk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLand, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepPortAtRisk = class(TrepBaseLand)
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText4: TQRDBText;
    QRExpr4: TQRExpr;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure qbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qbGrpFootBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    amount : array [1..13] of currency;
  public
    { Public declarations }
  end;

var
  repPortAtRisk: TrepPortAtRisk;

implementation

uses dmLS, dmReports, fmReportDates;

{$R *.DFM}

procedure TrepPortAtRisk.FormCreate(Sender: TObject);
var
 i : integer;
begin
  inherited;
  dtmReports.qryRepAtRisk.Close;
  dtmReports.qryRepAtRisk.Parameters[0].Value := MonthEndStart;
  dtmReports.qryRepAtRisk.Open;
  for i := 1 to 13 do
    amount[i] := 0;
  dtmReports.qryRepAtRisk.First;
  while not dtmReports.qryRepAtRisk.eof do
  begin
   for i := 1 to 5 do
     amount[i] := amount[i]+ dtmReports.qryRepAtRisk.Fields[i].AsCurrency;
     dtmReports.qryRepAtRisk.Next;
  end;
  dtmReports.qryRepAtRisk.First;
end;

procedure TrepPortAtRisk.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  try
    if not
       (dtmReports.qryRepAtRisk.Fields[2].AsCurrency = 0) or
       (dtmReports.qryRepAtRisk.Fields[3].AsCurrency = 0) or
       (dtmReports.qryRepAtRisk.Fields[4].AsCurrency = 0) or
       (dtmReports.qryRepAtRisk.Fields[5].AsCurrency = 0) then
    begin
      amount[6] := amount[6] +(dtmReports.qryRepAtRisk.Fields[2].AsCurrency / amount[2])*100;
      amount[7] := amount[7] + (dtmReports.qryRepAtRisk.Fields[3].AsCurrency / amount[3])*100;
      amount[8] := amount[8] + (dtmReports.qryRepAtRisk.Fields[4].AsCurrency / amount[4])*100;
      amount[10]:= amount[10] + (dtmReports.qryRepAtRisk.Fields[5].AsCurrency / amount[5])*100;
      amount[9] := amount[9] + (dtmReports.qryRepAtRisk.Fields[3].AsCurrency / amount[4])*100;

      amount[11] := amount[11] + (dtmReports.qryRepAtRisk.Fields[2].AsCurrency /dtmReports.qryRepAtRisk.Fields[5].AsCurrency )*100;
      amount[12] := amount[12] + (dtmReports.qryRepAtRisk.Fields[2].AsCurrency /dtmReports.qryRepAtRisk.Fields[3].AsCurrency )*100;
      amount[13] := amount[13] + (dtmReports.qryRepAtRisk.Fields[2].AsCurrency /dtmReports.qryRepAtRisk.Fields[4].AsCurrency )*100;

      QRLabel25.Caption := FloatToStrF(((dtmReports.qryRepAtRisk.Fields[2].AsCurrency /dtmReports.qryRepAtRisk.Fields[5].AsCurrency )*100),ffNumber,7,2) +'%';
      QRLabel26.Caption := FloatToStrF(((dtmReports.qryRepAtRisk.Fields[2].AsCurrency /dtmReports.qryRepAtRisk.Fields[3].AsCurrency )*100),ffNumber,7,2) +'%';
      QRLabel27.Caption := FloatToStrF(((dtmReports.qryRepAtRisk.Fields[2].AsCurrency /dtmReports.qryRepAtRisk.Fields[4].AsCurrency )*100),ffNumber,7,2) +'%';

      QRLabel10.Caption := FloatToStrF((dtmReports.qryRepAtRisk.Fields[2].AsCurrency /amount[2]*100),ffNumber,7,2) +'%';
      QRLabel11.Caption := FloatToStrF((dtmReports.qryRepAtRisk.Fields[3].AsCurrency /amount[3]*100),ffNumber,7,2) +'%';
      QRLabel12.Caption := FloatToStrF((dtmReports.qryRepAtRisk.Fields[4].AsCurrency /amount[4]*100),ffNumber,7,2) +'%';
      QRLabel23.Caption := FloatToStrF((dtmReports.qryRepAtRisk.Fields[5].AsCurrency /amount[5]*100),ffNumber,7,2) +'%';
      QRLabel13.Caption := FloatToStrF((dtmReports.qryRepAtRisk.Fields[3].AsCurrency /amount[4]*100),ffNumber,7,2) +'%';
    end
    else
    showmessage('There is no Data for this Month End Date, please choose another Month End Date');
  except
  end;
end;

procedure TrepPortAtRisk.qbGrpFootBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  QRLabel15.Caption := FloatToStrF(amount[6],ffNumber,7,2) +'%';
  QRLabel16.Caption := FloatToStrF(amount[7],ffNumber,7,2) +'%';
  QRLabel17.Caption := FloatToStrF(amount[8],ffNumber,7,2) +'%';
  QRLabel14.Caption := FloatToStrF(amount[9],ffNumber,7,2) +'%';
  qrLabel24.Caption := FloatToStrF(amount[10],ffNumber,7,2) +'%';
  QRLabel28.Caption := FloatToStrF(amount[11],ffNumber,7,2) +'%';
  QRLabel29.Caption := FloatToStrF(amount[12],ffNumber,7,2) +'%';
  QRLabel30.Caption := FloatToStrF(amount[13],ffNumber,7,2) +'%';
end;

procedure TrepPortAtRisk.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var I :integer;
begin
  inherited;
  for i := 6 to 13 do
    amount[i] := 0;
end;

procedure TrepPortAtRisk.FormShow(Sender: TObject);
begin
  dtmReports.qryRepAtRisk.Parameters[0].Value := MonthEndStart;
end;

end.
