{===============================================================================
 Author         : Wynand Wessels
 Date           :
 Unit           :
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}
unit dmNLR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Unit32;

type
  TdtmNLR = class(TDataModule)
    qryData: TADODataSet;
    qryNLRToDo: TADODataSet;
    qryNLRResult: TADODataSet;
    dtsNLRToDo: TDataSource;
    dtsData: TDataSource;
    qryLU: TADOQuery;
    qryNLRToDoLoanID: TIntegerField;
    qryNLRToDoTransType: TSmallintField;
    qryNLRToDoStatusCode: TSmallintField;
    qryNLRToDoRequestStr: TMemoField;
    qryNLRToDoLUCode: TStringField;
    qryNLRToDoLUPayIns: TCurrencyField;
    qryNLRToDoLULoanKey: TIntegerField;
    qryLoanDetails: TADOQuery;
    qryMFRC: TADOQuery;
    qryGeneral: TADOQuery;
    qryPsnAdd: TADOQuery;
    QryToUse: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    FPrxPort: Integer;
    FPrxAdd: String;
    FUserName: String;
    { Private declarations }
    function BuildClsStr: String;
    function BuildRegStr: String;
    function BuildQryStr: String;
//    function GetFldValue(inFldNo: Integer; inFldVal: String;inReq: Boolean;iSize:Integer): String;
    function GetFldValue(inFldNo: Integer; inFldVal: String;inReq: Boolean): String;
    function GetTelnum(iStr: String): String;
    function GetTelCode(iStr:String):String;
    function CheckUsrdtl:Boolean;
    function GetMaritalStatus(iId:Integer):String;
  public
    { Public declarations }
    property UserName : String read FUserName write FUserName;
    property PrxPort  : Integer read FPrxPort write FPrxPort;
    property PrxAdd   : String read FPrxAdd write FPrxAdd;
    function GetNLRStatus(inID:Integer):String;
    procedure BuildNLRStr;
    procedure NLRStartNew;
    procedure NLRQueryClient(QRYResult,CustNum,EnqNum : String);
    procedure NLRRegisterClient(EnqNum,ITCNum : String);
    procedure ErrorResult(QRYResult:String);
    procedure SetStatus(Status: Integer);
  end;

const
  nlrQue  = 0;
  nlrEr   = 1000;
  nlrOK   = 2107;
  NLRReg  = 1;
  NLRQry  = 2;
  NLRCls  = 3;

var
  dtmNLR: TdtmNLR;

implementation

uses dmMain;

{$R *.DFM}

function TdtmNLR.GetNLRStatus(inID:Integer):String;
begin
  case inID of
    nlrReg : Result := 'Registration';
    nlrQry : Result := 'Query';
    nlrCls : Result := 'Close / Cancel';
    nlrQue : Result := 'Queued';
    nlrOK  : Result := 'Completed';
    nlrEr  : Result := 'Failed';
   else
    Result := 'Failed';
  end;
end;

procedure TdtmNLR.BuildNLRStr;
var
  ResString : String;
begin
//  qryMFRC.Open;
  ResString := '';
  if CheckUsrdtl then
  begin
    case dtmMain.NlrTransType of
      1 : ResString := BuildRegStr;
      2 : ResString := BuildQryStr;
      3 : ResString := BuildClsStr;
    else
      ResString := '';
    end;
  end
  else
    ShowMessage('Please check your NLR setting under Sys Cpy info');
  //
  if ResString <> '' then
  begin
     qryNLRToDo.Append;
     qryNLRToDo.FieldByName('LoanID').AsInteger := qryData.FieldByName('LoanID').AsInteger;
     qryNLRToDo.FieldByName('TransType').AsInteger := DtmMain.NlrTransType;
     qryNLRToDo.FieldByName('StatusCode').AsInteger := 0;
     qryNLRToDo.FieldByName('RequestStr').AsString  := ResString;
     qryNLRToDo.Post;
     ResString := '';
  end;
 // qryMfrc.Close;
end;


{function TdtmNLR.GetFldValue(inFldNo: Integer; inFldVal: String;
  inReq: Boolean;iSize:Integer): String;}
  function TdtmNLR.GetFldValue(inFldNo: Integer; inFldVal: String;
  inReq: Boolean): String;
begin
//  inFldVal := Copy(Trim(inFldVal),1,iSize);
  Result := '&f'+IntToStr(inFldNo)+'='+Trim(inFldVal);
end;

function TdtmNLR.BuildClsStr: String;
begin
//  Result := 'http://196.15.241.34/cgi-bin/c.exe/GetInfo?f0='+'wynand';
  Result := 'http://www.graytech.co.za/cgi-bin/c.exe/Closure?f0='+FUserName;
  Result := Result + GetFldvalue(3,'23',False);
  Result := Result + GetFldvalue(10,qryData.FieldByName('RegNo').AsString,True);
  Result := Result + GetFldvalue(11,qryData.FieldByName('QryNo').AsString,False);  //NLR Enquiry ref number
  Result := Result + GetFldvalue(13,qryData.FieldByName('EntCode').AsString,True);
  Result := Result + GetFldvalue(14,qryData.FieldByName('Loankey').AsString,False);
  Result := Result + GetFldvalue(15,qryData.FieldByName('ID').AsString,True);//ID
  Result := Result + GetFldvalue(16,'19'+qryData.FieldByName('ID').AsString[6],True);//ID
  Result := Result + GetFldvalue(17,qryData.FieldByName('Name2').AsString,True);
  Result := Result + GetFldvalue(18,qryData.FieldByName('Name').AsString,True);
  Result := Result + GetFldvalue(19,'',False);
  Result := Result + GetFldvalue(21,'C',True); // Close status
  Result := Result + GetFldvalue(22,FormatDateTime('yyyymmdd',Date),True);
end;
///0123184383

function TdtmNLR.BuildQryStr: String;
begin
//  Result := 'http://www.graytech.co.za/cgi-bin/c.exe/GetInfo?f0='+FUserName;
  Result := 'http://www.graytech.co.za/cgi-bin/c.exe/GetInfo?f0='+FUserName;
  Result := Result + GetFldvalue(3,'0',False);
  Result := Result + GetFldvalue(12,IntToStr(trunc(qryData.FieldByName('LoanCapital').AsFloat)),False);
  Result := Result + GetFldvalue(14,qryData.FieldByName('Name2').AsString,False);
  Result := Result + GetFldvalue(15,qryData.FieldByName('Name').AsString,False);
  Result := Result + GetFldvalue(20,qryData.FieldByName('ID').AsString,False);
  Result := Result + GetFldvalue(19,'19'+Copy(qryData.FieldByName('ID').AsString,1,6),False);
  Result := Result + GetFldvalue(22,qryData.FieldByName('Gender').AsString,False);
//  Result := Result + GetFldvalue(24,qryData.FieldByName('MaritalStatus').AsString,False);
  Result := Result + GetFldvalue(25,'',False); // Dependants
  Result := Result + GetFldvalue(26,qryData.FieldByName('Address1').AsString,False);
  Result := Result + GetFldvalue(27,qryData.FieldByName('Address2').AsString,False);
  Result := Result + GetFldvalue(28,qryData.FieldByName('Address3').AsString,False);
  Result := Result + GetFldvalue(29,qryData.FieldByName('Address4').AsString,False);
  Result := Result + GetFldvalue(30,qryData.FieldByName('AddressCode').AsString,False);
  Result := Result + GetFldvalue(34,GetTelCode(qryData.FieldByName('TelNo1').AsString),False);
  Result := Result + GetFldvalue(35,qryData.FieldByName('TelNo1').AsString,False);
  Result := Result + GetFldvalue(36,GetTelCode(qryData.FieldByName('TelNo2').AsString),False);
  Result := Result + GetFldvalue(37,GetTelnum(qryData.FieldByName('TelNo2').AsString),False);
//  Result := Result + GetFldvalue(47,GetOccupation,False);
  Result := Result + GetFldvalue(48,'',False); // Employer
  Result := Result + GetFldvalue(56,IntToStr(trunc(qryData.FieldByName('LoanCapital').AsFloat)),False);
  Result := Result + GetFldvalue(57,IntToStr(trunc(qryData.FieldByName('PayIns').AsFloat)),False);
  Result := Result + GetFldvalue(62,'',False); // Inquiry reason
end;

function TdtmNLR.BuildRegStr: String;
begin
  Result := 'http://www.graytech.co.za/cgi-bin/c.exe/Register?f0='+FUserName;
  Result := Result + GetFldvalue(3,'22',False);
  Result := Result + GetFldvalue(12,qryData.FieldByName('QryNo').AsString,False);  //NLR Enquiry ref number
  Result := Result + GetFldvalue(13,qryData.FieldByName('Name2').AsString,False);
  Result := Result + GetFldvalue(14,qryData.FieldByName('Name').AsString,False);
//  Result := Result + GetFldvalue(15,qryData.FieldByName('').AsString,False);
  Result := Result + GetFldvalue(21,qryData.FieldByName('ID').AsString,False);
  Result := Result + GetFldvalue(20,'19'+Copy(qryData.FieldByName('ID').AsString,1,6),False);
//  Result := Result + GetFldvalue(17,qryData.FieldByName('Name').AsString,False);
//  Result := Result + GetFldvalue(18,qryData.FieldByName('Name2').AsString,False); // Surname
  Result := Result + GetFldvalue(22,qryData.FieldByName('Address1').AsString,False);
  Result := Result + GetFldvalue(23,qryData.FieldByName('Address2').AsString,False);
  Result := Result + GetFldvalue(24,qryData.FieldByName('Address3').AsString,False);
  Result := Result + GetFldvalue(25,qryData.FieldByName('Address4').AsString,False);
  Result := Result + GetFldvalue(26,qryData.FieldByName('AddressCode').AsString,False);
//  Result := Result + GetFldvalue(27,qryData.FieldByName('').AsString,False);// time at place
  Result := Result + GetFldvalue(33,qryData.FieldByName('OwnRent').AsString,False); // own rent
//  Result := Result + GetFldvalue(34,GetOccupation,False);
//  Result := Result + GetFldvalue(35,qryData.FieldByName('').AsString,False);
  Result := Result + GetFldvalue(38,qryData.FieldByName('Gender').AsString,False);
  Result := Result + GetFldvalue(39,GetMaritalStatus(qryData.FieldByName('MaritalStatus').AsInteger),False);
  Result := Result + GetFldvalue(40,GetTelCode(qryData.FieldByName('TelNo1').AsString),False);
  Result := Result + GetFldvalue(41,qryData.FieldByName('TelNo1').AsString,False);
  Result := Result + GetFldvalue(42,GetTelCode(qryData.FieldByName('TelNo2').AsString),False);
  Result := Result + GetFldvalue(43,GetTelnum(qryData.FieldByName('TelNo2').AsString),False);
  Result := Result + GetFldvalue(44,qryData.FieldByName('TelNo3').AsString,False);
  Result := Result + GetFldvalue(46,IntToStr(trunc(qryData.FieldByName('PayIns').AsFloat)),False);//Installment amount
  Result := Result + GetFldvalue(47,IntToStr(trunc(qryData.FieldByName('MthGross').AsFloat)),False);
  Result := Result + GetFldvalue(48,qryData.FieldByName('PayFreq').AsString,False);
  Result := Result + GetFldvalue(52,qryData.FieldByName('EntCode').AsString,False);
  Result := Result + GetFldvalue(53,qryData.FieldByName('LoanKey').AsString,False);
  Result := Result + GetFldvalue(54,'2',False);
  Result := Result + GetFldvalue(55,FormatDateTime('yyyymmdd',qryData.FieldByName('StartDate').AsDateTime),False);
  Result := Result + GetFldvalue(56,IntToStr(trunc(qryData.FieldByName('LoanCapital').AsFloat)),False);
  Result := Result + GetFldvalue(57,'D',False);
  Result := Result + GetFldvalue(58,IntToStr(trunc(qryData.FieldByName('AccBal').AsFloat)),False);
  Result := Result + GetFldvalue(59,'D',False);
  Result := Result + GetFldvalue(60,IntToStr(trunc(qryData.FieldByName('PayIns').AsFloat)),False);
  Result := Result + GetFldvalue(62,qryData.FieldByName('LoanPeriod').AsString,False);
  Result := Result + GetFldvalue(63,'O',False);
  Result := Result + GetFldvalue(64,IntToStr(trunc(qryData.FieldByName('AmtToFin').AsFloat)),False); // Monthly installment
  Result := Result + GetFldvalue(65,'F',False);
  Result := Result + GetFldvalue(66,IntToStr(trunc(qryData.FieldByName('IntRate').AsFloat * 100)),False);
  Result := Result + GetFldvalue(67,IntToStr(trunc(qryData.FieldByName('TotInterest').AsFloat)),False);
  Result := Result + GetFldvalue(68,IntToStr(trunc(qryData.FieldByName('TotInterest').AsFloat +
                                                   qryData.FieldByName('AmtToFin').AsFloat)),False);
  Result := Result + GetFldvalue(69,'0',False);
  Result := Result + GetFldvalue(70,'N',False);
//  Result := Result + GetFldvalue(45,IntToStr(trunc(qryData.FieldByName('AppAmt').AsFloat)),False);
  Result := Result + GetFldvalue(45,IntToStr(trunc(qryData.FieldByName('LoanCapital').AsFloat)),False);
  Result := Result + GetFldvalue(49,qryData.FieldByName('LoanPeriod').AsString,False);
//  Result := Result + GetFldvalue(,qryData.FieldByName('').AsString,False);
end;

// This extracts the phone Code from the string ....
function TdtmNLR.GetTelCode(iStr: String): String;
var
x  : integer;
begin
  x := pos('-',iStr);
  Result := '';
  if x > 0 then
    Result := Copy(iStr,1,x-1);
end;

// This extracts the phone Number from the string ....
function TdtmNLR.GetTelnum(iStr: String): String;
var
  x  : integer;
begin
  x := pos('-',iStr);
  Result := iStr;
  if x > 0 then
    Result := Copy(iStr,x+1,length(istr)-x);
  iStr := Result;
  Result :='';
  for x := 1 to length(iStr) do
   if (iStr[x] <> ' ' )and (iStr[x] <> '-') then
     Result := Result + iStr[x];
end;

function TdtmNLR.CheckUsrdtl: Boolean;
begin
  Result := FUserName <> '';
end;

procedure TdtmNLR.NLRStartNew;
begin
  if qryNLRResult.Locate('LoanID',qryNLRToDo.FieldByName('LoanID').AsString,[]) then
    qryNLRResult.Edit
  else
    qryNLRResult.Insert;
  qryNLRResult.FieldByName('DateCls').AsDateTime := Date;
  qryNLRResult.Post;
end;

procedure TdtmNLR.NLRQueryClient(QRYResult,CustNum,EnqNum : String);
begin
  if qryNLRResult.Locate('LoanID',qryNLRToDo.FieldByName('LoanID').AsString,[]) then
    qryNLRResult.Edit
  else
    dtmNLR.qryNLRResult.Insert;
  //
  qryNLRResult.FieldByName('DateQry').AsDateTime := Date;
  qryNLRResult.FieldByName('LoanID').AsInteger := qryNLRToDo.FieldByName('LoanID').AsInteger;
  qryNLRResult.FieldByName('QryRes').AsString := QRYResult;
  qryPsnAdd.Open;
  qryLoanDetails.Open;
  if qryPsnAdd.Locate('EntityID',qryNLRToDo.FieldByName('LoanID').AsString,[]) then
  begin
    qryPsnAdd.Edit;
    qryPsnAdd.FieldByName('NLRRefNo').AsString := CustNum;
    qryPsnAdd.Post;
  end;
  qryLoanDetails.Locate('LoanID',qryNLRToDo.FieldByName('LoanID').AsString,[]);
  qryLoanDetails.Edit;
  qryLoanDetails.FieldByName('QryNo').AsString := EnqNum;
  qryLoanDetails.Post;
  qryLoanDetails.Close;
  qryPsnAdd.Close;
  qryNLRResult.Post;
end;

procedure TdtmNLR.NLRRegisterClient(EnqNum,ITCNum : String);
begin
  if qryNLRResult.Locate('LoanID',qryNLRToDo.FieldByName('LoanID').AsString,[]) then
    qryNLRResult.Edit
  else
    qryNLRResult.Insert;
  qryNLRResult.FieldByName('DateReg').AsDateTime := Date;
  qryLoanDetails.Open;
  qryLoanDetails.Locate('LoanID',qryNLRToDo.FieldByName('LoanID').AsString,[]);
  qryLoanDetails.Edit;
  qryLoanDetails.FieldByName('QryNo').AsString := EnqNum;
  qryLoanDetails.FieldByName('RegNo').AsString := ITCNum;
  qryLoanDetails.Post;
  qryLoanDetails.Close;
  qryNLRResult.Post;
end;

procedure TdtmNLR.SetStatus(Status: Integer);
begin
  dtmNLR.qryNLRToDo.Edit;
  dtmNLR.qryNLRToDo.FieldByName('StatusCode').AsInteger := Status;
  dtmNLR.qryNLRToDo.Post;
end;

procedure TdtmNLR.DataModuleCreate(Sender: TObject);
begin
  qryGeneral.Open;
  qryGeneral.First;
  if qryGeneral.RecordCount = 2 then
  begin
    FUserName := qryGeneral.FieldByName('ValStr').AsString;
    qryGeneral.Next;
    FPrxPort   := qryGeneral.FieldByName('ValInt').AsInteger;
    FPrxAdd   := qryGeneral.FieldByName('ValStr').AsString;
  end;
  qryGeneral.Close;
end;

procedure TdtmNLR.ErrorResult(QRYResult: String);
begin
  if qryNLRResult.Locate('LoanID',qryNLRToDo.FieldByName('LoanID').AsString,[]) then
    qryNLRResult.Edit
  else
    dtmNLR.qryNLRResult.Insert;
  //
  qryNLRResult.FieldByName('QryRes').AsString := QRYResult;
  qryNLRResult.Post;
end;

function TdtmNLR.GetMaritalStatus(iId: Integer): String;
begin
  Result := 'S';
  Runqry(qryToUse,'Select description from codetable where TypeKey = '+IntToStr(iID),'O');
  if qryToUse.Fields[0].IsNull then
    Result := UpperCase( Copy(qryToUse.Fields[0].AsString,1,1));
end;

end.
