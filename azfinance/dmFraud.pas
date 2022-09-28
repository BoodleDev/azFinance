unit dmFraud;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmFraud = class(TDataModule)
    dsEnquiries: TADODataSet;
    dtsEnquiries: TDataSource;
    qryReportURL: TADOQuery;
    cmdDoEnquiry: TADOCommand;
    dsFraudBureau: TADODataSet;
    dtsFraudBureau: TDataSource;
    dsAuthentication: TADODataSet;
    dtsAuthentication: TDataSource;
    cmdUpdateFraudBureau: TADOCommand;
    cmdUpdateAuthentication: TADOCommand;
    dsAuthenticationFraudAuthenticationID: TAutoIncField;
    dsAuthenticationEntityID: TIntegerField;
    dsAuthenticationAccountID: TIntegerField;
    dsAuthenticationCreateUserID: TIntegerField;
    dsAuthenticationCreateUser: TStringField;
    dsAuthenticationQuestionCount: TIntegerField;
    dsAuthenticationCompleted: TBooleanField;
    dsAuthenticationAuthenticated: TBooleanField;
    dsAuthenticationCompleteDate: TDateTimeField;
    dsAuthenticationPassPercent: TBCDField;
    dsAuthenticationResultPercent: TBCDField;
    dsAuthenticationCellNo: TStringField;
    dsAuthenticationBankAccountNo: TStringField;
    dsAuthenticationReference: TStringField;
    dsAuthenticationCreateDate: TDateTimeField;
    dsAuthenticationEnabled: TBooleanField;
    dsAuthenticationBureau: TStringField;
    dsAuthenticationDisableDate: TDateTimeField;
    dsAuthenticationResult: TStringField;
    dsAuthenticationDisableUser: TStringField;
    dsFraudBureauTransNo: TAutoIncField;
    dsFraudBureauEnqType: TIntegerField;
    dsFraudBureauEnqDate: TDateTimeField;
    dsFraudBureauStatus: TStringField;
    dsFraudBureauCreateUser: TStringField;
    dsFraudBureauLoanID: TIntegerField;
    dsFraudBureauResultType: TStringField;
    dsFraudBureauResult: TMemoField;
    dsFraudBureauPassed: TBooleanField;
    dsFraudBureauSuccess: TBooleanField;
    dsFraudBureauFraudScoreID: TAutoIncField;
    dsFraudBureauOverrideUser: TStringField;
    dsFraudBureauPassedDescription: TStringField;
    dsFraudBureauOverrideDate: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FReportURL: string;
    procedure SetReportURL(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property ReportURL: string read FReportURL write SetReportURL;
  end;

var
  dtmFraud: TdtmFraud;

implementation

uses dmMain;

{$R *.dfm}

{ TdtmFraud }

procedure TdtmFraud.SetReportURL(const Value: string);
begin
  FReportURL := Value;
end;

procedure TdtmFraud.DataModuleCreate(Sender: TObject);
begin
  qryReportURL.Open;
  ReportURL := qryReportURL.Fields[0].AsString;
  qryReportURL.Close;
end;

end.
