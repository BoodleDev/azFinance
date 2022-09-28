unit dmNotes;

{===============================================================================
 Author  : Willene le Roux
 Date    : 04/03/2003
 Unit    : Notes datamodule - autocreate
 PreConditions  : Set EntityID property after create
                  Set SubID property after create
                  Defaults on Create = 0 for both of the above
                  Create own query on dtmMain
 PostConditions : none.
 History :
 ==============================================================================}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, uConst, Unit32;

type
  TdtmNotes = class(TDataModule)
    qryNotes: TADODataSet;
    dtsNotes: TDataSource;
    qryNotesNoteID: TAutoIncField;
    qryNotesEntityID: TIntegerField;
    qryNotesNoteNo: TIntegerField;
    qryNotesAppID: TIntegerField;
    qryNotesStatus: TWordField;
    qryNotesNoteDate: TDateTimeField;
    qryNotesDueDate: TDateTimeField;
    qryNotesRemindMe: TDateTimeField;
    qryNotesReInterval: TWordField;
    qryNotesNoteCat: TIntegerField;
    qryNotesRefNo: TStringField;
    qryNotesUserID: TStringField;
    qryNotesUserTo: TStringField;
    qryNotesNoteType: TIntegerField;
    qryNotesNoteName: TStringField;
    qryNotesTheNote: TStringField;
    qryNotesSubID: TIntegerField;
    qryLUNote: TADODataSet;
    dtsLUNote: TDataSource;
    qryAttach: TADODataSet;
    dtsAttach: TDataSource;
    qryLUDocType: TADODataSet;
    dtsLUDocType: TDataSource;
    qryToUse: TADOQuery;
    qryGeneral: TADODataSet;
    qryNotesNTAction: TWordField;
    qryNotesUrgent: TBooleanField;
    procedure qryNotesAfterInsert(DataSet: TDataSet);
    procedure qryNotesBeforeOpen(DataSet: TDataSet);
    procedure qryAttachBeforeOpen(DataSet: TDataSet);
    procedure qryAttachAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FEntityID: Integer;
    FSubID: Integer;
    FAttPath : string;
    FAttCopy: boolean;
    function GetNextNoteNo:integer;
  public
    { Public declarations }
    procedure SetActiveQueries(Ready: Boolean);
    procedure DoHyperlink(DocPath : String);
    property EntityID : Integer read FEntityID write FEntityID;
    property SubID : Integer read FSubID write FSubID;
    property AttCopy : boolean read FAttCopy;
    property AttPath : String read FAttPath;
  end;

var
  dtmNotes : TdtmNotes;
  OrigSQL : String;

const
  // Note status type
  nsNone    = 0;
  nsRemind  = 1;
  // Attachment link types
  atNote = 2;

implementation

uses dmMain, fmNoteDetail;

{$R *.DFM}

{ TdtmNotes }

procedure TdtmNotes.DataModuleCreate(Sender: TObject);
begin
  OrigSQL := qryNotes.CommandText;
  FEntityID:= 0;
  FSubID   := 0;
end;

procedure TdtmNotes.SetActiveQueries(Ready: Boolean);
begin
  qryNotes.Active       := Ready;
  qryLUNote.Active      := Ready;
  qryAttach.Active      := Ready;
  qryLUDocType.Active   := Ready;
  if Ready then
  begin
    qryGeneral.Active := True;
    FAttpath := qryGeneral.FieldByName('Valstr').AsString;
    FAttCopy := qryGeneral.FieldByName('ValInt').AsInteger = 1;
    qryGeneral.Active := False;
  end;
end;

procedure TdtmNotes.qryNotesAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('EntityID').AsInteger  := EntityID;
  DataSet.FieldByName('NoteNo').AsInteger    := GetNextNoteNo;
  DataSet.FieldByName('AppID').AsInteger     := AppID;
  DataSet.FieldByName('NoteDate').AsDateTime := Now;
  DataSet.FieldByName('RemindMe').AsDateTime := Now;
  DataSet.FieldByName('UserID').AsString     := dtmMain.CurrentID;
  DataSet.FieldByName('SubID').AsInteger     := SubID;
end;

function TdtmNotes.GetNextNoteNo: integer;
begin
  RunQry(qryToUse,'select Max(NoteNo)+1 from Notes where EntityID='+IntToStr(EntityID),'O');
  if qryToUse.Fields[0].IsNull then
    Result := 1
  else
    Result := qryToUse.Fields[0].AsInteger;
end;

procedure TdtmNotes.qryNotesBeforeOpen(DataSet: TDataSet);
begin
  qryNotes.Parameters.ParamByName('AppID').Value    := AppID;
  qryNotes.Parameters.ParamByName('EntityID').Value := EntityID;
  qryNotes.Parameters.ParamByName('SubID').Value    := SubID;
//  qryCountUrgent.Parameters.ParamByName('EntityID').Value := EntityID;
end;

procedure TdtmNotes.qryAttachBeforeOpen(DataSet: TDataSet);
begin
  qryAttach.Parameters.ParamByName('AppID').Value    := AppID;
  qryAttach.Parameters.ParamByName('EntityID').Value := EntityID;
end;

procedure TdtmNotes.qryAttachAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('AppID').AsInteger      := AppID;
  DataSet.FieldByName('EntID').AsInteger      := EntityID;
  DataSet.FieldByName('MasterID').AsInteger   := qryNotes.FieldByName('NoteID').AsInteger;
  DataSet.FieldByName('TypeID').AsInteger     := atNote;
  DataSet.FieldByName('DateAdded').AsDateTime := Now;
  DataSet.FieldByName('UserID').AsString      := dtmMain.CurrentID;
end;

procedure TdtmNotes.DoHyperlink(DocPath: String);
begin
  CheckDataSet(qryNotes);
  qryAttach.Edit;
  qryAttach.FieldByName('Hyperlink').AsString := DocPath;
  qryAttach.FieldByName('FileName').AsString  := ExtractFilename(DocPath);
  qryAttach.Post;
end;


end.
