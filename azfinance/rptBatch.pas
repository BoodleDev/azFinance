unit rptBatch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls, DB;

type
  TrepBatch = class(TrepBasePort)
    qlBatchNo: TQRLabel;
    qlPersonKey: TQRLabel;
    qlLoanKey: TQRLabel;
    qlTransCode: TQRLabel;
    qlTransDate: TQRLabel;
    qlEffDate: TQRLabel;
    qlAmount: TQRLabel;
    qlUserID: TQRLabel;
    qlRefNo: TQRLabel;
    qdbtBatchNo: TQRDBText;
    qdbtPersonKey: TQRDBText;
    qdbtLoanID: TQRDBText;
    qdbtTransCode: TQRDBText;
    qdbtTransDate: TQRDBText;
    qdbtEffDate: TQRDBText;
    qdbtAmount: TQRDBText;
    qdbtUserID: TQRDBText;
    qdbtRefNo: TQRDBText;
    qshpTopSum: TQRShape;
    qshpBotSum2: TQRShape;
    qshpBotSum1: TQRShape;
    qexprSumAmt: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRExpr1: TQRExpr;
    qlPageTot: TQRLabel;
    qlRepTot: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    qdbtRefNo2: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetRepDataSet(RepDataSet: TDataSet);
  end;

implementation

{$R *.DFM}

{ TrepBatch }

procedure TrepBatch.SetRepDataSet(RepDataSet: TDataSet);
begin
  QuickReport.DataSet   := RepDataSet;
  qdbtBatchNo.DataSet   := RepDataSet;
  qdbtPersonKey.DataSet := RepDataSet;
  qdbtLoanID.DataSet    := RepDataSet;
  qdbtTransCode.DataSet := RepDataSet;
  qdbtTransDate.DataSet := RepDataSet;
  qdbtEffDate.DataSet   := RepDataSet;
  qdbtAmount.DataSet    := RepDataSet;
  qdbtUserID.DataSet    := RepDataSet;
  qdbtRefNo.DataSet     := RepDataSet;
  qdbtRefNo2.DataSet    := RepDataSet;
end;

end.
