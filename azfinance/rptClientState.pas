unit rptClientState;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBaseAcc, Db, QuickRpt, Qrctrls, ExtCtrls, ADODB;

type
  TrepClientState = class(TrepBaseAcc)
    qlBatchNo: TQRLabel;
    qlEffDate: TQRLabel;
    qlTransDesc: TQRLabel;
    qlDebit: TQRLabel;
    qlCredit: TQRLabel;
    qlBalance: TQRLabel;
    qdbtBatchNo: TQRDBText;
    qdbtEffDate: TQRDBText;
    qdbtTransDesc: TQRDBText;
    qdbtBalance: TQRDBText;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    SumBand: TQRBand;
    lblBulk: TQRLabel;
    memQrBulkNote: TQRMemo;
    qdbtD: TQRExpr;
    qdbtC: TQRExpr;
    qltotD: TQRLabel;
    qlTotC: TQRLabel;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
    QRMemo4: TQRMemo;
    QRMemo5: TQRMemo;
    QRMemo6: TQRMemo;
    QRMemo7: TQRMemo;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRMemo8: TQRMemo;
    QRImage1: TQRImage;
    QRLabel24: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    qlUserID: TQRLabel;
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qbDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qbGrpFootBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure repTitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    totD, totC : Currency;
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmLS;

{$R *.DFM}

procedure TrepClientState.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  var i : Integer;
begin
  inherited;
  i := 1;
  dtmLS.qryGetNotes.DataSource := dtmLS.cdsAcc.DataSource;
  dtmLS.qryGetNotes.Open;
  dtmLS.qryGetNotes.First;
  {if memQrBulkNote.Lines.Text <> '' then
  begin
     memQrBulkNote.Lines.Text :=IntToStr(i)+'. '+ memQrBulkNote.Lines.Text  + #13+#13;
     inc(i);
  end;}
  while not dtmLS.qryGetNotes.Eof do
  begin
    memQrBulkNote.Lines.Text := memQrBulkNote.Lines.Text + IntToStr(i) + '. '+
      dtmLS.qryGetNotes.Fields[0].AsString +#13#10;;
    dtmLS.qryGetNotes.Next;
    inc(i);
  end;
  dtmLS.qryGetNotes.Close;
  if memQrBulkNote.Lines.Text = '' then
    memQrBulkNote.Enabled := False;
  totD := 0; totC := 0;
end;

procedure TrepClientState.qbDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if dtmLS.cdsAcc.FieldByName('Debit').AsCurrency > 0 then
    totD := totD + dtmLS.cdsAcc.FieldByName('Debit').AsCurrency
  else
    totC := totC + dtmLS.cdsAcc.FieldByName('Credit').AsCurrency;
end;

procedure TrepClientState.qbGrpFootBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qltotD.Caption := FloatToStrF(totD,ffCurrency,15,2);
  qltotC.Caption := FloatToStrF(totC,ffCurrency,15,2);
end;

procedure TrepClientState.repTitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qlUserID.Caption := dtmMain.CurrentID;
end;

end.


