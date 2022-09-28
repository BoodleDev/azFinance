unit fmHandOverBatch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmBase, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, DBStyleGrid,
  StdCtrls, Mask, DBCtrls, Buttons, db;

type

  TfrmHandOverBatch = class(TForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    btnSelect: TToolButton;
    btnSelectAll: TToolButton;
    btnClear: TToolButton;
    btnClearAll: TToolButton;
    ToolButton7: TToolButton;
    btnProcess: TToolButton;
    btnReverse: TToolButton;
    pnlTop: TPanel;
    pnlFilter: TPanel;
    pnlMain: TPanel;
    pcHandover: TPageControl;
    tsCurrent: TTabSheet;
    Panel1: TPanel;
    lblToHandover: TLabel;
    grdHandover: TDBStyleGrid;
    edtLoanID: TDBEdit;
    stsSelected: TStatusBar;
    tsHistory: TTabSheet;
    Panel2: TPanel;
    lblHistoryCount: TLabel;
    imgN: TImage;
    imgY: TImage;
    grdHistory: TDBStyleGrid;
    edtHistory: TDBEdit;
    btnFilter: TSpeedButton;
    btnToolFilter: TToolButton;
    GroupBox1: TGroupBox;
    cmbField: TComboBox;
    Label5: TLabel;
    edtFind: TEdit;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grdHandoverKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdHandoverDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnSelectClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
    procedure edtLoanIDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pcHandoverChange(Sender: TObject);
    procedure edtHistoryChange(Sender: TObject);
    procedure btnReverseClick(Sender: TObject);
    procedure grdHistoryDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnFilterClick(Sender: TObject);
    procedure btnToolFilterClick(Sender: TObject);
    procedure cmbFieldChange(Sender: TObject);
    procedure edtFindChange(Sender: TObject);
    procedure grdHandoverTitleClick(Column: TColumn);
  private
    { Private declarations }
    FindField: TField;
    BatchID: Integer;
    FShowError: Boolean;
    FSelectCount: Integer;
    procedure SetShowError(const Value: Boolean);
    procedure SetSelectCount(const Value: Integer);
    procedure RefreshSummary;
  public
    { Public declarations }
    property SelectCount: Integer read FSelectCount write SetSelectCount;
    property ShowError: Boolean read FShowError write SetShowError;
  end;

var
  frmHandOverBatch: TfrmHandOverBatch;

implementation

uses dmLegal, dmMain, dmBatchTrans, uLSconst, Math, dmSettle,
  uLScentral, fmLoanStatus;

{$R *.dfm}

procedure TfrmHandOverBatch.FormCreate(Sender: TObject);
begin
  inherited;
  dtmLegal := TdtmLegal.Create(Self);
  SelectCount := dtmLegal.GetHOSelected;
  dtmLegal.dsToHandover.Open;
  dtmLegal.dsHOHistory.Open;
  RefreshSummary;
  pcHandover.ActivePageIndex := 0;
  pcHandoverChange(nil);
  BatchID := 0;
  ShowError := False;
  stsSelected.Panels[1].Text := '  Current Month-end Date : ' + DateToStr(dtmMain.CurME);
  //pnlFilter.Hide;
end;

procedure TfrmHandOverBatch.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmLegal.dsHOHistory.Close;
  dtmLegal.dsToHandover.Close;
  FreeAndNil(dtmLegal.dsToHandover);
end;

procedure TfrmHandOverBatch.RefreshSummary;
begin
  dtmLegal.qrySummary.Open;
  lblToHandover.Caption := IntToStr(dtmLegal.dsToHandover.RecordCount) + ' loans pending handover';
  lblHistoryCount.Caption :=
    dtmLegal.qrySummary.FieldByName('Total').AsString      + ' loans in total  (' +
    dtmLegal.qrySummary.FieldByName('Reversed').AsString    + ' reversed, ' +
    dtmLegal.qrySummary.FieldByName('Pending').AsString    + ' pending, ' +
    dtmLegal.qrySummary.FieldByName('HandedOver').AsString + ' handed over, ' +
    dtmLegal.qrySummary.FieldByName('Judgement').AsString  + ' received judgement)';
  dtmLegal.qrySummary.Close;
end;

procedure TfrmHandOverBatch.grdHandoverKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //if Key = VK_RETURN then
    
end;

procedure TfrmHandOverBatch.grdHandoverDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Column.FieldName = 'LoanID' then
  begin
    if not dtmLegal.dsToHandover.FieldByName('HOProcessed').IsNull then
    begin
      grdHandover.Canvas.Font.Color := clBlack;
      grdHandover.Canvas.Brush.Color := clLime;
    end;

   { if HandOverList.IndexOf(dtmLegal.dsToHandover.FieldByName('LoanID').AsString) > -1 then
    begin
      grdHandover.Canvas.Font.Color := clBlack;
      grdHandover.Canvas.Brush.Color := clLime;
    end;}
    grdHandover.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end
  else if Column.FieldName = 'HODate' then
  begin
    if ShowError then
      if (dtmLegal.dsToHandover.FieldByName('HODate').IsNull) and
        (not dtmLegal.dsToHandover.FieldByName('HOProcessed').IsNull) then
    begin
      grdHandover.Canvas.Brush.Color := clRed;
      grdHandover.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
end;

procedure TfrmHandOverBatch.btnSelectClick(Sender: TObject);
begin
  inherited;
  if dtmLEgal.dsToHandover.FieldByName('HOProcessed').IsNull then
  begin
    dtmLegal.dsToHandover.Edit;
    dtmLegal.dsToHandover.FieldByName('HOProcessed').AsBoolean := False;
    dtmLegal.dsToHandover.Post;
    SelectCount := SelectCount + 1;
  end;
end;

procedure TfrmHandOverBatch.btnClearClick(Sender: TObject);
begin
  inherited;
  if not dtmLegal.dsToHandover.FieldByName('HOProcessed').IsNull then
  begin
    dtmLegal.dsToHandover.Edit;
    dtmLegal.dsToHandover.FieldByName('HOProcessed').Value := Null;
    dtmLegal.dsToHandover.Post;
    SelectCount := SelectCount - 1;
  end;
end;

procedure TfrmHandOverBatch.btnSelectAllClick(Sender: TObject);
var
  RecNo: Integer;
begin
  inherited;
  Screen.Cursor := crHourGlass;
  RecNo := dtmLegal.dsToHandover.RecNo;
  try
    dtmLegal.dsToHandover.DisableControls;
    dtmLegal.dsToHandover.First;
    while not dtmLegal.dsToHandover.Eof do
    begin
      if Sender = btnSelectAll then
        btnSelect.Click
      else if Sender = btnClearAll then
        btnClear.Click;
      dtmLegal.dsToHandover.Next;
    end;
  finally
    dtmLegal.dsToHandover.RecNo := RecNo;
    dtmLegal.dsToHandover.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmHandOverBatch.ToolButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmHandOverBatch.btnProcessClick(Sender: TObject);
var
  Command: WideString;
  dtmSettle: TdtmSettle;
  InterestToDate: Currency;
  HOAmount: Currency;
begin
  if dtmLegal.dsToHandover.State = dsEdit then
    dtmLegal.dsToHandover.Post;
    
  if not dtmLegal.CheckHandoverDates then
  begin
    MessageDlg('You are trying to handover loans without a handover date.', mtError, [mbOK], 0);
    ShowError := True;
  end
  else if MessageDlg('Are you sure you want to handover the selected records?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    dtmSettle := TdtmSettle.Create(Self);
    dtmSettle.dbSettle.Connected := False;
    dtmSettle.dbSettle.ConnectionString := dtmMain.dbData.ConnectionString;
    dtmSettle.dbSettle.Connected := True;

    if BatchID = 0 then
    begin
      dtmBatchTrans.GetNewBatchNo(dtmMain.CurrentID, 10, btUser);
      BatchID := dtmBatchTrans.GetCurBatchID;
    end;
    Screen.Cursor := crHourGlass;
    dtmLegal.dsToHandover.DisableControls;
    dtmLegal.dsToHandover.First;
    while not dtmLegal.dsToHandover.Eof do
    begin
      if not dtmLegal.dsToHandover.FieldByName('HOProcessed').IsNull then
      begin
          dtmSettle.SetInfoStatus(False);
          dtmSettle.SettleDate := dtmLegal.dsToHandover.FieldByName('HODate').AsDateTime;
          dtmSettle.CurLoanID := dtmLegal.dsToHandover.FieldByName('LoanID').AsInteger;
          InterestToDate := dtmSettle.GetIntUpToDate;

          HOAmount := SimpleRoundTo(InterestToDate + dtmLegal.dsToHandover.FieldByName('LoanBalance').AsCurrency,-2);

        Command := Command +
          'INSERT INTO lsBatchTrans (BatchID,BatchNo,LoanID,EntityID,EntCode,' +
          'TransCode,TransType,TransDate,EffectDate,Amount,UserID,RefNo) VALUES (' +
          IntToStr(dtmBatchTrans.GetCurBatchID) + ',''' +
          dtmBatchTrans.GetCurBatchNo + ''',' +
          dtmLegal.dsToHandover.FieldByName('LoanID').AsString + ',' +
          dtmLegal.dsToHandover.FieldByName('EntityID').AsString + ',''' +
          dtmLegal.dsToHandover.FieldByName('EntCode').AsString + ''',' +
          '1406, 14, getdate(), ''' +
          FormatDateTime('yyyy-mm-dd',dtmLegal.dsToHandover.FieldByName('HODate').AsDateTime) + ''',' +
          CurrToStr(InterestToDate) + ',''' + dtmMain.CurrentID +
          ''','''' + CONVERT(varchar(8),getdate(),112) + ''hi'' + ''''); ' +

          'UPDATE Legal SET HOCreateDate = getdate(), HOCreateUser = ''' +
          dtmMain.CurrentID + ''', HOAmount = ' +  FloatToStr(HOAmount) + ', ' +
          'HOProcessed = 1 ' +
          'WHERE LoanID = ' + dtmLegal.dsToHandover.FieldByName('LoanID').AsString + '; ';
        end;
      dtmLegal.dsToHandover.Next;
    end;
    if Command <> '' then
      dtmMain.dbData.Execute(Command);
    dtmLegal.dsToHandover.Requery;
    dtmLegal.dsToHandover.EnableControls;
    Screen.Cursor := crDefault;
    SelectCount := 0;
    btnProcess.Enabled := False;
    ShowError := False;
    FreeAndNil(dtmSettle);
  end;
end;

procedure TfrmHandOverBatch.edtLoanIDChange(Sender: TObject);
begin
  btnSelect.Enabled := not dtmLegal.dsToHandover.FieldByName('LoanID').IsNull;
  btnSelectAll.Enabled := btnSelect.Enabled;
  btnClear.Enabled := btnSelect.Enabled;
  btnClearAll.Enabled := btnSelect.Enabled;
end;

procedure TfrmHandOverBatch.FormShow(Sender: TObject);
begin
  edtLoanIDChange(nil);
end;

procedure TfrmHandOverBatch.pcHandoverChange(Sender: TObject);
var
  IsVisible: Boolean;
begin
  IsVisible := pcHandover.ActivePageIndex = 0;
  btnSelect.Visible    := IsVisible;
  btnSelectAll.Visible := IsVisible;
  btnClear.Visible     := IsVisible;
  btnClearAll.Visible  := IsVisible;
  btnProcess.Visible   := IsVisible;

  btnReverse.Visible := not IsVisible;
  RefreshSummary;
end;

procedure TfrmHandOverBatch.SetShowError(const Value: Boolean);
begin
  FShowError := Value;
  grdHandover.Repaint;
end;

procedure TfrmHandOverBatch.edtHistoryChange(Sender: TObject);
begin
  if dtmLegal.dsHOHistory.RecordCount = 0 then
    btnReverse.Enabled := False
  else
    btnReverse.Enabled := (not dtmLegal.dsHOHistory.FieldByName('JDProcessed').AsBoolean) and
      (dtmLegal.dsHOHistory.FieldByName('Status').AsInteger = lnsHandover); 
end;

procedure TfrmHandOverBatch.btnReverseClick(Sender: TObject);
begin
  if dtmLegal.dsHOHistory.FieldByName('JDProcessed').AsBoolean then
    MessageDlg('Cannot reverse this handover as the request for judgement has ' +
      'already been processed.', mtError, [mbOK], 0)
 { else if not dtmLegal.dsHOHistory.FieldByName('HOProcessed').AsBoolean then
    MessageDlg('The handover processing is still pending for this loan. ' +
      'You may change the status manually.', mtInformation, [mbOK], 0) }
  else
  begin
    dtmLegal.dsHOHistory.DisableControls;
    frmLoanStatus := TfrmLoanStatus.Create(Self);
    try
      frmLoanStatus.LoanStatus := lnsHandover;
      frmLoanStatus.LoanID := dtmLegal.dsHOHistory.FieldByName('LoanID').AsInteger;
      frmLoanStatus.HandedOver := False;
      if frmLoanStatus.ShowModal = mrOK then
      begin
        if dtmLegal.ReverseHandOver(
          dtmLegal.dsHOHistory.FieldByName('LoanID').AsInteger,
          frmLoanStatus.NewStatus,
          dtmLegal.dsHOHistory.FieldByName('HODate').AsDateTime) then
        begin
          dtmLegal.dsHOHistory.Requery;
          dtmLegal.dsHOHistory.Locate('LoanID', frmLoanStatus.LoanID, []);
          dtmLegal.dsToHandover.Requery;
          MessageDlg('The handover reversal was processed successfully.', mtInformation, [mbOK], 0);
        end
        else
          edtHistoryChange(edtHistory);
      end;
    finally
      RefreshSummary;
      FreeAndNil(frmLoanStatus);
      dtmLegal.dsHOHistory.EnableControls;
    end;
  end;
end;

procedure TfrmHandOverBatch.grdHistoryDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  FieldValue: String;
begin
  if Column.FieldName = 'LoanStatus' then
  begin
    if not ((gdFocused in State) or (gdSelected in State)) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color := ColorLoanStatus(TDBGrid(Sender).DataSource.DataSet.FieldByName('Status').AsInteger);
      TDBGrid(Sender).Canvas.Pen.Color := TDBGrid(Sender).Canvas.Brush.Color;
      TDBGrid(Sender).Canvas.Rectangle(Rect.Left + 1, Rect.Top + 1, Rect.Right - 1, Rect.Bottom - 1);
      TDBGrid(Sender).Canvas.TextOut(Rect.Left + 3, Rect.Top + 2, TDBGrid(Sender).DataSource.DataSet.FieldByName('LoanStatus').AsString);
    end;
  end
  else if Column.Title.Caption = 'Handover' then
  begin
    if dtmLegal.dsHOHistory.FieldByName('HOProcessed').AsBoolean then
      grdHistory.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - imgY.Width)div 2),
        Rect.Top + 2, imgY.Picture.Graphic)
    else
      grdHistory.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - imgN.Width)div 2),
        Rect.Top + 2, imgN.Picture.Graphic);
  end
  else if Column.Title.Caption = 'Judgement' then
  begin
    if dtmLegal.dsHOHistory.FieldByName('JDProcessed').AsBoolean then
      grdHistory.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - imgY.Width)div 2),
        Rect.Top + 2, imgY.Picture.Graphic)
    else
      grdHistory.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - imgN.Width)div 2),
        Rect.Top + 2, imgN.Picture.Graphic);
  end
  else if (dtmLegal.dsHOHistory.FieldByName('Status').AsInteger <> 45) and
    (not (gdSelected in State)) then
  begin
    grdHistory.Canvas.Font.Color := clSilver;
    grdHistory.Canvas.FillRect(Rect);
    FieldValue := Column.Field.AsString;
    if Column.Field.DataType = ftBCD then
      if TBCDField(Column.Field).Currency then
        FieldValue := FloatToStrF(Column.Field.AsCurrency, ffCurrency, 15, 2);

    case Column.Alignment of
      taLeftJustify:  grdHistory.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, FieldValue);
      taCenter: grdHistory.Canvas.TextOut(Rect.Left + ((Rect.Right - Rect.Left -
        grdHistory.Canvas.TextWidth(FieldValue))div 2), Rect.Top + 2, FieldValue);
      taRightJustify: grdHistory.Canvas.TextOut(Rect.Right - 3 -
        grdHistory.Canvas.TextWidth(FieldValue) , Rect.Top + 2, FieldValue);
    end;
  end;
end;

procedure TfrmHandOverBatch.SetSelectCount(const Value: Integer);
begin
  FSelectCount := Value;
  grdHandover.Repaint;
  stsSelected.Panels[0].Text := '  ' + IntToStr(Value) + ' records selected';
  btnProcess.Enabled := Value > 0;
end;

procedure TfrmHandOverBatch.btnFilterClick(Sender: TObject);
begin
  pnlFilter.Visible := not pnlFilter.Visible;
  if pnlFilter.Visible then
    btnFilter.Caption := 'Hide Filter'
  else
    btnFilter.Caption := 'Advanced Filter';
end;

procedure TfrmHandOverBatch.btnToolFilterClick(Sender: TObject);
begin
(* {frmFilter := TfrmFilter.Create(Self);
  try
    with frmFilter do
    begin
      for I := 0 to dtmLegal.dsHOHistory.FieldCount - 1 do
        AddField(dtmLegal.dsHOHistory.Fields[I].FieldName, dtmLegal.dsHOHistory.Fields[I].DataType);

      AddUniqueFieldValues(['LoanStatus','Magistrate','RefNo'], dtmLegal.dsHOHistory);
      if ShowModal = mrOK then
      begin
       { dtmNuPay.dsTrans.Filter := Filter;
        dtmNuPay.dsTrans.Filtered := True;   }
      end;
    end;
  finally
    FreeAndNil(frmFilter);
  end;     *)
end;

procedure TfrmHandOverBatch.cmbFieldChange(Sender: TObject);
var
  I: Integer;
begin
  grdHandover.Columns[cmbField.ItemIndex].Title.Font.Color := clBlue;
  grdHandover.Columns[cmbField.ItemIndex].Title.Font.Style := grdHandover.Columns[cmbField.ItemIndex].Title.Font.Style + [fsBold];
  FindField := grdHandover.Columns[cmbField.ItemIndex].Field;
  for I := 0 to grdHandover.Columns.Count - 1 do
    if grdHandover.Columns[cmbField.ItemIndex] <> grdHandover.Columns[I] then
    begin
      grdHandover.Columns[I].Title.Font.Color := clBlack;
      grdHandover.Columns[I].Title.Font.Style := grdHandover.Columns[I].Title.Font.Style - [fsBold];
    end;

end;

procedure TfrmHandOverBatch.edtFindChange(Sender: TObject);
begin
  if edtFind.Text = '' then
    grdHandover.DataSource.DataSet.Filtered := False
  else
  begin
    dtmLegal.dsToHandover.Filter := FindField.FieldName + ' LIKE ''' + edtFind.Text + '%''';
    grdHandover.DataSource.DataSet.Filtered := True;
  end;
end;

procedure TfrmHandOverBatch.grdHandoverTitleClick(Column: TColumn);
begin
  cmbField.ItemIndex := cmbField.Items.IndexOf(Column.Title.Caption);
  cmbFieldChange(nil);
end;

end.
