unit fmAffordability;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, NumEdit, HyperLink, ExtCtrls, Math, Grids,
  DBGrids, ComCtrls, ShellApi, DBClient, Unit32, ToolWin;

type
  TAffordabilityType = (Monthly_None = 0, Monthly_Income = 1, Monthly_Debt_Obligation = 2, Monthly_Living_Expense = 3);
   
type
  TfrmAffordability = class(TForm)
    grbFormulas: TGroupBox;
    lblGrossSurplusDeficit: TLabel;
    lblDebtRatio: TLabel;
    lblCompanyExposure: TLabel;
    imgGross: TImage;
    imgDebtRatio: TImage;
    imgInstalPercent: TImage;
    edtGross: TNumEdit;
    edtInstalPercent: TNumEdit;
    edtDebtRatio: TNumEdit;
    bvl: TBevel;
    btnClose: TButton;
    btnSave: TButton;
    stsbr: TStatusBar;
    btnPrint: TButton;
    grbTotals: TGroupBox;
    edtDebtObligation: TNumEdit;
    lblDebtObligation: TLabel;
    pnlIncome: TPanel;
    grdIncome: TDBGrid;
    pnlExpense: TPanel;
    pnlDebtObligation: TPanel;
    grdExpense: TDBGrid;
    hrdIncome: THeaderControl;
    hrdExpense: THeaderControl;
    grbIncome: TGroupBox;
    edtIncomeApplicant: TNumEdit;
    edtIncomeSpouse: TNumEdit;
    edtIncome: TNumEdit;
    lblIncome: TLabel;
    lblIncomeApplicant: TLabel;
    lblIncomeSpouse: TLabel;
    grbExpense: TGroupBox;
    lblExpense: TLabel;
    lblExpenseApplicant: TLabel;
    lblExpenseSpouse: TLabel;
    edtExpense: TNumEdit;
    edtExpenseApplicant: TNumEdit;
    edtExpenseSpouse: TNumEdit;
    Panel1: TPanel;
    hrdIncomeApplicationProcessed: THeaderControl;
    tlbrIncome: TToolBar;
    btnIncomeNew: TToolButton;
    btnIncomeEdit: TToolButton;
    Panel2: TPanel;
    tlbrExpense: TToolBar;
    btnExpenseNew: TToolButton;
    btnExpenseEdit: TToolButton;
    hrdExpenseApplicationProcessed: THeaderControl;
    hrdDebtObligation: THeaderControl;
    Panel3: TPanel;
    grdDebtObligation: TDBGrid;
    hrdDebtObligationApplicationProcessed: THeaderControl;
    tlbrDebtObligation: TToolBar;
    btnDebtObligation: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure grdMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure grdIncomeExpenseCellClick(Column: TColumn);
    procedure grdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnNewEditClick(Sender: TObject);
    procedure grdDebtObligationCellClick(Column: TColumn);
    procedure btnDebtObligationClick(Sender: TObject);
  private
    { Private declarations }
    FLoanID: Integer;
    FEntityID: Integer;
    FOnlyRead: Boolean;
    CalcList: TList;
    procedure SetLoanID(const Value: Integer);
    procedure SetEntityID(const Value: Integer);
    procedure SetOnlyRead(const Value: Boolean);
    procedure LoadCalculator;
    procedure Calculate;
    procedure EditPartyItem(CategoryID: Integer; Category, CategoryType: String; ApplicantAmount, SpouseAmount: Currency; ActionID: Integer);
    procedure EditPartySubItem(CategoryID: Integer; Category, CategoryType: String; AllowDuplicate: Boolean);
    procedure Edit(Sender: TObject);
  public
    { Public declarations }
    grdActive: TDBGrid;
    property LoanID: Integer read FLoanID write SetLoanID;
    property EntityID: Integer read FEntityID write SetEntityID;
    property OnlyRead: Boolean read FOnlyRead write SetOnlyRead;
  end;

var
  frmAffordability: TfrmAffordability;

implementation

uses
  dmMain, dmAffordability, dmSecurity, fmAffordItemParty, fmAffordSubItemParty, fmAffordDebtObligation, DBCtrls, fmDebtObligations;

{$R *.dfm}

procedure TfrmAffordability.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
  LoadCalculator;
  Calculate;
end;

procedure TfrmAffordability.SetEntityID(const Value: Integer);
begin
  FEntityID := Value;
end;

procedure TfrmAffordability.SetOnlyRead(const Value: Boolean);
begin
  FOnlyRead := Value;

  if (OnlyRead = True) then
    begin
      btnIncomeNew.Enabled       := False;
      btnIncomeEdit.Enabled      := False;
      btnExpenseNew.Enabled      := False;
      btnExpenseEdit.Enabled     := False;
      btnDebtObligation.Enabled  := False;

      grdIncome.Color            := clBtnFace;
      grdIncome.ReadOnly         := True;
      grdExpense.Color           := clBtnFace;
      grdExpense.ReadOnly        := True;
      grdDebtObligation.Color    := clBtnFace;
      grdDebtObligation.ReadOnly := True;
    end
  else if (OnlyRead = False) then
    begin
      btnIncomeNew.Enabled      := True;
      btnIncomeNew.Visible      := True;
      btnExpenseNew.Enabled     := True;
      btnExpenseNew.Visible     := True;
      btnDebtObligation.Enabled := True;
    end;
end;

procedure TfrmAffordability.FormCreate(Sender: TObject);
begin
  dtmAffordability := TdtmAffordability.Create(Self);
  CalcList := TList.Create;
  btnPrint.Visible := dtmSecurity.AllowAccess(262);
end;

procedure TfrmAffordability.FormDestroy(Sender: TObject);
begin
  FreeAndNil(CalcList);
end;

procedure TfrmAffordability.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if btnSave.Enabled then
  case MessageDlg('Do you want to save changes?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
    mrYes:
      begin
        btnSave.Click;
        CanClose := True;
      end;
    mrNo: CanClose := True;
    mrCancel: CanClose := False;
  end;
end;

procedure TfrmAffordability.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmAffordability.dsDebt.Close;
end;

procedure TfrmAffordability.btnPrintClick(Sender: TObject);
begin
  dmMain.ShowSqlReport('AffordabilitySummaryBoodle', '&AccountID=' + IntToStr(LoanId));
end;

//procedure TfrmAffordability.btnPrintClick(Sender: TObject);
//var
//  Parameters: String;
//begin
//  Parameters :=
//    'CONNECTION="' + SmartDoxConnStr + '" ' +
////  Parameters :=
////    'CONNECTION="' + dtmMain.ConnectionString + '" ' +
//    'UID=' + IntToStr(dtmMain.UserKey) + ' ' +
//    'AID=' + IntToStr(LoanID) + ' ' +
//    'APPID=100 ' +
//    'EID=' + IntToStr(EntityID) + ' ' +
//    'DIALOG=0 ATTACH=0 ATTID=0 AONLY=0  ' +
//    'DID=4 TID=1 ' +
//    'P1=' + IntToStr(LoanID);
//
//  ShellExecute(Application.Handle,'Open', 'SmartDox.exe', PChar(Parameters), '', SW_SHOWNORMAL);
//end;

procedure TfrmAffordability.btnSaveClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    Calculate;
    btnSave.Enabled := False;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmAffordability.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAffordability.LoadCalculator;
begin
  with dtmAffordability do
  begin
    dsIncome.Close;
    dsIncome.Parameters.ParamByName('LoanID').Value := LoanID;
    dsIncome.Open;
    dsExpense.Close;
    dsExpense.Parameters.ParamByName('LoanID').Value := LoanID;
    dsExpense.Open;
    dsDebtObligation.Close;
    dsDebtObligation.Parameters.ParamByName('LoanID').Value := LoanID;
    dsDebtObligation.Open;
    btnSave.Enabled := False;
  end;
end;


procedure TfrmAffordability.Calculate;
var
  MinAmount: Currency;

  { ---------------------------------------------------------------------- }

  function RunCommand(Command: TADOCommand; RunFlags: Boolean): String;
  begin
    Command.Parameters[0].Value := LoanID;
    Command.Execute;
    Result := FormatFloat('###,##0.00', Command.Parameters[1].Value);
    if RunFlags then
    if Command.Parameters[1].Value < MinAmount then
    begin
      MinAmount := Command.Parameters[1].Value;
      if Command = dtmAffordability.cmdGross then
      begin
        imgGross.Show;
        imgDebtRatio.Hide;
        imgInstalPercent.Hide;
      end
      else if Command = dtmAffordability.cmdDebtRatio then
      begin
        imgGross.Hide;
        imgDebtRatio.Show;
        imgInstalPercent.Hide;
      end
      else if Command = dtmAffordability.cmdInstalPercent then
      begin
        imgGross.Hide;
        imgDebtRatio.Hide;
        imgInstalPercent.Show;
      end;
    end;
  end;

  { ---------------------------------------------------------------------- }

begin
  MinAmount := 99999999;
  with dtmAffordability do
  begin

    dsLoanCalc.Parameters[0].Value := LoanID;
    dsLoanCalc.Open;
    if dsLoanCalc.FieldByName('LoanID').IsNull then
    begin
      edtGross.Text := RunCommand(cmdGross, True);
      edtDebtRatio.Text := RunCommand(cmdDebtRatio, True);
      edtInstalPercent.Text := RunCommand(cmdInstalPercent, True);
    end
    else
    begin
      edtGross.Text := FormatFloat('###,##0.00', dsLoanCalc.FieldByName('GrossSurplus').AsCurrency);
      imgGross.Visible := dsLoanCalc.FieldByName('GrossFlagShow').AsInteger = 1;
      edtDebtRatio.Text := FormatFloat('###,##0.00', dsLoanCalc.FieldByName('DebtRatio').AsCurrency);
      imgDebtRatio.Visible := dsLoanCalc.FieldByName('DebtFlagShow').AsInteger = 1;
      edtInstalPercent.Text := FormatFloat('###,##0.00', dsLoanCalc.FieldByName('InstalPercent').AsCurrency);
      imgInstalPercent.Visible := dsLoanCalc.FieldByName('InstalFlagShow').AsInteger = 1;
    end;
    dsLoanCalc.Close;

    edtIncome.Text := RunCommand(cmdIncome, False);
    edtExpense.Text := RunCommand(cmdExpenses, False);
    edtDebtObligation.Text :=  RunCommand(cmdTotalDebt, True);

    dsAfLoan.Parameters[0].Value := LoanID;
    dsAfLoan.Open;
    edtIncomeApplicant.Text := FormatFloat('###,##0.00', dsAfLoan.FieldByName('ApplicantIncome').AsCurrency);
    edtIncomeSpouse.Text := FormatFloat('###,##0.00', dsAfLoan.FieldByName('SpouseIncome').AsCurrency);
    edtExpenseApplicant.Text := FormatFloat('###,##0.00', dsAfLoan.FieldByName('ApplicantExpenses').AsCurrency);
    edtExpenseSpouse.Text := FormatFloat('###,##0.00', dsAfLoan.FieldByName('SpouseExpenses').AsCurrency);
    dsAfLoan.Close;
    dsAfLoan.Close;

    cmdSetUpdate.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
    cmdSetUpdate.Parameters.ParamByName('LoanID').Value := LoanID;
    cmdSetUpdate.Execute;

    //when spouse income is zero grey out spouse details
    if (edtIncomeSpouse.Text = '0.00') then
      begin
        edtIncomeSpouse.Color := clBtnFace;
        edtExpenseSpouse.Color := clBtnFace;
      end
    else
      begin
        edtIncomeSpouse.Color := clWindow;
        edtExpenseSpouse.Color := clWindow;
      end;
  end;
end;

procedure TfrmAffordability.grdDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  ColumnField: String;
begin
  if ((Sender = grdIncome) or (Sender = grdExpense) or (Sender = grdDebtObligation)) then
  begin
    ColumnField := Column.Field.FieldName;
    if ((ColumnField <> 'Category') and (ColumnField <> 'ApplicantAmount') and (ColumnField <> 'SpouseAmount')) then
      Column.Color := clBtnFace;

    //Highlight the focused row
    if ((gdFocused in State) or (gdSelected in State) ) then
    begin
      //show and hide buttons
      if (OnlyRead = False) then
      begin
        if ((Sender = grdIncome) and (dtmAffordability.dsIncome.RecordCount <> 0)) then
          begin
            btnIncomeEdit.Enabled := True;
            btnIncomeEdit.Visible := True;
          end
        else if ((Sender = grdExpense) and (dtmAffordability.dsExpense.RecordCount <> 0))  then
          begin
            btnExpenseEdit.Enabled := True;
            btnExpenseEdit.Visible := True;
          end;
      end;
    end;
  end;
end;

procedure TfrmAffordability.grdMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  pt: TGridCoord;
  ApplicantX, SpouseX: Integer;
begin
  inherited;
  ApplicantX := 0;
  SpouseX := 0;
  
  grdActive := TDBGrid(Sender);
  pt := grdActive.MouseCoord(X, Y);
  if pt.Y > 0 then
    begin
      if grdActive = grdIncome then
        begin
          ApplicantX := 6;
          SpouseX := 7;
        end
      else if grdActive = grdExpense then
        begin
          ApplicantX := 4;
          SpouseX := 5;
        end
      else if grdActive = grdDebtObligation then
        begin
          ApplicantX := 2;
          SpouseX := 3;
        end;

      if ((pt.X = ApplicantX) or (pt.X = SpouseX)) then
        grdActive.Cursor := crHandPoint
      else
        grdActive.Cursor := crDefault;
    end
  else
    grdActive.Cursor := crDefault;
end;

procedure TfrmAffordability.grdIncomeExpenseCellClick(Column: TColumn);
begin
  if ((Column.FieldName = 'ApplicantAmount') or (Column.FieldName = 'SpouseAmount')) then
    Edit(grdActive);
end;

procedure TfrmAffordability.EditPartyItem(CategoryID: Integer; Category, CategoryType: String; ApplicantAmount, SpouseAmount: Currency; ActionID: Integer);
var
  ApplicantSourceID, SpouseSourceID: Integer;
  Description: String;
  AllowDuplicate: Boolean;
begin
  frmAffordItemParty := TfrmAffordItemParty.Create(Self);
  try
    Description := Category;
    frmAffordItemParty.Caption := Category;
    if (Category = '') then
      frmAffordItemParty.Caption := 'New';

    frmAffordItemParty.LoanID       := LoanID;
    frmAffordItemParty.CategoryType := CategoryType;
    frmAffordItemParty.CategoryID   := CategoryID;
    frmAffordItemParty.Category     := Category;
    frmAffordItemParty.Description  := Description;

    if (CategoryType = 'L') then
      frmAffordItemParty.OnlyRead := True
    else
      frmAffordItemParty.OnlyRead := OnlyRead;

    //the cmbCategory value will be set on frmAffordItemParty show event
    frmAffordItemParty.edtApplicantAmount.Text := FloatToStr(ApplicantAmount);
    frmAffordItemParty.edtSpouseAmount.Text := FloatToStr(SpouseAmount);

    if frmAffordItemParty.ShowModal = mrOk then
    begin

      if ((frmAffordItemParty.DefaultApplicantSourceID <> frmAffordItemParty.ApplicantSourceID)
          or
          (frmAffordItemParty.DefaultSpouseSourceID <> frmAffordItemParty.SpouseSourceID)
          or
          (frmAffordItemParty.CategoryID <> CategoryID)
          or
          (frmAffordItemParty.cmbDescription.Text <> Description)
          or
          (frmAffordItemParty.edtApplicantAmount.Text <> FloatToStr(ApplicantAmount))
          or
          (frmAffordItemParty.edtSpouseAmount.Text <> FloatToStr(SpouseAmount))) then
      begin

        ApplicantSourceID := frmAffordItemParty.ApplicantSourceID;
        SpouseSourceID    := frmAffordItemParty.SpouseSourceID;
        CategoryID        := frmAffordItemParty.CategoryID;
        Category          := frmAffordItemParty.cmbCategory.Text;
        Description       := frmAffordItemParty.cmbDescription.Text;
        ApplicantAmount   := StrToCurr(frmAffordItemParty.edtApplicantAmount.Text);
        SpouseAmount      := StrToCurr(frmAffordItemParty.edtSpouseAmount.Text);

        AllowDuplicate := frmAffordItemParty.AllowDuplicate;

        with dtmAffordability do
        begin
          if (frmAffordItemParty.AllowSubItem = False) then
            begin
                SaveItem(LoanID, ApplicantSourceID, CategoryID, 'A', Description, ApplicantAmount, ActionID);
                SaveItem(LoanID, SpouseSourceID, CategoryID, 'S', Description, SpouseAmount, ActionID);
            end
          else
            begin
              if not ((ActionID = 1) and (ApplicantAmount = 0.0)) then
                SaveSubItem(0, 0, LoanID, ApplicantSourceID, CategoryID, Category, 'A', Description, ApplicantAmount, ActionID, AllowDuplicate);
              if not ((ActionID = 1) and (SpouseAmount = 0.0)) then
                SaveSubItem(0, 0, LoanID, SpouseSourceID, CategoryID, Category, 'S', Description, SpouseAmount, ActionID, AllowDuplicate);
            end;

          if (CategoryType = 'I') then
            begin
              RequeryOnRecord(dsIncome, 'CategoryID');
              grdIncome.Refresh;
            end
          else if (CategoryType = 'E') then
            begin
              RequeryOnRecord(dsExpense, 'CategoryID');
              grdExpense.Refresh;
            end
          else if (CategoryType = 'L') then
            begin
              RequeryOnRecord(dsDebtObligation, 'CategoryID');
              grdDebtObligation.Refresh;
            end;
        end;
        btnSave.Enabled := True;
      end;
    end;
  finally
      FreeAndNil(frmAffordItemParty);
   end;
end;

procedure TfrmAffordability.EditPartySubItem(CategoryID: Integer; Category, CategoryType: String; AllowDuplicate: Boolean);
begin
  frmAffordSubItemParty := TfrmAffordSubItemParty.Create(Self);

  try
    frmAffordSubItemParty.AssignCaption  := Category;
    frmAffordSubItemParty.LoanID         := LoanID;
    frmAffordSubItemParty.CategoryID     := CategoryID;
    frmAffordSubItemParty.Category       := Category;
    frmAffordSubItemParty.CategoryType   := CategoryType;
    frmAffordSubItemParty.AllowDuplicate := AllowDuplicate;

    if (CategoryType = 'L') then
      frmAffordSubItemParty.OnlyRead := True
    else
      frmAffordSubItemParty.OnlyRead := OnlyRead;

    frmAffordSubItemParty.ShowModal;
  finally
    if not OnlyRead then
    begin
      if frmAffordSubItemParty.Reload then
      begin
        if (CategoryType = 'I') then
          begin
            RequeryOnRecord(dtmAffordability.dsIncome, 'CategoryID');
            grdIncome.Refresh;
          end
        else if (CategoryType = 'E') then
          begin
            RequeryOnRecord(dtmAffordability.dsExpense, 'CategoryID');
            grdExpense.Refresh;
          end
        else if (CategoryType = 'L') then
        begin
          RequeryOnRecord(dtmAffordability.dsDebtObligation, 'CategoryID');
          grdDebtObligation.Refresh;
        end;
        btnSave.Enabled := True;
      end;
    end;
    frmAffordSubItemParty.Release;
  end;
end;

procedure TfrmAffordability.btnNewEditClick(Sender: TObject);
begin
  Edit(Sender);
end;

procedure TfrmAffordability.Edit(Sender: TObject);
var
  CategoryID: Integer;
  Category: String;
  CategoryType: String;
  AllowSubItem: Boolean;
  AllowDuplicate: Boolean;
  ApplicantAmount, SpouseAmount: Currency;
  ActionID: Integer;
begin
  ActionId        := 0;
  CategoryID      := 0;
  Category        := '';
  AllowSubItem    := False;
  AllowDuplicate  := False;
  ApplicantAmount := 0.00;
  SpouseAmount    := 0.00;

  with dtmAffordability do
  begin

    if ((Sender = btnIncomeNew) or (Sender = btnIncomeEdit)
        or
        ((Sender = grdIncome) and (dsIncome.RecordCount <> 0))
        or
        (Sender = btnExpenseNew) or(Sender = btnExpenseEdit)
        or
        ((Sender = grdExpense) and (dsExpense.RecordCount <> 0))
        or
        ((Sender = grdDebtObligation) and (dsDebtObligation.RecordCount <> 0))) then
    begin


      if ((Sender = btnIncomeNew) or (Sender = btnIncomeEdit) or (Sender = grdIncome)) then
        grdIncome.SetFocus
      else if ((Sender = btnExpenseNew) or (Sender = btnExpenseEdit) or (Sender = grdExpense)) then
        grdExpense.SetFocus
      else if (Sender = grdDebtObligation) then
        grdDebtObligation.SetFocus;

      if ((Sender = btnIncomeNew) or (Sender = btnIncomeEdit) or (Sender = grdIncome)) then
        CategoryType := 'I'
      else if ((Sender = btnExpenseNew) or (Sender = btnExpenseEdit) or (Sender = grdExpense)) then
        CategoryType := 'E'
      else if (Sender = grdDebtObligation) then
        CategoryType := 'L';

      if ((Sender = btnIncomeNew) or (Sender = btnExpenseNew)) then
        ActionID := 1 //Added
      else if ((Sender = btnIncomeEdit)  or
               (Sender = btnExpenseEdit) or
               (Sender = grdIncome)      or
               (Sender = grdExpense)     or
               (Sender = grdDebtObligation)) then
        ActionID := 2; //Edited

      if ((
           (Sender = btnIncomeEdit)      or
           (Sender = grdIncome)
          )                             and
           (dsIncome.RecordCount <> 0)
         )                              then
        begin
          CategoryID      := dsIncome.FieldByName('CategoryID').AsInteger;
          Category        := dsIncome.FieldByName('Category').AsString;
          AllowSubItem    := dsIncome.FieldByName('AllowSubItem').AsBoolean;
          AllowDuplicate  := dsIncome.FieldByName('AllowDuplicate').AsBoolean;
          ApplicantAmount := dsIncome.FieldByName('ApplicantAmount').AsCurrency;
          SpouseAmount    := dsIncome.FieldByName('SpouseAmount').AsCurrency;
        end
      else if (((Sender = btnExpenseEdit) or
                (Sender = grdExpense))   and
                (dsExpense.RecordCount <> 0)) then
        begin
          CategoryID := dsExpense.FieldByName('CategoryID').AsInteger;
          Category := dsExpense.FieldByName('Category').AsString;
          AllowSubItem := dsExpense.FieldByName('AllowSubItem').AsBoolean;
          AllowDuplicate := dsExpense.FieldByName('AllowDuplicate').AsBoolean;
          ApplicantAmount := dsExpense.FieldByName('ApplicantAmount').AsCurrency;
          SpouseAmount := dsExpense.FieldByName('SpouseAmount').AsCurrency;
        end
      else if (((Sender = grdDebtObligation)) and (dsDebtObligation.RecordCount <> 0)) then
        begin
          CategoryID := dsDebtObligation.FieldByName('CategoryID').AsInteger;
          Category := dsDebtObligation.FieldByName('Category').AsString;
          AllowSubItem := dsDebtObligation.FieldByName('AllowSubItem').AsBoolean;
          AllowDuplicate := dsDebtObligation.FieldByName('AllowDuplicate').AsBoolean;
          ApplicantAmount := dsDebtObligation.FieldByName('ApplicantAmount').AsCurrency;
          SpouseAmount := dsDebtObligation.FieldByName('SpouseAmount').AsCurrency;
        end;

      if AllowSubItem then
        EditPartySubItem(CategoryID, Category, CategoryType, AllowDuplicate)
      else
        EditPartyItem(CategoryID, Category, CategoryType, ApplicantAmount, SpouseAmount, ActionID);
    end;
  end;
end;


procedure TfrmAffordability.grdDebtObligationCellClick(Column: TColumn);
var
  CategoryID: Integer;
  Category: String;
begin
  if ((Column.FieldName = 'ApplicantAmount') or (Column.FieldName = 'SpouseAmount')) then
  begin
    with dtmAffordability do
    begin
      CategoryID := dsDebtObligation.FieldByName('CategoryID').AsInteger;
      Category := dsDebtObligation.FieldByName('Category').AsString;
    end;
    frmAffordDebtObligation := TfrmAffordDebtObligation.Create(Self);
    try
      frmAffordDebtObligation.AssignCaption := Category;
      frmAffordDebtObligation.LoanID        := LoanID;
      frmAffordDebtObligation.CategoryID    := CategoryID;
      frmAffordDebtObligation.OnlyRead      := OnlyRead;
      frmAffordDebtObligation.ShowModal;
    finally
      FreeAndNil(frmAffordDebtObligation);
    end;
  end;
end;

procedure TfrmAffordability.btnDebtObligationClick(Sender: TObject);
var
  frmDebt: TfrmDebtObligations;
begin
  frmDebt := TfrmDebtObligations.Create(nil);
  try
    frmDebt.isAmd := true;
    frmDebt.ShowModal;
  finally
    if frmDebt.Reload then
    begin
      btnSave.Enabled := True;
    end;
    FreeAndNil(frmDebt);
  end;
end;

end.
