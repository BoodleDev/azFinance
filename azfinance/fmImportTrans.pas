unit fmImportTrans;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, db, ucbxDBList, ComCtrls;

type
  TfrmImportTrans = class(TForm)
    pcImport: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    DBGrid1: TDBGrid;
    cmbTrans: TComboBox;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    chkHeaders: TCheckBox;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure chkHeadersClick(Sender: TObject);
  private
    { Private declarations }
    FieldList: TStringList;
  public
    { Public declarations }
  end;

var
  frmImportTrans: TfrmImportTrans;

implementation

uses dmBatchTrans;

{$R *.DFM}

procedure TfrmImportTrans.btnOKClick(Sender: TObject);
begin
  if dtmBatchTrans.cdsImportMap.State in [dsEdit,dsInsert] then
    dtmBatchTrans.cdsImportMap.Post;
end;

procedure TfrmImportTrans.FormCreate(Sender: TObject);
begin
  dtmBatchTrans.qryImportFields.Open;
  FieldList := TStringList.Create;
end;

procedure TfrmImportTrans.FormDestroy(Sender: TObject);
begin
  dtmBatchTrans.qryImportFields.Close;
end;

procedure TfrmImportTrans.chkHeadersClick(Sender: TObject);
begin
  if chkHeaders.Checked then
  begin
    dtmBatchTrans.cdsImportMap.First;
    while not dtmBatchTrans.cdsImportMap.Eof do
    begin
      FieldList.Add(dtmBatchTrans.cdsImportMap.FieldByName('ImportField').AsString);
      dtmBatchTrans.cdsImportMap.Edit;
      dtmBatchTrans.cdsImportMap.FieldByName('ImportField').AsString :=
        FieldList.Strings[dtmBatchTrans.cdsImportMap.RecNo - 1];
      dtmBatchTrans.cdsImportMap.Post;
      dtmBatchTrans.cdsImportMap.Next;
    end;
  end
  else
  begin
    FieldList.Clear;
    dtmBatchTrans.cdsImportMap.First;
    while not dtmBatchTrans.cdsImportMap.Eof do
    begin
      FieldList.Add(dtmBatchTrans.cdsImportMap.FieldByName('ImportField').AsString);
      dtmBatchTrans.cdsImportMap.Edit;
      dtmBatchTrans.cdsImportMap.FieldByName('ImportField').AsString := 'Column' +
        IntToStr(dtmBatchTrans.cdsImportMap.RecNo);
      dtmBatchTrans.cdsImportMap.Post;
      dtmBatchTrans.cdsImportMap.Next;
    end;
  end;
end;

end.
