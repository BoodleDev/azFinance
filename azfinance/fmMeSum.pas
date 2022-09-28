unit fmMeSum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Unit32, ExtCtrls, TeeProcs, TeEngine, Chart, DBChart,
  Series, StdCtrls, CheckLst, ComCtrls, ToolWin, Buttons, ActnList, Menus,
  fmRepFilter, cdsSortGrd, Mask, Db, DBGrdCF, ExportData;

type
  TfrmMESum = class(TForm)
    pumRepTpml: TPopupMenu;
    rtNewRep: TMenuItem;
    rtChangeRepName: TMenuItem;
    rtSaveCurRep: TMenuItem;
    rtDelRep: TMenuItem;
    pnlRepSetup: TPanel;
    Label2: TLabel;
    lblCurrentSort: TLabel;
    lblSort: TLabel;
    btnReportMenu: TSpeedButton;
    cbxRepTemplate: TComboBox;
    cbxGrpReport: TCheckBox;
    splScreen: TSplitter;
    pnlRepM: TPanel;
    pnlCurRepFld: TPanel;
    lnlCurRepFld: TLabel;
    lbxCurRep: TListBox;
    pnlBtnCurRep: TPanel;
    btnMovUp: TSpeedButton;
    btnMovDown: TSpeedButton;
    lblsetFldOrd: TLabel;
    pnlAvlRepFld: TPanel;
    lblAvlRepFlds: TLabel;
    lbxRepFlds: TListBox;
    pnlBtnAvlFld: TPanel;
    btnAddToRep: TSpeedButton;
    pnlFilterData: TPanel;
    pnlspace: TPanel;
    imgTrash: TImage;
    memFilter: TMemo;
    btnPrintSumTot: TSpeedButton;
    tlbBase: TToolBar;
    btnPrintRep: TToolButton;
    btnExportToFile: TToolButton;
    pnlMain: TPanel;
    btnExit: TToolButton;
    grdMain: TcdsSortGrd;
    pnlGrd: TPanel;
    Label3: TLabel;
    imgData: TImage;
    btnGetData: TSpeedButton;
    dtpME: TDateTimePicker;
    ExportData1: TExportData;
    Panel1: TPanel;
    Label1: TLabel;
    btnFilterDet: TSpeedButton;
    btnSetFilter: TSpeedButton;
    lblFilterData: TLabel;
    imgRed: TImage;
    imgGreen: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure imgTrashDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure imgTrashDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lbxCurRepDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lbxCurRepDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure btnMovUpClick(Sender: TObject);
    procedure btnMovDownClick(Sender: TObject);
    procedure cbxRepTemplateChange(Sender: TObject);
    procedure btnReportMenuClick(Sender: TObject);
    procedure rtNewRepClick(Sender: TObject);
    procedure rtSaveCurRepClick(Sender: TObject);
    procedure rtChangeRepNameClick(Sender: TObject);
    procedure rtDelRepClick(Sender: TObject);
    procedure btnSetFilterClick(Sender: TObject);
    procedure btnFilterDetClick(Sender: TObject);
    procedure lbxRepFldsDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPrintSumTotClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnGetDataClick(Sender: TObject);
    procedure dtpMEChange(Sender: TObject);
    procedure btnPrintRepClick(Sender: TObject);
    procedure btnExportToFileClick(Sender: TObject);
  private
    { Private declarations }
    frmFilter : TfrmRepFilter;
    //Setup Report
    //function GetSelectedItem(inListBox : TListBox):integer;
    procedure AddFldToCurrentReport(NewInd:integer);
    procedure MoveOrDel_in_CurRep(ToInd: integer);
    procedure MoveRepFldUpDown(MovUp: boolean);
    procedure SetDataFilter(inFilter,BtnCap : string; imgStop: boolean);
    //Report Templates
    procedure LoadReportTemplates;
  public
    { Public declarations }
  end;

const BlankReport = 'Blank report';

implementation

uses dmMain, dmMESum, rptLSCustom;

{$R *.DFM}

procedure TfrmMESum.btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMESum.FormCreate(Sender: TObject);
begin
  dtmMESum := TdtmMESum.Create(Self);
  frmFilter := TfrmRepFilter.Create(nil);
end;

procedure TfrmMESum.FormDestroy(Sender: TObject);
begin
  frmFilter.Free;
  frmFilter := nil;
  dtmMESum.Free;
  dtmMESum := nil;
end;

procedure TfrmMESum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//
end;

procedure TfrmMESum.FormShow(Sender: TObject);
var
  i : integer;
begin
  Self.Color := dtmMain.ScrPnlColor;
  tlbBase.Color := dtmMain.RecBarColor;
  splScreen.Color := dtmMain.ScrPnlColor;
  dtmMain.SetGrdColors(grdMain);
  grdMain.OddColor := dtmMain.OddGrdColor;
  //
  lbxRepFlds.Items.Clear;
  for i := 0 to dtmMESum.fldList.Count-1 do
    lbxRepFlds.Items.Add(dtmMESum.fldList.Names[i]);
  lbxCurRep.Items.Clear;
  //
  LoadReportTemplates;
  //
  dtmMESum.repList := lbxCurRep.Items;
  dtpME.Date := DateToEndOfMonth(IncMonth(Date,-1));
  btnGetData.Glyph := imgRed.Picture.Bitmap;
end;

{-------------------------------------------------------------------------}
{---------------------------- Do Report Setup ----------------------------}
{-------------------------------------------------------------------------}
{function TfrmMESum.GetSelectedItem(inListBox: TListBox): integer;
var
  i : integer;
begin
  Result := -1;
  for i := 0 to inListBox.Items.Count-1 do
  begin
    if inListBox.Selected[i] then
    begin
      Result := i;
      Exit;
    end;
  end;
end;}

procedure TfrmMESum.lbxRepFldsDblClick(Sender: TObject);
begin
  AddFldToCurrentReport(lbxCurRep.ItemIndex);
end;

procedure TfrmMESum.AddFldToCurrentReport(NewInd:integer);
begin
  if lbxCurRep.Items.Count < 9 then
  begin
    if lbxRepFlds.ItemIndex <> -1 then
      lbxCurRep.Items.Insert(NewInd, lbxRepFlds.Items.Strings[lbxRepFlds.ItemIndex]);
  end
  else
    MesDlg('You can only add 9 fields to the report.' +
      ' Remove a field from the current report and try again.','E');
end;

procedure TfrmMESum.MoveOrDel_in_CurRep(ToInd: integer);
var
 i : integer;
begin
  for i := 0 to lbxCurRep.Items.Count-1 do
  begin
    if lbxCurRep.Selected[i] then
    begin
      if ToInd = -99 then
        lbxCurRep.Items.Delete(i)
      else
        lbxCurRep.Items.Move(i,ToInd);
      Exit;
    end;
  end;
end;

procedure TfrmMESum.imgTrashDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TListBox;
end;

procedure TfrmMESum.imgTrashDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  MoveOrDel_in_CurRep(-99);
end;

procedure TfrmMESum.lbxCurRepDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  thePoint : TPoint;
  NewInd : integer;
begin
  thePoint.X := X;
  thePoint.Y := Y;
  NewInd := lbxCurRep.ItemAtPos(thePoint,True);
  if Source is TListBox then
  begin
    if (Source as TListBox).Tag = 99 then
    begin
      AddFldToCurrentReport(NewInd);
    end
    else
    begin
      MoveOrDel_in_CurRep(NewInd);
    end;
  end;
end;

procedure TfrmMESum.lbxCurRepDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TListBox;
end;

procedure TfrmMESum.MoveRepFldUpDown(MovUp: boolean);
var
  i : integer;
begin
  for i := 0 to lbxCurRep.Items.Count-1 do
  begin
    if lbxCurRep.Selected[i] then
    begin
      if MovUp then
      begin
        if i = 0 then Exit;
        lbxCurRep.Items.Move(i,i-1);
      end
      else
      begin
        if i <> lbxCurRep.Items.Count-1 then
          lbxCurRep.Items.Move(i,i+1)
      end;
    end;
  end;
end;

procedure TfrmMESum.btnMovUpClick(Sender: TObject);
begin
  MoveRepFldUpDown(True);
end;

procedure TfrmMESum.btnMovDownClick(Sender: TObject);
begin
  MoveRepFldUpDown(False);
end;

{-------------------------------------------------------------------------}
{---------------------------- Report Templates ---------------------------}
{-------------------------------------------------------------------------}
procedure TfrmMESum.cbxRepTemplateChange(Sender: TObject);
var
  i : integer;
begin
  lbxCurRep.Items.Clear;
  dtmMESum.ExistingReport := False;
  if dtmMESum.qryMEReports.Locate('RepName',cbxRepTemplate.Text,[]) then
  begin
    dtmMESum.ExistingReport := True;
    for i := 1 to 9 do
    begin
      if Trim(dtmMESum.qryMEReports.FieldByName('RepFld'+IntToStr(i)).AsString) <> '' then
        lbxCurRep.Items.Add(dtmMESum.qryMEReports.FieldByName('RepFld'+IntToStr(i)).AsString);
    end;
  end;
end;

procedure TfrmMESum.LoadReportTemplates;
begin
  cbxRepTemplate.Items.Clear;
  cbxRepTemplate.Items.Add(BlankReport);
  dtmMESum.qryMEReports.First;
  while not dtmMESum.qryMEReports.EOF do
  begin
    cbxRepTemplate.Items.Add(dtmMESum.qryMEReports.FieldByName('RepName').AsString);
    dtmMESum.qryMEReports.Next;
  end;
  cbxRepTemplate.ItemIndex := 0;
end;

procedure TfrmMESum.btnReportMenuClick(Sender: TObject);
begin
  pumRepTpml.Popup(
    btnReportMenu.ClientOrigin.X+btnReportMenu.Width-1,
    btnReportMenu.ClientOrigin.Y+btnReportMenu.Height+1);
end;

procedure TfrmMESum.rtNewRepClick(Sender: TObject);
var
  newRepName : string;
begin
  newRepName := InputBox('New report name','Enter new report number - name? (101-Clients list)','');
  if (Trim(newRepName) <> '') and (newRepName<>BlankReport) then
  begin
    if dtmMESum.qryMEReports.Locate('RepName',newRepName,[]) then
    begin
      MesDlg('Report name: '+newRepName+' already exists.','E');
    end
    else
    begin
      dtmMESum.SaveOrInsRepTmpl(newRepName);
      cbxRepTemplate.Items.Add(newRepName);
      cbxRepTemplate.ItemIndex := cbxRepTemplate.Items.IndexOf(newRepName);
      MesDlg('Current report template updated.','I');
    end; //Blank report name
  end; // Blank report OR Cancel btn
end;

procedure TfrmMESum.rtSaveCurRepClick(Sender: TObject);
begin
  if cbxRepTemplate.ItemIndex <> 0 then
  begin
    dtmMESum.SaveOrInsRepTmpl(cbxRepTemplate.Text);
    MesDlg('Current report template updated.','I');
  end
  else
    MesDlg('Cannot save report as "'+BlankReport+'", save report as new report','E');
end;

procedure TfrmMESum.rtChangeRepNameClick(Sender: TObject);
var
  newTmplName : string;
begin
  newTmplName := InputBox('New report name','Enter new report name?',
    cbxRepTemplate.Text);
  if (Trim(newTmplName) <> '') and (newTmplName<>BlankReport) then
  begin
    dtmMESum.qryMEReports.Edit;
    dtmMESum.qryMEReports.FieldByName('RepName').AsString := newTmplName;
    dtmMESum.qryMEReports.Post;
    cbxRepTemplate.Items[cbxRepTemplate.ItemIndex] := newTmplName;
    cbxRepTemplate.ItemIndex := cbxRepTemplate.Items.IndexOf(newTmplName);
    MesDlg('Current report name updated.','I');
  end;
end;

procedure TfrmMESum.rtDelRepClick(Sender: TObject);
begin
  if cbxRepTemplate.ItemIndex <> 0 then
  begin
    if MesDlg('Are you sure you want to delete report: '+
      cbxRepTemplate.Text+'?','C') = mrYes then
    begin
      dtmMESum.qryMEReports.Delete;
      cbxRepTemplate.Items.Delete(cbxRepTemplate.ItemIndex);
      cbxRepTemplate.ItemIndex := 0;
      cbxRepTemplateChange(nil);
    end;
  end
  else
    MesDlg('Can not delete "'+BlankReport+'"','E');
end;

{-------------------------------------------------------------------------}
{------------------------------ Data Filter ------------------------------}
{-------------------------------------------------------------------------}
procedure TfrmMESum.btnSetFilterClick(Sender: TObject);
begin
  // Open Query
  if (dtmMESum.cdsMESum.Filtered) or (Trim(frmFilter.CurFilter)='') then
    SetDataFilter('','Set filter',True)
  else
    SetDataFilter(frmFilter.CurFilter,'Cancel filter',False);
end;

procedure TfrmMESum.SetDataFilter(inFilter, BtnCap: string;
  imgStop: boolean);
begin
  FilterDataSet(dtmMESum.cdsMESum,inFilter);
  btnSetFilter.Caption := BtnCap;
  if imgStop then
    btnSetFilter.Glyph := imgRed.Picture.Bitmap
  else
    btnSetFilter.Glyph := imgGreen.Picture.Bitmap;
end;

procedure TfrmMESum.btnFilterDetClick(Sender: TObject);
begin
  SetDataFilter('','Set filter',True);
  frmFilter.CurFldList := dtmMESum.cdsMESum.FieldList;
  frmFilter.ShowModal;
  memFilter.Lines.Clear;
  memFilter.Lines := frmFilter.DisplayFilter;
end;

procedure TfrmMESum.btnPrintSumTotClick(Sender: TObject);
//var
//  repSummaryTotal : TrepSummaryTotal;
begin
{  repSummaryTotal := TrepSummaryTotal.Create(nil);
  try
    repSummaryTotal.PerpareReport;
    repSummaryTotal.qrmemFilter.Lines.Clear;
    if dtmMain.cdsLS2Data.Filtered then
      repSummaryTotal.qrmemFilter.Lines := memFilter.Lines;
    repSummaryTotal.QuickReport.Preview;
  finally
    repSummaryTotal.Free;
  end;
}
end;

procedure TfrmMESum.btnGetDataClick(Sender: TObject);
begin
  dtpME.Date := DateToEndOfMonth(dtpME.Date);
  if dtmMESum.qryMonthNo.Locate('MonthEndDate',
    FormatDateTime('mm/dd/yyyy',dtpME.Date),[]) then
  begin
    dtmMESum.OpenReportData;
    btnGetData.Glyph := imgGreen.Picture.Bitmap;
  end
  else
    MesDlg('Not data for selected month end','E');
end;

procedure TfrmMESum.dtpMEChange(Sender: TObject);
begin
  btnGetData.Glyph := imgRed.Picture.Bitmap;
end;

procedure TfrmMESum.btnPrintRepClick(Sender: TObject);
var
  repMESum : TrepLSCustom;
begin
  repMESum := TrepLSCustom.Create(Self);
  try
    repMESum.qMemFil.Lines.Clear;
    repMESum.qMemFil.Lines.Add(memFilter.Text);
    repMESum.QuickReport.Preview;
  finally
    repMESum.Free;
  end;
end;

procedure TfrmMESum.btnExportToFileClick(Sender: TObject);
var
  I: Integer;
begin
  {for I := 0 to lbxCurRep.Items.Count - 1 do
  begin
    dtmMESum.cdsMESum.FieldByName(
      dtmMESum.FldList.Values[lbxCurRep.Items[I]]).Visible := False;
  end;}
  try
    Screen.Cursor := crHourGlass;
    dtmMESum.cdsMESum.DisableControls;
    for I := 6 to dtmMESum.cdsMESum.Fields.Count - 1 do
      dtmMESum.cdsMESum.Fields[I].Visible := False;

    for I := 0 to lbxCurRep.Items.Count - 1 do
      dtmMESum.cdsMESum.FieldByName(dtmMESum.FldList.Values[lbxCurRep.Items[I]]).Visible := True;

    ExportData1.RunExport := True;
  finally
    for I := 6 to dtmMESum.cdsMESum.Fields.Count - 1 do
      dtmMESum.cdsMESum.Fields[I].Visible := True;
    dtmMESum.cdsMESum.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

end.
