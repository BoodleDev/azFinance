//~~ Filter
unit fmBulkLet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, DBGrdClr, dmBulkLet,
  StdCtrls, Spin, Unit32, DBCtrls, Clipbrd, printers, fmGauge, Buttons,
  fmRepFilter, uLSCentral;

type
  TfrmBulkLet = class(TfrmBase)
    grdClients: TDBGrdClr;
    pnlFilter: TPanel;
    btnPrintAll: TToolButton;
    pnlLetter: TPanel;
    lblChoose: TLabel;
    cmbLetters: TComboBox;
    btnOpen: TToolButton;
    dbrLetter: TDBRichEdit;
    redLetter: TRichEdit;
    btnPrintCurr: TToolButton;
    Label1: TLabel;
    Label2: TLabel;
    memFilter: TMemo;
    btnSetFilter: TBitBtn;
    btnFilterDet: TBitBtn;
    imgGreen: TImage;
    imgRed: TImage;
    procedure FormCreate(Sender: TObject);
    procedure grdClientsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPrintAllClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnPrintCurrClick(Sender: TObject);
    procedure btnSetFilterClick(Sender: TObject);
    procedure btnFilterDetClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    dtmBulkLet : TdtmBulkLet;
    frmFilter : TfrmRepFilter;
    procedure DoReplacements;
    procedure OpenLetter;
    procedure PrintLetter;
    procedure SetDataFilter(inFilter, BtnCap: string; imgStop: boolean);
  public
    { Public declarations }
  end;

implementation

uses dmMain;

{$R *.DFM}

procedure TfrmBulkLet.FormCreate(Sender: TObject);
begin
  dtmBulkLet := TdtmBulkLet.Create(Self);
  dtmBulkLet.SetActiveQueries(True);
  //
  frmFilter := TfrmRepFilter.Create(Self);
  frmFilter.CurFldList := dtmBulkLet.qryLoanDet.FieldList;
  //
  dtmMain.SetGrdColors(grdClients);
  //Populating letter combobox
  cmbLetters.Items.Clear;
  dtmBulkLet.qryLetters.First;
  while not dtmBulkLet.qryLetters.EOF do
  begin
    cmbLetters.Items.Add(dtmBulkLet.qryLetters.FieldByName('LetDescription').AsString);
    dtmBulkLet.qryLetters.Next;
  end;
end;

procedure TfrmBulkLet.FormDestroy(Sender: TObject);
begin
  inherited;
  FilterDataSet(dtmBulkLet.qryLoanDet,'');
  dtmBulkLet.SetActiveQueries(False);
  //
  frmFilter.Free;
  frmFilter := nil;
  dtmBulkLet.Free;
  dtmBulkLet := nil;
end;

procedure TfrmBulkLet.grdClientsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'Status' then
  begin
    grdClients.Canvas.Brush.Color := ColorLoanStatus(dtmBulkLet.qryLoandet.FieldByName('Status').AsInteger);
    grdClients.Canvas.FillRect(Rect);
    grdClients.Canvas.TextOut(Rect.Left,Rect.Top+1,GetLoanStatus(dtmBulkLet.qryLoandet.FieldByName('Status').AsInteger));
  end;
end;

{procedure TfrmBulkLet.BuildAndSetFilter;
begin
  FilterDataSet(dtmBulkLet.qryLoanDet,strFilter);
end;
}

procedure TfrmBulkLet.btnPrintAllClick(Sender: TObject);
var
  Records   : Integer;
  PrintProg : TfrmGauge;
begin
  Records := dtmBulkLet.qryLoanDet.RecordCount;
  PrintProg := TfrmGauge.Create(nil);
  PrintProg.SetMaxBound(dtmBulkLet.qryLoanDet.RecordCount);
  if MesDlg('Would you like to print the selected ' + IntToStr(Records) + ' letter(s)?','C') = mrYes then
    if MesDlg('Printing ' + IntToStr(Records) + ' letter(s)?', 'X') = mrYes then
    begin
      dtmBulkLet.qryLoanDet.First;
      while not dtmBulkLet.qryLoanDet.Eof do
      begin
        OpenLetter;
        DoReplacements;
        PrintLetter;
        dtmBulkLet.qryLoanDet.Next;
        PrintProg.IncProg;
      end;
      PrintProg.MaxGauge;
      PrintProg.Free;
    end;
end;

procedure TfrmBulkLet.btnOpenClick(Sender: TObject);
begin
  if cmbLetters.ItemIndex > -1 then
  begin
    dtmBulkLet.qryLetters.Locate('LetDescription',cmbLetters.Text,[]);
    OpenLetter;
    DoReplacements;
  end;
end;

procedure TfrmBulkLet.DoReplacements;
var
  TheFindStr,ReplaceStr : String;
begin
  dtmBulkLet.qryReplace.Parameters.ParamByName('LID').Value := dtmBulkLet.qryLoanDet.FieldByName('LoanID').AsInteger;
  dtmBulkLet.qryReplace.Requery;
  dtmBulkLet.qryLetterFld.First;
  while not dtmBulkLet.qryLetterFld.Eof do
  begin
    TheFindStr := Trim(dtmBulkLet.qryLetterFld.FieldByName('Name').AsString);
    ReplaceStr := Trim(dtmBulkLet.qryReplace.FieldByName(Trim(
      dtmBulkLet.qryLetterFld.FieldByName('FieldName').AsString)).AsString);
    ReplaceREMem(TheFindStr,ReplaceStr,redLetter);
    dtmBulkLet.qryLetterfld.Next;
  end;
end;

procedure TfrmBulkLet.OpenLetter;
begin
  redLetter.Lines.Clear;
  dbrLetter.SelectAll;
  dbrLetter.CopyToClipboard;
  redLetter.ReadOnly := False;
  redLetter.PasteFromClipboard;
  redLetter.ReadOnly := true;
  ClipBoard.Clear;
end;

procedure TfrmBulkLet.PrintLetter;
var
  HMargin,SideMargin : integer;
begin
  SideMargin := Trunc(Printer.PageWidth*0.05);
  HMargin := Trunc(Printer.PageHeight*0.05);
  redLetter.PageRect := Rect(SideMargin,222,Printer.PageWidth-SideMargin,
    Printer.PageHeight-HMargin);
  redLetter.Print('db Letters');
end;

procedure TfrmBulkLet.btnPrintCurrClick(Sender: TObject);
begin
  PrintLetter;
end;

procedure TfrmBulkLet.SetDataFilter(inFilter, BtnCap: string;
  imgStop: boolean);
begin
  if inFilter = '' then
    dtmBulkLet.qryLoanDet.Close
  else
    dtmBulkLet.SetBulkLetterQry(inFilter);
//  FilterDataSet(dtmBulkLet.qryLoanDet,inFilter);
  btnSetFilter.Caption := BtnCap;
  if imgStop then
    btnSetFilter.Glyph := imgRed.Picture.Bitmap
  else
    btnSetFilter.Glyph := imgGreen.Picture.Bitmap;
end;

procedure TfrmBulkLet.btnSetFilterClick(Sender: TObject);
begin
  inherited;
  if (dtmBulkLet.qryLoanDet.Filtered) or (Trim(frmFilter.CurFilter)='') then
    SetDataFilter('','Set filter',True)
  else
    SetDataFilter(frmFilter.CurFilter,'Cancel filter',False);
end;

procedure TfrmBulkLet.btnFilterDetClick(Sender: TObject);
begin
  inherited;
  SetDataFilter('','Set filter',True);
  frmFilter.ShowModal;
  memFilter.Lines.Clear;
  memFilter.Lines := frmFilter.DisplayFilter;
end;

end.
