unit fmBatchPost;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, Gauges, fmBase,
  Unit32, DBGrdClr, DBStyleGrid, AutoCursor;

type
  TfrmBatchPost = class(TfrmBase)
    btnAcceptAll: TToolButton;
    btnAccept: TToolButton;
    btnDeclineAll: TToolButton;
    btnDecline: TToolButton;
    pnlBack: TPanel;
    btnAcceptBatch: TToolButton;
    Label3: TLabel;
    cbxBatches: TComboBox;
    pnlBottom: TPanel;
    grdBachDet: TDBStyleGrid;
    splBatch: TSplitter;
    pnlVerify: TPanel;
    memErrors: TMemo;
    gugProg: TGauge;
    Label1: TLabel;
    btnVerfiyBatch: TToolButton;
    btnDeclineBatch: TToolButton;
    btnBatchNote: TToolButton;
    btnPost: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure cbxBatchesChange(Sender: TObject);
    procedure grdBachDetDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnAcceptAllClick(Sender: TObject);
    procedure btnAcceptClick(Sender: TObject);
    procedure btnDeclineClick(Sender: TObject);
    procedure btnAcceptBatchClick(Sender: TObject);
    procedure btnVerfiyBatchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDeclineBatchClick(Sender: TObject);
    procedure btnBatchNoteClick(Sender: TObject);
    procedure btnDeclineAllClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    ErrorCount: Integer;
    procedure LoadBatches;
    procedure AddMesToMemo(errNo:integer);
    procedure VerfiyCurRecord;
    procedure DelCurComboBatch;
    procedure VerifyBatch;
    procedure DoBatchNotes;
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmBatchTrans, fmBatchNote, uLSConst, dmProcBatch;

{$R *.DFM}

procedure TfrmBatchPost.FormCreate(Sender: TObject);
begin
  inherited;
  dtmProcBatch := TdtmProcBatch.Create(Self);
  dtmProcBatch.DataConnection := dtmMain.dbData.ConnectionString;
  dtmProcBatch.gugProg := gugProg;
end;

procedure TfrmBatchPost.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmProcBatch.Free;
  dtmProcBatch := nil;
end;

procedure TfrmBatchPost.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmBatchTrans.SetActiveAll(False);
end;

procedure TfrmBatchPost.FormShow(Sender: TObject);
begin
  inherited;
  splBatch.Color:= dtmMain.ScrPnlColor;
  dtmMain.SetGrdColors(grdBachDet);
  //  dtmBatchTrans.CaptureBatch := False;
  dtmBatchTrans.SetActiveAll(True);
  LoadBatches;
  btnAcceptBatch.Enabled := False;
  btnPost.Enabled := False;
end;

procedure TfrmBatchPost.LoadBatches;
begin
  cbxBatches.Items.Clear;
  dtmBatchTrans.GetClosedBatches(cbxBatches.Items);
  cbxBatches.ItemIndex := 0;
  cbxBatchesChange(self);
end;

procedure TfrmBatchPost.cbxBatchesChange(Sender: TObject);
begin
  inherited;
  dtmBatchTrans.SetCurrentBatch(cbxBatches.Text);
  memErrors.Lines.Clear;
  ErrorCount := 0;
  btnAcceptBatch.Enabled := False;
  btnPost.Enabled := False;
end;

procedure TfrmBatchPost.grdBachDetDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  StatusColor: string;
  DrawRect: TRect;
begin
  inherited;

  if DataCol = 0 then
  begin
    if not dtmBatchTrans.qryBatchT.FieldByName('Processed').AsBoolean then
      grdBachDet.Canvas.Brush.Color := clRed;
  end;
  {else if Column.Fieldname = 'LoanID' then
    if dtmBatchTrans.qryBatchT.FieldByName('TransType').AsInteger in [22,23] then
    begin
      grdBachDet.Canvas.Brush.Color := clWindow;
      grdBachDet.Canvas.FillRect(Rect);
    end;}
  grdBachDet.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if not (gdFocused in State) then
    if Column.FieldName = 'StatusDescription' then
    begin
      StatusColor := dtmBatchTrans.qryBatchT.FieldByName('StatusColor').AsString;

      if StatusColor = '' then
        StatusColor := ColorToString(TDBGrid(Sender).Color);

      DrawRect.Left := Rect.Left + 50;
      DrawRect.Top := Rect.Top + 2;
      DrawRect.Right := Rect.Right - 2;
      DrawRect.Bottom := Rect.Bottom - 2;

      TDBGrid(Sender).Canvas.Brush.Color := StringToColor(StatusColor);
      TDBGrid(Sender).Canvas.Rectangle(DrawRect);
    end;
end;

procedure TfrmBatchPost.btnAcceptAllClick(Sender: TObject);
begin
  inherited;
  //Accept all trans
  dtmBatchTrans.SetAllAcceptStatus(True);
  btnAcceptBatch.Enabled := False;
end;

procedure TfrmBatchPost.btnAcceptClick(Sender: TObject);
begin
  inherited;
  //Accept current trans
  dtmBatchTrans.SetCurrentAcceptStatus(True);
  btnAcceptBatch.Enabled := False;
end;

procedure TfrmBatchPost.btnDeclineAllClick(Sender: TObject);
begin
  inherited;
  //Decline all trans
  dtmBatchTrans.SetAllAcceptStatus(False);
end;

procedure TfrmBatchPost.btnDeclineClick(Sender: TObject);
begin
  inherited;
  //Decline current trans
  dtmBatchTrans.SetCurrentAcceptStatus(False);
end;

procedure TfrmBatchPost.btnAcceptBatchClick(Sender: TObject);
begin
  inherited;
  //Set BatchControl to current batch no
  if ErrorCount > 0 then
    MesDlg('Cannot accept batch. There are errors.','E')
  else
  begin
    //AcceptThisBatch;
    dtmBatchTrans.SetBatchStatus(bsAccept, dtmBatchTrans.GetBatchType(dtmBatchTrans.qryBatchControl.FieldByName('BatchID').AsInteger));
    btnAcceptBatch.Enabled := False;
    btnPost.Enabled        := True;
    dtmBatchTrans.qryBatchControl.Requery;
    dtmBatchTrans.SetCurrentBatch(cbxBatches.Text);
  end;
end;

procedure TfrmBatchPost.btnVerfiyBatchClick(Sender: TObject);
begin
  inherited;
  if dtmBatchTrans.GetTransForStatus(True) then
    VerifyBatch
  else
    MesDlg('You have not accepted any transactions.','E');
end;

procedure TfrmBatchPost.AddMesToMemo(errNo: integer);
begin
  if (errNo <> 7) and (errNo <> 9) then
  begin
    //VerifyError := True;
    Inc(ErrorCount);
    dtmBatchTrans.SetCurAcceptStsQry(0);
    //Critical := 'Error'
  end;
  memErrors.Lines.Add(dtmBatchTrans.qryBatchT.FieldByName('EntCode').AsString+
    ' - '+dtmBatchTrans.qryBatchT.FieldByName('AccountNo').AsString+':  '+
    VerifyErrMes[errNo]);
end;

procedure TfrmBatchPost.VerfiyCurRecord;
begin
  // 0.Verify LoanID   = E
  if not dtmBatchTrans.VerifyLoanID then
    AddMesToMemo(1)
  else
  begin
    // 2.Verify Active Loan = E
    if dtmBatchTrans.spcEntLoan.FieldByName('Status').AsInteger= lnsInactive then
      AddMesToMemo(2);

    if dtmBatchTrans.spcEntLoan.FieldByName('Status').AsInteger= lnsClose then
      AddMesToMemo(9);

    // 3.Verify Trans Code  = Error
    if not dtmBatchTrans.VerifyTransCode then
      AddMesToMemo(3);
    // 4.Verify AvlBal < 0  = Error
    if dtmBatchTrans.qryBatchT.FieldByName('TransType').AsInteger in [15,16] then
    begin
      if not dtmBatchTrans.VerifyBTavlbal then
        AddMesToMemo(4);
    end;
    // 5.Verify Amount < 0  = Error
    if dtmBatchTrans.qryBatchT.FieldByName('Amount').AsCurrency<0 then
      AddMesToMemo(5);
    // 6.Verify EffectDate > MonthEndDate = Error
    if (dtmBatchTrans.qryBatchT.FieldByName('EffectDate').AsDateTime <= dtmMain.CurME) then
      AddMesToMemo(6);
    // 7.Verify EffectDate < StartDate = Warning
    if (dtmBatchTrans.qryBatchT.FieldByName('EffectDate').AsDateTime<
       dtmBatchTrans.spcEntLoan.FieldByName('StartDate').AsDateTime) then
      AddMesToMemo(7);
    if not dtmBatchTrans.VerifyBadDebtStatus then
      AddMesToMemo(8);

    if not dtmBatchTrans.VerifyNotBadDebtStatus then
      AddMesToMemo(10);
  end; {if Verify LoanID}
end;

procedure TfrmBatchPost.btnDeclineBatchClick(Sender: TObject);
var
  BatchType: Integer;
begin
  inherited;
  if MesDlg('Are you sure you want to decline batch: '+cbxBatches.Text,'C') = mrYes then
  begin
    //Decline all trans
    dtmBatchTrans.SetAllAcceptStatus(False);
    // Decline batch - set status
    BatchType := dtmBatchTrans.GetBatchType(dtmBatchTrans.qryBatchControl.FieldByName('BatchID').AsInteger);
    if BatchType = btImex then
      BatchType := btUser;
    dtmBatchTrans.SetBatchStatus(bsDecline,BatchType);
    DelCurComboBatch;
  end;
end;

procedure TfrmBatchPost.DelCurComboBatch;
begin
  cbxBatches.Items.Delete(cbxBatches.ItemIndex);
  cbxBatches.ItemIndex := 0;
  cbxBatchesChange(self);
end;

procedure TfrmBatchPost.DoBatchNotes;
var
  BatchNotesFrm : TfrmBatchNote;
begin
  BatchNotesFrm := TfrmBatchNote.Create(nil);
  try
    BatchNotesFrm.ShowModal;
  finally
    BatchNotesFrm.Free;
  end;
end;

procedure TfrmBatchPost.btnBatchNoteClick(Sender: TObject);
begin
  inherited;
  DoBatchNotes;
end;

procedure TfrmBatchPost.VerifyBatch;
begin
  memErrors.Lines.Clear;
  ErrorCount := 0;
  grdBachDet.DataSource.DataSet.DisableControls;
  gugProg.MaxValue := dtmBatchTrans.qryBatchT.RecordCount;
  gugProg.Progress := 0;
  //Loop batch
  dtmBatchTrans.qryBatchT.First;
  while not dtmBatchTrans.qryBatchT.EOF do
  begin
    if (dtmBatchTrans.qryBatchT.FieldByName('Processed').AsBoolean) then
    //and not(dtmBatchTrans.qryBatchT.FieldByName('LoanID').AsInteger < 0)then
      VerfiyCurRecord;
    dtmBatchTrans.qryBatchT.Next;
    gugProg.Progress := gugProg.Progress + 1;
  end; {while}
  gugProg.Progress := gugProg.MaxValue;
  dtmBatchTrans.qryBatchT.First;
  grdBachDet.DataSource.DataSet.EnableControls;
  if ErrorCount > 0 then
  begin
    if ErrorCount = 1 then
      MesDlg('Verification complete. ' + IntToStr(ErrorCount) + ' error found','I')
    else
      MesDlg('Verification complete. ' + IntToStr(ErrorCount) + ' errors found','I');
    dtmBatchTrans.qryBatchT.Requery;
  end
  else
  begin
    MesDlg('Verification complete. There are no errors. Batch can be accepted.','I');
    btnAcceptBatch.Enabled := True;
  end;
  gugProg.Progress := 0;
end;

procedure TfrmBatchPost.btnPostClick(Sender: TObject);
var
  newBID : integer;
begin
  inherited;
  dtmProcBatch.CurBatchID := dtmBatchTrans.qryBatchControl.FieldByName('BatchID').AsInteger;
  if MesDlg('Are you sure you want to process batch: '+cbxBatches.Text + '?','C') = mrYes then
  begin
    //Batch number
    if not dtmProcBatch.StartProcessBatchOkay then
    begin
      MesDlg('Batch is currently being processed by another user.','E');
    end
    else
    begin
      if not dtmProcBatch.ProcessCurrentBatch then
        MesDlg('Batch could not be processed.','E')
      else
      begin
        newBID := dtmBatchTrans.MoveDeclineTrans(dtmProcBatch.CurBatchID);
        if newBID <> -1 then
          MesDlg('Declined transaction move to Batch: '+IntToStr(newBID)+'.','I');
        DelCurComboBatch;
        MesDlg('Batch successfully processed.','I');
        dtmBatchTrans.qryBatchControl.Requery;
        dtmBatchTrans.SetCurrentBatch(cbxBatches.Text);
      end;
      btnPost.Enabled := False;
    end;
  end;
end;

end.
