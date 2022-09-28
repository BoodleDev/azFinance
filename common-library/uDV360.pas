unit uDV360;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdHTTP, XMLDoc, XMLIntf;

type
  TMessage = class(TObject)
  public
    Code: String;
    Description: String;
  end;

  TData = class(TObject)
  public
    IsSuccessful: String;
    Messages: array of TMessage;
    constructor Create;
    destructor Destroy; override;
  end;

  TDV360 = class(TObject)
  private
    FURL: String;
    FINPUT: String;
    FResponse: String;
    FErrorMessage: String;
    FResponseDoc: IXMLDocument;
    FData : TData;
    FLoanID: String;
    FSource: String;
    function GetIsSuccessful: boolean;
    function GetNoMessages: integer;
    function GetMessages(i: integer): TMessage;
  public
    constructor Create;
    destructor Destroy; override;
    function Post : boolean;
    procedure LoadResponse;
    procedure LoadMessages(Node: IXMLNode);
    property LoanID: String read FLoanID write FLoanID;
    property Source: String read FSource write FSource;
    property URL: String read FURL write FURL;
    property INPUT: String read FINPUT write FINPUT;
    property Response: String read FResponse write FResponse;
    property ErrorMessage: String read FErrorMessage write FErrorMessage;
    property IsSuccessful: boolean read GetIsSuccessful;
    property NoMessages: integer read GetNoMessages;
    property Messages[i: integer]: TMessage read GetMessages;
    property Data: TData read FData;
  end;

implementation

constructor TDV360.Create;
begin
  FData := TData.Create;
end;

destructor TDV360.Destroy;
begin
  FData.Destroy;
  inherited;
end;

constructor TData.Create;
begin
  SetLength(Messages, 0);
end;

destructor TData.Destroy;
var
  I: integer;
begin
  for i:= 0 to high(Messages) do
    Messages[i].Destroy;
  inherited;
end;

procedure TDV360.LoadMessages(Node: IXMLNode);
var
  I, J: integer;
  NodeI, NodeJ : IXMLNode;
begin
  setLength(FData.Messages, Node.ChildNodes.Count);
  for I := 0 to Node.ChildNodes.Count - 1 do begin
    NodeI := Node.ChildNodes.Get(I);
    if NodeI.LocalName = 'Message' then begin
      FData.Messages[I] := TMessage.Create;
      for J := 0 to NodeI.ChildNodes.Count - 1 do begin
        NodeJ := NodeI.ChildNodes.Get(J);
        if NodeJ.LocalName = 'Code' then
          FData.Messages[I].Code := NodeJ.NodeValue;
        if NodeJ.LocalName = 'Description' then
          FData.Messages[I].Description := NodeJ.NodeValue;
      end;
    end;
  end;
end;

(*
http://localhost:4033/LoanService.asmx

Content-Type: text/xml; charset=utf-8
SOAPAction: http://pcsgroup.co.za/risk/loan/CalculateOptions
Cache-Control: no-cache

<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <CalculateOptions xmlns="http://pcsgroup.co.za/risk/loan">
      <req>
        <LoanID>1123</LoanID>
        <Source>Boodle</Source>
        <Host>Boodle</Host>
        <Provider>Boodle</Provider>
      </req>
    </CalculateOptions>
  </soap:Body>
</soap:Envelope>

<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <CalculateOptionsResponse xmlns="http://pcsgroup.co.za/risk/loan">
      <CalculateOptionsResult>
        <IsSuccessful>boolean</IsSuccessful>
        <Messages>
          <Message>
            <Code>string</Code>
            <Description>string</Description>
          </Message>
          <Message>
            <Code>string</Code>
            <Description>string</Description>
          </Message>
        </Messages>
        <Data>
          <Outcome>None or Declined or Approved or Referred</Outcome>
          <OutcomeReason>int</OutcomeReason>
          <OutcomeSubreason>int</OutcomeSubreason>
        </Data>
      </CalculateOptionsResult>
    </CalculateOptionsResponse>
  </soap:Body>
</soap:Envelope>
*)

procedure TDV360.LoadResponse;
var
  stream: TStringStream;
  Node, NodeI: IXMLNode;
  I: integer;

begin
  FResponseDoc := TXMLDocument.Create(nil);
  stream := TStringStream.Create(Utf8Encode(Response));
  try
    FResponseDoc.LoadFromStream(stream);
    Node := FResponseDoc.DocumentElement;
    while (Node <> nil) and (Node.LocalName <> 'CalculateOptionsResult') do
      Node := Node.ChildNodes.Get(0);
    if (Node <> nil) then begin
      for I := 0 to Node.ChildNodes.Count - 1 do begin
        NodeI := Node.ChildNodes.Get(I);
        if NodeI.LocalName = 'IsSuccessful' then
          FData.IsSuccessful := NodeI.NodeValue;
        if NodeI.LocalName = 'Messages' then
          LoadMessages(NodeI);
      end;
    end;
  finally
    stream.Destroy;
  end;
end;

function TDV360.Post : boolean;
var
  IdHTTP: TIdHTTP;
  stream: TStringStream;
  work: String;
begin
  work := '';
  work := work + '<?xml version="1.0" encoding="utf-8"?>'#13#10;
  work := work + '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">'#13#10;
  work := work + '  <soap:Body>'#13#10;
  work := work + '    <CalculateOptions xmlns="http://pcsgroup.co.za/risk/loan">'#13#10;
  work := work + '      <req>'#13#10;
  work := work + format('        <LoanID>%s</LoanID>'#13#10, [LoanID]);
  work := work + format('        <Source>%s</Source>'#13#10, [Source]);
  work := work + format('        <Host>%s</Host>'#13#10, [Source]);
  work := work + format('        <Provider>%s</Provider>'#13#10, [Source]);
  work := work + '      </req>#13#10';
  work := work + '    </CalculateOptions>'#13#10;
  work := work + '  </soap:Body>'#13#10;
  work := work + '</soap:Envelope>'#13#10;
  INPUT := work;
  stream := TStringStream.Create(Utf8Encode(INPUT));
  try
    result := true;
    IdHTTP := TIdHTTP.Create(nil);
    try
      IdHTTP.Request.ContentType := 'text/xml';
      IdHTTP.Request.ContentEncoding := 'utf-8';
      try
        Response := IdHTTP.Post(URL, stream);
      except
        on E: Exception do begin
          ErrorMessage := 'Error on request: '#13#10 + e.Message;
          result := false;
          exit;
        end;
      end;
    finally
      IdHTTP.Destroy;
    end;
  finally
    stream.Free;
  end;
end;

function TDV360.GetIsSuccessful: boolean;
begin
  result := FData.IsSuccessful = 'true';
end;

function TDV360.GetNoMessages: integer;
begin
  result := length(FData.Messages);
end;

function TDV360.GetMessages(i: integer): TMessage;
begin
  result := FData.Messages[i];
end;

end.
