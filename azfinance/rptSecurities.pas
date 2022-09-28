// VRS

unit rptSecurities;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepSecurities = class(TrepBasePort)
    qlAccCode: TQRLabel;
    qdbtPersonKey: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    procedure qbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repSecurities: TrepSecurities;

implementation

uses dmMain, dmLS, dmLoanC;

{$R *.DFM}

procedure TrepSecurities.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
function GetSecurityType:String;
begin
   if dtmLoanC.qryAllLU.Locate('TypeKey',dtmLoanC.qrySecurities.FieldByName('Type').AsInteger,[]) then
    Result := dtmLoanC.qryAllLU.FieldByName('Description').AsString
   else
   Result := 'Unknown';
end;
begin
  inherited;
  QRLabel1.Caption := GetSecurityType;
end;

procedure TrepSecurities.FormCreate(Sender: TObject);
begin
  inherited;
  if not dtmLoanC.qrySecurities.Active then
    dtmLoanC.qrySecurities.Open;
end;

end.

