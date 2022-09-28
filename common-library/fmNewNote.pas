unit fmNewNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, ADODB;

type
  TfrmNewNote = class(TForm)
    memNote: TMemo;
    btnCancel: TButton;
    btnOK: TButton;
    Label1: TLabel;
    edtDepartment: TEdit;
    chkIsInternal: TCheckBox;
  private
    FNote: String;
    procedure SetNote(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    property Note: String read FNote write SetNote;
  end;

var
  frmNewNote: TfrmNewNote;

implementation


{$R *.dfm}

{ TForm1 }

procedure TfrmNewNote.SetNote(const Value: String);
begin
  FNote := Value;
end;

end.
