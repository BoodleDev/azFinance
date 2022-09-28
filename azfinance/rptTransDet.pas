unit rptTransDet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls;

type
  TrepTransDet = class(TrepBasePort)
    qlRefNo: TQRLabel;
    qlUserID: TQRLabel;
    qlAmount: TQRLabel;
    qlEffDate: TQRLabel;
    qlTransDate: TQRLabel;
    qlTransCode: TQRLabel;
    qlLoanKey: TQRLabel;
    qlPersonKey: TQRLabel;
    qlBatchNo: TQRLabel;
    qdbtBatchNo: TQRDBText;
    qdbtPersonKey: TQRDBText;
    qdbtLoanKey: TQRDBText;
    qdbtTransCode: TQRDBText;
    qdbtTransDate: TQRDBText;
    qdbtEffDate: TQRDBText;
    qdbtAmount: TQRDBText;
    qdbtUserID: TQRDBText;
    qdbtRefNo: TQRDBText;
    qshpTopSum: TQRShape;
    qshpBotSum2: TQRShape;
    qexprSumAmt: TQRExpr;
    qshpBotSum1: TQRShape;
    qlRepTot: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRExpr1: TQRExpr;
    QRShape3: TQRShape;
    qlPageTot: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    qlRange: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmLS2GL;

{$R *.DFM}

procedure TrepTransDet.FormCreate(Sender: TObject);
begin
  inherited;
  qlRange.Caption := 'Transaction range - from  '+IntToStr(dtmLS2GL.bhFromNo)+
    ' to  '+IntToStr(dtmLS2GL.bhToNo);
end;

end.
 