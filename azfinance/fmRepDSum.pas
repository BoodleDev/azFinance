unit fmRepDSum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ToolWin, ComCtrls, StdCtrls, Grids, DBGrids, CheckLst,
  ExtCtrls, Unit32, fmRepFilter, Buttons, cdsSortGrd, DBGrdCF;

type
  TfrmRepDSum = class(TfrmBase)
    pnlMain: TPanel;
    lblNoteDet: TLabel;
    cbxGroupBy: TComboBox;
    btnPrintRep: TToolButton;
    btnExport: TToolButton;
    Label1: TLabel;
    memFilter: TMemo;
    Label2: TLabel;
    btnSetFilter: TBitBtn;
    btnFilterDet: TBitBtn;
    imgRed: TImage;
    imgGreen: TImage;
    pnlSort: TPanel;
    Label8: TLabel;
    grdMain: TcdsSortGrd;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxGroupByChange(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintRepClick(Sender: TObject);
    procedure btnSetFilterClick(Sender: TObject);
    procedure btnFilterDetClick(Sender: TObject);
  private
    { Private declarations }
    frmFilter : TfrmRepFilter;
    CurrentSortOrder : string;
    procedure SetDataFilter(inFilter, BtnCap: string; imgStop: boolean);
  public
    { Public declarations }
  end;

implementation

uses dmReports, uReports, dmMain;

{$R *.DFM}

procedure TfrmRepDSum.FormCreate(Sender: TObject);
begin
  inherited;
  dtmReports := TdtmReports.Create(Self);
  dtmReports.cdsDSum.Open;
  frmFilter := TfrmRepFilter.Create(Self);
  frmFilter.CurFldList := dtmReports.cdsDSum.FieldList;
end;

procedure TfrmRepDSum.FormDestroy(Sender: TObject);
begin
  inherited;
  frmFilter.Free;
  frmFilter := nil;
  dtmReports.cdsDSum.Close;
  dtmReports.Free;
  dtmReports := nil
end;

procedure TfrmRepDSum.FormShow(Sender: TObject);
begin
  inherited;
  Self.Color := dtmMain.ScrPnlColor;
  dtmMain.SetGrdColors(grdMain);
  grdMain.OddColor := dtmMain.OddGrdColor;
  cbxGroupBy.ItemIndex := 0;
  cbxGroupByChange(self);
end;

procedure TfrmRepDSum.SetDataFilter(inFilter, BtnCap: string;
  imgStop: boolean);
begin
  FilterDataSet(dtmReports.cdsDSum,inFilter);
  btnSetFilter.Caption := BtnCap;
  if imgStop then
    btnSetFilter.Glyph := imgRed.Picture.Bitmap
  else
    btnSetFilter.Glyph := imgGreen.Picture.Bitmap;
end;

procedure TfrmRepDSum.btnPrintRepClick(Sender: TObject);
begin
  inherited;
  dtmReports.CurFilter := memFilter.Text;
  dtmReports.ReportGrp := cbxGroupBy.ItemIndex;
  LoadReport(86,False);
end;

procedure TfrmRepDSum.cbxGroupByChange(Sender: TObject);
begin
  inherited;
  case cbxGroupBy.ItemIndex of
    0: CurrentSortOrder := 'EntCode;LoanID';
    1: CurrentSortOrder := 'BranchID;EntCode;LoanID';
    2: CurrentSortOrder := 'EmpID;EntCode;LoanID';
    3: CurrentSortOrder := 'FunderID;EntCode;LoanID';
    4: CurrentSortOrder := 'LoanType;EntCode;LoanID';
  end;
  SortClientDataSet(CurrentSortOrder,True,dtmReports.cdsDSum);
end;

procedure TfrmRepDSum.btnExportClick(Sender: TObject);
begin
  inherited;
  dtmReports.ExportData1.ExportDataSet := dtmReports.cdsDSum;
  dtmReports.ExportData1.RunExport     := True;
end;

procedure TfrmRepDSum.btnSetFilterClick(Sender: TObject);
begin
  inherited;
  if (dtmReports.cdsDSum.Filtered) or (Trim(frmFilter.CurFilter)='') then
    SetDataFilter('','Set filter',True)
  else
    SetDataFilter(frmFilter.CurFilter,'Cancel filter',False);
end;

procedure TfrmRepDSum.btnFilterDetClick(Sender: TObject);
begin
  inherited;
  SetDataFilter('','Set filter',True);
  frmFilter.ShowModal;
  memFilter.Lines.Clear;
  memFilter.Lines := frmFilter.DisplayFilter;
end;

end.
