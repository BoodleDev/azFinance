unit dmLoanFees;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmLoanFees = class(TDataModule)
    dsFees: TADODataSet;
    dsFeeDetail: TADODataSet;
    dtsFeeDetail: TDataSource;
    dtsFees: TDataSource;
    procedure DataModuleDestroy(Sender: TObject);
  private
    FLoanID: Integer;
    procedure SetLoanID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property LoanID: Integer read FLoanID write SetLoanID;
  end;


procedure CreateLoanFees(LoanID: Integer);

var
  dtmLoanFees: TdtmLoanFees;

implementation

uses dmMain;

{$R *.dfm}

procedure CreateLoanFees(LoanID: Integer);
begin
  dtmLoanFees := TdtmLoanFees.Create(nil);
  dtmLoanFees.LoanID := LoanID;
end;

{ TdtmLoanFees }

procedure TdtmLoanFees.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;

  dsFees.Close;
  dsFees.Parameters[0].Value := LoanID;
  dsFees.Open;

  dsFeeDetail.Open;
end;

procedure TdtmLoanFees.DataModuleDestroy(Sender: TObject);
begin          
  dsFeeDetail.Close;
  dsFees.Close;
end;

end.
