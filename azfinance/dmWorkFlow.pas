unit dmWorkFlow;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs;

type
  TdtmWorkFlow = class(TDataModule)
    dsProcessLoans: TADODataSet;
    dtsProcessLoans: TDataSource;
    cmdAssignProcess: TADOCommand;
    dsProcessHistory: TADODataSet;
    dtsProcessHistory: TDataSource;
    dsWaitingAction: TADODataSet;
    dtsWaitingAction: TDataSource;
    dsActions: TADODataSet;
    dtsActions: TDataSource;
    dsMarkComplete: TADODataSet;
    cmdCompleteWork: TADOCommand;
    dsImport: TADODataSet;
    dsImportLoanID: TAutoIncField;
    dsImportRefNo: TStringField;
    dsImportLoanStatus: TStringField;
    dsImportCurrentProcess: TStringField;
    dsDocReceiving: TADODataSet;
    dtsDocReceiving: TDataSource;
    dsPages: TADODataSet;
    dtsPages: TDataSource;
    dsActivitySummary: TADODataSet;
    dtsActivitySummary: TDataSource;
    dsUsers: TADODataSet;
    dtsUsers: TDataSource;
    dsUserProcess: TADODataSet;
    dtsUserProcess: TDataSource;
    dsProcessUsers: TADODataSet;
    dtsProcessUsers: TDataSource;
    cmdUpdateLastWorked: TADOCommand;
    dsRedirectProcess: TADODataSet;
    dtsRedirectProcess: TDataSource;
    cmdMoveProcess: TADOCommand;
    dsRequests: TADODataSet;
    dtsRequests: TDataSource;
    cmdAddRequest: TADOCommand;
    dsRequestTypes: TADODataSet;
    dtsRequestTypes: TDataSource;
    dsAccountDetails: TADODataSet;
    procedure dsWaitingActionAfterScroll(DataSet: TDataSet);
    procedure dsProcessLoansAfterOpen(DataSet: TDataSet);
    procedure dsRequestsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignProcess(LoanID, ProcessID: Integer);
  end;

var
  dtmWorkFlow: TdtmWorkFlow;

implementation

uses dmMain;

{$R *.dfm}

procedure TdtmWorkFlow.dsProcessLoansAfterOpen(DataSet: TDataSet);
begin
  TDateTimeField(DataSet.FieldByName('StartDate')).DisplayFormat := ShortDateTimeFormat;
  TDateTimeField(DataSet.FieldByName('EndDate')).DisplayFormat := ShortDateTimeFormat;
end;

procedure TdtmWorkFlow.dsWaitingActionAfterScroll(DataSet: TDataSet);
var
  sLoanID: String;
begin
  if dsWaitingAction.FieldByName('LoanID').IsNull then
    sLoanID := '-1'
  else
    sLoanID := dsWaitingAction.FieldByName('LoanID').AsString;

  dsActions.Filter := 'LoanID = ' + sLoanID;
end;

procedure TdtmWorkFlow.AssignProcess(LoanID, ProcessID: Integer);
begin
  cmdAssignProcess.Parameters.ParamByName('@LoanID').Value := LoanID;
  cmdAssignProcess.Parameters.ParamByName('@ProcessID').Value := ProcessID;
  cmdAssignProcess.Parameters.ParamByName('@NewProcess').Value := True;
  cmdAssignProcess.Execute;
end;

procedure TdtmWorkFlow.dsRequestsAfterOpen(DataSet: TDataSet);
begin
  TDateField(dsRequests.FieldByName('CreateDate')).DisplayFormat := 'dd/MM/yyyy hh:mm';
  TDateField(dsRequests.FieldByName('ProcessDate')).DisplayFormat := 'dd/MM/yyyy hh:mm';
end;

end.
