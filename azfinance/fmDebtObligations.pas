unit fmDebtObligations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, ComCtrls, ToolWin, Grids, DBGrids, uNoteSys,
  ADODB, ExtCtrls, ImgList,Unit32, DB, DBTables;

type
  TfrmDebtObligations = class(TForm)
    PageControl3: TPageControl;
    tsDebt: TTabSheet;
    tsDebtNotes: TTabSheet;
    CoolBar10: TCoolBar;
    ToolBar10: TToolBar;
    btnNewDebtNote: TToolButton;
    btnEditDebtNote: TToolButton;
    rdtDebt: TRichEdit;
    edtSource: TDBEdit;
    pnlEnabled: TPanel;
    imlOverride: TImageList;
    Notes: TMemo;
    btnAddBureau: TButton;
    btnPrintBureau: TButton;
    btnEnableBureau: TButton;
    btnDeleteBureau: TButton;
    btnEditBureau: TButton;
    clbrOptions: TCoolBar;
    tlbrOptions: TToolBar;
    btnBureauAdd: TToolButton;
    btnBureauEdit: TToolButton;
    btnBureauDisable: TToolButton;
    btnBureauEnable: TToolButton;
    btnBureauPrint: TToolButton;
    grdBureauAccount: TDBGrid;
    Splitter2: TSplitter;
    GroupBox2: TGroupBox;
    btnBureauDelete: TToolButton;
    qryGetSales: TADOQuery;
    qryGetAccountStatus: TADOQuery;
    grdTop: TGroupBox;
    grbNotes: TGroupBox;
    procedure FormShow(Sender: TObject);
    procedure btnBureauAddEditClick(Sender: TObject);
    procedure btnBureauEnableDisableClick(Sender: TObject);
    procedure btnBureauDeleteClick(Sender: TObject);
    procedure btnBureauPrintClick(Sender: TObject);
    procedure grdBureauAccountDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtSourceChange(Sender: TObject);
    procedure btnNewDebtNoteClick(Sender: TObject);
    procedure btnEditDebtNoteClick(Sender: TObject);
    procedure tcDisabledChange(Sender: TObject);
  private
    { Private declarations }
    rowID: string;
    LoggedInUser: string;
    LoanStatus: string;

    FLoanID: Integer;
    FOnlyRead: Boolean;                
    FReload: Boolean;

    procedure SetLoanID(const Value: Integer);
    procedure SetOnlyRead(const Value: Boolean);
  public
    { Public declarations }
      isAmd: Boolean;

    property LoanID: Integer read FLoanID write SetLoanID;
    property OnlyRead: Boolean read FOnlyRead write SetOnlyRead;
    property Reload: Boolean read FReload;
  end;

var
  frmDebtObligations: TfrmDebtObligations;

implementation

uses dmLoanC, dmMain, fmBureauAccount, dmQuotations, fmEntLoan,fmBase, dmAffordability;

{$R *.dfm}

procedure TfrmDebtObligations.FormShow(Sender: TObject);
begin

  LoanID := dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger;

  uNoteSys.Categories := '110004016';
  uNoteSys.RichEdit := rdtDebt;
  DisplayNotes(False);
  tsDebtNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
  notes.Text := '';
  tcDisabledChange(nil);

  try
    // get the loan status
    qryGetAccountStatus.Parameters.ParamByName('LoanID').Value := LoanID;
    qryGetAccountStatus.Open;
    LoanStatus := qryGetAccountStatus.FieldByName('Status').AsString;
    qryGetAccountStatus.Destroy;
    qryGetAccountStatus.Free;
  except on E : Exception do
    begin
    end;
  end;

  try
    //cecking if current user is a Sales user
    qryGetSales.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;//
    qryGetSales.Open;
    if qryGetSales.FieldByName('DepartmentID').AsString = '8' then
      LoggedInUser := qryGetSales.FieldByName('Username').AsString
    else
      LoggedInUser := '';

  finally
    qryGetSales.Destroy;
    qryGetSales.Free;
  end;

  if(((LoanStatus = '0') Or (LoanStatus = '5'))  and isAmd)  then
    OnlyRead := False
  else
    OnlyRead := True;


end;


procedure TfrmDebtObligations.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
end;
procedure TfrmDebtObligations.SetOnlyRead(const Value: Boolean);
begin
  FOnlyRead := Value;

  if (OnlyRead = True) then
  begin

    btnBureauAdd.Enabled := False;
    btnBureauEdit.Enabled := False;
    btnBureauEnable.Enabled := False;
    btnBureauDisable.Enabled := False;
    btnBureauDelete.Enabled := False;
    btnBureauPrint.Enabled := False;

    btnEditDebtNote.Enabled := False;
    btnEditDebtNote.Enabled := False;

    grdBureauAccount.Canvas.Brush.Color := clBtnFace;

  end
  else if (OnlyRead = False) then
  begin

    btnBureauAdd.Enabled := True;
    btnBureauEdit.Enabled := True;
    btnBureauEnable.Enabled := True;
    btnBureauDisable.Enabled := True;
    btnBureauDelete.Enabled := True;
    btnBureauPrint.Enabled := True;

    btnNewDebtNote.Enabled := True;
    btnEditDebtNote.Enabled := True;

    grdBureauAccount.Enabled := True;
    grdBureauAccount.Color := clWhite;

  end;

end;


procedure TfrmDebtObligations.btnBureauAddEditClick(Sender: TObject);
var
  SettleAmount: Variant;
  LastDatePaid: Variant;
  AccountNo: Variant;
  Source: String;
  i : Integer;
begin

  frmBureauAccount := TfrmBureauAccount.Create(Self);
  grdBureauAccount.SetFocus;

  try

    if Sender = btnBureauAdd then
    begin
      frmBureauAccount.AssignCaption := 'Add Account'
    end
    else if Sender = btnBureauEdit then
    begin

      frmBureauAccount.AssignCaption := 'Edit Account';
      Source := dtmLoanC.dsBureauAccounts.FieldByName('Source').AsString;

      //if LeftStr(dtmLoanC.dsBureauAccounts.FieldByName('Source').AsString, 3) <> 'ITC' then
      if not (Source = 'ITC') or (Source = 'Bureau') or (Source = 'ITC (Edited)') or (Source = 'Bureau (Edited)')then
      begin
        frmBureauAccount.cmbSource.Items.Add('Bureau');
        frmBureauAccount.cmbSource.Items.Add('Bureau (Edited)');
        frmBureauAccount.cmbSource.Items.Add('ITC');
        frmBureauAccount.cmbSource.Enabled:= True;
        frmBureauAccount.cmbSource.Style := csDropDownList;
        frmBureauAccount.cmbSource.ItemIndex := frmBureauAccount.cmbSource.Items.IndexOf(Source);
      end
      else
      begin
        frmBureauAccount.cmbSource.Enabled:= False;
        frmBureauAccount.cmbSource.Style := csSimple;
        if Pos('(Edited)', Source) = 0 then
          frmBureauAccount.cmbSource.Text := Source + ' (Edited)'
        else
          frmBureauAccount.cmbSource.Text := Source;
      end;

      frmBureauAccount.edtCompany.Text :=  dtmLoanC.dsBureauAccounts.FieldByName('Subscriber').AsString;
      frmBureauAccount.edtAccountNo.Text := dtmLoanC.dsBureauAccounts.FieldByName('AccountNo').AsString;
      frmBureauAccount.edtInstalment.Text := dtmLoanC.dsBureauAccounts.FieldByName('Instalment').AsString;
      frmBureauAccount.edtOriginalInstalment.Text := dtmLoanC.dsBureauAccounts.FieldByName('OriginalInstalment').AsString;
      frmBureauAccount.edtSettleAmount.Text :=  dtmLoanC.dsBureauAccounts.FieldByName('SettleAmount').AsString;
      frmBureauAccount.dtpLastPaid.DateTime :=  dtmLoanC.dsBureauAccounts.FieldByName('LastPaydate').AsDateTime;
      frmBureauAccount.memNote.Text := dtmLoanC.dsBureauAccounts.FieldByName('Notes').AsString;
    end;

  begin
    if frmBureauAccount.ShowModal = mrOK then
    begin

      FReload := True;
      
      if frmBureauAccount.edtSettleAmount.Text = ''then
          SettleAmount := NULL
      else
          SettleAmount := frmBureauAccount.edtSettleAmount.Text;

      if frmBureauAccount.dtpLastPaid.Checked = false then
          LastDatePaid := NULL
      else
          LastDatePaid:= frmBureauAccount.dtpLastPaid.DateTime;

      if frmBureauAccount.edtAccountNo.Text = '' then
          AccountNo:= NULL
      else
          AccountNo:= frmBureauAccount.edtAccountNo.Text;

      with dtmLoanC do
      begin
        if Sender = btnBureauEdit then
        begin
            cmdUpdateBureau.Parameters.ParamByName('AccountID').value := dtmLoanC.dsBureauAccounts.FieldByName('AccountID').AsString;
            cmdUpdateBureau.Parameters.ParamByName('AccountNo').value := frmBureauAccount.edtAccountNo.Text;
            cmdUpdateBureau.Parameters.ParamByName('Instalment').Value := frmBureauAccount.edtInstalment.Text;
            cmdUpdateBureau.Parameters.ParamByName('OriginalInstalment').Value := frmBureauAccount.edtOriginalInstalment.Text;
            cmdUpdateBureau.Parameters.ParamByName('Notes').Value := frmBureauAccount.memNote.Text;
            cmdUpdateBureau.Parameters.ParamByName('AccountActionID').Value := 3;
            cmdUpdateBureau.Parameters.ParamByName('AccountActionUserID').Value := dtmMain.UserKey;
            cmdUpdateBureau.Parameters.ParamByName('UpdateUserID').Value := dtmMain.UserKey;
            cmdUpdateBureau.Parameters.ParamByName('Subscriber').Value := frmBureauAccount.edtCompany.Text;
            cmdUpdateBureau.Parameters.ParamByName('Source').Value := frmBureauAccount.cmbSource.Text;

            if(LoggedInUser <> '') then
            begin
              cmdUpdateBureau.Parameters.ParamByName('SalesDepartment').Value := 'Sales';
            end
              else
                cmdUpdateBureau.Parameters.ParamByName('SalesDepartment').Value := NULL;

            cmdUpdateBureau.Execute;
            RequeryOnRecord(dtmLoanC.dsBureauAccounts, 'AccountID');
        end;

        if Sender = btnBureauAdd then
        begin
          cmdInsertBureauA.Parameters.ParamByName('LoanID').Value := qryLoanDet.FieldByName('LoanID').AsInteger;
          cmdInsertBureauA.Parameters.ParamByName('Source').Value := frmBureauAccount.cmbSource.Text;
          cmdInsertBureauA.Parameters.ParamByName('Subscriber').Value := frmBureauAccount.edtCompany.Text;
          cmdInsertBureauA.Parameters.ParamByName('AccountNo').Value := AccountNo;
          cmdInsertBureauA.Parameters.ParamByName('Instalment').Value := frmBureauAccount.edtInstalment.Text;
          //cmdInsertBureauA.Parameters.ParamByName('OriginalInstalment').Value := frmBureauAccount.edtOriginalInstalment.Text;
          cmdInsertBureauA.Parameters.ParamByName('SettleAmount').Value := SettleAmount;
          cmdInsertBureauA.Parameters.ParamByName('LastPayDate').Value := LastDatePaid;
          cmdInsertBureauA.Parameters.ParamByName('CreateUser').Value := dtmMain.CurrentID;
          cmdInsertBureauA.Parameters.ParamByName('Notes').Value := frmBureauAccount.memNote.Text;
          cmdInsertBureauA.Parameters.ParamByName('Enabled').Value := True;
          cmdInsertBureauA.Parameters.ParamByName('AccountActionID').Value := 2;
          cmdInsertBureauA.Parameters.ParamByName('AccountActionUserID').Value := dtmMain.UserKey;

          //check to see if a user is a sales user and populate the sales department field
       if(LoggedInUser <> '') then
            begin
              cmdInsertBureauA.Parameters.ParamByName('SalesDepartment').Value := 'Sales';
            end
              else
                cmdInsertBureauA.Parameters.ParamByName('SalesDepartment').Value := NULL;
           //Set the focus on newly added row
            rowID := cmdInsertBureauA.Execute.Fields[0].Value;
            RequeryOnRecord(dtmLoanC.dsBureauAccounts, 'AccountID');
            grdBureauAccount.DataSource.DataSet.First;
            if rowID <> '' then
               begin
                 for i :=0 to grdBureauAccount.FieldCount - 1 do
                   begin
                      if (grdBureauAccount.DataSource.DataSet.FieldByName('AccountID').AsString = rowID) then
                         begin
                           grdBureauAccount.SetFocus;
                           grdBureauAccount.SelectedField := grdBureauAccount.DataSource.DataSet.FieldByName('AccountID');
                           Break;
                         end;
                       grdBureauAccount.DataSource.DataSet.Next;
                  end;
                end;
            end;
        end

      end

    else
      dtmLoanC.dsBureauAccounts.Cancel;
      end
  finally
    FreeAndNil(frmBureauAccount);
  end;
end;

procedure TfrmDebtObligations.btnBureauEnableDisableClick(Sender: TObject);
begin
if (dtmLoanC.dsBureauAccounts.FieldByName('Enabled').AsBoolean = True) then
begin
  if MessageDlg('Are you sure you want to disable this account?',
    mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin

      FReload := True;

      frmBureauAccount := TfrmBureauAccount.Create(Self);
      frmBureauAccount.AssignCaption := 'Disable Account';
      frmBureauAccount.cmbSource.Style := csSimple;
      frmBureauAccount.cmbSource.Enabled := False;
      frmBureauAccount.cmbSource.Text:= dtmLoanC.dsBureauAccounts.FieldByName('Source').AsString;

      frmBureauAccount.edtCompany.Text:=  dtmLoanC.dsBureauAccounts.FieldByName('Subscriber').AsString;
      frmBureauAccount.edtAccountNo.Text:= dtmLoanC.dsBureauAccounts.FieldByName('AccountNo').AsString;
      frmBureauAccount.edtInstalment.Text:= dtmLoanC.dsBureauAccounts.FieldByName('Instalment').AsString;
      frmBureauAccount.edtSettleAmount.Text:=  dtmLoanC.dsBureauAccounts.FieldByName('SettleAmount').AsString;
      frmBureauAccount.dtpLastPaid.DateTime:=  dtmLoanC.dsBureauAccounts.FieldByName('LastPaydate').AsDateTime;
      if frmBureauAccount.ShowModal = mrOK then
      begin
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('AccountID').value := dtmLoanC.dsBureauAccounts.FieldByName('AccountID').AsString;
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('Enabled').value := false;
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('DisableUser').value := dtmMain.CurrentID;
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('Notes').value := frmBureauAccount.memNote.Lines.Text;
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('AccountActionUserID').value := dtmMain.UserKey;
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('AccountActionID').value := 4;
        if(LoggedInUser <> '') then
            begin
              dtmLoanC.cmdDisableBureau.Parameters.ParamByName('SalesDepartment').Value := 'Sales';
            end
              else
                   dtmLoanC.cmdDisableBureau.Parameters.ParamByName('SalesDepartment').Value := NULL;
        dtmLoanC.cmdDisableBureau.Execute;

        RequeryOnRecord(dtmLoanC.dsBureauAccounts, 'AccountID');
        RequeryOnRecord(dtmLoanC.dsBureauDisabled, 'AccountID');
       end;
       end;
  end
  else
  begin
  if MessageDlg('Are you sure you want to enable this account?',
    mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin

      FReload := True;

      frmBureauAccount := TfrmBureauAccount.Create(Self);
      frmBureauAccount.AssignCaption := 'Enable Account';
      frmBureauAccount.cmbSource.Style := csSimple;
      frmBureauAccount.cmbSource.Enabled := False;
      frmBureauAccount.cmbSource.Text:= dtmLoanC.dsBureauAccounts.FieldByName('Source').AsString;

      frmBureauAccount.edtCompany.Text:=  dtmLoanC.dsBureauAccounts.FieldByName('Subscriber').AsString;
      frmBureauAccount.edtAccountNo.Text:= dtmLoanC.dsBureauAccounts.FieldByName('AccountNo').AsString;
      frmBureauAccount.edtInstalment.Text:= dtmLoanC.dsBureauAccounts.FieldByName('Instalment').AsString;
      frmBureauAccount.edtSettleAmount.Text:=  dtmLoanC.dsBureauAccounts.FieldByName('SettleAmount').AsString;
      frmBureauAccount.dtpLastPaid.DateTime:=  dtmLoanC.dsBureauAccounts.FieldByName('LastPaydate').AsDateTime;
      if frmBureauAccount.ShowModal = mrOK then
      begin
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('AccountID').value := dtmLoanC.dsBureauAccounts.FieldByName('AccountID').AsString;
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('Enabled').value := True;
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('DisableUser').value := dtmMain.CurrentID;
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('Notes').value := frmBureauAccount.memNote.Lines.Text;
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('AccountActionUserID').value := dtmMain.UserKey;
        dtmLoanC.cmdDisableBureau.Parameters.ParamByName('AccountActionID').value := 5;
        if(LoggedInUser <> '') then
            begin
              dtmLoanC.cmdDisableBureau.Parameters.ParamByName('SalesDepartment').Value := 'Sales';
            end
              else
                   dtmLoanC.cmdDisableBureau.Parameters.ParamByName('SalesDepartment').Value := NULL;
        dtmLoanC.cmdDisableBureau.Execute;

        RequeryOnRecord(dtmLoanC.dsBureauAccounts, 'AccountID');
        RequeryOnRecord(dtmLoanC.dsBureauDisabled, 'AccountID');
       end;
      end;
  end;
end;

procedure TfrmDebtObligations.btnBureauDeleteClick(Sender: TObject);
begin
    if MessageDlg('Are you sure you want to delete this account?',
        mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
    
      FReload := True;

      dtmLoanC.cmdDeleteNonBureauAccount.Parameters.ParamByName('AccountID').value :=  dtmLoanC.dsBureauAccounts.FieldByName('AccountID').AsString;
      dtmLoanC.cmdDeleteNonBureauAccount.Execute();
      RequeryOnRecord(dtmLoanC.dsBureauAccounts, 'AccountID');
    end
end;

procedure TfrmDebtObligations.btnBureauPrintClick(Sender: TObject);
begin
  dtmLoanC.dsPrintBureau.Open;
  dtmQuotations.rpBureau.Print;
  dtmLoanC.dsPrintBureau.Close;
end;


procedure TfrmDebtObligations.grdBureauAccountDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Source: String;
begin

  //Grey out the disabled Items on the Debt Obligations Grid
  if (dtmLoanC.dsBureauAccounts.FieldByName('Enabled').AsBoolean = False) then
  begin
    grdBureauAccount.Canvas.Brush.Color := clBtnFace;
    grdBureauAccount.Canvas.Pen.Width := 2;
    grdBureauAccount.Canvas.Font.Color := clGray;
    grdBureauAccount.Canvas.FillRect(Rect);
    grdBureauAccount.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  //Highlight the focused row
  if ((gdFocused in State) or (gdSelected in State) ) then
  begin
     grdBureauAccount.Canvas.Brush.Color := clHighlight;
     grdBureauAccount.Canvas.Font.Color := clBlack;
     Notes.Text := dtmLoanC.dsBureauAccounts.FieldByName('Notes').AsString;
     grdBureauAccount.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;

  //Set read only
  if(OnlyRead = False) then
  begin

    //Highlight the focused row
    if ((gdFocused in State) or (gdSelected in State) ) then
    begin
      grdBureauAccount.Canvas.Brush.Color := clHighlight;
      grdBureauAccount.Canvas.Font.Color := clBlack;
      Notes.Text := dtmLoanC.dsBureauAccounts.FieldByName('Notes').AsString;
      grdBureauAccount.DefaultDrawColumnCell(Rect,DataCol,Column, State);

      //control which button are disible
      if(dtmLoanC.dsBureauAccounts.FieldByName('Enabled').AsBoolean) then
      begin

        btnBureauDisable.Enabled := True;
        btnBureauEdit.Enabled := True;
        btnBureauEnable.Enabled := False;
        btnBureauEnable.Visible := False;
        btnBureauDisable.Visible := True;
        btnBureauEdit.Visible := True;
      end
      else
      begin
        btnBureauDisable.Enabled := False;
        btnBureauEdit.Enabled := False;
        btnBureauEnable.Enabled := True;
        btnBureauEnable.Visible := True;
        btnBureauDisable.Visible := False;
        btnBureauEdit.Visible := False;
      end;

      Source := dtmLoanC.dsBureauAccounts.FieldByName('Source').AsString;
      //control which records can be deleted
      if (Source = 'ITC') or (Source = 'Bureau') or (Source = 'ITC (Edited)') or (Source = 'Bureau (Edited)') then
      begin
        btnBureauDelete.Enabled := False;
        btnBureauDelete.Visible := False;

        if(dtmLoanC.dsBureauAccounts.FieldByName('Enabled').AsBoolean) then
        begin
          btnBureauDisable.Enabled := True;
          btnBureauDisable.Visible := True;
        end

      end
      else
      begin
        btnBureauDelete.Enabled := True;
        btnBureauDelete.Visible := True;

        if(dtmLoanC.dsBureauAccounts.FieldByName('Enabled').AsBoolean) then
        begin
          btnBureauDisable.Enabled := False;
          btnBureauDisable.Visible := False;
        end
      end;

      if(grdBureauAccount.DataSource.DataSet.RecordCount = 0) then
      begin

        btnBureauEnable.Enabled := False;
        btnBureauEnable.Visible := False;

        btnBureauAdd.Enabled := True;
        btnBureauAdd.Visible := True;

        btnBureauDelete.Enabled := False;
        btnBureauDelete.Visible := False;

        btnBureauDisable.Enabled := False;
        btnBureauDisable.Visible := False;

        btnBureauEdit.Enabled := False;
        btnBureauEdit.Visible := False;

        btnBureauPrint.Enabled := False;
        btnBureauPrint.Visible := False;

        grdBureauAccount.Enabled := True;
        grdBureauAccount.Color := clWhite;
      end;

    end;//Highlight the focused row

  end//Set read only: false
  else
  begin//Set read only: true

    btnBureauDisable.Enabled := False;
    btnBureauEdit.Enabled := False;
    btnBureauEnable.Enabled := False;
    btnBureauEnable.Visible := False;
    btnBureauDisable.Visible := False;
    btnBureauEdit.Visible := False;
    //grdBureauAccount.Enabled := False;
  end;//Set read only

end;



procedure TfrmDebtObligations.edtSourceChange(Sender: TObject);
begin
  //btnDeleteBureau.Enabled := dtmLoanC.dsBureauAccounts.FieldByName('CanDelete').AsBoolean;// <> 'ITC';
  //btnDeleteBureau.Enabled := btnBureauEdit.Enabled;
end;


procedure TfrmDebtObligations.btnNewDebtNoteClick(Sender: TObject);
begin
  NewNote(110004016);
  tsDebtNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmDebtObligations.btnEditDebtNoteClick(Sender: TObject);
begin
  EditNote(110004016);
end;

procedure TfrmDebtObligations.tcDisabledChange(Sender: TObject);
begin
  //dtmLoanC.dsBureauDisabled.Filter := 'Autodisabled = ' + IntToStr(tcDisabled.TabIndex);
end;


end.
