unit uNoteSys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, ADODB, StrUtils;

  function EditNote(CategoryID: Integer): Boolean;
  function NewNote(CategoryID: integer): Boolean; overload;
  function NewNote(CategoryID: integer; NotePrefix: String): Boolean; overload;
  function InsertNote(CategoryID: Integer; Note: Widestring): Boolean;
  function NoteCount: Integer;
  procedure DisplayNotes(ShowCategory: Boolean);
  procedure DisplayLoanNotes(ShowCategory: Boolean);

var
  Connection: TADOConnection;
  dsNoteSys: TADOQuery;
  Tablename: String;
  Categories: String;
  KeyValue: String;
  UserID: String;
  RichEdit: TRichEdit;
  DisplayCategory: Boolean;
  DepartmentID: Integer = 0;
  SubDepartmentID: Integer = 0;
  DepartmentName: String;
  UseInternalNotes: Boolean;
  SetInternalNotes: Boolean;
  ShowUsernames: Boolean = false;

implementation

uses
  fmNewNote, fmEditNotes, DB;

procedure SetDepartment;
var
  dsDepartment: TADOQuery;
begin
  if DepartmentID = 0 then
  begin
    dsDepartment := TADOQuery.Create(nil);
    try
      dsDepartment.SQL.Text :=
        'SELECT TOP 1 SD.DepartmentID, UD.SubDepartmentID, DP.Name AS DepartmentName, SD.Name AS SubDepartmentName, ' +
        'DP.UseInternalNotes, DP.SetInternalNotes ' +
        'FROM SEC_UserSubDepartment UD ' +
        'LEFT JOIN SEC_SubDepartment SD ON UD.SubDepartmentID = SD.SubDepartmentID ' +
        'LEFT JOIN SEC_User US ON UD.UserID = US.UserID ' +
        'LEFT JOIN SEC_Department DP ON SD.DepartmentID = DP.DepartmentID ' +
        'WHERE Username = ''' + UserID + ''' ' +
        'AND EffectiveDate <= GETDATE() ' +
        'ORDER BY EffectiveDate DESC ';
      dsDepartment.Connection := Connection;
      dsDepartment.Open;
      if dsDepartment.RecordCount = 1 then
      begin
        DepartmentID := dsDepartment.FieldByName('DepartmentID').AsInteger;
        SubDepartmentID := dsDepartment.FieldByName('SubDepartmentID').AsInteger;
        DepartmentName := dsDepartment.FieldByName('DepartmentName').AsString + ' - ' +
          dsDepartment.FieldByName('SubDepartmentName').AsString;
        UseInternalNotes := dsDepartment.FieldByName('UseInternalNotes').AsBoolean;
        SetInternalNotes := dsDepartment.FieldByName('SetInternalNotes').AsBoolean;
      end;
      dsDepartment.Close;
    finally
      dsDepartment.Free;
    end;
  end;
end;

procedure DisplayLoanNotes(ShowCategory: Boolean);
var
  Header: String;
  Internal: String;
  dsNoteSys: TADOQuery;
begin
  SetDepartment;
  DisplayCategory := ShowCategory;

  dsNoteSys := TADOQuery.Create(nil);
  try
    dsNoteSys.Connection := Connection;
    dsNoteSys.SQL.Text :=
      'SELECT NoteID, Tablename, KeyValue, Category, Description AS CategoryName, ' +
      'CreateUser, CreateDate, ' +
      'UpdateDate, NS.DeleteDate, Note, ST.Name, ST.Surname, ' +
      'NS.IsInternal, NS.SubDepartmentID, DP.Name AS DepartmentName, SD.Name AS SubDepartmentName ' +
      'FROM NoteSys NS ' +
      'LEFT JOIN SecurityTbl ST ON NS.CreateUser = ST.UserID ' +
      'LEFT JOIN CodeTable CT ON Category = TypeKey ' +
      'LEFT JOIN SEC_SubDepartment SD ON NS.SubDepartmentID = SD.SubDepartmentID ' +
      'LEFT JOIN SEC_Department DP ON SD.DepartmentID = DP.DepartmentID ' +
      'WHERE ((Tablename = ''' + Tablename + ''' ' +
      '   AND Category IN (' + Categories + ') ' +
      '   AND KeyValue = ''' + Keyvalue + ''') ' +
      '   OR ' +
      '   NS.NoteID IN ' +
      '     (SELECT RN.NoteID ' +
      '     FROM WFL_Request RQ ' +
      '     LEFT JOIN WFL_RequestNote RN ON RQ.RequestID = RN.RequestID ' +
      '     WHERE AccountID = ' + KeyValue + ')) ' +
      'AND NS.DeleteDate IS NULL ' +
      'AND (IsInternal = 0 OR SD.DepartmentID = ' + IntToStr(DepartmentID) + ') ' +
      'ORDER BY CreateDate';

    RichEdit.Clear;
    dsNoteSys.Open;
    //tsNotes.Caption := '  Notes (' + IntToStr(dsNoteSys.RecordCount) + ')  ';
    while not dsNoteSys.Eof do
    begin
      RichEdit.Lines.Insert(0,'');
      RichEdit.Lines.Insert(0,'');
      RichEdit.SelStart := 0;
      RichEdit.SelLength := Length(RichEdit.Lines[0]);
      RichEdit.SelAttributes.Style := RichEdit.SelAttributes.Style - [fsBold];
      RichEdit.Lines.Insert(0,dsNoteSys.FieldByName('Note').AsString);

      if dsNoteSys.FieldByName('IsInternal').AsBoolean then
        Internal := ' (Internal)'
      else
        Internal := '';

      RichEdit.Lines.Insert(0, 'Department: ' + dsNoteSys.FieldByName('DepartmentName').AsString +
        ' - ' +  dsNoteSys.FieldByName('SubDepartmentName').AsString + Internal);
      RichEdit.SelStart := 0;
      RichEdit.SelLength := 11;
      RichEdit.SelAttributes.Style := RichEdit.SelAttributes.Style + [fsBold];

      RichEdit.Lines.Insert(0,'');

      RichEdit.SelStart := 0;
      RichEdit.SelLength := Length(RichEdit.Lines[0]);
      RichEdit.SelAttributes.Style := RichEdit.SelAttributes.Style + [fsBold];

      Header := '';

      if ShowUsernames then
        Header := '"by" ' + '"' + dsNoteSys.FieldByName('Name').AsString +
          ' ' + dsNoteSys.FieldByName('Surname').AsString + ' (' +
          dsNoteSys.FieldByName('CreateUser').AsString + ')"';

      Header := FormatDateTime('dddd, mmmm d yyyy "at" hh:mm AM/PM ' + Header,
        dsNoteSys.FieldByName('CreateDate').AsDateTime);
      if not dsNoteSys.FieldByName('UpdateDate').IsNull then
        Header := Header + FormatDateTime('" (Updated at" hh:mm AM/PM")"',
          dsNoteSys.FieldByName('UpdateDate').AsDateTime);
      RichEdit.Lines.Insert(0, Header);
      RichEdit.Lines.Delete(1);

      dsNoteSys.Next;
    end;
    dsNoteSys.Close;
  finally
    FreeAndNil(dsNoteSys);
  end;
end;

procedure DisplayNotes(ShowCategory: Boolean);
var
  Header: String;
  Internal: String;
  dsNoteSys: TADOQuery;
begin
  SetDepartment;

  DisplayCategory := ShowCategory;
  dsNoteSys := TADOQuery.Create(nil);
  try
    dsNoteSys.SQL.Text :=
      'SELECT NoteID, Tablename, KeyValue, Category, Description AS CategoryName, ' +
      'CreateUser, CreateDate, ' +
      'UpdateDate, NS.DeleteDate, Note, ST.Name, ST.Surname, ' +
      'NS.IsInternal, NS.SubDepartmentID, DP.Name AS DepartmentName, SD.Name AS SubDepartmentName ' +
      'FROM NoteSys NS ' +
      'LEFT JOIN SecurityTbl ST ON NS.CreateUser = ST.UserID ' +
      'LEFT JOIN CodeTable CT ON Category = TypeKey ' +
      'LEFT JOIN SEC_SubDepartment SD ON NS.SubDepartmentID = SD.SubDepartmentID ' +
      'LEFT JOIN SEC_Department DP ON SD.DepartmentID = DP.DepartmentID ' +
      'WHERE NS.DeleteDate IS NULL ' +
      'AND Tablename = ''' + Tablename + ''' ' +
      'AND Category IN (' + Categories + ') ' +
      'AND KeyValue = ''' + Keyvalue + ''' ' +
      'AND (IsInternal = 0 OR SD.DepartmentID = ' + IntToStr(DepartmentID) + ') ' +
      'ORDER BY CreateDate';
    dsNoteSys.Connection := Connection;

    RichEdit.Clear;
    dsNoteSys.Open;
    //tsNotes.Caption := '  Notes (' + IntToStr(dsNoteSys.RecordCount) + ')  ';
    while not dsNoteSys.Eof do
    begin
      RichEdit.Lines.Insert(0,'');
      RichEdit.Lines.Insert(0,'');
      RichEdit.SelStart := 0;
      RichEdit.SelLength := Length(RichEdit.Lines[0]);
      RichEdit.SelAttributes.Style := RichEdit.SelAttributes.Style - [fsBold];
      RichEdit.Lines.Insert(0,dsNoteSys.FieldByName('Note').AsString);

      (*if ShowCategory then
      begin
        RichEdit.Lines.Insert(0, 'Category: ' + dsNoteSys.FieldByName('CategoryName').AsString);
        RichEdit.SelStart := 0;
        RichEdit.SelLength := 9;
        RichEdit.SelAttributes.Style := RichEdit.SelAttributes.Style + [fsBold];
      end;*)

      if dsNoteSys.FieldByName('IsInternal').AsBoolean then
        Internal := ' (Internal)'
      else
        Internal := '';

      RichEdit.Lines.Insert(0, 'Department: ' + dsNoteSys.FieldByName('DepartmentName').AsString +
        ' - ' +  dsNoteSys.FieldByName('SubDepartmentName').AsString + Internal);
      RichEdit.SelStart := 0;
      RichEdit.SelLength := 11;
      RichEdit.SelAttributes.Style := RichEdit.SelAttributes.Style + [fsBold];

      RichEdit.Lines.Insert(0,'');

      RichEdit.SelStart := 0;
      RichEdit.SelLength := Length(RichEdit.Lines[0]);
      RichEdit.SelAttributes.Style := RichEdit.SelAttributes.Style + [fsBold];

      Header := '';

      if ShowUsernames then
        Header := '"by" ' + '"' + dsNoteSys.FieldByName('Name').AsString +
          ' ' + dsNoteSys.FieldByName('Surname').AsString + ' (' +
          dsNoteSys.FieldByName('CreateUser').AsString + ')"';

      Header := FormatDateTime('dddd, mmmm d yyyy "at" hh:mm AM/PM ' + Header,
        dsNoteSys.FieldByName('CreateDate').AsDateTime);
      if not dsNoteSys.FieldByName('UpdateDate').IsNull then
        Header := Header + FormatDateTime('" (Updated at" hh:mm AM/PM")"',
          dsNoteSys.FieldByName('UpdateDate').AsDateTime);
      RichEdit.Lines.Insert(0, Header);
      RichEdit.Lines.Delete(1);

      dsNoteSys.Next;
    end;
    dsNoteSys.Close;
  finally
    FreeAndNil(dsNoteSys);
  end;
end;

function NoteCount: Integer;
begin
  SetDepartment;
  dsNoteSys := TADOQuery.Create(nil);
  try
    dsNoteSys.SQL.Text :=
      'SELECT COUNT(*) ' +
      'FROM NoteSys ' +
      'WHERE DeleteDate IS NULL ' +
      'AND Tablename = ''' + Tablename + ''' ' +
      'AND Category IN (' + Categories + ') ' +
      'AND KeyValue = ''' + Keyvalue + ''' ';
    dsNoteSys.Connection := Connection;

    dsNoteSys.Open;
    Result := dsNoteSys.Fields[0].AsInteger;
    dsNoteSys.Close;
  finally
    dsNoteSys.Free;
  end;
end;

function NewNote(CategoryID: Integer; NotePrefix: String): Boolean;
var
  sCategory: String;
begin
  SetDepartment;

  frmNewNote := TfrmNewNote.Create(nil);
  try
    dsNoteSys := TADOQuery.Create(frmNewNote);
    dsNoteSys.Connection := Connection;
    dsNoteSys.SQL.Text := 'SELECT Description FROM CodeTable WHERE TypeKey = ' + IntToStr(CategoryID);
    dsNoteSys.Open;
    sCategory := dsNoteSys.Fields[0].AsString;
    dsNoteSys.Close;
//      FreeAndNil(dsNoteSys);
    frmNewNote.Caption := 'New Note - ' + sCategory;
    frmNewNote.edtDepartment.Text := DepartmentName;
    frmNewNote.chkIsInternal.Checked := UseInternalNotes;
    frmNewNote.chkIsInternal.Enabled := SetInternalNotes;
    frmNewNote.memNote.Clear;
    if frmNewNote.ShowModal = mrOK then
      begin
        Connection.Execute('INSERT INTO NoteSys (Tablename, KeyValue, Category, SubDepartmentID, IsInternal, '+
          'CreateUser, Note) VALUES (''' + Tablename + ''', ''' + KeyValue + ''', ' +
          IntToStr(CategoryID) + ',' + IntToStr(SubDepartmentID) + ',' + IfThen(frmNewNote.chkIsInternal.Checked, '1', '0') +  ',''' + UserID+ ''',''' +
          NotePrefix + StringReplace(frmNewNote.memNote.Text,'''','''''',[rfReplaceAll]) + ''')');
        Result := True;
        DisplayNotes(DisplayCategory);
      end
    else
      Result := False;
  finally
    frmNewNote.Release;
  end;
end;

function NewNote(CategoryID: integer): Boolean;
begin
  Result := NewNote(CategoryID, '');
end;

function InsertNote(CategoryID: Integer; Note: Widestring): Boolean;
begin
  SetDepartment;

  try
    Connection.Execute('INSERT INTO NoteSys (Tablename, KeyValue, Category,'+
      'CreateUser,Note) VALUES (''' + Tablename + ''', ''' + KeyValue + ''', ' +
      IntToStr(CategoryID) + ',' + '''' + UserID+ ''',''' +
      StringReplace(Note,'''','''''',[rfReplaceAll]) + ''')');
    Result := True;
    DisplayNotes(DisplayCategory);
  except
    Result := False;
  end;
end;

function EditNote(CategoryID: Integer): Boolean;
var
  sCategory: String;
begin
  SetDepartment;

  frmEditNotes := TfrmEditNotes.Create(nil);
  try
    frmEditNotes.UserID := UserID;
    dsNoteSys := TADOQuery.Create(nil);
    dsNoteSys.Connection := Connection;
    dsNoteSys.SQL.Text := 'SELECT Description FROM CodeTable WHERE TypeKey = ' + IntToStr(CategoryID);
    dsNoteSys.Open;
    sCategory := dsNoteSys.Fields[0].AsString;
    dsNoteSys.Close;
    dsNoteSys.SQL.Text :=
      'SELECT CAST(Note AS varchar(50)) + ' +
      'CASE WHEN Len(CAST(Note AS varchar(55))) BETWEEN 51 AND 55 THEN ''...''' +
      'ELSE '''' END AS Preview, NoteID, Tablename, KeyValue, Category, ' +
      'CreateUser, CreateDate, UpdateDate, DeleteDate, Note, ' +
      'CONVERT(varchar(5),CreateDate,108) AS NoteTime ' +
      'FROM NoteSys ' +
      'WHERE DeleteDate IS NULL ' +
      'AND Tablename = ''' + Tablename + ''' ' +
      //'AND Category = ' + IntToStr(CategoryID) + ' ' +
      'AND KeyValue = ' + KeyValue + ' ' +
      'AND CONVERT(varchar(8),CreateDate,112) = CONVERT(varchar(8),getdate(),112) ' +
      'AND CreateUser = ''' + UserID + ''' ' +
      'ORDER BY CreateDate DESC';
    dsNoteSys.Open;
    frmEditNotes.dtsEditNotes.DataSet := dsNoteSys;
    frmEditNotes.btnOK.Enabled := dsNoteSys.RecordCount > 0;
    frmEditNotes.Caption := 'Amend Notes - ' + sCategory;
    if frmEditNotes.ShowModal = mrOK then
    begin
      Result := True;
      DisplayNotes(DisplayCategory);
    end
    else
      Result := False;
  finally
    dsNoteSys.Close;
    FreeAndNil(dsNoteSys);
    FreeAndNil(frmEditNotes);
  end;
end;



end.
