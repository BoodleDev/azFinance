unit dmAffordability;

interface

uses
  SysUtils, Classes, DB, ADODB;

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
    procedure dsSubItemsNewRecord(DataSet: TDataSet);
    procedure dsDebtAfterOpen(DataSet: TDataSet);
    procedure dsDebtNewRecord(DataSet: TDataSet);
    procedure dsDebtBeforeEdit(DataSet: TDataSet);
    procedure dsDebtBeforeClose(DataSet: TDataSet);
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
begin
  dsSubItems.FieldByName('LoanID').AsInteger := dsSubItems.Parameters.ParamByName('LoanID').Value;
  dsSubItems.FieldByName('CategoryID').AsInteger := dsSubItems.Parameters.ParamByName('CategoryID').Value;
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

end.
