unit rptLCPD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseAcc, Db, QuickRpt, Qrctrls, ExtCtrls, QRExport, ADODB;

type
  TrepLCPD = class(TrepBaseAcc)
    qlTransNo: TQRLabel;
    qlPayDate: TQRLabel;
    qlTotCumInt: TQRLabel;
    qlInstalment: TQRLabel;
    qlInterest: TQRLabel;
    qlBalance: TQRLabel;
    qdbtInstalment: TQRDBText;
    qdbtIntPart: TQRDBText;
    qdbtCapPart: TQRDBText;
    qdbtBal: TQRDBText;
    qdbtIntRate: TQRDBText;
    qlIntRate: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    qlPayDesc: TQRLabel;
    qdbtTotCumInt: TQRDBText;
    QRExpr3: TQRExpr;
    procedure qbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure repTitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmLCD, uLCCentral;

{$R *.DFM}

procedure TrepLCPD.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  str : string;
begin
  inherited;
  str := GetTypeDesc(dtmLCD.cdsContract.FieldByName('Type').AsInteger);
  qlPayDesc.Caption := str;
end;

procedure TrepLCPD.repTitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qlrepName.Caption := 'Loan contract details';
end;

end.
