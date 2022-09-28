unit dmMESum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Provider, DBClient;

type
  TdtmMESum = class(TDataModule)
    qryMEReports: TADODataSet;
    qryMonthNo: TADODataSet;
    cdsMESum: TClientDataSet;
    dspMESum: TDataSetProvider;
    dtsMESum: TDataSource;
    spcMESum: TADOStoredProc;
    cdsMESumLoanID: TIntegerField;
    cdsMESumEntCode: TStringField;
    cdsMESumEntityID: TIntegerField;
    cdsMESumName: TStringField;
    cdsMESumSurname: TStringField;
    cdsMESumRegNo: TStringField;
    cdsMESumRefFld1: TStringField;
    cdsMESumLoanKey: TIntegerField;
    cdsMESumLoanType: TStringField;
    cdsMESumLTaccT: TSmallintField;
    cdsMESumLoanPeriod: TSmallintField;
    cdsMESumLoanCapital: TBCDField;
    cdsMESumAmtToFin: TBCDField;
    cdsMESumResidualAmt: TBCDField;
    cdsMESumMthIns: TBCDField;
    cdsMESumPayIns: TBCDField;
    cdsMESumIntRate: TBCDField;
    cdsMESumTotInterest: TBCDField;
    cdsMESumTotSecAmt: TBCDField;
    cdsMESumCashDep: TBCDField;
    cdsMESumInstPaid: TStringField;
    cdsMESumStartDate: TDateTimeField;
    cdsMESumFirstInsDate: TDateTimeField;
    cdsMESumEndDate: TDateTimeField;
    cdsMESumAccBal: TBCDField;
    cdsMESumLoanBal: TBCDField;
    cdsMESumDepositBal: TBCDField;
    cdsMESumStatus: TIntegerField;
    cdsMESumLoanTypeInd: TIntegerField;
    cdsMESumLOID: TIntegerField;
    cdsMESumFunderID: TIntegerField;
    cdsMESumUserID: TStringField;
    cdsMESumDateChanged: TDateTimeField;
    cdsMESumArrearsAmt: TBCDField;
    cdsMESumArrearsNo: TSmallintField;
    cdsMESumAmountDue: TBCDField;
    cdsMESumNoOfPay: TSmallintField;
    cdsMESumLastDPay: TDateTimeField;
    cdsMESumLastAmtPay: TBCDField;
    cdsMESumExtendPrd: TSmallintField;
    cdsMESumFeeToInsTot: TBCDField;
    cdsMESumRegNo_1: TStringField;
    cdsMESumRefNo: TStringField;
    cdsMESumDays30: TBCDField;
    cdsMESumDays60: TBCDField;
    cdsMESumDays90: TBCDField;
    cdsMESumDays120: TBCDField;
    cdsMESumMore150: TBCDField;
    cdsMESumLastMPay: TSmallintField;
    cdsMESumTotCRRec: TBCDField;
    cdsMESumTotAddDC: TBCDField;
    cdsMESumTotIntEarn: TBCDField;
    cdsMESumTotDepInt: TBCDField;
    cdsMESumEmpKey: TStringField;
    cdsMESumEmpName: TStringField;
    cdsMESumBranchKey: TStringField;
    cdsMESumBranchName: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FfldList: TStringList;
    FrepList: TStrings;
    FExistingReport: boolean;
    function GetFldName(inValue: string): string;
    procedure LoadFldList;
    procedure SetDataStatus(Ready: boolean);
    procedure SetCDSFieldsDisplay;
  public
    { Public declarations }
    property fldList : TStringList read FfldList;
    property repList : TStrings read FrepList write FrepList;
    property ExistingReport: boolean read FExistingReport write FExistingReport;
    procedure SaveOrInsRepTmpl(RepName: string);
    procedure OpenReportData;
  end;

var
  dtmMESum: TdtmMESum;

implementation

uses dmMain, uFldSumConst;

{$R *.DFM}

{ TdtmMESum }

procedure TdtmMESum.SetDataStatus(Ready: boolean);
begin
  qryMonthNo.Active := Ready;
  qryMEReports.Active := Ready;
end;

procedure TdtmMESum.DataModuleCreate(Sender: TObject);
begin
  FfldList := TStringList.Create;
  LoadFldList;
  SetDataStatus(True);
end;

procedure TdtmMESum.DataModuleDestroy(Sender: TObject);
begin
  SetDataStatus(False);
  FfldList.Free;
  FfldList := nil;
end;

procedure TdtmMESum.LoadFldList;
begin
  FfldList.Clear;
  FfldList.Sorted := True;
//  FfldList.Add(fldPsnKey ); - default on report
//  FfldList.Add(fldSurname);
//  FfldList.Add(fldLoanID);
  FfldList.Add(fldName);
  FfldList.Add(fldIdNo     );
//  FfldList.Add(fldLoanType );
  FfldList.Add(fldLoanPrd  );
  FfldList.Add(fldLoanCap  );
  FfldList.Add(fldAmtToFin );
  FfldList.Add(fldMthIns   );
  FfldList.Add(fldPayInst  );
  FfldList.Add(fldIntRate  );
  FfldList.Add(fldTotInt   );
  FfldList.Add(fldCashDep  );
  FfldList.Add(fldStartD   );
  FfldList.Add(fldInsDate  );
  FfldList.Add(fldAccBal   );
  FfldList.Add(fldLoanBal  );
  FfldList.Add(fldDepBal   );
  FfldList.Add(fldLoanSts  );
  // MES.LoanTypeInd, MES.LOID, MES.UserID, MES.DateChanged,
  FfldList.Add(fldArrAmt   );
  FfldList.Add(fldArrNo    );
  FfldList.Add(fldAmtDue   );
  FfldList.Add(fldNoOfPay  );
  FfldList.Add(fldLastDPay );
  FfldList.Add(fldLastAmtP );
  FfldList.Add(fldExtPrd   );
  FfldList.Add(fldFeeToInsTot );
  FfldList.Add(fldDays30    );
  FfldList.Add(fldDays60    );
  FfldList.Add(fldDays90    );
  FfldList.Add(fldDays120   );
  FfldList.Add(fldMore150   );
  FfldList.Add(fldLastMPay  );
  FfldList.Add(fldTotCRRec  );
  FfldList.Add(fldTotDRCR   );
  FfldList.Add(fldTotIntErn );
  FfldList.Add(fldTotDepInt );
  FfldList.Add(fldEmpKey    );
  FfldList.Add(fldEmpName   );
  FfldList.Add(fldBranchKey );
  FfldList.Add(fldBranchName );
  //
  FfldList.Add(fldSpace);
end;

procedure TdtmMESum.SaveOrInsRepTmpl(RepName: string);
var
 i : integer;
begin
  if qryMEReports.Locate('RepName',RepName,[]) then
    qryMEReports.Edit
  else
  begin
    qryMEReports.Insert;
    //adoMEReports.FieldByName('RepID').AsInteger  := RepNo;
    qryMEReports.FieldByName('RepName').AsString := RepName;
  end;
  // init Report fields
  for i := 1 to 9 do
    qryMEReports.FieldByName('RepFld'+IntToStr(i)).AsString := '';
  for i := 0 to repList.Count-1 do
    qryMEReports.FieldByName('RepFld'+IntToStr(i+1)).AsString := repList[i];
  try
    qryMEReports.Post;
  except
    qryMEReports.Cancel;
  end;
end;

procedure TdtmMESum.OpenReportData;
begin
  Screen.Cursor := crHourGlass;
  try
    cdsMESum.Close;
    spcMESum.Close;
    spcMESum.Parameters[1].Value := qryMonthNo.FieldByName('MonthNo').AsInteger;
    cdsMESum.Open;
    spcMESum.Close;
    SetCDSFieldsDisplay;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TdtmMESum.SetCDSFieldsDisplay;
var
 i : integer;
begin
  //Set display labels
  for i := 0 to cdsMESum.FieldCount-1 do
  begin
    cdsMESum.Fields[i].DisplayLabel := GetFldName(cdsMESum.Fields[i].FieldName);
  end;
  // Fixed fields
  cdsMESum.Fields[0].Visible  := False; // LoanID
  cdsMESum.Fields[1].DisplayLabel := 'Acc. code'; //=PersonKey';
  cdsMESum.Fields[6].DisplayLabel := 'Loan code'; //=LoanKey';
  cdsMESum.Fields[7].DisplayLabel := 'Loan type'; //=LoanType';
end;

function TdtmMESum.GetFldName(inValue: string): string;
var
 i : integer;
begin
  Result := inValue;
  for i := 0 to fldList.Count-1 do
  begin
    if inValue = fldList.Values[fldList.Names[i]] then
    begin
      Result := fldList.Names[i];
      Exit;
    end;
  end;
end;

end.
