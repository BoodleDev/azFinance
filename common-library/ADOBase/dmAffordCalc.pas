unit dmAffordCalc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TdtmAffordCalc = class(TDataModule)
    qryCalcIncome: TADODataSet;
    qryEntDetail: TADODataSet;
    dtsCalcIncome: TDataSource;
    dtsEntDetail: TDataSource;
    qryCalcExpense: TADODataSet;
    dtsCalcExpense: TDataSource;
    qryIncomeLU: TADODataSet;
    qryExpenseLU: TADODataSet;
    dtsIncomeLU: TDataSource;
    dtsExpenseLU: TDataSource;
    qryIncomeSum: TADODataSet;
    qryExpenseSum: TADODataSet;
    dtsIncomeSum: TDataSource;
    dtsExpenseSum: TDataSource;
    qryCalcIncomeEntID: TIntegerField;
    qryCalcIncomeCalcType: TIntegerField;
    qryCalcIncomeAmount: TBCDField;
    qryCalcIncomeLUCalcType: TStringField;
    qryCalcExpenseEntID: TIntegerField;
    qryCalcExpenseCalcType: TIntegerField;
    qryCalcExpenseAmount: TBCDField;
    qryCalcExpenseLUCalcType: TStringField;
    qryIncomeLUIDVal: TIntegerField;
    qryIncomeLUDescription: TStringField;
    qryExpenseLUIDVal: TIntegerField;
    qryExpenseLUDescription: TStringField;
    qryIncomeSumTotInc: TBCDField;
    qryExpenseSumTotExp: TBCDField;
    qryEntDetailEntityID: TIntegerField;
    qryEntDetailNetSal: TBCDField;
    qryEntDetailMinHomeAmt: TBCDField;
    qryEntDetailMthGross: TBCDField;
    qryIncomeLUDesc: TADODataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dtsIncomeLUDesc: TDataSource;
    qryExpenseLUDesc: TADODataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dtsExpenseLUDesc: TDataSource;
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryCalcIncomeAfterPost(DataSet: TDataSet);
    procedure qryCalcExpenseAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryEntDetailBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FTotInc: Currency;
    FTotExp: Currency;
    FTotalAmt: Currency;
    FEntityID: Integer;
    procedure SetEntityID(const Value: Integer);
  public
    { Public declarations }
    property EntityID: Integer read FEntityID write SetEntityID;
    property TotInc : Currency read FTotInc;
    property TotExp : Currency read FTotExp;
    property TotalAmt : Currency read FTotalAmt write FTotalAmt;
    procedure SetActiveQueries(Ready: Boolean);
    procedure SetCurTotals;
  end;

var
  dtmAffordCalc : TdtmAffordCalc;

implementation

uses dmMain, uBase32, Unit32;

{$R *.DFM}

{ TdtmAffCalc }

procedure TdtmAffordCalc.SetActiveQueries(Ready: Boolean);
begin
  //qryEntDetail.Active   := Ready;
  qryCalcIncome.Active  := Ready;
  qryCalcExpense.Active := Ready;
  qryIncomeLU.Active    := Ready;
  qryExpenseLU.Active   := Ready;
  qryIncomeSum.Active   := Ready;
  qryExpenseSum.Active  := Ready;
end;

procedure TdtmAffordCalc.DataModuleDestroy(Sender: TObject);
begin
  SetActiveQueries(False);
end;

procedure TdtmAffordCalc.qryCalcIncomeAfterPost(DataSet: TDataSet);
begin
  qryIncomeSum.Requery;
 // RequeryOnRecord(qryIncomeSum,'TotInc');
end;

procedure TdtmAffordCalc.qryCalcExpenseAfterPost(DataSet: TDataSet);
begin
  qryExpenseSum.Requery;
//  RequeryOnRecord(qryExpenseSum,'TotExp');
end;

procedure TdtmAffordCalc.SetCurTotals;
begin
  qryIncomeSum.Requery;
  qryExpenseSum.Requery;
  // Set total income
  FTotInc := qryEntDetail.FieldByName('MthGross').AsCurrency
    + qryIncomeSum.FieldByName('TotInc').AsCurrency;
  // Set total expenses
  FTotExp := qryExpenseSum.FieldByName('TotExp').AsCurrency;
  // Set total
  FTotalAmt := FTotInc - FTotExp - qryEntDetail.FieldByName('MinHomeAmt').AsCurrency;

  {qryEntDetail.Edit;
  qryEntDetail.FieldByName('NetSal').AsCurrency := TotInc - TotExp;
  qryEntDetail.Post;}
end;

procedure TdtmAffordCalc.DataModuleCreate(Sender: TObject);
begin
  SetActiveQueries(True);
end;

procedure TdtmAffordCalc.SetEntityID(const Value: Integer);
begin
  FEntityID := Value;
  qryEntDetail.Close;
  qryEntDetail.Parameters.ParamByName('EntityID').Value := Value;
  qryEntDetail.Open;
end;


procedure TdtmAffordCalc.qryEntDetailBeforePost(DataSet: TDataSet);
begin
  if qryEntDetail.FieldByName('EntityID').IsNull then
    qryEntDetail.FieldByName('EntityID').AsInteger := EntityID;
end;

end.
