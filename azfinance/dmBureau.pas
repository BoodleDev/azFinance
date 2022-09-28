unit dmBureau;

interface

uses           
  SysUtils, Classes, DB, ADODB, uBureau;

type
  TdtmBureau = class(TDataModule)
    qrySetBureau: TADODataSet;
    dtsSetBureau: TDataSource;
    qryEntity: TADODataSet;
    qryEnqHistory: TADODataSet;
    dtsEnqHistory: TDataSource;
    qryUpdateEnqHist: TADOCommand;
    qryUpdateNlrEnqRefNo: TADOCommand;
    dtsEntity: TDataSource;
    cmdUpdateRef: TADOCommand;
    dsResult: TADODataSet;
    qryXSLFile: TADOQuery;
    qryLastEnquiry: TADOQuery;
    qryXSLFraudFile: TADOQuery;
    dsFailedPolicy: TADODataSet;
    dtsFailedPolicy: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateEnqHistory(Status, EnqType: Integer);
    procedure UpdateNlrEnqRefNo;
    procedure ProcessEnquiryRefNo;
  end;

var
  dtmBureau: TdtmBureau;

implementation

uses dmMain;

{$R *.dfm}

procedure TdtmBureau.UpdateEnqHistory(Status, EnqType: Integer);
var
  Command: String;
begin
  Command := 'Insert into BureauHistory(EntityID, EnqDate, EnqType, Status, CreateUser)' +
    ' Values(' +
    qryEntity.FieldByName('EntityID').AsString+ ', getdate(), ' +
    //FormatDateTime('yyyy-mm-dd',Date) + ''',' +
    IntToStr(EnqType) + ',' +
    IntToStr(Status) +  ',' +
    QuotedStr(dtmMain.CurrentID) + ')';
  dtmMain.dbData.Execute(Command);

 { qryUpdateEnqHist.Parameters.ParamByName('EntityID').Value := qryEntity.FieldByName('EntityID').AsInteger;
  qryUpdateEnqHist.Parameters.ParamByName('EnqType').Value := EnqType;
  qryUpdateEnqHist.Parameters.ParamByName('EnqDate').Value := Date;
  qryUpdateEnqHist.Parameters.ParamByName('Status').Value := Status;
  qryUpdateEnqHist.Execute;}
end;

procedure TdtmBureau.UpdateNlrEnqRefNo;
begin
  qryUpdateNlrEnqRefNo.Parameters.ParamByName('EntityID').Value :=
    qryEntity.FieldByName('EntityID').AsInteger;
  qryUpdateNlrEnqRefNo.Parameters.ParamByName('NlrRefNo').Value :=
    GetNLREnqRefNo(qryEntity.FieldByName('RegNo').AsString);
  qryUpdateNlrEnqRefNo.Execute;
end;

procedure TdtmBureau.ProcessEnquiryRefNo;
var
  Folder: String;
  NLR: TextFile;
  sFile: String;
  S: String;
begin
  Folder := '\\berkims1\AZUpdate\Results\Inbox\';
  sFile := Folder + 'Enq_' + qryEntity.FieldByName('RegNo').AsString + '_NLR.HTML';
  if FileExists(sFile) then
  begin
    AssignFile(NLR, sFile);
    Reset(NLR);
    while not Eof(NLR) do
    begin
      ReadLn(NLR,S);
      if Pos('##START_ENQ_REF_NUMBER##',S) > 0 then
      begin
        S := StringReplace(S,'<!--##START_ENQ_REF_NUMBER##','',[]);
        S := StringReplace(S,'##END_ENQ_REF_NUMBER##-->','',[]);
        cmdUpdateRef.Parameters.ParamByName('RefNo').Value := S;
        cmdUpdateRef.Parameters.ParamByName('EntityID').Value := qryEntity.FieldByName('EntityID').AsInteger;
        cmdUpdateRef.Execute;
        Break;
      end;
    end;
    CloseFile(NLR);
  end;
end;

end.
