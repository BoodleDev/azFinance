unit fmTransSum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Grids, DBGrids, fmBase, ComCtrls, ToolWin, ExtCtrls,
  StdCtrls, Unit32, DBGrdClr;

type
  TfrmTransSum = class(TfrmBase)
    pnlMain: TPanel;
    grdTSum: TDBGrdClr;
    lblFromDate: TLabel;
    lblToDate: TLabel;
    cbFrom: TComboBox;
    cbTo: TComboBox;
    Label1: TLabel;
    cbxOrder: TComboBox;
    lblOrdFilter: TLabel;
    edtFilter: TEdit;
    btnFilter: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbFromChange(Sender: TObject);
    procedure cbxOrderChange(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
  private
    { Private declarations }
    LstDates : TStringList;
    function GetDatesFilter:string;
    procedure AddDatesToList;
    procedure SetFilterForOrder;
    procedure SetGrdTitleColor;
    procedure IndexResults(inFieldName:string);
  public
    { Public declarations }
  end;

implementation

uses dmReports, dmMain, uReports;

{$R *.DFM}

procedure TfrmTransSum.AddDatesToList;
var
  YMstr :string;
begin
  LstDates := TStringList.Create;
  dtmReports.qryTransSum.First;
  while not dtmReports.qryTransSum.EOF do
  begin
    YMstr := IntToStr(dtmReports.qryTransSum.FieldByName('TsYear').AsInteger)
      +'-'+dtmReports.qryTransSum.FieldByName('TsMonth').AsString;
    if LstDates.IndexOf(YMstr)=-1 then
      LstDates.Add(YMstr);
    dtmReports.qryTransSum.Next;
  end;
  dtmReports.qryTransSum.First;
  cbFrom.Items := LstDates;
  cbTo.Items := LstDates;
end;

function TfrmTransSum.GetDatesFilter: string;
var
  strFrom, strTo : string;
begin
  strFrom := cbFrom.Text;
  Delete(strFrom,Pos('-',strFrom),1);
  strTo := cbTo.Text;
  Delete(strTo,Pos('-',strTo),1);
  Result := 'TsYM >='+strFrom+' and TsYM <= '+strTo;
end;

procedure TfrmTransSum.SetFilterForOrder;
var
  OrdFilter : string;
begin
  OrdFilter := '';
  if Trim(edtFilter.Text)<>'' then
  begin
    case cbxOrder.ItemIndex of
      1: OrdFilter := ' and TransType= '+edtFilter.Text;
      2: OrdFilter := ' and TransCode= '+edtFilter.Text;
    end;
  end;
  FilterDataSet(dtmReports.cdsTSum,GetDatesFilter+OrdFilter);
end;

procedure TfrmTransSum.cbFromChange(Sender: TObject);
begin
  SetFilterForOrder;
end;

procedure TfrmTransSum.FormCreate(Sender: TObject);
begin
  inherited;
  dtmReports := TdtmReports.Create(self);
  dtmReports.qryTransSum.Open;
  AddDatesToList;
  dtmReports.cdsTSum.Open;
end;

procedure TfrmTransSum.FormDestroy(Sender: TObject);
begin
  inherited;
  LstDates.Free;
  FilterDataSet(dtmReports.cdsTSum,'');
  dtmReports.cdsTSum.Close;
  dtmReports.qryTransSum.Close;
  dtmReports.Free;
  dtmReports := nil;
end;

procedure TfrmTransSum.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors(grdTSum);
  cbFrom.ItemIndex := 0;
  cbTo.ItemIndex   := cbTo.Items.Count-1;
  cbxOrder.ItemIndex := 0;
  SetGrdTitleColor;
end;

procedure TfrmTransSum.IndexResults(inFieldName:string);
var
  TheIndexName : string;
  idxno : integer;
begin
  dtmReports.cdsTSum.IndexDefs.Update;
  TheIndexName := 'i_'+Copy(inFieldName,0,Pos(';',inFieldName)-1);
  idxno := dtmReports.cdsTSum.IndexDefs.IndexOf(TheIndexName);
  if idxno = -1 then
    dtmReports.cdsTSum.IndexDefs.Add(TheIndexName,inFieldName,[]);
  dtmReports.cdsTSum.IndexFieldNames := inFieldName;
end;

procedure TfrmTransSum.cbxOrderChange(Sender: TObject);
begin
  inherited;
  lblOrdFilter.Enabled := cbxOrder.ItemIndex <> 0;
  // Do index
  case cbxOrder.ItemIndex of
    1: IndexResults('TransType;TsYM');
    2: IndexResults('TransCode;TsYM');
    else
      IndexResults('TsYM');
  end;
  FilterDataSet(dtmReports.cdsTSum,GetDatesFilter);
  SetGrdTitleColor;
end;

procedure TfrmTransSum.btnFilterClick(Sender: TObject);
begin
  inherited;
  SetFilterForOrder;
end;

procedure TfrmTransSum.SetGrdTitleColor;
var
 i : integer;
begin
  for i := 0 to grdTSum.Columns.Count-1 do
    grdTSum.Columns[i].Title.Color := grdTSum.FixedColor;
  for i := 0 to grdTSum.Columns.Count-1 do
  begin
    case cbxOrder.ItemIndex of
      0: begin
           if grdTSum.Columns[i].FieldName = 'TsYear' then
             grdTSum.Columns[i].Title.Color := clTeal;
           if grdTSum.Columns[i].FieldName = 'TsMonth' then
             grdTSum.Columns[i].Title.Color := clTeal;
           end;
      1: if grdTSum.Columns[i].FieldName = 'TransType' then
           grdTSum.Columns[i].Title.Color := clTeal;
      2: if grdTSum.Columns[i].FieldName = 'TransCode' then
          grdTSum.Columns[i].Title.Color := clTeal;
      end;
 end;
end;

end.

