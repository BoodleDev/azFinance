unit fmPrintLetter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExportData, ShellAPI, Mask, DBCtrls;

type
  TfrmPrintLetter = class(TForm)
    lstLetter: TListBox;
    Label1: TLabel;
    btnOK: TButton;
    btnCancel: TButton;
    ExportData1: TExportData;
    dsPrintData: TADODataSet;
    Label2: TLabel;
    dtsPrintData: TDataSource;
    cmbLoanRef: TComboBox;
    dsLoans: TADODataSet;
    dtsLoans: TDataSource;
    dsFilePath: TADODataSet;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbLoanRefChange(Sender: TObject);
  private
    FClientID: Integer;
    procedure SetClientID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property ClientID: Integer read FClientID write SetClientID;
  end;

var
  frmPrintLetter: TfrmPrintLetter;
  MergePath: String;

implementation

uses dmMain;

{$R *.dfm}

procedure TfrmPrintLetter.btnOKClick(Sender: TObject);
begin
  Case lstLetter.ItemIndex of
    1: dmMain.ShowSqlReport('rptPaidUpLetter_V3Boodle', '&AccountID=' + dsLoans.FieldByName('LoanID').AsString);
  end;
end;

//procedure TfrmPrintLetter.btnOKClick(Sender: TObject);
//var
//  Parameters: String;
//  DocumentID: Integer;
//begin
//  if lstLetter.ItemIndex = 0 then
//    DocumentID := 700
//  else
//    DocumentID := 200;
//
//  Parameters :=
//    'CONNECTION="' + dtmMain.ConnectionString + '" ' +
//    'UID=' + IntToStr(dtmMain.UserKey) + ' ' +
//    'AID=' + dsLoans.FieldByName('LoanID').AsString + ' ' +
//    'APPID=100 ' +
//    'EID=' + dsLoans.FieldByName('EntityID').AsString + ' ' +
//    'DIALOG=0 ATTACH=0 ATTID=0 AONLY=0  ' +
//    'DID=' + IntToStr(DocumentID) + ' TID=1 ' +
//    'P1=' + dsLoans.FieldByName('LoanID').AsString;
//
//
//  ShellExecute(Application.Handle,'Open', 'SmartDox.exe', PChar(Parameters), '', SW_SHOWNORMAL);
//
//
//  (*if ListBox1.ItemIndex = 1 then
//  begin
//    DocName := 'Paid up letter.doc';
//  end
//  else if ListBox1.ItemIndex = 0 then
//  begin
//    DocName :=  'Employment verification letter 2.doc';
//  end;
//  dsFilePath.Open;
//  MergePath := dsFilePath.FieldByName('value').AsString;
//  dsPrintData.Open;
//  //ExportData1.ShowMessageComplete := False;
//  ExportData1.RunExport := True;
//  if not (ParamStr(0) = '') then
//    begin
//      ShellExecute(Application.Handle, 'open', PChar(MergePath +DocName),
//      nil, nil, SW_SHOWNORMAL);
//    end;
//  dsPrintData.Close;
//  dsFilePath.Close;
//  dsLoans.Close; *)
//end;

procedure TfrmPrintLetter.FormCreate(Sender: TObject);
var
  docpath: String;
begin
  docpath := ExtractFilePath(ParamStr(0));
  lstLetter.ItemIndex := 0;
  if not DirectoryExists(docpath +'Letters') then
    CreateDir(docpath +'Letters');
end;

procedure TfrmPrintLetter.SetClientID(const Value: Integer);
begin
  FClientID := Value;
  dsLoans.Close;
  dsLoans.Parameters[0].Value := ClientID;
  dsLoans.Open;

  cmbLoanRef.Items.Add('');
  while not dsLoans.Eof do
  begin
    cmbLoanRef.Items.Add(dsLoans.FieldByName('RefNo').AsString);
    dsLoans.Next;
  end
end;

procedure TfrmPrintLetter.cmbLoanRefChange(Sender: TObject);
begin
  if cmbLoanRef.ItemIndex > 0 then
    dsLoans.Locate('RefNo', cmbLoanRef.Text, []);
  btnOK.Enabled := cmbLoanRef.ItemIndex > 0;
end;

end.
