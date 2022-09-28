unit fmAudit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, DBCtrls, StdCtrls, Grids, DBGrids,
  DBGrdCF, ADOgrdCFS, Mask, Buttons, Unit32;

type
  TfrmAudit = class(TfrmBase)
    pnlT: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cbxAuditCat: TComboBox;
    pnlClientDtl: TPanel;
    edtFilter: TEdit;
    lblFilter: TLabel;
    Panel1: TPanel;
    pnlCurrentDtl: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dbtCode: TDBText;
    dbtName: TDBText;
    dbtSurname: TDBText;
    Label12: TLabel;
    dbtIDnum: TDBText;
    Label13: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label22: TLabel;
    grdEntLst: TADOgrdCFS;
    Splitter1: TSplitter;
    btnDelete: TToolButton;
    Panel2: TPanel;
    grdAdt: TADOgrdCFS;
    Label4: TLabel;
    Panel3: TPanel;
    Splitter2: TSplitter;
    grdCurr: TADOgrdCFS;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbxAuditCatChange(Sender: TObject);
    procedure grdAdtDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtFilterChange(Sender: TObject);
    procedure grdAdtEnter(Sender: TObject);
    procedure grdAdtExit(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    AuditList: TStringList;
    procedure LoadAudits;
  public
    { Public declarations }
  end;

implementation

uses dmAudit, dmMain;

{$R *.DFM}

procedure TfrmAudit.FormCreate(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors(grdEntLst);
  grdEntLst.OddColor := dtmMain.OddGrdColor;
  dtmMain.SetGrdColors(grdCurr);
  grdCurr.OddColor := dtmMain.OddGrdColor;
  dtmMain.SetGrdColors(grdAdt);
  grdAdt.OddColor := dtmMain.OddGrdColor;
  //
  dtmAudit := TdtmAudit.Create(Self);
  dtmAudit.SetEntDataStatus(True);
  AuditList := TStringList.Create;
  LoadAudits;
end;

procedure TfrmAudit.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmAudit.SetEntDataStatus(False);
  dtmAudit.Free;
  dtmAudit := nil;
end;

procedure TfrmAudit.LoadAudits;
begin
  AuditList.Clear;
  cbxAuditCat.Items.Clear;
  dtmAudit.qryAuditMn.First;
  while not dtmAudit.qryAuditMn.Eof do
  begin
    cbxAuditCat.Items.Add(dtmAudit.qryAuditMn.FieldByName('AuditDesc').AsString);
    AuditList.Add(dtmAudit.qryAuditMn.FieldByName('RecID').AsString + '=' +
      IntToStr(cbxAuditCat.Items.Count - 1));
    dtmAudit.qryAuditMn.Next;
  end;
end;

procedure TfrmAudit.cbxAuditCatChange(Sender: TObject);
begin
  inherited;
  dtmAudit.qryAuditMn.Locate('RecID',AuditList.Names[cbxAuditCat.ItemIndex],[]);
  dtmAudit.SetEntLUforAudit(dtmAudit.qryAuditMn.FieldByName('AuditTbl').AsString);
end;

procedure TfrmAudit.grdAdtDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if dtmAudit.Fields[dtmAudit.cdsAudit.RecNo,DataCol] = '1' then
  begin
    grdAdt.Canvas.FillRect(Rect);
    grdAdt.Canvas.Font.Color := clRed;
    grdAdt.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2 , Column.Field.AsString);
  end;
end;

procedure TfrmAudit.edtFilterChange(Sender: TObject);
begin
  inherited;
  FilterDataSet(dtmAudit.qryEntList,grdEntLst.SelFld + ' like ' +
    QuotedStr(edtFilter.Text + '%'));
end;

procedure TfrmAudit.grdAdtEnter(Sender: TObject);
begin
  inherited;
  if dtmAudit.cdsAudit.RecordCount > 0 then
    btnDelete.Show;
end;

procedure TfrmAudit.grdAdtExit(Sender: TObject);
begin
  inherited;
  btnDelete.Hide;
end;

procedure TfrmAudit.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if MesDlg('Are you sure you want to delete this audit record?', 'C') = mrYes then
  begin
    dtmAudit.qryAuditData.Locate('RecID', dtmAudit.cdsAudit.FieldByName('RecID').AsInteger, []);
    dtmAudit.cdsAudit.Delete;
    dtmAudit.qryAuditData.Delete;
  end;
end;

end.
