unit rptBatchBnk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseLand, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepBatchBnk = class(TrepBaseLand)
    qlSandN: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    qdbtSurname: TQRDBText;
    myExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRExpr13: TQRExpr;
    QRShape4: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText10: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmBatchTrans;

{$R *.DFM}

procedure TrepBatchBnk.FormCreate(Sender: TObject);
begin
  inherited;
  dtmBatchTrans.spBBankDet.Open;
end;

procedure TrepBatchBnk.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmBatchTrans.spBBankDet.Close;
end;

end.
