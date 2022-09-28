unit dmNtsRE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TdtmNtsRE = class(TDataModule)
    qryGetNotes: TADODataSet;
    qryToUse: TADODataSet;
    dtsGetNotes: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FUserList: TStringList;
    procedure LoadUserList;
    procedure CloseQryToUse;
  public
    { Public declarations }
    property UserList : TStringList read FUserList write FUserList;
    function GetNoOfReminders(inUsrID: string):integer;
    procedure RunNotesQry(inSQL : string);
  end;

var
  dtmNtsRE: TdtmNtsRE;

implementation

uses dmMain;

{$R *.DFM}

{ TdtmNotes }

procedure TdtmNtsRE.CloseQryToUse;
begin
  qryToUse.Close;
  qryToUse.CommandText := '';
end;

procedure TdtmNtsRE.DataModuleCreate(Sender: TObject);
begin
  FUserList := TStringList.Create;
  LoadUserList;
end;

procedure TdtmNtsRE.DataModuleDestroy(Sender: TObject);
begin
  FUserList.Free;
  FUserList := nil;
end;

function TdtmNtsRE.GetNoOfReminders(inUsrID: string): integer;
var
  TempSQL : string;
begin
  CloseQryToUse;
  TempSQL := 'select Count(EntityID) from Notes where AppID=100 and ';
  if inUsrID<>'' then
    TempSQL := TempSQL + 'UserID='''+inUsrID+''' and Status=1'
  else
    TempSQL := TempSQL + 'Status=1';
  qryToUse.CommandText := TempSQL;
  qryToUse.Open;
  Result := qryToUse.Fields[0].AsInteger;
  CloseQryToUse;
end;

procedure TdtmNtsRE.LoadUserList;
var
 TempSQL : string;
begin
  FUserList.Clear;
  FUserList.Add('All users=');
  CloseQryToUse;
  TempSQL := 'select UserID, Surname, Name from Securitytbl '+
   'where UserID in (select UserID from SecurityUAG where AppID=100)';
//  if dtmMain.CurBranchID <> -1 then
//    TempSQL := TempSQL +' where BranchID='+IntToStr(dtmMain.CurBranchID);
  TempSQL := TempSQL + ' order by Surname, Name';
  qryToUse.CommandText := TempSQL;
  qryToUse.Open;
  qryToUse.First;
  while not qryToUse.EOF do
  begin
    FUserList.Add(qryToUse.FieldByName('Surname').AsString+', '+
      qryToUse.FieldByName('Name').AsString+'='+
      qryToUse.FieldByName('UserID').AsString);
    qryToUse.Next;
  end;
  CloseQryToUse;
end;

procedure TdtmNtsRE.RunNotesQry(inSQL: string);
var
  TempSQL : string;
begin
  qryGetNotes.Close;
  TempSQL := 'select PSN.EntCode,NTS.NoteNo,NTS.RefNo,NTS.NoteDate,NTS.UserID,'+
   ' NTS.TheNote,NTS.DueDate,NTS.Status,PSN.TelNo1,PSN.TelNo2,PSN.TelNo3, NTS.RemindMe'+
   ' from Notes NTS left join EntityData PSN on NTS.EntityID=PSN.EntityID'+
   ' and NTS.AppID=100';
  TempSQL := TempSQL +' '+inSQL;
  qryGetNotes.CommandText := TempSQL;
  qryGetNotes.Open;
end;

end.
