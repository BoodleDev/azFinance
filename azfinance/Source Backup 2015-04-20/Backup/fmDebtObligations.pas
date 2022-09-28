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
    btnEditDebtNotes: TToolButton;
    rdtDebt: TRichEdit;
    edtSource: TDBEdit;
    pnlEnabled: TPanel;
    imlOverride: TImageList;
    Notes: TMemo;
    btnAddBureau1: TButton;
    btnPrintBureau1: TButton;
    btnEnableBureau1: TButton;
    btnDeleteBureau1: TButton;
    btnEditBureau1: TButton;
    clbrOptions: TCoolBar;
    tlbrOptions: TToolBar;
    btnAddBureau: TToolButton;
    btnEditBureau: TToolButton;
    btnDisableBureau: TToolButton;
    btnEnableBureau: TToolButton;
    btnPrintBureau: TToolButton;
    grdBUAccEnabled: TDBGrid;
    Splitter2: TSplitter;
    GroupBox2: TGroupBox;
    btnDelete: TToolButton;
    ADOQueryGetSales: TADOQuery;
    ADOQueryGetAccountStatus: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure btnDisableBureau1Click(Sender: TObject);
    procedure btnAddBureau1Click(Sender: TObject);
    procedure edtSourceChange(Sender: TObject);
    procedure grdBUAccDisabledDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdBUAccEnabledDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnNewDebtNoteClick(Sender: TObject);
    procedure btnEditDebtNotesClick(Sender: TObject);
    procedure btnPrintBureau1Click(Sender: TObject);
    procedure btnDisableBureauClick(Sender: TObject);
    procedure tcDisabledChange(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    rowID : string;
    LoggedInUser: string;
    LoanStatus : string;
  public
    { Public declarations }
      isAmd : Boolean;
  end;

var
  frmDebtObligations: TfrmDebtObligations;

implementation

uses dmLoanC, dmMain, fmBureauAccount, dmQuotations, fmEntLoan,fmBase;

{$R *.dfm}

procedure TfrmDebtObligations.FormShow(Sender: TObject);

begin
  uNoteSys.Categories := '110004016';
  uNoteSys.RichEdit := rdtDebt;
  DisplayNotes(False);
  tsDebtNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
  notes.Text := '';
  tcDisabledChange(nil);

                try

            // get the loan status
            ADOQueryGetAccountStatus.Parameters.ParamByName('LoanID').Value := dtmLoanC.qryLoanDet.FieldByName('LoanID').AsInteger;
            ADOQueryGetAccountStatus.Open;
            LoanStatus := ADOQueryGetAccountStatus.FieldByName('Status').AsString;
            ADOQueryGetAccountStatus.Destroy;
            ADOQueryGetAccountStatus.Free;
        except on E : Exception do
           begin
           end;
        end;

      try
        //cecking if current user is a Sales user
        ADOQueryGetSales.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;//
        ADOQueryGetSales.Open;
        LoggedInUser := ADOQueryGetSales.FieldByName('Username').AsString;
      finally
        ADOQueryGetSales.Destroy;
        ADOQueryGetSales.Free;
      end;

      if(((LoanStatus = '0') Or  (LoanStatus = '5') ) and  isAmd )  then
          begin
           btnEnableBureau.Enabled := True;
           btnAddBureau.Enabled := True;
           btnEditDebtNotes.Enabled := True;
           btnDelete.Enabled := True;
           btnEditDebtNotes.Enabled := True;
           btnDisableBureau.Enabled := True;
           grdBUAccEnabled.Enabled := True;
           btnEditBureau.Enabled := True;
           btnPrintBureau.Enabled := True;
           grdBUAccEnabled.Color := clWhite;
          end
        else
        begin
           btnEnableBureau.Enabled := False;
           btnAddBureau.Enabled := False;
           btnEditDebtNotes.Enabled := False;
           btnDelete.Enabled := False;
           btnEditDebtNotes.Enabled := False;
           btnDisableBureau.Enabled := False;
           btnPrintBureau.Enabled := False;
            grdBUAccEnabled.Canvas.Brush.Color := clBtnFace;
           //grdBUAccEnabled.Enabled := False;
           btnEditBureau.Enabled := False;
         end  ;

  //This code is a workaround to get the Enabled button show properly
  //tcDisabled.Height := 50;
  //grdBUAccDisabled.Align := alClient;
end;

procedure TfrmDebtObligations.btnDisableBureauClick(Sender: TObject);
var
  DataSet: TADODataSet;
  sAction: String;
  //IsNLR: Boolean;
  //Command: String;
begin
  try
    Screen.Cursor := crHourGlass;
    (*if Sender = btnDisableBureau then
    begin
      DataSet := dtmLoanC.dsBureauAccounts;
      sAction := 'disable';
    end
    else
    begin*)
      DataSet := dtmLoanC.dsBureauAccounts;
      sAction := 'enable';
    //end;
    if MessageDlg('Are you sure you want to ' + sAction + ' this account?',
      mtConfirmation, [mbYes,mbNo],0) = mrYes then
    begin

    dtmLoanC.cmdEnableBureauAccount.Parameters.ParamByName('AccountID').value := dtmLoanC.dsBureauAccounts.FieldByName('AccountID').AsString;
    dtmLoanC.cmdEnableBureauAccount.Parameters.ParamByName('AccountActionUserID').Value := dtmMain.UserKey;
    dtmLoanC.cmdEnableBureauAccount.Parameters.ParamByName('AccountActionID').Value := 5;
     dtmLoanC.cmdEnableBureauAccount.Execute;
      DataSet.Edit;
      DataSet.FieldByName('Enabled').AsBoolean := True;
      DataSet.Post;

      RequeryOnRecord(dtmLoanC.dsBureauAccounts, 'AccountID');
      RequeryOnRecord(dtmLoanC.dsBureauDisabled, 'AccountID');
    end;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmDebtObligations.btnAddBureau1Click(Sender: TObject);
var
  SettleAmount: Variant;
  LastDatePaid: Variant;
  AccountNo: Variant;
  Source: String;
  i : Integer;


begin
  frmBureauAccount := TfrmBureauAccount.Create(Self);
         grdBUAccEnabled.SetFocus;
  try

    if Sender = btnAddBureau then
    begin
      frmBureauAccount.AssignCaption := 'Add Account'

    end
    else if Sender = btnEditBureau then
    begin

      frmBureauAccount.AssignCaption := 'Edit Account';
      Source := dtmLoanC.dsBureauAccounts.FieldByName('Source').AsString;


      //if LeftStr(dtmLoanC.dsBureauAccounts.FieldByName('Source').AsString, 3) <> 'ITC' then
      if not (Source = 'ITC') or (Source = 'Bureau') or (Source = 'ITC (Edited)') or (Source = 'Bureau (Edited)')then
      begin
        frmBureauAccount.cmbSource.Items.Add('Bureau')  ;
        frmBureauAccount.cmbSource.Items.Add('Bureau (Edited)')  ;
        frmBureauAccount.cmbSource.Items.Add('ITC')  ;
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
        if Sender = btnEditBureau then
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

        if Sender = btnAddBureau then
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
            grdBUAccEnabled.DataSource.DataSet.First;
            if rowID <> '' then
               begin
                 for i :=0 to grdBUAccEnabled.FieldCount - 1 do
                   begin
                      if (grdBUAccEnabled.DataSource.DataSet.FieldByName('AccountID').AsString = rowID) then
                         begin
                           grdBUAccEnabled.SetFocus;
                           grdBUAccEnabled.SelectedField := grdBUAccEnabled.DataSource.DataSet.FieldByName('AccountID');
                           Break;
                         end;
                       grdBUAccEnabled.DataSource.DataSet.Next;
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

procedure TfrmDebtObligations.edtSourceChange(Sender: TObject);
begin
  //btnDeleteBureau.Enabled := dtmLoanC.dsBureauAccounts.FieldByName('CanDelete').AsBoolean;// <> 'ITC';
  //btnDeleteBureau.Enabled := btnEditBureau.Enabled;
end;

procedure TfrmDebtObligations.grdBUAccDisabledDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
//var
  //Graphic: TGraphic;
begin
(*  if not dtmLoanC.dsBureauDisabled.FieldByName('AccountID').IsNull then
  if DataCol = 0 then
  begin
    if dtmLoanC.dsBureauDisabled.FieldByName('AutoDisabled').AsBoolean then
      Graphic := imgSystem.Picture.Graphic
    else
      Graphic := imgUser.Picture.Graphic;

    grdBUAccDisabled.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left - Graphic.Width)div 2),
      Rect.Top + 2, Graphic);
  end;*)
end;

procedure TfrmDebtObligations.grdBUAccEnabledDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
//  i : Integer;
   Source: String;
begin
 //Grey out the disabled Items on the Debt Obligations Grid
  if (dtmLoanC.dsBureauAccounts.FieldByName('Enabled').AsBoolean = False) then
          begin
            grdBUAccEnabled.Canvas.Brush.Color := clBtnFace;
            grdBUAccEnabled.Canvas.Pen.Width := 2;
            grdBUAccEnabled.Canvas.Font.Color := clGray;
            grdBUAccEnabled.Canvas.FillRect(Rect);
            grdBUAccEnabled.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
   //Highlight the focused row
  if ((gdFocused in State) or (gdSelected in State) ) then
 begin
     grdBUAccEnabled.Canvas.Brush.Color := clHighlight;
     grdBUAccEnabled.Canvas.Font.Color := clBlack;
     Notes.Text := dtmLoanC.dsBureauAccounts.FieldByName('Notes').AsString;
     grdBUAccEnabled.DefaultDrawColumnCell(Rect,DataCol,Column, State);
 end;

 if((LoanStatus = '0') Or  (LoanStatus = '5') )  then
      begin
        if(isAmd) Then
          begin

          //Highlight the focused row
          if ((gdFocused in State) or (gdSelected in State) ) then
            begin
                grdBUAccEnabled.Canvas.Brush.Color := clHighlight;
                grdBUAccEnabled.Canvas.Font.Color := clBlack;
                Notes.Text := dtmLoanC.dsBureauAccounts.FieldByName('Notes').AsString;
                grdBUAccEnabled.DefaultDrawColumnCell(Rect,DataCol,Column, State);

     //control which button are disible
                    if(dtmLoanC.dsBureauAccounts.FieldByName('Enabled').AsBoolean) then
                        begin
                        btnDisableBureau.Enabled := True;
                        btnEditBureau.Enabled := True;
                        btnEnableBureau.Enabled := False;
                        btnEnableBureau.Visible := False;
                        btnDisableBureau.Visible := True;
                        btnEditBureau.Visible := True;

                      end
                          else
                              begin
                                    btnDisableBureau.Enabled := False;
                                    btnEditBureau.Enabled := False;
                                    btnEnableBureau.Enabled := True;
                                    btnEnableBureau.Visible := True;
                                    btnDisableBureau.Visible := False;
                                    btnEditBureau.Visible := False;
                      end  ;

     Source := dtmLoanC.dsBureauAccounts.FieldByName('Source').AsString;
      //control which records can be deleted
     if  (Source = 'ITC') or (Source = 'Bureau')
     or (Source = 'ITC (Edited)') or (Source = 'Bureau (Edited)')then
     begin
        btnDelete.Enabled := False;
        btnDelete.Visible := False;

        if(dtmLoanC.dsBureauAccounts.FieldByName('Enabled').AsBoolean) then
           begin
             btnDisableBureau.Enabled := True;
             btnDisableBureau.Visible := True;
           end

        end
        else
           begin
             btnDelete.Enabled := True;
             btnDelete.Visible := True;
             if(dtmLoanC.dsBureauAccounts.FieldByName('Enabled').AsBoolean) then
                begin
                     btnDisableBureau.Enabled := False;
                     btnDisableBureau.Visible := False;
                end

           end;

        if(grdBUAccEnabled.DataSource.DataSet.RecordCount = 0) then
        begin
           btnEnableBureau.Enabled := False;
            btnEnableBureau.Visible := False;

           btnAddBureau.Enabled := True;
           btnAddBureau.Visible := True;

           btnDelete.Enabled := False;
           btnDelete.Visible := False;

           btnDisableBureau.Enabled := False;
           btnDisableBureau.Visible := False;

           btnEditBureau.Enabled := False;
           btnEditBureau.Visible := False;

           btnPrintBureau.Enabled := False;
           btnPrintBureau.Visible := False;

           grdBUAccEnabled.Enabled := True;
           grdBUAccEnabled.Color := clWhite;

        end;


  end;

 end;

 end
 else
     begin

          btnDisableBureau.Enabled := False;
          btnEditBureau.Enabled := False;
          btnEnableBureau.Enabled := False;
          btnEnableBureau.Visible := False;
          btnDisableBureau.Visible := False;
          btnEditBureau.Visible := False;
          //grdBUAccEnabled.Enabled := False;
        end  ;

 end;

procedure TfrmDebtObligations.btnNewDebtNoteClick(Sender: TObject);
begin
  NewNote(110004016);
  tsDebtNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmDebtObligations.btnEditDebtNotesClick(Sender: TObject);
begin
  EditNote(110004016);
end;

procedure TfrmDebtObligations.btnPrintBureau1Click(Sender: TObject);
begin
  dtmLoanC.dsPrintBureau.Open;
  dtmQuotations.rpBureau.Print;
  dtmLoanC.dsPrintBureau.Close;
end;

procedure TfrmDebtObligations.btnDisableBureau1Click(Sender: TObject);
begin
if (dtmLoanC.dsBureauAccounts.FieldByName('Enabled').AsBoolean = True) then
begin
  if MessageDlg('Are you sure you want to disable this account?',
    mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin

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

procedure TfrmDebtObligations.tcDisabledChange(Sender: TObject);
begin
  //dtmLoanC.dsBureauDisabled.Filter := 'Autodisabled = ' + IntToStr(tcDisabled.TabIndex);
end;

procedure TfrmDebtObligations.btnDeleteClick(Sender: TObject);
begin
    if MessageDlg('Are you sure you want to delete this account?',
        mtConfirmation, [mbYes,mbNo], 0) = mrYes then
        begin
        dtmLoanC.cmdDeleteNonBureauAccount.Parameters.ParamByName('AccountID').value :=  dtmLoanC.dsBureauAccounts.FieldByName('AccountID').AsString;
        dtmLoanC.cmdDeleteNonBureauAccount.Execute();
       RequeryOnRecord(dtmLoanC.dsBureauAccounts, 'AccountID');
    end
end;
end.
