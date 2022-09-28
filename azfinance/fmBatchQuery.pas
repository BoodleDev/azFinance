unit fmBatchQuery;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ToolWin, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, Gauges,
  Unit32, NoEdit, DBGrdClr;

type
    TfrmBatchQuery = class(TfrmBase)
    pnlBack: TPanel;
    lblClient: TLabel;
    lblBatch: TLabel;
    Panel1: TPanel;
    grdBatch: TDBGrdClr;
    cbxBatches: TComboBox;
    btnStart: TToolButton;
    lblTransCode: TLabel;
    lblUser: TLabel;
    Label7: TLabel;
    cbxUser: TComboBox;
    pnlEffDate: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    btnStop: TToolButton;
    edtClient: TEdit;
    edtRefNo: TEdit;
    Label1: TLabel;
    lblSort: TLabel;
    btnExportQry: TToolButton;
    edtBatchNo: TEdit;
    edtTransTC: TNoEdit;
    Label2: TLabel;
    cbxDates: TComboBox;
    procedure btnStartClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure grdBatchTitleClick(Column: TColumn);
    procedure btnExportQryClick(Sender: TObject);
    procedure btnExit1Click(Sender: TObject);
    procedure edtTransTCMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    BuildQuery :string;
    FShowHistory: boolean;
    QueryData : string;
    CurrentFldSort : string;
    SortOrder : boolean;
    lstDate : TStringList;
    procedure SetBuildQuery(const Value: string);
    procedure LoadDateList;
    function AddBatchNo:string;
    function AddUserID:string;
    function AddTransCode:string;
    function AddClientCode:string;
    function AddDate:string;
    function AddRefNo:string;
    procedure SetShowHistory(const Value: boolean);
    procedure LoadUsers;
  public
    { Public declarations }
    property ShowHistory:boolean read FShowHistory write SetShowHistory;
  end;

var
  frmBatchQuery: TfrmBatchQuery;

implementation

uses dmMain, dmBatchQuery;

{$R *.DFM}

procedure TfrmBatchQuery.btnExit1Click(Sender: TObject);
begin
  inherited;
  close;
end;

{WB 10/04/2000
This procedure will be called in the parent (DBBase) form's on ShowEvent}
procedure TfrmBatchQuery.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors(grdBatch);
  LoadUsers;
  LoadDateList;
  //
  dtpFrom.Date   := Date;
  dtpTo.Date     := Date;
end;

function TfrmBatchQuery.AddBatchNo: string;
begin
  //grdBatch.Columns[0].Visible := True;
  if Trim(edtBatchNo.Text) <> '' then
  begin
//    Result := 'BatchNo like ''%'+edtBatchNo.Text+'''';
    Result := 'BatchID in (select BatchID '+
     'from lsBatchControl where BatchNo like ''%'+edtBatchNo.Text+''')';
    //grdBatch.Columns[0].Visible := False;
  end
  else
    Result := '';
end;

function TfrmBatchQuery.AddClientCode: string;
begin
  if Trim(edtClient.Text) <>'' then
    Result := 'EntCode='''+Trim(edtClient.Text)+''''
  else
    Result := '';
end;

function TfrmBatchQuery.AddDate: string;
begin
  if cbxDates.ItemIndex <> 0 then
  begin
    Result := lstDate.Values[cbxDates.Text]+
       ' between '''+FormatDateTime('yyyymmdd',dtpFrom.Date)+
       ''' and '''+FormatDateTime('yyyymmdd',dtpTo.Date)+'''';
  end
  else
    Result := '';
end;

function TfrmBatchQuery.AddRefNo: string;
begin
  if Trim(edtRefNo.Text) <> '' then
    Result := 'RefNo='''+Trim(edtRefNo.Text)+''''
  else
    Result := '';
end;

function TfrmBatchQuery.AddTransCode: string;
var
  tmpI : integer;
begin
  try
    tmpI := StrToInt(edtTransTC.Text);
  except
    tmpI := 0;
    MesDlg('Trans. code or type must be a number.','E');
  end;
  //
  case tmpI of
    -1..0 : Result := '';
    1..50 : Result := 'TransType='+edtTransTC.Text+''
    else
      Result := 'TransCode='+edtTransTC.Text;
  end;
end;

function TfrmBatchQuery.AddUserID: string;
begin
  if cbxUser.Text <> 'All' then
    Result := 'UserID ='''+cbxUser.Text+''''
  else
    Result := '';
end;

procedure TfrmBatchQuery.btnStartClick(Sender: TObject);
begin
  inherited;
  // Build Query
  BuildQuery := '';
  SetBuildQuery(AddBatchNo);
  SetBuildQuery(AddUserID);
  SetBuildQuery(AddTransCode);
  SetBuildQuery(AddClientCode);
  SetBuildQuery(AddDate);
  SetBuildQuery(AddRefNo);
  // Open Query
  dtmBatchQuery.OpenBatchQry(QueryData,BuildQuery);
end;

procedure TfrmBatchQuery.btnStopClick(Sender: TObject);
begin
  inherited;
  // Close Query
  dtmBatchQuery.qryBatchQry.Close;
end;

procedure TfrmBatchQuery.SetBuildQuery(const Value: string);
begin
  if Value <> '' then
  begin
    if BuildQuery <> '' then
      BuildQuery := BuildQuery + ' and '+ Value
    else
      BuildQuery := Value;
  end;
end;

procedure TfrmBatchQuery.SetShowHistory(const Value: boolean);
begin
  FShowHistory := Value;
  if ShowHistory then
  begin
    QueryData := 'lsBatchHistory';
  end
  else
  begin
    QueryData := 'BatchProcErrors';
  end;
end;

procedure TfrmBatchQuery.FormCreate(Sender: TObject);
begin
  inherited;
  dtmBatchQuery := TdtmBatchQuery.Create(self);
  lstDate := TStringList.Create;
end;

procedure TfrmBatchQuery.FormDestroy(Sender: TObject);
begin
  inherited;
  lstDate.Free;
  lstDate := nil;
  dtmBatchQuery.Free;
  dtmBatchQuery := nil;
end;

procedure TfrmBatchQuery.LoadUsers;
begin
  dtmBatchQuery.AddComboList(dtmBatchQuery.qryGetUserID,'UserID',
    cbxUser.Items);
  cbxUser.ItemIndex := 0;
end;

procedure TfrmBatchQuery.grdBatchTitleClick(Column: TColumn);
var
  i : integer;
begin
  for i := 0 to grdBatch.Columns.Count-1 do
    grdBatch.Columns[i].Title.Color := dtmMain.FixGrdColor;
  inherited;
  if CurrentFldSort = Column.FieldName then
    SortOrder := not SortOrder
  else
    SortOrder := True;
  SortClientDataSet(Column.FieldName,SortOrder,dtmBatchQuery.cdsBatchQry);
  CurrentFldSort := Column.FieldName;
  lblSort.Caption:= Column.Title.Caption;
  Column.Title.Color := clTeal;
end;

procedure TfrmBatchQuery.btnExportQryClick(Sender: TObject);
begin
  inherited;
  dtmBatchQuery.ExportData1.ExportDataSet := dtmBatchQuery.cdsBatchQry;
  dtmBatchQuery.ExportData1.RunExport     := True;
end;

procedure TfrmBatchQuery.LoadDateList;
var
  i : integer;
begin
  lstDate.Clear;
  lstDate.Add('None=0');
  lstDate.Add('Effective date=EffectDate');
  lstDate.Add('Value date=ValueDate');
  lstDate.Add('Posted date=PostDate');
  //
  cbxDates.Items.Clear;
  for i := 0 to lstDate.Count-1 do
    cbxDates.Items.Add(lstDate.Names[i]);
  cbxDates.ItemIndex := 0;
end;

procedure TfrmBatchQuery.edtTransTCMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  edtTransTC.Hint := 'Transaction type or code';
  Application.ShowHint := true;
end;

end.
