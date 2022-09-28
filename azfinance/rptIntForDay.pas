unit rptIntForDay;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, Qrctrls, QuickRpt, ExtCtrls;

type
  TrepIntForDay = class(TrepBasePort)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRDBText2: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmReports;

{$R *.DFM}

end.
