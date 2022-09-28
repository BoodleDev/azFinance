unit fmAttachDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Buttons, db;

type
  TfrmAttachDetail = class(TForm)
    edtRefNo: TDBEdit;
    Label1: TLabel;
    edtDocName: TDBEdit;
    Label2: TLabel;
    cmbCategory: TDBLookupComboBox;
    Label3: TLabel;
    edtFilename: TDBEdit;
    Label4: TLabel;
    btnOpenFile: TSpeedButton;
    dlgFile: TOpenDialog;
    btnSave: TButton;
    btnCancel: TButton;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOpenFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmNotes;

{$R *.DFM}

procedure TfrmAttachDetail.btnSaveClick(Sender: TObject);
begin
  dtmNotes.qryAttach.Post;
  Close;
end;

procedure TfrmAttachDetail.btnCancelClick(Sender: TObject);
begin
  dtmNotes.qryAttach.Cancel;
  Close;
end;

procedure TfrmAttachDetail.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAttachDetail.btnOpenFileClick(Sender: TObject);
begin
  if dlgFile.Execute then
  begin
    edtFilename.Text := dlgFile.Filename;
    if dtmNotes.qryAttach.State = dsBrowse then
      dtmNotes.qryAttach.Edit;
  end;
end;

end.
