unit dmQuotation;

interface

uses
  SysUtils, Classes, DB, ADODB, ppComm, ppRelatv, ppDB, ppDBPipe;

type
  TdtmQuotation = class(TDataModule)
    cmdEndWaiting: TADOCommand;
    cmdAssignProcess: TADOCommand;
    qryCallRecords: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RejectQuotation(LoanID: Integer);
  end;

var
  dtmQuotation: TdtmQuotation;

implementation

uses dmMain;

{$R *.dfm}

procedure TdtmQuotation.RejectQuotation(LoanID: Integer);
begin
  cmdEndWaiting.Parameters[0].Value := LoanID;
  cmdEndWaiting.Execute;
  cmdAssignProcess.Parameters.ParamByName('LoanID').Value := LoanID;
  cmdAssignProcess.Parameters.ParamByName('ProcessID').Value := 430; //Decline Quotations
  cmdAssignProcess.Execute;
end;

end.
