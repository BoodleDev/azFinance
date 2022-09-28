unit rptAppStatus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepAppStatus = class(TrepBasePort)
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
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qeChecked: TQRExpr;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repAppStatus: TrepAppStatus;

implementation

uses dmMain, dmLoanC;

{$R *.DFM}

procedure TrepAppStatus.FormCreate(Sender: TObject);
begin
  inherited;
  dtmLoanC.qryAppStatus.Open;
end;

procedure TrepAppStatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmLoanC.qryAppStatus.Close;
end;

end.
