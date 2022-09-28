unit fmPreviewDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, MODI_TLB, ExtCtrls;

type
  TfrmPreviewDoc = class(TForm)
    dsDocuments: TADODataSet;
    dtsDocuments: TDataSource;
    pnlTop: TPanel;
    grdDocuments: TDBGrid;
    pnlClient: TPanel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    grpPreview: TGroupBox;
    pnlPreview: TPanel;
    pnlTools: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    procedure FormResize(Sender: TObject);
    procedure dsDocumentsAfterOpen(DataSet: TDataSet);
    procedure dsDocumentsAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    DocView: TMiDocView;
    Document: IDocument;
    FLoanID: Integer;
    procedure SetLoanID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property LoanID: Integer read FLoanID write SetLoanID;
  end;

var
  frmPreviewDoc: TfrmPreviewDoc;

implementation

uses dmMain;

{$R *.dfm}

{ TfrmPreviewDoc }

procedure TfrmPreviewDoc.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
  dsDocuments.Close;
  dsDocuments.Parameters[0].Value := LoanID;
  dsDocuments.Open;
  dsDocumentsAfterScroll(dsDocuments);
end;

procedure TfrmPreviewDoc.FormResize(Sender: TObject);
begin
  grdDocuments.Columns[0].Width := grdDocuments.ClientWidth -
    grdDocuments.Columns[1].Width - grdDocuments.Columns[2].Width -
    grdDocuments.Columns[3].Width - IndicatorWidth - 5;
end;

procedure TfrmPreviewDoc.dsDocumentsAfterOpen(DataSet: TDataSet);
begin
  TDateTimeField(dsDocuments.FieldByName('IndexDate')).DisplayFormat := ShortDateTimeFormat;
end;

procedure TfrmPreviewDoc.dsDocumentsAfterScroll(DataSet: TDataSet);
begin
  {if Self.Showing then
  begin }
    if dsDocuments.FieldByName('DocumentID').AsInteger > 0 then
    begin
      DocView.FileName := DocFolder + dsDocuments.FieldByName('DocumentID').AsString +
        '.' + '001';
      btnOK.Enabled := True;
    end
    else
      btnOK.Enabled := False;
  //end;
end;

procedure TfrmPreviewDoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsDocuments.AfterScroll := nil;
  DocView.FileName := '';
  DocView.Parent := nil;
  FreeAndNil(DocView);
end;

procedure TfrmPreviewDoc.btnOKClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmPreviewDoc.FormCreate(Sender: TObject);
begin
  DocView := TMiDocView.Create(Self);
  DocView.Parent := pnlPreview;
  DocView.Align := alClient;
  DocView.Show;
  DocView.FitMode := miByTextWidth;
end;

end.
