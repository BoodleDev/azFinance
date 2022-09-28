unit dmAudit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, DBClient, Provider, Unit32;

type
  TdtmAudit = class(TDataModule)
    qryAuditMn: TADODataSet;
    qryAuditDtl: TADODataSet;
    dtsAuditMn: TDataSource;
    qryCurrData: TADODataSet;
    dtsCurrData: TDataSource;
    qryAuditData: TADODataSet;
    dtsAuditData: TDataSource;
    cdsAudit: TClientDataSet;
    dspAudit: TDataSetProvider;
    dtsAudit: TDataSource;
    qryAdtKeys: TADODataSet;
    qryEntList: TADODataSet;
    dtsEntList: TDataSource;
    procedure qryEntListAfterScroll(DataSet: TDataSet);
  private
    LinkID: String;
    procedure SetAuditData;
    procedure CheckForDiff;
    { Private declarations }
  public
    { Public declarations }
    Fields : Array of Array of String;
    procedure SetCurrentData;
    procedure SetEntDataStatus(Ready: boolean);
    procedure SetEntLUforAudit(inTbl : string);
  end;

var
  dtmAudit: TdtmAudit;

Const
  ID = '*';

implementation

uses dmMain;

{$R *.DFM}

{ TdtmAudit }

procedure TdtmAudit.SetEntDataStatus(Ready: boolean);
begin
  Screen.Cursor := crHourGlass;
  try
    qryAuditMn.Active := Ready;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TdtmAudit.SetEntLUforAudit(inTbl : string);
begin
  Screen.Cursor := crHourGlass;
  qryEntList.Close;
  if qryAuditMn.FieldByName('Type').AsInteger = 1 then
  begin
    qryEntList.CommandType := cmdStoredProc;
    qryEntList.CommandText := qryAuditMn.FieldByName('ParentTbl').AsString;
  end
  else
  begin
    qryEntList.CommandType := cmdText;
    qryEntList.CommandText := 'select * from ' +
      qryAuditMn.FieldByName('ParentTbl').AsString +
      ' where ' + qryAuditMn.FieldByName('ChildFld').AsString + ' IN ' +
      '(select Distinct ' + qryAuditMn.FieldByName('ParentFld').AsString +
      ' from ' +qryAuditMn.FieldByName('AuditTbl').AsString + ')';
  end;
  try
    qryEntList.Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TdtmAudit.SetCurrentData;
begin
  qryCurrData.Close;
  qryCurrData.CommandText := 'SELECT ';
  qryAuditDtl.Open;
  qryAuditDtl.First;
  while not qryAuditDtl.Eof do
  begin
    qryCurrData.CommandText := qryCurrData.CommandText +
      qryAuditDtl.FieldByName('FldName').AsString + ' ' +
      QuotedStr(qryAuditDtl.FieldByName('DisplayN').AsString) + ', ';
    qryAuditDtl.Next;
  end;  
  qryCurrData.CommandText := Copy(qryCurrData.CommandText, 1,
    Length(qryCurrData.CommandText) - 2)+
    ' FROM ' + qryAuditMn.FieldByName('DataTbl').AsString;
  if qryEntList.FieldByName(qryAuditMn.FieldByName('ParentFld').AsString).IsNull then
    LinkID := '-1000000'
  else
    LinkID := qryEntList.FieldByName(qryAuditMn.FieldByName('ParentFld').AsString).AsString;
  //
  qryCurrData.CommandText := qryCurrData.CommandText +
    ' WHERE ' + qryAuditMn.FieldByName('ChildFld').AsString + ' = ' + LinkID;
  try
    qryCurrData.Open;
    SetAuditData;
  except
    cdsAudit.Close;
    MesDlg('The audit fields have not been properly setup in the database','E');
  end;
end;

procedure TdtmAudit.SetAuditData;
begin
  cdsAudit.Close;
  qryAuditData.Close;
  qryAuditData.CommandText := 'SELECT RecID,';
  qryAuditDtl.Open;
  qryAuditDtl.First;
  while not qryAuditDtl.Eof do
  begin
    qryAuditData.CommandText := qryAuditData.CommandText +
    qryAuditDtl.FieldByName('FldName').AsString +
      ' ' + QuotedStr(qryAuditDtl.FieldByName('DisplayN').AsString) + ', ';
    qryAuditDtl.Next;
  end;
  qryAuditData.CommandText := Copy(qryAuditData.CommandText, 1,
    Length(qryAuditData.CommandText) - 2) +
    ' from ' + qryAuditMn.FieldByName('AuditTbl').AsString +
    ' where ' + qryAuditMn.FieldByName('ChildFld').AsString + ' = ' +
    LinkID + ' ORDER BY DateAdded ';
  qryAuditData.Open;
  cdsAudit.Open;
  cdsAudit.Fields[0].Visible := False;
  cdsAudit.CancelUpdates;
  cdsAudit.Refresh;
  CheckForDiff;
end;

procedure TdtmAudit.CheckForDiff;
Var
  I: Integer;
  RecList: TStringList;
begin
  dtsAudit.DataSet := nil;
  RecList := TStringlist.Create;
  SetLength(Fields, cdsAudit.RecordCount + 1, cdsAudit.FieldCount);
  //
  for I := 0 to qryCurrData.FieldCount - 1  do
    RecList.Add(qryCurrData.Fields[I].AsString);
  //
  cdsAudit.First;
  while not cdsAudit.Eof do
  begin
    for I := 1 to cdsAudit.FieldCount - 1 do
    begin
      if (Lowercase(cdsAudit.Fields[I].AsString) <> Lowercase(RecList[I-1])) then
        Fields[cdsAudit.RecNo,I-1] := '1'
      else
        Fields[cdsAudit.RecNo,I-1] := '0';
      RecList[I-1] := cdsAudit.Fields[I].AsString;
    end;
    cdsAudit.Next;
  end;
  cdsAudit.First;
  dtsAudit.Dataset := cdsAudit;
end;

procedure TdtmAudit.qryEntListAfterScroll(DataSet: TDataSet);
begin
  try
    Screen.Cursor := crHourGlass;
    SetCurrentData;
  finally
    Screen.Cursor := crDefault;
  end;
end;

end.
