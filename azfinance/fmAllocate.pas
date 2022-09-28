unit fmAllocate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, Grids, DBGrids, DBGrdCF, ExtCtrls, Menus, ComCtrls, ToolWin,
  StdCtrls, Unit32, DBCtrls, DBStyleGrid, Buttons;

type
  TfrmAllocate = class(TForm)
    pnlMain: TPanel;
    lblSearchOn: TLabel;
    edtFilter: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    grdBase: TDBStyleGrid;
    DBGrdCF1: TDBStyleGrid;
    btnAdd: TBitBtn;
    btnRemove: TBitBtn;
    btnOK: TButton;
    btnCancel: TButton;
    Panel3: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText4: TDBText;
    chkHideInactive: TCheckBox;
    procedure chkValueDateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancel1Click(Sender: TObject);
    procedure edtFilterChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure grdBaseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnOKClick(Sender: TObject);
    procedure grdBaseDblClick(Sender: TObject);
    procedure grdBaseColEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure chkHideInactiveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    BadDebtCount: Integer;
    function CanAllocate: Boolean;
//    function DoMultiAllocate: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmBatchSusp, dmMain, fmSuspMulti, DB, uLScentral, fmAllocateTrans,
  StrUtils;

{$R *.DFM}

procedure TfrmAllocate.chkValueDateClick(Sender: TObject);
begin
  inherited;
  //dtpDefDate.Enabled := chkValueDate.Checked;
end;

procedure TfrmAllocate.FormCreate(Sender: TObject);
begin
  inherited;
  BadDebtCount := 0;
  dtmBatchSusp.cdsBatch.EmptyDataSet;
  //dtpDefDate.Date := dtmMain.CurME;
  frmAllocateTrans := TfrmAllocateTrans.Create(Self);
  dtmBatchSusp.GetTransList(frmAllocateTrans.cmbSuspenseTrans.Items,dtmBatchSusp.SCodeList,23);
  dtmBatchSusp.GetTransList(frmAllocateTrans.cmbLoanTrans.Items,dtmBatchSusp.LCodeList,11);
  dtmBatchSusp.GetTransList(frmAllocateTrans.cmbBadDebtTrans.Items,dtmBatchSusp.BCodeList,26);
  chkHideInactive.Checked := True;

  if frmAllocateTrans.cmbSuspenseTrans.Items.Count > 0 then
    frmAllocateTrans.cmbSuspenseTrans.ItemIndex := 0;
  if frmAllocateTrans.cmbLoanTrans.Items.Count > 0 then
    frmAllocateTrans.cmbLoanTrans.ItemIndex := 0;
  if frmAllocateTrans.cmbBadDebtTrans.Items.Count > 0 then
    frmAllocateTrans.cmbBadDebtTrans.ItemIndex := 0;
end;

procedure TfrmAllocate.btnCancel1Click(Sender: TObject);
begin
  Close;
end;

//function TfrmAllocate.DoMultiAllocate: Boolean;
//var
//  frmSuspMulti: TfrmSuspMulti;
//  I: Integer;
//begin
//  Result := False;
//  if grdBase.SelectedRows.Count > 1 then
//  begin
//    frmSuspMulti := TfrmSuspMulti.Create(Self);
//    try
//      dtmBatchSusp.cdsMultiSusp.Open;
//      for I := 0 to grdBase.SelectedRows.Count - 1 do
//      begin
//        with dtmBatchSusp do
//        begin
//          qryLoans.GotoBookmark(Pointer(grdBase.SelectedRows.Items[I]));
//          cdsMultiSusp.Append;
//          cdsMultiSusp.FieldByName('LoanID').AsInteger  :=
//            qryLoans.FieldByName('LoanID').AsInteger;
//          cdsMultiSusp.FieldByName('EntCode').AsString  :=
//            qryLoans.FieldByName('EntCode').AsString;
//          cdsMultiSusp.FieldByName('Amount').AsCurrency := 0;
//         cdsMultiSusp.Post;
//        end;
//      end;
//      frmSuspMulti.TotAmount := dtmBatchSusp.qryBatchHistory.FieldByName('Amount').AsCurrency;
//      if frmSuspMulti.ShowModal = mrOK then
//        Result := True;
//    finally
//      frmSuspMulti.Free;
//    end;
//  end
//  else
//    Result := True;
//end;

function TfrmAllocate.CanAllocate: Boolean;
var
  Total: Currency;
  HasZero: Boolean;
begin
  dtmBatchSusp.cdsBatch.DisableControls;
  Result := False;

  HasZero := False;
  dtmBatchSusp.cdsBatch.First;
  while not dtmBatchSusp.cdsBatch.Eof do
  begin
    if dtmBatchSusp.cdsBatch.FieldByName('Amount').AsCurrency <= 0 then
    begin
      HasZero := True;
      Break;
    end;
    dtmBatchSusp.cdsBatch.Next;
  end;
  if HasZero then
    MessageDlg('There are one or more loans with a zero amount', mtError,[mbOK],0)
  else
  begin
    Total := dtmBatchSusp.GetMultiSuspTotal;
    if Total < dtmBatchSusp.qryBatchHistory.FieldByName('Amount').AsCurrency then
      MesDlg('The total allocation is less than the suspense amount','E')
    else if Total > dtmBatchSusp.qryBatchHistory.FieldByName('Amount').AsCurrency then
      MesDlg('The total allocation is more than the suspense amount','E')
    else
      Result := True;
   { else
    begin
      if not(dtmBatchSusp.qryBatchHistory.FieldByName('TransNo').IsNull) then
      begin
        if not(cbxSTrans.Text = '') then
        begin
          if not(cbxLTrans.Text = '') then
            Result := True
          else
            MesDlg('A default loan transaction has not been specified','I');
        end
        else
          MesDlg('A default suspense transaction has not been specified','I');
      end
      else
        MesDlg('There is no suspense transaction to allocate', 'I');
    end; }
  end;
  dtmBatchSusp.cdsBatch.EnableControls;
end;

procedure TfrmAllocate.edtFilterChange(Sender: TObject);
begin
  inherited;
  if Trim(edtFilter.Text) = '' then
    FilterDataSet(dtmBatchSusp.qryLoans,'')
  else
    //if (grdBase.SelectedIndex in [1,2]) then
      FilterDataSet(dtmBatchSusp.qryLoans,
        grdBase.SelectedField.FieldName+' like '''+edtFilter.Text+'%''');

  chkHideInactiveClick(nil);      
end;

procedure TfrmAllocate.btnAddClick(Sender: TObject);
var
  I: Integer;
begin
  //if dtmBatchSusp.qryBatchHistory.FieldByName('EffectDate').AsDateTime < dtmMain.curme


  with dtmBatchSusp do
  begin
    if not (qryLoans.FieldByName('Status').AsInteger in [30,40,45,60,65,68]) then
      MessageDlg('Cannot allocate inactive loans.', mtError, [mbOK], 0)
    else if cdsBatch.Locate('LoanID',qryLoans.FieldByName('LoanID').AsInteger,[]) then
      MessageDlg('This loan has already been added to the batch.', mtInformation,
        [mbOK], 0)
    else
    begin
      cdsBatch.Append;
      for I := 0 to cdsBatch.FieldCount - 1 do
        if cdsBatch.Fields[I].FieldName = 'Amount' then
        begin
          if cdsBatch.RecordCount =  0 then
            cdsBatch.Fields[I].AsCurrency := qryBatchHistory.FieldByName('Amount').AsCurrency
          else
            cdsBatch.Fields[I].AsCurrency := 0;
        end
        else
          cdsBatch.Fields[I].Value := qryLoans.FieldByName(cdsBatch.Fields[I].FieldName).Value;
      cdsBatch.Post;
      if cdsBatch.FieldByName('Status').AsInteger = 40 then
        Inc(BadDebtCount);
    end;
  end;
  btnOK.Enabled := dtmBatchSusp.cdsBatch.RecordCount > 0;
end;

procedure TfrmAllocate.btnRemoveClick(Sender: TObject);
begin
  if dtmBatchSusp.cdsBatch.FieldByName('Status').AsInteger = 40 then
    Dec(BadDebtCount);
  dtmBatchSusp.cdsBatch.Delete;
  btnOK.Enabled := dtmBatchSusp.cdsBatch.RecordCount > 0;
end;

procedure TfrmAllocate.grdBaseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if TDBGrid(Sender).DataSource.DataSet.RecordCount > 0 then
    if not (gdFocused in State) then
      if Column.FieldName = 'sStatus' then
      begin
        TDBGrid(Sender).Canvas.Brush.Color := ColorLoanStatus(TDBGrid(Sender).DataSource.DataSet.FieldByName('Status').AsInteger);
        TDBGrid(Sender).Canvas.Pen.Color := TDBGrid(Sender).Canvas.Brush.Color;
        TDBGrid(Sender).Canvas.Rectangle(Rect.Left + 1, Rect.Top + 1, Rect.Right - 1, Rect.Bottom - 1);
        TDBGrid(Sender).Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, TDBGrid(Sender).DataSource.DataSet.FieldByName('sStatus').AsString);
      end;
end;

procedure TfrmAllocate.btnOKClick(Sender: TObject);
//var
//  UseValueDate: Boolean;
begin
  if dtmBatchSusp.cdsBatch.State in [dsEdit,dsInsert] then
    dtmBatchSusp.cdsBatch.Post;
    
  if CanAllocate then
  begin
    {if (dtmBatchSusp.qryBatchHistory.FieldByName('EffectDate').AsDateTime <
      dtmMain.CurME)
      and not (chkValueDate.Checked) then
      MesDlg('Effective Date is smaller than month-end date, use value date to ' +
        'allocate this transaction','I')
    else}
    frmAllocateTrans.lblLoanCount.Caption := IntToStr(dtmBatchSusp.cdsBatch.RecordCount - BadDebtCount) +
      ' record' + IfThen(dtmBatchSusp.cdsBatch.RecordCount - BadDebtCount = 1, '','s');
    frmAllocateTrans.lblBadDebtCount.Caption := IntToStr(BadDebtCount) + ' record' +
      IfThen(BadDebtCount = 1, '', 's');
    frmAllocateTrans.lblBadDebtTrans.Enabled := BadDebtCount > 0;
    frmAllocateTrans.cmbBadDebtTrans.Enabled := BadDebtCount > 0;
    if frmAllocateTrans.ShowModal = mrOK then
    begin
      try
        Screen.Cursor := crHandPoint;
        dtmBatchSusp.DefSCode := StrToInt(dtmBatchSusp.SCodeList.Values[frmAllocateTrans.cmbSuspenseTrans.Text]);
        dtmBatchSusp.DefLCode := StrToInt(dtmBatchSusp.LCodeList.Values[frmAllocateTrans.cmbLoanTrans.Text]);
        dtmBatchSusp.DefBCode := StrToInt(dtmBatchSusp.BCodeList.Values[frmAllocateTrans.cmbBadDebtTrans.Text]);
       { if chkValueDate.Checked then
          dtmBatchSusp.DefDate := dtpDefDate.Date
        else
          dtmBatchSusp.DefDate := dtmBatchSusp.qryBatchHistory.FieldByName('EffectDate').AsDateTime;   }

          dtmBatchSusp.PostAllocTrans(frmAllocateTrans.dtpDefDate.Date);
          dtmBatchSusp.qryAlTrans.ReQuery;
          dtmBatchSusp.qryBatchHistory.ReQuery;
          Close;
          //end;
      finally
        Screen.Cursor := crDefault;
      end;
    end;
  end;
end;

procedure TfrmAllocate.grdBaseDblClick(Sender: TObject);
begin
  btnAdd.Click;
end;

procedure TfrmAllocate.grdBaseColEnter(Sender: TObject);
begin
  lblSearchOn.Caption := grdBase.Columns[grdBase.SelectedIndex].Title.Caption;
end;

procedure TfrmAllocate.FormDestroy(Sender: TObject);
begin
  FreeAndNil(frmAllocateTrans);
end;

procedure TfrmAllocate.chkHideInactiveClick(Sender: TObject);
var
  Command: WideString;
begin
  dtmBatchSusp.qryLoans.Close;
  Command :=
    'SELECT CAST(LoanID AS varchar(10)) AS LoanID, ED.EntityID, ED.EntCode, Name, Name2 AS Surname, ' +
    'LoanType, RefNo AS LoanNo, dbo.FGetLoanStatusName(LD.Status) AS sStatus, LD.Status ' +
    'FROM lsLoanDetail LD ' +
    'LEFT JOIN EntityData ED on LD.EntityID = ED.EntityID ';

  if chkHideInactive.Checked then
    Command := Command + 'WHERE LD.Status IN (30,40,45,60,65,68)';//'Status = 30 or Status = 60 or Status = 65 or Status = 68';

  dtmBatchSusp.qryLoans.CommandText := Command;
  dtmBatchSusp.qryLoans.Open;
end;

procedure TfrmAllocate.FormShow(Sender: TObject);
begin
  frmAllocateTrans.dtpDefDate.Date := dtmBatchSusp.qryBatchHistory.FieldByName('EffectDate').AsDateTime;
  dtmBatchSusp.qryLoans.Filtered := False;
end;

end.
