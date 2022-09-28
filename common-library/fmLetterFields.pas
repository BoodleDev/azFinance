unit fmLetterFields;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBGrdClr, StdCtrls, ExtCtrls, db, dbctrls, Clipbrd;

type
  TfrmLetterFields = class(TForm)
    grdCodes: TDBGrdClr;
    Panel1: TPanel;
    chkTop: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure chkTopClick(Sender: TObject);
    procedure grdCodesDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AddEdit: TDBRichEdit;
    procedure AddFields(RichEdit: TDBRichEdit);
  end;

var
  frmLetterFields: TfrmLetterFields;

implementation

uses dmLoadLet, dmMain, fmLoadLetter;

{$R *.DFM}

procedure TfrmLetterFields.FormCreate(Sender: TObject);
begin
  dtmMain.SetGrdColors(grdCodes);
end;

procedure TfrmLetterFields.chkTopClick(Sender: TObject);
begin
  if chkTop.Checked then
    Self.FormStyle := fsStayOnTop
  else
    Self.FormStyle := fsNormal;
end;

procedure TfrmLetterFields.grdCodesDblClick(Sender: TObject);
var
  tmpTxt: String;
begin
 tmpTxt := dtmLoadLet.qryLetterCodes.FieldByName('Name').AsString;

  if AddEdit.FindText(' ',AddEdit.Selstart-1,1,[]) = -1 then
    tmpTxt := ' ' + tmpTxt;
  Clipboard.SetTextBuf(PChar(tmpTxt));
  AddEdit.PasteFromClipboard;
  ClipBoard.Clear;

 { if not (dtmLoadLet.qryLoadLetters.State in [dsInsert,dsEdit]) then
    dtmLoadLet.qryLoadLetters.Edit;

  AddEdit.Text := Copy(AddEdit.Text,1,AddEdit.SelStart) +
    dtmLoadLet.qryLetterCodes.FieldByName('Name').AsString +
    Copy(AddEdit.Text, AddEdit.SelStart + AddEdit.SelLength,
    Length(AddEdit.Text) - AddEdit.SelStart + AddEdit.SelLength);   }
end;

procedure TfrmLetterFields.AddFields(RichEdit: TDBRichEdit);
begin
  AddEdit := RichEdit;
  Show;
end;

end.
