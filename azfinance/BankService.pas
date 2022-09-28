// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://10.11.0.101:1112/Bank.asmx?wsdl
// Encoding : utf-8
// Version  : 1.0
// (20/01/2012 10:51:13 PM - 1.33.2.5)
// ************************************************************************ //

unit BankService;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/VerifyCDV
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : BankSoap
  // service   : Bank
  // port      : BankSoap
  // URL       : http://10.11.0.101:1112/Bank.asmx
  // ************************************************************************ //
  BankSoap = interface(IInvokable)
  ['{378969C0-D91C-624F-CD2F-5334969B05FA}']
    function  VerifyCDV(const bankAccountNo: WideString; const bankName: WideString; const accountTypeId: Integer): Boolean; stdcall;
  end;

function GetBankSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): BankSoap;


implementation

function GetBankSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): BankSoap;
const
  defWSDL = 'http://10.11.0.101:8006/Bank.asmx?wsdl';
  defURL  = 'http://10.11.0.101:8006/Bank.asmx';
  defSvc  = 'Bank';
  defPrt  = 'BankSoap';
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
    Result := (RIO as BankSoap);
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


initialization
  InvRegistry.RegisterInterface(TypeInfo(BankSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(BankSoap), 'http://tempuri.org/VerifyCDV');
  InvRegistry.RegisterInvokeOptions(TypeInfo(BankSoap), ioDocument);

end.