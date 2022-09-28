unit fmBatch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, StdCtrls, fmDBBase, ComCtrls, ToolWin, ExtCtrls,
  Mask, DBCtrls, Unit32, Menus, Buttons, ucbxDBList, DBStyleGrid;

type
  TfrmBatch = class(TfrmDBBase)
    pnlBack: TPanel;
    btnDelBatch: TToolButton;
    tmLookKey: TTimer;
    btnNewBatch: TToolButton;
    btnCloseBatch: TToolButton;
    btnLoadEmp: TToolButton;
    btnAPay: TToolButton;
    splBatch: TSplitter;
    pmReps: TPopupMenu;
    pmBnkdet: TMenuItem;
    Panel1: TPanel;
    pnlBT: TPanel;
    grdBatch: TDBStyleGrid;
    pnlTop: TPanel;
    grdEntLoan: TDBStyleGrid;
    Panel2: TPanel;
    lblCurFld: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    btnFind: TSpeedButton;
    lblResults: TLabel;
    edtEntF: TDBEdit;
    dtpBatch: TDateTimePicker;
    edtFilter: TEdit;
    btnReps: TBitBtn;
    cbTrans: TcbxDBList;
    Bevel1: TBevel;
    StatusBar1: TStatusBar;
    cbxCurBatches: TComboBox;
    Label3: TLabel;
    chkValueDate: TCheckBox;
    btnImport: TToolButton;
    dlgOpen: TOpenDialog;
    btnBatchNote: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbTransChange(Sender: TObject);
    procedure grdEntLoanDblClick(Sender: TObject);
    procedure btnDelBatchClick(Sender: TObject);
    procedure btnNewBatchClick(Sender: TObject);
    procedure cbxCurBatchesChange(Sender: TObject);
    procedure btnCloseBatchClick(Sender: TObject);
    procedure tmLookKeyTimer(Sender: TObject);
    procedure grdEntLoanEnter(Sender: TObject);
    procedure grdEntLoanExit(Sender: TObject);
    procedure grdEntLoanKeyPress(Sender: TObject; var Key: Char);
    procedure btnLoadEmpClick(Sender: TObject);
    procedure edtEntFChange(Sender: TObject);
    procedure grdEntLoanDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdBatchExit(Sender: TObject);
    procedure grdBatchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnAPayClick(Sender: TObject);
    procedure dtpBatchChange(Sender: TObject);
    procedure edtFilterChange(Sender: TObject);
    procedure btnRepsClick(Sender: TObject);
    procedure pmBnkdetClick(Sender: TObject);
    procedure edtFilterKeyPress(Sender: TObject; var Key: Char);
    procedure btnFindClick(Sender: TObject);
    procedure chkValueDateClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnBatchNoteClick(Sender: TObject);
    procedure grdEntLoanColEnter(Sender: TObject);
    procedure grdEntLoanColExit(Sender: TObject);
  private
    { Private declarations }
    PersonLookUp : String;
    ValDateInd : integer;
    procedure LoadBatches;
    procedure AddNewBatchNumber;
    procedure SetScreenBatch(IsBatch:boolean);
    procedure LoadSelectedRangeIntoBatch(inSelectID:integer);
    procedure DoBatchNotes;
    procedure SetScreenDefaults;
    procedure SetValDateInd;
    procedure SetEntLoansCmd(AppendStr: String);
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmBatchTrans, fmBatchNote, fmLookUp, fmGauge, uLSConst, uLScentral,
  uReports, fmImportTrans, dmLoanStatus;

{$R *.DFM}

{WB 10/04/2000
This procedure will be called in the parent (DBBase) form's on ShowEvent}
procedure TfrmBatch.SetScreenDefaults;
begin
  inherited;
  splBatch.Color:= dtmMain.RecBarColor;
  pnlBack.Realign;
  dtmMain.SetGrdColors([grdEntLoan, grdBatch]);
  //grdBatch.OddColor := dtmMain.OddGrdColor;
  grdEntLoan.Realign;
  grdBatch.Realign;
end;

procedure TfrmBatch.SetEntLoansCmd(AppendStr: String);
var
  EntLoans: WideString;
begin
  EntLoans := dtmBatchTrans.EntLoansComm;
  EntLoans := EntLoans + AppendStr;
  dtmBatchTrans.qryEntLoans.Close;
  dtmBatchTrans.qryEntLoans.CommandText := EntLoans;
  dtmBatchTrans.qryEntLoans.Open;
  lblResults.Caption := IntToStr(dtmBatchTrans.qryEntLoans.RecordCount) +
   ' record\s found';
end;

procedure TfrmBatch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmBatchTrans.SetActiveAll(False);
  dtmBatchTrans.qryEntLoans.Close;
  dtmBatchTrans.DoTransCodes(True);
end;

procedure TfrmBatch.cbTransChange(Sender: TObject);
begin
  dtmBatchTrans.DefTransCode := StrToInt(cbTrans.KeyVal);
  if (dtmBatchTrans.DefTransCode div 100) in [24,25,26,27] then
  begin
    chkValueDate.Enabled := False;
    chkValueDate.Checked := False;
  end
  else
    chkValueDate.Enabled := True;
end;

procedure TfrmBatch.grdEntLoanDblClick(Sender: TObject);
var
  TransType: Integer;
begin
  TransType := StrToInt(cbTrans.KeyVal) div 100;
  (*if dtmBatchTrans.qryEntLoans.FieldByName('Status').AsInteger = lnsHandOver then
  begin
    dtmLoanStatus.qryLegalStatus.Parameters[0].Value := dtmBatchTrans.qryEntLoans.FieldByName('LoanID').AsInteger;
    dtmLoanStatus.qryLegalStatus.Open;
    if dtmLoanStatus.qryLegalStatus.FieldByName('Judgement').AsBoolean then
    begin
      if TransType in [11,12,13,14,28,29] then
        dtmBatchTrans.AddCurrentPersonToBatch(True)
      else
        MessageDlg('This transaction cannot be processed against a "' +
          lndHandover + '" loan with judgement.', mtError, [mbOK], 0);
    end


   { else if dtmLoanStatus.qryLegalStatus.FieldByName('HandedOver').AsBoolean then
    begin
      if TransType in [11,12] then
        dtmBatchTrans.AddCurrentPersonToBatch(True)
      else
        MessageDlg('This transaction cannot be processed against a "' +
          lndHandover + '" loan pending judgement.', mtError, [mbOK], 0);
    end  }
    else
      dtmBatchTrans.AddCurrentPersonToBatch(True);   
    dtmLoanStatus.qryLegalStatus.Close;
  end
  else
  begin *)
    case TransType of
      1..21: if dtmBatchTrans.qryEntLoans.FieldByName('Status').AsInteger = lnsBadDebt then
               MesDlg('This transaction cannot be processed against a "Bad Debt" loan','E')
             else
               dtmBatchTrans.AddCurrentPersonToBatch(True);
      22: dtmBatchTrans.AddSuspenseToBatch;
      23: MesDlg('Suspense transfers (debits) must be captured on the ''Suspense Allocation'' screen', 'I');
      24,25: MesDlg('This transaction cannot be processed manually','E');
      26: if dtmBatchTrans.qryEntLoans.FieldByName('Status').AsInteger = lnsBadDebt then
            dtmBatchTrans.AddCurrentPersonToBatch(True)
          else
            MesDlg('Loan status must be bad debt in order to process this transaction','E');
      else
        dtmBatchTrans.AddCurrentPersonToBatch(True);
    end;

    RequeryOnRecord(dtmBatchTrans.qryBatchT, 'TransNo');
  //end;
end;

procedure TfrmBatch.btnDelBatchClick(Sender: TObject);
begin
  inherited;
  if MesDlg('Are you sure you want to clear this batch?','C')=mrYes then
    dtmBatchTrans.DelCurrentBatch;
  grdEntLoan.Refresh;
end;

procedure TfrmBatch.btnNewBatchClick(Sender: TObject);
begin
  //inherited;
  if cbxCurBatches.Items.Count > 0 then
  begin
    if MesDlg('You have not closed your current batch. '+#10#13+
      'Are you sure you want to create a new batch?','C') = mrYes then
    begin
      if dtmBatchTrans.NoOfCurBatch > 4 then
        MesDlg('You can not have more than 5 batches open.','E')
      else
        AddNewBatchNumber;
    end;
  end
  else
    AddNewBatchNumber;
end;

procedure TfrmBatch.AddNewBatchNumber;
begin
  if dtmBatchTrans.GetNewBatchNo(dtmMain.CurrentID,bsOpen,btUser) then
  begin
    cbxCurBatches.Items.Add(dtmBatchTrans.GetCurBatchNo);
    cbxCurBatches.ItemIndex := cbxCurBatches.Items.IndexOf(dtmBatchTrans.GetCurBatchNo);
    cbxCurBatchesChange(self);
    dtmBatchTrans.NoOfCurBatch := dtmBatchTrans.NoOfCurBatch + 1;
  end;
end;

procedure TfrmBatch.LoadBatches;
begin
  cbxCurBatches.Items.Clear;
  dtmBatchTrans.GetCurBatches(cbxCurBatches.Items);
  cbxCurBatches.ItemIndex := 0;
  cbxCurBatchesChange(self);
end;

procedure TfrmBatch.cbxCurBatchesChange(Sender: TObject);
begin
  inherited;
  if cbxCurBatches.Text = '' then
    SetScreenBatch(False)
  else
    SetScreenBatch(True);
  dtmBatchTrans.SetCurrentBatch(cbxCurBatches.Text);
end;

procedure TfrmBatch.btnCloseBatchClick(Sender: TObject);
begin
  inherited;
  if dtmBatchTrans.qryBatchT.RecordCount=0 then
    MesDlg('Can not close batch:  '+cbxCurBatches.Text+', batch is empty.','E')
  else
  begin
    if MesDlg('Are you sure you want to close batch: '+cbxCurBatches.Text+ '?','C') = mrYes then
    begin
      CheckDataSet(dtmBatchTrans.qryBatchT);
      if dtmBatchTrans.SetBatchStatus(bsClosed,btUser) then
      begin
        cbxCurBatches.Items.Delete(cbxCurBatches.ItemIndex);
        cbxCurBatches.ItemIndex := 0;
        cbxCurBatchesChange(self);
      end
      else
        MesDlg('Could not close batch: '+cbxCurBatches.Text,'E');
    end;
  end;
end;

procedure TfrmBatch.SetScreenBatch(IsBatch: boolean);
var
  i : integer;
begin
  for i := 0 to tlbDBBase.ButtonCount -1 do
  //for I := tlbDBBase.ButtonCount -1 downto 0 do
  begin
    if tlbDBBase.Buttons[i] <> btnNewBatch then
        tlbDBBase.Buttons[i].Visible := IsBatch;
  end;

  grdEntLoan.Enabled  := IsBatch;
  grdBatch.Enabled    := IsBatch;
  btnBatchNote.Enabled := IsBatch;
  grdEntLoan.Refresh;
  grdBatch.Refresh;
end;

procedure TfrmBatch.tmLookKeyTimer(Sender: TObject);
begin
  inherited;
  PersonLookUp := '';
end;

procedure TfrmBatch.grdEntLoanEnter(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  for I := 0 to grdEntLoan.Columns.Count - 1 do
  begin
    grdEntLoan.Columns[I].Title.Color := grdEntLoan.FixedColor;
    grdEntLoan.Columns[I].Title.Font.Color := clBlack;
  end;
  grdEntLoanColEnter(grdEntLoan);

  tmLookKey.Enabled := True;
end;

procedure TfrmBatch.grdEntLoanExit(Sender: TObject);
begin
  inherited;
  tmLookKey.Enabled := False;
end;

procedure TfrmBatch.grdEntLoanKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  PersonLookUp := PersonLookUp + Key;
  dtmBatchTrans.spcEntLoan.Locate(grdEntLoan.SelectedField.FieldName,PersonLookUp,
    [loCaseInsensitive,loPartialKey]);
end;

procedure TfrmBatch.DoBatchNotes;
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

procedure TfrmBatch.btnLoadEmpClick(Sender: TObject);
var
  LinkKey : integer;
begin
  inherited;
  LinkKey := dtmMain.GetLUEntityID(IntToStr(lsEmployer));
  if MesDlg('Are you sure you want to load the employer batch?','C') = mrYes then
    LoadSelectedRangeIntoBatch(LinkKey);
end;

procedure TfrmBatch.LoadSelectedRangeIntoBatch(inSelectID:integer);
var
  LoadProg : TfrmGauge;
begin
  FilterDataSet(dtmBatchTrans.spcEntLoan,'');
  dtmBatchTrans.spcEntLoan.DisableControls;
  LoadProg := TfrmGauge.Create(nil);
  try
    FilterDataSet(dtmBatchTrans.spcEntLoan,'EmpID='+IntToStr(inSelectID)+'');
    LoadProg.SetMaxBound(dtmBatchTrans.spcEntLoan.RecordCount);
    dtmBatchTrans.spcEntLoan.First;
    while not dtmBatchTrans.spcEntLoan.EOF do
    begin
      dtmBatchTrans.AddCurrentPersonToBatch(False);
      dtmBatchTrans.spcEntLoan.Next;
      LoadProg.IncProg;
    end;
  finally
    LoadProg.MaxGauge;
    LoadProg.Free;
    FilterDataSet(dtmBatchTrans.spcEntLoan,'');
    dtmBatchTrans.spcEntLoan.EnableControls;
  end;
end;

procedure TfrmBatch.edtEntFChange(Sender: TObject);
begin
  inherited;
  if dtmBatchTrans.spcEntLoan.Active then
    dtmBatchTrans.spcEntLoan.Locate('EntityID',
      dtmMain.qryEntID.FieldByName('EntityID').AsString,[]);
end;

procedure TfrmBatch.grdEntLoanDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  StatusColor: string;
  DrawRect: TRect;
begin
  inherited;
  if Assigned(TDBGrid(Sender).DataSource.DataSet) then
    if not (gdFocused in State) then
      if not Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) then
      begin
        TDBGrid(Sender).Canvas.Brush.Color := $00EFEFEF;
        TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;

  if not (gdFocused in State) then
    if Column.FieldName = 'StatusDescription' then
    begin
      if Sender = grdEntLoan then
        StatusColor := dtmBatchTrans.qryEntLoans.FieldByName('StatusColor').AsString
      else
        StatusColor := dtmBatchTrans.qryBatchT.FieldByName('StatusColor').AsString;

      if StatusColor = '' then
        StatusColor := ColorToString(TDBGrid(Sender).Color);

      //DrawRect := TRect.Create(Self);
      //DrawRect := Rect(Rect.Left + 5, Rect.Top + 2, Rect.Right - 5, Rect.Bottom - 2);
      DrawRect.Left := Rect.Left + 50;
      DrawRect.Top := Rect.Top + 2;
      DrawRect.Right := Rect.Right - 2;
      DrawRect.Bottom := Rect.Bottom - 2;


      TDBGrid(Sender).Canvas.Brush.Color := StringToColor(StatusColor);

      TDBGrid(Sender).Canvas.Rectangle(DrawRect);

      //TDBGrid(Sender).DefaultDrawColumnCell(DrawRect,DataCol,Column,State);
    end;

  {if Column.FieldName = 'EntCode' then
  begin
    if dtmBatchTrans.qryEntLoans.FieldByName('Status').AsInteger <> lnsOpen then
    begin }
{     Taken out because of endless loop in qryBatchT.BeforePost - 11/09/2003
      if dtmBatchTrans.spcEntLoan.FieldByName('Status').AsInteger = lnsActive then
      begin // color only if no 15 transtype in batch
        if not dtmBatchTrans.qryBatchT.Locate('LoanID;TransType',
          VarArrayOf([dtmBatchTrans.spcEntLoan.FieldByName('LoanID').AsInteger,15]),[]) then
         grdEntLoan.Canvas.Brush.Color :=
            ColorLoanStatus(dtmBatchTrans.spcEntLoan.FieldByName('Status').AsInteger);
      end
      else      }
        {grdEntLoan.Canvas.Brush.Color := ColorLoanStatus(
            dtmBatchTrans.qryEntLoans.FieldByName('Status').AsInteger);  }
// }
   { end;
  end;
  grdEntLoan.DefaultDrawColumnCell(Rect, DataCol, Column, State); }
end;

procedure TfrmBatch.grdBatchExit(Sender: TObject);
begin
  inherited;
  CheckDataSet(dtmBatchTrans.qryBatchT);
end;

procedure TfrmBatch.grdBatchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
    CheckDataSet(dtmBatchTrans.qryBatchT);
end;

procedure TfrmBatch.btnDeleteClick(Sender: TObject);
begin
  //inherited;
  //grdEntLoan.Refresh;

  if MessageDlg('Are you sure you want to delete this transaction?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    dtmBatchTrans.cmdDeleteTransaction.Parameters[0].Value := dtmBatchTrans.qryBatchT.FieldByName('TransNo').Value;
    dtmBatchTrans.cmdDeleteTransaction.Execute;

    RequeryOnRecord(dtmBatchTrans.qryBatchT, 'TransNo');
  end;
end;

procedure TfrmBatch.btnAPayClick(Sender: TObject);
var
  LoadResult: Boolean;
begin
  inherited;
  if MesDlg('Load all approved loans for payout?','C') = mrYes then
  begin
    try
      Screen.Cursor := crHourGlass;
      dtmBatchTrans.qryTransType.Close;
      dtmBatchTrans.DoTransCodes(True);
      dtmBatchTrans.qryTransType.Open;

      LoadResult := dtmBatchTrans.DoAutoPayOuts;

      dtmBatchTrans.qryBatchT.Requery();

      if LoadResult then
        MesDlg('Auto pay outs loaded','I');

    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmBatch.dtpBatchChange(Sender: TObject);
begin
  inherited;
  dtmBatchTrans.CurBatchDate := dtpBatch.Date;
end;

procedure TfrmBatch.SetValDateInd;
var
  i : integer;
begin
  for i := 0 to grdBatch.FieldCount-1 do
  begin
    if grdBatch.Columns[i].FieldName = 'ValueDate' then
    begin
      ValDateInd := i;
      Exit;
    end;
  end;
end;

procedure TfrmBatch.edtFilterChange(Sender: TObject);
begin
  inherited;
  if Trim(edtFilter.Text) = '' then
    FilterDataSet(dtmBatchTrans.spcEntLoan,'')
  else
    FilterDataSet(dtmBatchTrans.spcEntLoan,grdEntLoan.SelectedField.FieldName +
      ' like '''+edtFilter.Text+'%''')
end;

procedure TfrmBatch.btnRepsClick(Sender: TObject);
begin
  inherited;
  pmReps.Popup(
    btnReps.ClientOrigin.X,
    btnReps.ClientOrigin.Y+btnReps.Height+1);
end;

procedure TfrmBatch.pmBnkdetClick(Sender: TObject);
begin
  inherited;
  LoadReport((Sender as TComponent).Tag,False);
end;

procedure TfrmBatch.edtFilterKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = Char(vk_Return) then
    btnFind.Click;    
end;

procedure TfrmBatch.btnFindClick(Sender: TObject);
var
  FieldName: String;
begin
  inherited;
  if Length(edtFilter.Text) > 0 then
  begin
    FieldName := LowerCase(grdEntLoan.SelectedField.FieldName);
    if (FieldName = 'entityid') or (FieldName = 'entcode') or
      (FieldName = 'regno') then
        FieldName := 'Ent.' + FieldName
    else if FieldName = 'statusdesc' then
    begin
      Exit;
    end;

    SetEntLoansCmd(' and ' + FieldName + ' like ''' + edtFilter.Text + '%''');
  end;
end;

procedure TfrmBatch.chkValueDateClick(Sender: TObject);
begin
  inherited;
  grdBatch.Columns[ValDateInd].Visible := chkValueDate.Checked;
end;

procedure TfrmBatch.btnImportClick(Sender: TObject);
var
  Import: TextFile;
  Line: String;
  Field, DBField: String;
  Index, I: Integer;
  EntityID: Integer;
  EntityCode: String;
  LoanID: Integer;
  RowNo: Integer;
  IsError: Boolean;
begin
  inherited;
  if dlgOpen.Execute then
  begin
    with dtmBatchTrans do
    begin
      if not cdsImportMap.Active then
      begin
        cdsImportMap.CreateDataSet;
        cdsImportErrors.CreateDataSet;
      end
      else
      begin
        cdsImportMap.EmptyDataSet;
        cdsImportErrors.EmptyDataSet;
      end;

    AssignFile(Import,dlgOpen.Filename);
    Reset(Import);
    ReadLn(Import,Line);
    If Line[Length(Line)] <> ',' then
      Line := Line + ',';
    Repeat
      Index := Pos(',',Line);
      Field := Copy(Line,1, Index - 1);
      Delete(Line,1,Index);
      cdsImportMap.Append;
      cdsImportMap.FieldByName('ImportField').AsString := Field;
      cdsImportMap.FieldByName('DBField').AsString := '';
      cdsImportMap.Post;
    until
      Line = '';

    cdsImportMap.First;

    RowNo := 0;
    frmImportTrans.cmbTrans.Items := cbTrans.Items;
    frmImportTrans.cmbTrans.ItemIndex := cbTrans.ItemIndex;
    if frmImportTrans.Showmodal = mrOK then
    begin
      cbTrans.ItemIndex := frmImportTrans.cmbTrans.ItemIndex;
      if not frmImportTrans.chkHeaders.Checked then
        Reset(Import);
      while not Eof(Import) do
      begin
        Inc(RowNo);
        qryBatchT.Append;
        ReadLn(Import,Line);
        if Line[Length(Line)] <> ',' then
          Line := Line + ',';

        for I := 1 to cdsImportMap.RecordCount do
        begin
          Index := Pos(',',Line);
          Field := Copy(Line,1, Index - 1);
          Delete(Line,1,Index);
          cdsImportMap.RecNo := I;
          DBField := cdsImportMap.FieldByName('DBField').AsString;
          if DBField <> '' then
          begin
            if DBField <> 'LoanRef' then
              case qryBatchT.FieldByName(DBField).DataType of
                ftInteger: qryBatchT.FieldByName(DBField).AsInteger := StrToInt(Field);
                ftDateTime: qryBatchT.FieldByName(DBField).AsDateTime := StrToDate(Field);
                ftCurrency: qryBatchT.FieldByName(DBField).AsCurrency := StrToCurr(Field);
              else
                qryBatchT.FieldByName(DBField).AsString := Field;
              end;
            if (DBField = 'LoanID') or (DBField = 'LoanRef') then
            begin
              EntityID := 0;
              EntityCode := '';
              if DBField ='LoanID' then
                GetEntity(qryBatchT.FieldByName(DBField).AsInteger, EntityID, EntityCode)
              else if DBField = 'LoanRef' then
              begin
                GetLoanAndEntity(Field, LoanID, EntityID, EntityCode);
                qryBatchT.FieldByName('LoanID').AsInteger := LoanID;
              end;

              qryBatchT.FieldByName('EntityID').AsInteger := EntityID;
              qryBatchT.FieldByName('EntCode').AsString := EntityCode;

            end;
          end;
        end;

        if qryBatchT.FieldByName('TransCode').IsNull then
          qryBatchT.FieldByName('TransCode').AsInteger :=
            StrToInt(Copy(cbTrans.Text,1,Pos(',',cbTrans.Text)-1));

          //qryTransType.FieldByName('TransCode').AsInteger;

        IsError := True;

        if qryBatchT.FieldByName('LoanID').IsNull then
          AddImportError(RowNo, 'Loan ID is invalid')
        else if qryBatchT.FieldByName('EffectDate').AsDateTime < dtmMain.CurME then
          AddImportError(RowNo, 'Effective date must be greater than current month end date')
        {else if (qryBatchT.FieldByName('Status').AsInteger = lnsNoDebits)
          and (qryBatchT.FieldByName('TransType').AsInteger in [3,5,12,14,15,17,18,19,20,22,24])  then
          AddImportError(RowNo,'Debits can not be processed to this account')}
        else
          IsError := False;

        if IsError then
          qryBatchT.Cancel
        else
          qryBatchT.Post;
      end;

      CloseFile(Import);
      if cdsImportErrors.RecordCount > 0 then
      begin
        frmImportTrans.pcImport.ActivePageIndex := 1;
        frmImportTrans.Showmodal;
      end;
    end;
  end;
  end;
end;

procedure TfrmBatch.FormCreate(Sender: TObject);
begin
  inherited;
  frmImportTrans := TfrmImportTrans.Create(Self);
  dtmLoanStatus := TdtmLoanStatus.Create(Self);

  SetScreenDefaults;
  dtpBatch.Date := Date;
//  dtmBatchTrans.CaptureBatch := True;
 // dtmBatchTrans.SetSpcBatchPersonLoan('S');
  dtmBatchTrans.DoTransCodes(False);
  dtmBatchTrans.SetActiveAll(True);
  CurrentDts := dtmBatchTrans.dtsBatchT;
  SetEntLoansCmd(' and LoanID = -1');
  //BuildTransLst;
  cbTrans.LoadCBX;
  LoadBatches;
  cbTransChange(self);
  SetValDateInd;
  lblCurFld.Caption := grdEntLoan.Columns[0].Title.Caption;
  lblResults.Caption := '';
  edtFilterChange(Self);

  lblCurFld.Parent := StatusBar1;
  lblCurFld.Left := 90;
  lblCurFld.Top := 4;
end;

procedure TfrmBatch.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmImportTrans);
  FreeAndNil(dtmLoanStatus);
end;

procedure TfrmBatch.btnBatchNoteClick(Sender: TObject);
begin
  inherited;
  DoBatchNotes;
end;

procedure TfrmBatch.grdEntLoanColEnter(Sender: TObject);
begin
  inherited;
  lblCurFld.Caption := grdEntLoan.Columns[grdEntLoan.SelectedIndex].Title.Caption;
  grdEntLoan.Columns[grdEntLoan.SelectedIndex].Title.Color := clNavy;
  grdEntLoan.Columns[grdEntLoan.SelectedIndex].Title.Font.Color := clWhite;
end;

procedure TfrmBatch.grdEntLoanColExit(Sender: TObject);
begin
  inherited;
  grdEntLoan.Columns[grdEntLoan.SelectedIndex].Title.Color := grdEntLoan.FixedColor;
  grdEntLoan.Columns[grdEntLoan.SelectedIndex].Title.Font.Color := clBlack;
end;

end.
