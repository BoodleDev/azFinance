unit fmEditNotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DBStyleGrid, DBCtrls, Mask,
  DateUtils, DB, ADODB;

type
  TfrmEditNotes = class(TForm)
    DBStyleGrid1: TDBStyleGrid;
    StatusBar1: TStatusBar;
    btnOK: TButton;
    btnCancel: TButton;
    memNotes: TMemo;
    edtNoteID: TDBEdit;
    dtsEditNotes: TDataSource;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNoteIDChange(Sender: TObject);
  private
    { Private declarations }
    CurrentNote: WideString;
    CurrentRecord: Integer;
  public
    { Public declarations }
    UserID: String;
    Notes: array of array of WideString;
  end;

var
  frmEditNotes: TfrmEditNotes;

implementation


{$R *.dfm}

procedure TfrmEditNotes.btnOKClick(Sender: TObject);
var
  I: Integer;
begin
  edtNoteIDChange(nil);
  for I := Low(Notes) to High(Notes) do
  begin
    if Notes[I,1] = '1' then
    begin
      dtsEditNotes.DataSet.RecNo := I + 1;
      TADOQuery(dtsEditNotes.DataSet).Connection.Execute('UPDATE NoteSys SET Note = ''' +
        StringReplace(Notes[I,0], '''', '''''', [rfReplaceAll]) + ''', UpdateDate = getdate() WHERE NoteID = ' +
        dtsEditNotes.DataSet.FieldByName('NoteID').AsString);
    end;
  end;
end;

procedure TfrmEditNotes.FormShow(Sender: TObject);
  function GetDaySuffix(Day: Integer): String;
  var
    sDay: String;
    iDay: Integer;
  begin
    sDay := IntToStr(Day);
    iDay := StrToInt(sDay[Length(sDay)]);
    if iDay in [1,2,3] then
    begin
      if Day in [11..13] then
        Result := 'th'
      else
      begin
        case iDay of
          1: Result := 'st';
          2: Result := 'nd';
          3: Result := 'rd';
        end;
      end;
    end
    else
      Result := 'th';
  end;

begin
    edtNoteID.DataField := '';
    SetLength(Notes,dtsEditNotes.DataSet.RecordCount,2);
    dtsEditNotes.DataSet.First;
    while not dtsEditNotes.DataSet.Eof do
    begin
      Notes[dtsEditNotes.DataSet.RecNo-1,0] := dtsEditNotes.DataSet.FieldByName('Note').AsString;
      Notes[dtsEditNotes.DataSet.RecNo-1,1] := '0';
      dtsEditNotes.DataSet.Next;
    end;
    dtsEditNotes.DataSet.First;
    CurrentRecord := 0;
    edtNoteID.DataField := 'NoteID';
    StatusBar1.SimpleText := '  ' + UserID + ' has created ' +
      IntToStr(dtsEditNotes.DataSet.RecordCount) + ' note\s on today the ' +
      FormatDateTime('d"' + GetDaySuffix(DayOfTheMonth(Date)) + ' of" mmmm yyyy', Date);
end;

procedure TfrmEditNotes.edtNoteIDChange(Sender: TObject);
begin
  if dtsEditNotes.DataSet.Active then
    if High(Notes) >= dtsEditNotes.DataSet.RecNo-1 then
    begin
      if CurrentRecord > 0 then
        if CurrentNote <> memNotes.Text then
        begin
          Notes[CurrentRecord-1,0] := memNotes.Text;
          Notes[CurrentRecord-1,1] := '1';
        end;

      CurrentRecord := dtsEditNotes.DataSet.RecNo;
      CurrentNote := Notes[CurrentRecord -1,0];
      memNotes.Text := CurrentNote;
    end;
end;

end.
