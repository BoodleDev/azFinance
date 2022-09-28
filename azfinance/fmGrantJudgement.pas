unit fmGrantJudgement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, DB;

type
  TfrmGrantJudgement = class(TForm)
    pnlTop: TPanel;
    grdForJudgement: TDBGrid;
    Splitter1: TSplitter;
    pnlClient: TPanel;
    pnlAddRemove: TPanel;
    btnRemove: TBitBtn;
    btnAdd: TBitBtn;
    GroupBox1: TGroupBox;
    grdBatch: TDBGrid;
    dtpJDDate: TDateTimePicker;
    dtpInstalDate: TDateTimePicker;
    cmbMagistrate: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnJudgementDetail: TToolButton;
    chkOverwrite: TCheckBox;
    btnProcess: TToolButton;
    ToolButton1: TToolButton;
    Label4: TLabel;
    edtFind: TEdit;
    cmbField: TComboBox;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure grdBatchDblClick(Sender: TObject);
    procedure btnJudgementDetailClick(Sender: TObject);
    procedure grdForJudgementDblClick(Sender: TObject);
    procedure grdForJudgementTitleClick(Column: TColumn);
    procedure cmbFieldChange(Sender: TObject);
    procedure edtFindChange(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
  private
    FindField: TField;
    FGridFilter: String;
    procedure SetAddRemove;
    procedure SetGridFilter(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    BatchList: TStringList;
    property GridFilter: String read FGridFilter write SetGridFilter;
    //LoanFilter: String;
  end;

var
  frmGrantJudgement: TfrmGrantJudgement;

implementation

uses dmLegal, fmJudgementDetail, StrUtils, dmMain, dmBatchTrans, uLSconst;

{$R *.dfm}

procedure TfrmGrantJudgement.FormCreate(Sender: TObject);
begin
  dtmLegal := TdtmLegal.Create(Self);
  dtmLegal.dsForJudgement.Open;
  dtmLegal.dsJudgementBatch.Open;
  frmJudgementDetail := TfrmJudgementDetail.Create(Self);
  cmbMagistrate.Items.Clear;
  cmbMagistrate.Items.Add('');
  dtmLegal.dsMagistrates.Open;
  dtmLegal.dsMagistrates.First;
  while not dtmLegal.dsMagistrates.Eof do
  begin
    cmbMagistrate.Items.Add(dtmLegal.dsMagistrates.FieldByName('Description').AsString);
    dtmLegal.dsMagistrates.Next;
  end;
  BatchList := TStringList.Create;
  BatchList.Add('0');
  pnlAddRemove.BevelOuter := bvNone;
  SetAddRemove;
  cmbField.ItemIndex := 0;
  cmbFieldChange(nil);
  SetAddRemove;
  dtpJDDate.Date     := Date;
  dtpInstalDate.Date := Date;
end;

procedure TfrmGrantJudgement.FormDestroy(Sender: TObject);
begin
  FreeAndNil(BatchList);
  FreeAndNil(frmJudgementDetail);
  dtmLegal.dsJudgementBatch.Close;
  dtmLegal.dsForJudgement.Close;
  dtmLegal.dsMagistrates.Close;
  FreeAndNil(dtmLegal);
end;

procedure TfrmGrantJudgement.btnAddClick(Sender: TObject);
var
  LoanFilter: String;
  LoanID: Integer;
  Instalment: Currency;
begin
  if Sender = btnAdd then
  begin
    LoanID := dtmLegal.dsForJudgement.FieldByName('LoanID').AsInteger;
    Instalment := dtmLegal.dsForJudgement.FieldByName('PayIns').AsCurrency;
 {
    if not dtmLegal.HasInterest(LoanID, dtmLegal.dsForJudgement.FieldByName('HODate').AsDateTime) then
    begin
      MessageDlg('The interest to date has not yet been processed to the client''s account.',
        mtError, [mbOK], 0);
      Abort;
    end;   }

    dtmLegal.dsForJudgement.Edit;
    dtmLegal.dsForJudgement.FieldByName('JDProcessed').AsBoolean := False;
    dtmLegal.dsForJudgement.Post;
    dtmLegal.dsJudgementBatch.Requery;
  end
  else
  begin
    dtmLegal.dsJudgementBatch.Edit;
    dtmLegal.dsJudgementBatch.FieldByName('JDProcessed').Value := Null;
    dtmLegal.dsJudgementBatch.Post;
    dtmLegal.dsForJudgement.Requery;
  end;

  if Sender = btnAdd then
    if dtmLegal.dsJudgementBatch.Locate('LoanID', LoanID,[]) then
    begin
      dtmLegal.dsJudgementBatch.Edit;

      if (dtmLegal.dsJudgementBatch.FieldByName('JDAmount').IsNull) or
        (chkOverwrite.Checked) then
        dtmLegal.dsJudgementBatch.FieldByName('JDAmount').AsCurrency := dtmLegal.dsJudgementBatch.FieldByName('HOAmount').AsCurrency;

      if (dtmLegal.dsJudgementBatch.FieldByName('JDInstalment').ISNull) or
        (chkOverWrite.Checked) then
        dtmLegal.dsJudgementBatch.FieldByName('JDInstalment').AsCurrency := Instalment;

      if dtpJDDate.Checked then
        if (chkOverwrite.Checked) or (dtmLegal.dsJudgementBatch.FieldByName('JDDate').IsNull) then
          dtmLegal.dsJudgementBatch.FieldByName('JDDate').AsDateTime := dtpJDDate.Date;

      if dtpInstalDate.Checked then
        if (chkOverwrite.Checked) or (dtmLegal.dsJudgementBatch.FieldByName('FirstInstalDate').IsNull) then
        dtmLegal.dsJudgementBatch.FieldByName('FirstInstalDate').AsDateTime := dtpInstalDate.Date;

      if cmbMagistrate.ItemIndex > 0 then
      begin
        dtmLegal.dsMagistrates.Locate('Description',cmbMagistrate.Text, []);
        if (chkOverwrite.Checked) or (dtmLegal.dsJudgementBatch.FieldByName('Magistrate').AsInteger = 0) then
          dtmLegal.dsJudgementBatch.FieldByName('Magistrate').AsInteger := dtmLegal.dsMagistrates.FieldByName('TypeKey').AsInteger;
      end;   

      if frmJudgementDetail.ShowModal = mrOK then
      begin
        dtmLegal.dsJudgementBatch.Post;
      end
      else
      begin
        dtmLegal.dsJudgementBatch.Cancel;
        btnRemove.Click;
      end;
    end;

    SetAddRemove;
end;

procedure TfrmGrantJudgement.SetAddRemove;
begin
  btnAdd.Enabled := dtmLegal.dsForJudgement.RecordCount > 0;
  btnRemove.Enabled := dtmLegal.dsJudgementBatch.RecordCount > 0;
  btnJudgementDetail.Enabled := dtmLegal.dsJudgementBatch.RecordCount > 0;
  btnProcess.Enabled := dtmLegal.dsJudgementBatch.RecordCount > 0;
end;

procedure TfrmGrantJudgement.grdBatchDblClick(Sender: TObject);
begin
  btnJudgementDetail.Click;
end;

procedure TfrmGrantJudgement.btnJudgementDetailClick(Sender: TObject);
begin
  if dtmLegal.dsJudgementBatch.RecordCount > 0 then
  begin
    dtmLegal.dsJudgementBatch.Edit;
    if frmJudgementDetail.ShowModal = mrOK then
      dtmLegal.dsJudgementBatch.Post
    else
      dtmLegal.dsJudgementBatch.Cancel;
  end;
end;

procedure TfrmGrantJudgement.grdForJudgementDblClick(Sender: TObject);
begin
  if dtmLegal.dsForJudgement.RecordCount > 0 then
    btnAddClick(btnAdd);
end;

procedure TfrmGrantJudgement.grdForJudgementTitleClick(Column: TColumn);
begin
  cmbField.ItemIndex := cmbField.Items.IndexOf(Column.Title.Caption);
  cmbFieldChange(nil);
end;

procedure TfrmGrantJudgement.cmbFieldChange(Sender: TObject);
var
  I: Integer;
begin
  grdForJudgement.Columns[cmbField.ItemIndex].Title.Font.Color := clBlue;
  grdForJudgement.Columns[cmbField.ItemIndex].Title.Font.Style := grdForJudgement.Columns[cmbField.ItemIndex].Title.Font.Style + [fsBold];
  FindField := grdForJudgement.Columns[cmbField.ItemIndex].Field;
  for I := 0 to grdForJudgement.Columns.Count - 1 do
    if grdForJudgement.Columns[cmbField.ItemIndex] <> grdForJudgement.Columns[I] then
    begin
      grdForJudgement.Columns[I].Title.Font.Color := clBlack;
      grdForJudgement.Columns[I].Title.Font.Style := grdForJudgement.Columns[I].Title.Font.Style - [fsBold];
    end;
end;

procedure TfrmGrantJudgement.SetGridFilter(const Value: String);
begin
  FGridFilter := Value;
end;

procedure TfrmGrantJudgement.edtFindChange(Sender: TObject);
begin
  if edtFind.Text = '' then
    dtmLegal.dsForJudgement.Filter := GridFilter
  else
    dtmLegal.dsForJudgement.Filter := GridFilter + IfThen(GridFilter = '','', ' and ') +
      FindField.FieldName + ' LIKE ''' + edtFind.Text + '%''';
end;

procedure TfrmGrantJudgement.btnProcessClick(Sender: TObject);
var
  Command: WideString;
  sValueDate: String;
  sEffectDate: String;
begin
  dtmLegal.dsFeeCheck.Open;
  if dtmLegal.dsFeeCheck.Fields[0].AsInteger > 0 then
    MessageDlg('Cannot process judgements. There are legal fees with unallocated transaction codes.',
      mtError, [mbOK], 0)
  else if MessageDlg('Are you sure you want to process these judgements?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      Screen.Cursor := crHourGlass;
      dtmBatchTrans.GetNewBatchNo(dtmMain.CurrentID, 10, btUser);
      dtmLegal.dsJudgementBatch.DisableControls;
      dtmLegal.dsJudgementBatch.First;
      while not dtmLegal.dsJudgementBatch.Eof do
      begin
        dtmLegal.dsLegalFees.Parameters[0].Value := dtmLegal.dsJudgementBatch.FieldByName('LoanID').AsInteger;
        dtmLegal.dsLegalFees.Open;
        dtmLegal.dsLegalFees.First;
        while not dtmLegal.dsLegalFees.Eof do
        begin
          if dtmLegal.dsLegalFees.FieldByName('JDDate').AsDateTime < dtmMain.CurME then
          begin
            sValueDate := QuotedStr(FormatDateTime('yyyy-mm-dd',dtmLegal.dsLegalFees.FieldByName('JDDate').AsDateTime));
            sEffectDate := QuotedStr(FormatDateTime('yyyy-mm-dd',dtmMain.CurME));
          end
          else
          begin
            sValueDate := 'NULL';
            sEffectDate := QuotedStr(FormatDateTime('yyyy-mm-dd',dtmLegal.dsLegalFees.FieldByName('JDDate').AsDateTime));
          end;

          Command := Command +
            'INSERT INTO lsBatchTrans (BatchID,BatchNo,LoanID,EntityID,EntCode,' +
            'TransCode,TransType,TransDate,EffectDate,ValueDate,Amount,UserID,RefNo) VALUES (' +
            IntToStr(dtmBatchTrans.GetCurBatchID) + ',''' +
            dtmBatchTrans.GetCurBatchNo + ''',' +
            dtmLegal.dsLegalFees.FieldByName('LoanID').AsString + ',' +
            dtmLegal.dsLegalFees.FieldByName('EntityID').AsString + ',''' +
            dtmLegal.dsLegalFees.FieldByName('EntCode').AsString + ''',' +
            dtmLegal.dsLegalFees.FieldByName('TransCode').AsString + ',' +
            IntToStr(Trunc(dtmLegal.dsLegalFees.FieldByName('TransCode').AsInteger/100)) + ',' +
            'getdate(),' +  sEffectDate + ',' + sValueDate + ',' +
            dtmLegal.dsLegalFees.FieldByName('FeeAmount').AsString + ',''' +
            dtmMain.CurrentID + ''',''' +
            dtmLegal.dsLegalFees.FieldByName('CaseNumber').AsString + ''');' + #13#10;

          dtmLegal.dsLegalFees.Next;
        end;
        dtmLegal.dsLegalFees.Close;
        Command := Command +
          'UPDATE Legal ' +
          'SET JDProcessed = 1, ' +
          'ProcessedUser = ''' + dtmMain.CurrentID + ''',' +
          'ProcessedDate = getdate() WHERE LoanID = ' +
          dtmLegal.dsJudgementBatch.FieldByName('LoanID').AsString + ';' + #13#10;
        dtmLegal.dsJudgementBatch.Next;
      end;
      if Command <> '' then
        dtmMain.dbData.Execute(Command);
    finally
      dtmLegal.dsJudgementBatch.Requery;
      dtmLegal.dsJudgementBatch.EnableControls;
      Screen.Cursor := crDefault;
    end;
  end;
  dtmLegal.dsFeeCheck.Close;
end;

end.
