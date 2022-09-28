unit fmRepLSum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ToolWin, ComCtrls, StdCtrls, ExtCtrls, CheckLst, Grids,
  DBGrids, Unit32, cdsSortGrd, DBGrdClr, Buttons, fmRepFilter, DBGrdCF;

type
  TfrmRepLSum = class(TfrmBase)
    pnlMain: TPanel;
    cbxGroupBy: TComboBox;
    lblNoteDet: TLabel;
    Label1: TLabel;
    imgRed: TImage;
    imgGreen: TImage;
    Label7: TLabel;
    cbxRepList: TComboBox;
    grdLoanSum: TcdsSortGrd;
    pnlSort: TPanel;
    Label8: TLabel;
    lblSort: TLabel;
    btnPrintRep: TToolButton;
    btnExport: TToolButton;
    memFilter: TMemo;
    Label2: TLabel;
    btnSetFilter: TBitBtn;
    btnFilterDet: TBitBtn;
    chkDetail: TCheckBox;
    procedure cbxGroupByChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPrintRepClick(Sender: TObject);
    procedure btnExportToFileClick(Sender: TObject);
    procedure btnArrAgeAnClick(Sender: TObject);
    procedure btnFilterDetClick(Sender: TObject);
    procedure btnSetFilterClick(Sender: TObject);
    procedure chkDetailClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure grdLoanSumTitleClick(Column: TColumn);
  private
    { Private declarations }
    frmFilter : TfrmRepFilter;
    CurrentSortOrder : string;
    ReportList: TStringlist;
    FilterOn : boolean;
    procedure LoanReportList;
    procedure PrintArrControlRep;
    procedure PrintEmpWeeklyRep;
    procedure PrintRepPortAtRisk;
//    procedure PrintProvExpenseRatio;
    procedure SetDataFilter(inFilter, BtnCap: string; imgStop: boolean);
  public
    { Public declarations }
  end;

implementation

uses dmReports, uReports, dmMain, uLSConst, uConst, fmReportDates;

{$R *.DFM}

procedure TfrmRepLSum.FormCreate(Sender: TObject);
begin
  inherited;
  dtmReports := TdtmReports.Create(Self);
  frmFilter := TfrmRepFilter.Create(Self);
  frmFilter.CurFldList := dtmReports.cdsLSum.FieldList;
  ReportList := TStringlist.Create;
  FilterOn := False;
  //Set report detail property
  dtmReports.PrintDetail := True;

  pnlMain.Color := dtmMain.ScrPnlColor;
  dtmMain.SetGrdColors(grdLoanSum);
  grdLoanSum.OddColor := dtmMain.OddGrdColor;

  dtmReports.cdsLSum.Open;
  LoanReportList;
  cbxGroupBy.ItemIndex := 0;
  cbxGroupByChange(self);
  //
  {if FileExists(AppDir+ViewDir+'LSRepSum.grd') then
    grdLoanSum.Columns.LoadFromFile(AppDir+ViewDir+'LSRepSum.grd');}
end;

procedure TfrmRepLSum.FormDestroy(Sender: TObject);
begin
  inherited;
  //grdLoanSum.Columns.SaveToFile(AppDir+ViewDir+'LSRepSum.grd');
  dtmReports.cdsLSum.Close;
  ReportList.Free;
  frmFilter.Free;
  frmFilter := nil;
  dtmReports.Free;
  dtmReports := nil;
end;

procedure TfrmRepLSum.SetDataFilter(inFilter, BtnCap: string;
  imgStop: boolean);
begin
  FilterDataSet(dtmReports.cdsLSum,inFilter);
  btnSetFilter.Caption := BtnCap;
  FilterOn := not imgStop;
  if imgStop then
    btnSetFilter.Glyph := imgRed.Picture.Bitmap
  else
    btnSetFilter.Glyph := imgGreen.Picture.Bitmap;
end;

//procedure TfrmRepLSum.PrintProvExpenseRatio;
//begin
//  LoadReport(StrToInt(ReportList.Values[cbxRepList.Text]),False);
//end;

procedure TfrmRepLSum.PrintRepPortAtRisk;
begin
  frmRptDates := TfrmRptDates.Create(Self);
  try
    frmRptDates.ShowModal;
  finally
    frmRptDates.Free;
  end;
//  dtmReports.qryRepAtRisk.Parameters[0].Value := dtmReports.qryMonthEndDates.FieldByName('MonthEndDate').AsString;
  LoadReport(StrToInt(ReportList.Values[cbxRepList.Text]),False);
end;

procedure TfrmRepLSum.PrintArrControlRep;
begin
  dtmReports.cdsData.Close;
  dtmReports.spcArrControl.Close;
  dtmReports.dspData.DataSet := dtmReports.spcArrControl;
//  dtmReports.spcArrControl.Open;
  dtmReports.cdsData.Open;
  dtmReports.spcArrControl.Close;
  cbxGroupBy.ItemIndex := 0;
  if FilterOn then
    FilterDataSet(dtmReports.cdsData,frmFilter.CurFilter)
  else
    FilterDataSet(dtmReports.cdsData,'');
  dtmReports.ReportGrp := cbxGroupBy.ItemIndex;
  LoadReport(83,False);
  dtmReports.cdsData.Close;
  FilterDataSet(dtmReports.cdsData,'');
end;

procedure TfrmRepLSum.PrintEmpWeeklyRep;
var
 WeekToPrint : String;
begin
  WeekToPrint :='1';
  if InputQuery('Employee weekly report','Select the week to print report for',WeekToPrint) then
  begin
    dtmReports.ReportTag := StrToInt(WeekToPrint);
    dtmReports.ReportGrp := cbxGroupBy.ItemIndex;
    LoadReport(StrToInt(ReportList.Values[cbxRepList.Text]),False);
  end;
end;

procedure TfrmRepLSum.btnPrintRepClick(Sender: TObject);
begin
  inherited;
  dtmReports.CurFilter :='';
  if FilterOn then
    dtmReports.CurFilter := memFilter.Text;
  dtmReports.ReportGrp := cbxGroupBy.ItemIndex;
  case StrToInt(ReportList.Values[cbxRepList.Text]) of
    83   :  PrintArrControlRep;
    89   :  PrintEmpWeeklyRep;
    116  :  PrintRepPortAtRisk;
   else
   LoadReport(StrToInt(ReportList.Values[cbxRepList.Text]),False);
  end;
end;

procedure TfrmRepLSum.cbxGroupByChange(Sender: TObject);
begin
  inherited;
  case cbxGroupBy.ItemIndex of
    0: CurrentSortOrder := 'EntCode;LoanID';
    1: CurrentSortOrder := 'BranchID;EntCode;LoanID';
    2: CurrentSortOrder := 'EmpID;EntCode;LoanID';
    3: CurrentSortOrder := 'FunderID;EntCode;LoanID';
    4: CurrentSortOrder := 'LoanType;EntCode;LoanID';
  end;
  SortClientDataSet(CurrentSortOrder,True,dtmReports.cdsLSum);
end;

procedure TfrmRepLSum.btnExportToFileClick(Sender: TObject);
begin
  inherited;
  dtmReports.ExportData1.ExportDataSet := dtmReports.cdsLSum;
  dtmReports.ExportData1.RunExport     := True;
end;

procedure TfrmRepLSum.btnArrAgeAnClick(Sender: TObject);
begin
  inherited;
  LoadReport(75,False);
end;

procedure TfrmRepLSum.LoanReportList;
var
 i : integer;
begin
  ReportList.Clear;
  ReportList.Add(rplLoanSummary);  //'201 - Loan summary=80'
  ReportList.Add(rplLoanForPrd);  // '202 - Loan for period=82'
  ReportList.Add(rplLoanAge);     // '300 - Loan Age=81'
  ReportList.Add(rplArrControl);  // '301 - Arrears control=83'
  //ReportList.Add(rplArrAnalysis); // '302 - Arrears amt. analysis per prd=75'
  ReportList.Add(rplLoanFee);     // '400 - Loan fees=84'
  ReportList.Add(rplLoanFeeAnal); // '401 - Loan fee analysis=85'
  ReportList.Add(rplEmployee);    // '500 - Employee Report'
  ReportList.Add(rplInsurance);   // '501 - Insurance = 88'
  ReportList.Add(rplEmpMthly);    // '502 - Employee Monthly = 89'
  ReportList.Add(rplImpactSum);   // '800 - Impact summary report=74'
  ReportList.Add(rplPortfoliaRisk); // '900 - Portfolio at risk=116';
  ReportList.Add(rplProvExpenseRatio);//'910 - Provision Expense Ratio=120';
  ReportList.Add(rplWriteOffRatio);//'920 - Write Off Ratio=122';
  //
  cbxRepList.Items.Clear;
  for i := 0 to ReportList.Count-1 do
    cbxRepList.Items.Add(ReportList.Names[i]);
  cbxRepList.ItemIndex := 0;
end;

procedure TfrmRepLSum.btnFilterDetClick(Sender: TObject);
begin
  inherited;
  SetDataFilter('','Set filter',True);
  frmFilter.ShowModal;
  memFilter.Lines.Clear;
  memFilter.Lines := frmFilter.DisplayFilter;
end;

procedure TfrmRepLSum.btnSetFilterClick(Sender: TObject);
begin
  inherited;
  if (dtmReports.cdsLSum.Filtered) or (Trim(frmFilter.CurFilter)='') then
    SetDataFilter('','Set filter',True)
  else
    SetDataFilter(frmFilter.CurFilter,'Cancel filter',False);
end;

procedure TfrmRepLSum.chkDetailClick(Sender: TObject);
begin
  inherited;
  if chkDetail.Checked then
    dtmReports.PrintDetail := True
  else
    dtmReports.PrintDetail := False;
end;

procedure TfrmRepLSum.btnExportClick(Sender: TObject);
begin
  inherited;
  dtmReports.ExportData1.ExportDataSet := dtmReports.cdsLSum;
  dtmReports.ExportData1.RunExport     := True;
end;

procedure TfrmRepLSum.grdLoanSumTitleClick(Column: TColumn);
begin
  inherited;
  //
end;

end.
