// VRS

unit rptTracking;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, Qrctrls, QuickRpt, ExtCtrls;

type
  TrepTracking = class(TrepBasePort)
    qlAccCode: TQRLabel;
    qdbtPersonKey: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repTracking: TrepTracking;

implementation

uses dmMain, dmLoanC;

{$R *.DFM}

end.
