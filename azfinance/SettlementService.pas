// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:2731/Settlement.asmx?wsdl
// Encoding : utf-8
// Version  : 1.0
// (31/03/2010 09:46:50 AM - 1.33.2.5)
// ************************************************************************ //

unit SettlementService;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"

  Transaction          = class;                 { "http://tempuri.org/" }



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Transaction = class(TRemotable)
  private
    FEffectiveDate: TXSDateTime;
    FDays: Integer;
    FAmount: TXSDecimal;
    FRate: TXSDecimal;
    FInsurance: TXSDecimal;
    FInterest: TXSDecimal;
    FTotalInterest: TXSDecimal;
    FBalance: TXSDecimal;
    FType_: WideString;
    FCode: Integer;
    FFeeID: Integer;
    FDescription: WideString;
  public
    destructor Destroy; override;
  published
    property EffectiveDate: TXSDateTime read FEffectiveDate write FEffectiveDate;
    property Days: Integer read FDays write FDays;
    property Amount: TXSDecimal read FAmount write FAmount;
    property Rate: TXSDecimal read FRate write FRate;
    property Insurance: TXSDecimal read FInsurance write FInsurance;
    property Interest: TXSDecimal read FInterest write FInterest;
    property TotalInterest: TXSDecimal read FTotalInterest write FTotalInterest;
    property Balance: TXSDecimal read FBalance write FBalance;
    property Type_: WideString read FType_ write FType_;
    property Code: Integer read FCode write FCode;
    property FeeID: Integer read FFeeID write FFeeID;
    property Description: WideString read FDescription write FDescription;
  end;

  ArrayOfTransaction = array of Transaction;    { "http://tempuri.org/" }

  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : SettlementSoap
  // service   : Settlement
  // port      : SettlementSoap
  // URL       : http://localhost:2731/Settlement.asmx
  // ************************************************************************ //
  SettlementSoap = interface(IInvokable)
  ['{781D9255-8DFD-98F4-6384-0CC3D474976A}']
    function  GetSettlement(const accountID: Integer; const expiryDate: TXSDateTime): ArrayOfTransaction; stdcall;
    function  PostSettlement(const settlementID: Integer; const userID: Integer; const postBatch: Boolean): Integer; stdcall;
    function  AddSettlement(const accountID: Integer; const expiryDate: TXSDateTime; const userID: Integer; const sendMethod: WideString; const sendDetail: WideString): Boolean; stdcall;
  end;

function GetSettlementSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): SettlementSoap;


implementation

function GetSettlementSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): SettlementSoap;
const
{$IFDEF SOAP_QA}
  //defWSDL = 'http://QA.finance.service.boodle.co.za/Settlement.asmx?wsdl';
  //defURL  = 'http://QA.finance.service.boodle.co.za/Settlement.asmx';
    defWSDL = 'http://10.11.0.138:5055/Settlement.asmx?wsdl';
    defURL  = 'http://10.11.0.138:5055/Settlement.asmx';
{$ENDIF}

{$IFDEF SOAP_PROD}
  defWSDL = 'http://financeservice.boodle.co.za:8116/Settlement.asmx?wsdl';
  defURL  = 'http://financeservice.boodle.co.za:8116/Settlement.asmx';
//  defWSDL = 'http://10.11.0.117:8006/Settlement.asmx?wsdl';
//  defURL  = 'http://10.11.0.117:8006/Settlement.asmx';
{$ENDIF}

{$IFDEF SOAP_DEV}
  defWSDL = 'http://10.11.0.138:8014/Settlement.asmx?wsdl';
  defURL  = 'http://10.11.0.138:8014/Settlement.asmx';
{$ENDIF}

{$IFDEF SOAP_LOCAL}
  defWSDL = 'http://localhost:2731/Settlement.asmx?wsdl';
  defURL  = 'http://localhost:2731/Settlement.asmx';
{$ENDIF}

  defSvc  = 'Settlement';
  defPrt  = 'SettlementSoap';
var
  RIO: THTTPRIO;
begin

  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as SettlementSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor Transaction.Destroy;
begin
  if Assigned(FEffectiveDate) then
    FEffectiveDate.Free;
  if Assigned(FAmount) then
    FAmount.Free;
  if Assigned(FRate) then
    FRate.Free;
  if Assigned(FInsurance) then
    FInsurance.Free;
  if Assigned(FInterest) then
    FInterest.Free;
  if Assigned(FTotalInterest) then
    FTotalInterest.Free;
  if Assigned(FBalance) then
    FBalance.Free;
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(SettlementSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(SettlementSoap), 'http://tempuri.org/%operationName%');
  RemClassRegistry.RegisterXSClass(Transaction, 'http://tempuri.org/', 'Transaction');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Transaction), 'Type_', 'Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTransaction), 'http://tempuri.org/', 'ArrayOfTransaction');
  InvRegistry.RegisterInvokeOptions(TypeInfo(SettlementSoap), ioDocument);

end.