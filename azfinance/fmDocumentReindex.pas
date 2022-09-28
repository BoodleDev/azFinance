unit fmDocumentReIndex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Mask, DB, ADODB;

type
  TfrmDocumentReindex = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    cmdNewDocument: TDBLookupComboBox;
    btnCancel: TButton;
    btnOK: TButton;
    qryDocument: TADOQuery;
    dtsDocument: TDataSource;
    qryDocumentDocumentID: TAutoIncField;
    qryDocumentLoanRef: TStringField;
    qryDocumentDocType: TStringField;
    qryDocumentDescription: TStringField;
    qryDocumentPages: TWordField;
    qryDocLookup: TADOQuery;
    dtsDocLookup: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ReindexDocument(ConnectionString: String; DocumentID: Integer): Boolean;

var
  frmDocumentReindex: TfrmDocumentReindex;

implementation

{$R *.dfm}

function ReindexDocument(ConnectionString: String; DocumentID: Integer): Boolean;
begin
  Result := False;
  frmDocumentReindex := TfrmDocumentReindex.Create(nil);
  try
    with frmDocumentReindex do
    begin
      qryDocLookup.ConnectionString := ConnectionString;
      qryDocLookup.Open;

      qryDocument.ConnectionString := ConnectionString;
      qryDocument.Parameters[0].Value := DocumentID;
      qryDocument.Open;
      qryDocument.Edit;

      if ShowModal = mrOK then
      begin
        qryDocument.Post;
        Result := True;
      end
      else
        qryDocument.Cancel;

      qryDocument.Close;
      qryDocLookup.Close;
    end;
  finally
    FreeAndNil(frmDocumentReindex);
  end;
end;

end.
