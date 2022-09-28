unit dmAffordability;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs, DBGrids;

type
  TdtmAffordability = class(TDataModule)
    dsCategories: TADODataSet;
    dtsCategories: TDataSource;
    cmdInsertItem: TADOCommand;
    cmdUpdateItem: TADOCommand;
    cmdDeleteItem: TADOCommand;
    cmdGross: TADOCommand;
    cmdDebtRatio: TADOCommand;
    cmdInstalPercent: TADOCommand;
    cmdIncome: TADOCommand;
    cmdExpenses: TADOCommand;
    cmdLiabilities: TADOCommand;
    cmdTotalDebt: TADOCommand;
    dsSubItems: TADODataSet;
    dtsSubItems: TDataSource;
    cmdNetIncome: TADOCommand;
    dsDebt: TADODataSet;
    dtsDebt: TDataSource;
    dsLoanCalc: TADODataSet;
    cmdSetUpdate: TADOCommand;
    dsDebtObligation: TADODataSet;
    dtsDebtObligation: TDataSource;
    dsExpense: TADODataSet;
    dtsExpense: TDataSource;
    cmdSaveSubItem: TADOCommand;
    cmdAggregateAmount: TADOCommand;
    dsIncome: TADODataSet;
    dtsIncome: TDataSource;
    dsSubItemSpouse: TADODataSet;
    dtsSubItemSpouse: TDataSource;
    dsSubItemApplicant: TADODataSet;
    dtsSubItemApplicant: TDataSource;
    dsAfLoan: TADODataSet;
    dsTypeCategory: TADODataSet;
    dsExcludeCategory: TADODataSet;
    cmdDeleteSubItem: TADOCommand;
    dsTypeCategoryCategoryID: TIntegerField;
    dsTypeCategoryDescription: TStringField;
    dsTypeCategoryAllowSubItem: TBooleanField;
    dsTypeCategoryAllowDuplicate: TBooleanField;
    dsExcludeCategoryCategoryID: TIntegerField;
    dsIncomeLoanID: TAutoIncField;
    dsIncomeCategoryID: TIntegerField;
    dsIncomeCategory: TStringField;
    dsIncomeAllowSubItem: TBooleanField;
    dsIncomeApplicantAmount: TBCDField;
    dsIncomeApplicantCurrent: TBCDField;
    dsIncomeApplicantPrevious: TBCDField;
    dsIncomeSpouseAmount: TBCDField;
    dsIncomeSpouseCurrent: TBCDField;
    dsIncomeSpousePrevious: TBCDField;
    dsDebtObligationLoanID: TAutoIncField;
    dsDebtObligationCategoryID: TIntegerField;
    dsDebtObligationCategory: TStringField;
    dsDebtObligationAllowSubItem: TBooleanField;
    dsDebtObligationApplicantAmount: TBCDField;
    dsDebtObligationSpouseAmount: TBCDField;
    dsSource: TADODataSet;
    dsCategorySourceAction: TADODataSet;
    cmdSaveItem: TADOCommand;
    dsSourceSourceID: TIntegerField;
    dsSourceDescription: TStringField;
    dsSubItemApplicantSubItemID: TAutoIncField;
    dsSubItemApplicantItemID: TAutoIncField;
    dsSubItemApplicantSourceID: TIntegerField;
    dsSubItemApplicantSource: TStringField;
    dsSubItemApplicantCategoryDescription: TStringField;
    dsSubItemApplicantCategory: TStringField;
    dsSubItemApplicantDescription: TStringField;
    dsSubItemApplicantAmount: TBCDField;
    dsSubItemApplicantApplicationAmount: TBCDField;
    dsSubItemApplicantAction: TStringField;
    dsSubItemApplicantActionUser: TStringField;
    dsSubItemApplicantActionUserDepartment: TStringField;
    dsSubItemApplicantActionDate: TDateTimeField;
    dsSubItemSpouseSubItemID: TAutoIncField;
    dsSubItemSpouseItemID: TAutoIncField;
    dsSubItemSpouseSourceID: TIntegerField;
    dsSubItemSpouseSource: TStringField;
    dsSubItemSpouseCategoryDescription: TStringField;
    dsSubItemSpouseCategory: TStringField;
    dsSubItemSpouseDescription: TStringField;
    dsSubItemSpouseAmount: TBCDField;
    dsSubItemSpouseApplicationAmount: TBCDField;
    dsSubItemSpouseAction: TStringField;
    dsSubItemSpouseActionUser: TStringField;
    dsSubItemSpouseActionUserDepartment: TStringField;
    dsSubItemSpouseActionDate: TDateTimeField;
    dsCategorySourceActionApplicantSourceID: TIntegerField;
    dsCategorySourceActionApplicantSource: TStringField;
    dsCategorySourceActionApplicantAction: TStringField;
    dsCategorySourceActionApplicantActionUser: TStringField;
    dsCategorySourceActionApplicantActionDate: TDateTimeField;
    dsCategorySourceActionSpouseSourceID: TIntegerField;
    dsCategorySourceActionSpouseSource: TStringField;
    dsCategorySourceActionSpouseAction: TStringField;
    dsCategorySourceActionSpouseActionUser: TStringField;
    dsCategorySourceActionSpouseActionDate: TDateTimeField;
    dsCategorySourceActionApplicantActionUserDepartment: TStringField;
    dsCategorySourceActionSpouseActionUserDepartment: TStringField;
    dsCategoriesCategoryID: TIntegerField;
    dsCategoriesCategory: TStringField;
    dsCategoriesSubcategoryID: TIntegerField;
    dsCategoriesSubcategory: TStringField;
    dsCategoriesType: TStringField;
    dsCategoriesTotal: TBCDField;
    dsCategoriesItemID: TIntegerField;
    dsSubItemsSubItemID: TAutoIncField;
    dsSubItemsDescription: TStringField;
    dsSubItemsAmount: TBCDField;
    dsSubItemsItemID: TAutoIncField;
    dsSubItemsLoanID: TIntegerField;
    dsSubItemsCategoryID: TIntegerField;
    dsSubItemsPartyType: TStringField;
    dsSubItemsActionID: TIntegerField;
    dsSubItemsActionUserID: TIntegerField;
    dsSubItemsActionDate: TDateTimeField;
    dsExpenseLoanID: TAutoIncField;
    dsExpenseCategoryID: TIntegerField;
    dsExpenseCategory: TStringField;
    dsExpenseAllowSubItem: TBooleanField;
    dsExpenseApplicantAmount: TBCDField;
    dsExpenseApplicantApplicationAmount: TBCDField;
    dsExpenseSpouseAmount: TBCDField;
    dsExpenseSpouseApplicationAmount: TBCDField;
    dsExpenseAllowDuplicate: TBooleanField;
    dsIncomeAllowDuplicate: TBooleanField;
    dsDebtObligationAllowDuplicate: TBooleanField;
    procedure dsSubItemsNewRecord(DataSet: TDataSet);
    procedure dsDebtAfterOpen(DataSet: TDataSet);
    procedure dsDebtNewRecord(DataSet: TDataSet);
    procedure dsDebtBeforeEdit(DataSet: TDataSet);
    procedure dsDebtBeforeClose(DataSet: TDataSet);

    function GetAggregateAmount(LoanID, CategoryID: Integer; Category, PartyType: String): Currency;

    procedure SaveItem(LoanID, SourceID, CategoryID: Integer; PartyType, Category: String;
      Amount: Currency; ActionID: Integer);
    procedure SaveSubItem(SubItemID, ItemID, LoanID, SourceID, CategoryID: Integer; Category, PartyType: String;
      Description: String; Amount: Currency; ActionID: Integer; AllowDuplicate: Boolean);

    procedure DeleteItem(CategoryID: Integer);
    procedure DeleteSubItem(SubItemID: Integer);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmAffordability: TdtmAffordability;

implementation

uses dmMain;

{$R *.dfm}

procedure TdtmAffordability.dsSubItemsNewRecord(DataSet: TDataSet);
var
  Null: Variant;
begin

  if (dsSubItems.Parameters.ParamByName('ItemID').Value = Null) then
  begin

      dtmAffordability.cmdInsertItem.Parameters.ParamByName('LoanID').Value := dsSubItems.Parameters.ParamByName('LoanID').Value;
      dtmAffordability.cmdInsertItem.Parameters.ParamByName('CategoryID').Value := dsSubItems.Parameters.ParamByName('CategoryID').Value;
      dtmAffordability.cmdInsertItem.Parameters.ParamByName('Description').Value := dsSubItems.Parameters.ParamByName('Category').Value;
      dtmAffordability.cmdInsertItem.Parameters.ParamByName('PartyType').Value := 'A';
      dtmAffordability.cmdInsertItem.Parameters.ParamByName('Amount').Value := '0.00';
      dtmAffordability.cmdInsertItem.Parameters.ParamByName('ActionUserID').Value := dtmMain.UserKey;
      dtmAffordability.cmdInsertItem.Execute;

      dsSubItems.FieldByName('ItemID').Value := dtmAffordability.cmdInsertItem.Parameters.ParamByName('ItemID').Value;
  end
  else
  begin
    dsSubItems.FieldByName('ItemID').AsInteger := dsSubItems.Parameters.ParamByName('ItemID').Value;
  end;

  dsSubItems.FieldByName('ActionID').AsInteger := 1;// *** 1: Added
  dsSubItems.FieldByName('ActionUserID').AsInteger := dtmMain.UserKey;
  dsSubItems.FieldByName('ActionDate').AsDateTime := Now;

end;

procedure TdtmAffordability.dsDebtAfterOpen(DataSet: TDataSet);
begin
  TBCDField(dsDebt.FieldByName('Instalment')).currency := True;
  TBCDField(dsDebt.FieldByName('SettleAmount')).currency := True;
end;

procedure TdtmAffordability.dsDebtNewRecord(DataSet: TDataSet);
begin
  dsDebt.FieldByName('Source').AsString := 'Application Form';
  dsDebt.FieldByName('CreateUser').AsString := dtmMain.CurrentID;
  dsDebt.FieldByName('LoanID').AsInteger := dsDebt.Parameters[0].Value;
end;

procedure TdtmAffordability.dsDebtBeforeEdit(DataSet: TDataSet);
begin
  if dsDebt.FieldByName('Source').AsString <> 'Application Form' then
    Abort;
end;

procedure TdtmAffordability.dsDebtBeforeClose(DataSet: TDataSet);
begin
  if dsDebt.State in [dsEdit,dsInsert] then
    dsDebt.Post;
end;



function TdtmAffordability.GetAggregateAmount(LoanID, CategoryID: Integer; Category, PartyType: String): Currency;
var
  Amount: Currency;
begin

  cmdAggregateAmount.Parameters.ParamByName('LoanID').Value := LoanID;
  cmdAggregateAmount.Parameters.ParamByName('CategoryID').Value := CategoryID;
  cmdAggregateAmount.Parameters.ParamByName('Category').Value := Category;
  cmdAggregateAmount.Parameters.ParamByName('PartyType').Value := PartyType;
  cmdAggregateAmount.Execute;

  Amount := cmdAggregateAmount.Parameters.ParamByName('AggregateAmount').Value;

  Result := Amount;

end;


procedure TdtmAffordability.SaveItem(LoanID, SourceID, CategoryID: Integer; PartyType, Category: String;
  Amount: Currency; ActionID: Integer);
begin

  cmdSaveItem.Parameters.ParamByName('LoanID').Value := LoanID;
  cmdSaveItem.Parameters.ParamByName('SourceID').Value := SourceID;
  cmdSaveItem.Parameters.ParamByName('CategoryID').Value := CategoryID;
  cmdSaveItem.Parameters.ParamByName('PartyType').Value := PartyType;
  cmdSaveItem.Parameters.ParamByName('Category').Value := Category;
  cmdSaveItem.Parameters.ParamByName('Amount').Value := Amount;
  cmdSaveItem.Parameters.ParamByName('ActionID').Value := ActionID;
  cmdSaveItem.Parameters.ParamByName('ActionUserID').Value := dtmMain.UserKey;
  cmdSaveItem.Execute;

end;

procedure TdtmAffordability.SaveSubItem(SubItemID, ItemID, LoanID, SourceID, CategoryID: Integer; Category, PartyType: String;
  Description: String; Amount: Currency; ActionID: Integer; AllowDuplicate: Boolean);
begin
                                                               
  cmdSaveSubItem.Parameters.ParamByName('SubItemID').value := SubItemID;
  cmdSaveSubItem.Parameters.ParamByName('ItemID').value := ItemID;
  cmdSaveSubItem.Parameters.ParamByName('LoanID').value := LoanID;
  cmdSaveSubItem.Parameters.ParamByName('SourceID').value := SourceID;
  cmdSaveSubItem.Parameters.ParamByName('CategoryID').value := CategoryID;
  cmdSaveSubItem.Parameters.ParamByName('Category').value := Category;
  cmdSaveSubItem.Parameters.ParamByName('PartyType').value := PartyType;
  cmdSaveSubItem.Parameters.ParamByName('Description').Value := Description;
  cmdSaveSubItem.Parameters.ParamByName('Amount').Value := Amount;
  cmdSaveSubItem.Parameters.ParamByName('ActionID').Value := ActionID;
  cmdSaveSubItem.Parameters.ParamByName('ActionUserID').Value := dtmMain.UserKey;
  cmdSaveSubItem.Parameters.ParamByName('AllowDuplicate').Value := AllowDuplicate;
  cmdSaveSubItem.Execute;

end;


procedure TdtmAffordability.DeleteItem(CategoryID: Integer);
begin

  cmdDeleteItem.Parameters.ParamByName('CategoryID').Value := CategoryID;
  cmdDeleteItem.Execute;

end;

procedure TdtmAffordability.DeleteSubItem(SubItemID: Integer);
begin

  cmdDeleteSubItem.Parameters.ParamByName('SubItemID').Value := SubItemID;
  cmdDeleteSubItem.Execute;

end;



end.
