unit dmEntCheck;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Unit32;

type
  TdtmEntCheck = class(TDataModule)
    qryToUse: TADOQuery;
    qrySearch: TADODataSet;
    qrySearchEntityID: TIntegerField;
    qrySearchEntCode: TStringField;
    qrySearchRegNo: TStringField;
    qrySearchName: TStringField;
    qrySearchName2: TStringField;
    dtsSearch: TDataSource;
    qrySearchTelNo1: TStringField;
    qrySearchTelNo2: TStringField;
    qrySearchTelNo3: TStringField;
    qryDupRegNo: TADODataSet;
    cmdUpdateRegNo: TADOCommand;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    strSearchQry : string;
    FEntType: integer;
    procedure BuildSearchQry(RegNo,Name1,Name2 :string);
    procedure SetEntType(const Value: integer);
  public
    { Public declarations }
    property EntType : integer read FEntType write SetEntType;
    function FindDuplicateRegNo(RegNo: String; EntType: Integer): Boolean;
    procedure GetPosMatches(RegNo,Name1,Name2 :string);
  end;

implementation

uses dmMain;

{$R *.DFM}

{ TdtmEntCheck }

procedure TdtmEntCheck.BuildSearchQry(RegNo,Name1,Name2 :string);
  procedure AddToStr(inStr: string);
  begin
    if Trim(strSearchQry) <> '' then
      strSearchQry := strSearchQry + ' or ' + inStr
    else
      strSearchQry := inStr;
  end;
begin
  strSearchQry := '';
  if Trim(RegNo) <> '' then
    AddToStr('RegNo like '''+Trim(RegNo)+'%''');
  if Trim(Name1) <> '' then
    AddToStr('Name like '''+Trim(Name1)+'%''');
  if Trim(Name2) <> '' then
    AddToStr('Name2 like '''+Trim(Name2)+'%''');
  //
  strSearchQry := 'select EntityID,EntCode,RegNo,Name,Name2,TelNo1,TelNo2,TelNo3 '+
    'from EntityData where EntType='+IntToStr(EntType)+' and '+strSearchQry;
end;

procedure TdtmEntCheck.GetPosMatches(RegNo,Name1,Name2 :string);
begin
  BuildSearchQry(RegNo,Name1,Name2);
  qrySearch.Close;
  qrySearch.CommandText := strSearchQry;
  qrySearch.Open;
end;

procedure TdtmEntCheck.SetEntType(const Value: integer);
begin
  FEntType := Value;
  qrySearch.FieldByName('Name2').Visible := EntType=1; // 1 = PSNtype
end;

procedure TdtmEntCheck.DataModuleDestroy(Sender: TObject);
begin
  qrySearch.Close;
  qryToUse.Close;
end;

function TdtmEntCheck.FindDuplicateRegNo(RegNo: String; EntType: Integer): Boolean;
begin
  try
    if RegNo = '' then
      Result := False
    else
    begin
      qryDupRegNo.Parameters.ParamByName('prRegNo').Value := RegNo;
      qryDupRegNo.Parameters.ParamByName('prEntType').Value := EntType;
      qryDupRegNo.Open;
      if qryDupRegNo.Fields[0].IsNull then
        Result := False
      else
      begin
        if EntType = 1 then
          MesDlg('A person with that ID number already exists','E')
        else
          MesDlg('A person with that registration number already exists','E');
        Result := True;
      end;
    end;
  finally
    qryDupRegNo.Close;
  end;
end;

end.
