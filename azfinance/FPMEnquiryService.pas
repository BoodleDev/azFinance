// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://10.11.0.122:8033/FPM.asmx?wsdl
// Encoding : utf-8
// Version  : 1.0
// (10/01/2012 04:19:55 PM - 1.33.2.5)
// ************************************************************************ //

unit FPMEnquiryService;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/ProcessFraud
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : ProcessFraudServiceSoap
  // service   : ProcessFraudService
  // port      : ProcessFraudServiceSoap
  // URL       : http://10.11.0.122:8033/FPM.asmx
  // ************************************************************************ //
  ProcessFraudServiceSoap = interface(IInvokable)
  ['{BBBBCB1D-514D-DDE8-92BC-4D48071C6DA2}']
    function  ProcessFraud(const LoanID: Integer; const username: WideString): Boolean; stdcall;
  end;

function GetProcessFraudServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ProcessFraudServiceSoap;


implementation

function GetProcessFraudServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ProcessFraudServiceSoap;
const
 {$IFDEF SOAP_QA}
  defWSDL = 'http://10.11.0.138:8025/FPM.asmx?wsdl';
  defURL  = 'http://10.11.0.138:8025/FPM.asmx';
  {$ENDIF}

  {$IFDEF SOAP_PROD}
  defWSDL = 'http://10.11.0.166:8033/FPM.asmx?wsdl';
  defURL  = 'http://10.11.0.166:8033/FPM.asmx';
  //defWSDL = 'http://10.11.2.108:31873/FPM.asmx?wsdl';
  //defURL  = 'http://10.11.2.108:31873/FPM.asmx';
  {$ENDIF}
  defSvc  = 'ProcessFraudService';
  defPrt  = 'ProcessFraudServiceSoap';
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
    Result := (RIO as ProcessFraudServiceSoap);
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
  InvRegistry.RegisterInterface(TypeInfo(ProcessFraudServiceSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ProcessFraudServiceSoap), 'http://tempuri.org/ProcessFraud');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ProcessFraudServiceSoap), ioDocument);


end.