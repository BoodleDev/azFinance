unit dmSms;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Unit32;

type
  TdtmSms = class(TDataModule)
    qrySMS: TADODataSet;
    dtsSMS: TDataSource;
    qrySmsLDs: TADODataSet;
    dtsSmsLds: TDataSource;
    qryGeneral: TADOQuery;
    qrySmsLDsLoanID: TIntegerField;
    qrySmsLDsEntityID: TIntegerField;
    qrySmsLDsLoanKey: TIntegerField;
    qrySmsLDsEntCode: TStringField;
    qrySmsLDsLoanType: TStringField;
    qrySmsLDsLTaccT: TSmallintField;
    qrySmsLDsLoanPeriod: TSmallintField;
    qrySmsLDsLoanCapital: TBCDField;
    qrySmsLDsAmtToFin: TBCDField;
    qrySmsLDsResidualAmt: TBCDField;
    qrySmsLDsMthIns: TBCDField;
    qrySmsLDsPayIns: TBCDField;
    qrySmsLDsIntRate: TBCDField;
    qrySmsLDsTotInterest: TBCDField;
    qrySmsLDsTotSecAmt: TBCDField;
    qrySmsLDsInstPaid: TStringField;
    qrySmsLDsStartDate: TDateTimeField;
    qrySmsLDsFirstInsDate: TDateTimeField;
    qrySmsLDsEndDate: TDateTimeField;
    qrySmsLDsAccBal: TBCDField;
    qrySmsLDsLoanBal: TBCDField;
    qrySmsLDsAvlBal: TBCDField;
    qrySmsLDsDepositBal: TBCDField;
    qrySmsLDsStatus: TSmallintField;
    qrySmsLDsArrearsAmt: TBCDField;
    qrySmsLDsArrearsNo: TSmallintField;
    qrySmsLDsArrearsDate: TDateTimeField;
    qrySmsLDsAmountDue: TBCDField;
    qrySmsLDsNoOfPay: TSmallintField;
    qrySmsLDsLastDPay: TDateTimeField;
    qrySmsLDsLastAmtPay: TBCDField;
    qrySmsLDsAppDate: TDateTimeField;
    qrySmsLDsAprvDate: TDateTimeField;
    qrySmsLDsName: TStringField;
    qrySmsLDsName2: TStringField;
    qrySmsLDsTitle: TStringField;
    qrySmsLDsTelNo1: TStringField;
    qrySmsLDsFaxNo: TStringField;
    qrySmsLDsTelNo3: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FUserName: String;
    { Private declarations }
  public
    { Public declarations }
    property UserName:String read FUserName write FUserName;
    procedure InsertSMS(iStr: String);
    procedure SetSMSqry(inWhere: string);
  end;

implementation

// SMS - Wynand Wessels
uses dmMain, uConst;

{$R *.DFM}

// V - this inserts the sms into the send que
procedure TdtmSms.InsertSMS(iStr: String);
  // This function cleans the Cell number
  function CleanNumber(iNumber:String):String;
  var
    i : Integer;
  begin
    Result := '';
    for i := 1 to length(iNumber) do
      if iNumber[i] in ['0'..'9'] then
        Result := Result + iNumber[i];
  end;
begin
  qrySMS.Append;
  try
    qrySMS.FieldByName('AppID').AsInteger     := AppID;
    qrySMS.FieldByName('UserID').AsString     := dtmMain.CurrentID;
    qrySMS.FieldByName('CellNo').AsString     := CleanNumber(qrySmsLDs.FieldByName('TelNo3').AsString);
    qrySMS.FieldByName('SMS').AsString        := iStr;
    qrySMS.FieldByName('UsrID').AsString      := UserName;
    qrySMS.FieldByName('UserRef').AsString    := qrySMS.FieldByName('TransID').AsString;
    qrySMS.FieldByName('SMSDate').AsDateTime  := Date;
    qrySMS.FieldByName('Status').AsInteger    := 0;
    qrySMS.Post;
  except
    qrySMS.Cancel;
  end;
end;

procedure TdtmSms.SetSMSqry(inWhere: string);
begin
  qrySmsLDs.Filter := inWhere;
  qrySMSLDs.Filtered := True;
end;

procedure TdtmSms.DataModuleCreate(Sender: TObject);
begin
  qryGeneral.Open;
  UserName := qryGeneral.FieldByName('ValStr').AsString;
  qryGeneral.Close;
end;


end.
