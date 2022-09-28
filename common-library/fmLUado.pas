unit fmLUado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ADODb, ComCtrls, ToolWin, Grids, DBGrids, DBTables, StdCtrls,
  Unit32, ImgList, DBGrdClr, ADOgrdCFS, Db, DBGrdCF;

type
  TfrmLUado = class(TForm)
    ToolBar1: TToolBar;
    btnClose: TToolButton;
    tlbSp1: TToolButton;
    grdLookup: TADOgrdCFS;
    TimerType: TTimer;
    btnSelect: TToolButton;
    tlbSp2: TToolButton;
    imglstMain: TImageList;
    dtsLookup: TDataSource;
    pnlTop: TPanel;
    lblFlt: TLabel;
    lblFldFilter: TLabel;
    edtFilter: TEdit;
    lblCS: TLabel;
    lblCurS: TLabel;
    btnSearch: TToolButton;
    chkEqual: TCheckBox;
    procedure btnCloseClick(Sender: TObject);
    procedure grdLookupDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelectClick(Sender: TObject);
    procedure TimerTypeTimer(Sender: TObject);
    procedure grdLookupKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure grdLookupColExit(Sender: TObject);
    procedure edtFilterChange(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
    CurrentLookup : string;
//    posIns : integer;
    FChoosenID: integer;
    LUdestSet : TDataSet;
    LUdestF   : string;
    strSQL : string;
    newSQL : string;
    procedure SelectCurrentRec;
//    procedure SetInsPos;
    procedure SetAndOpenLU_Data(FirstTime: boolean);
    procedure OpenLU_Data;
  public
    { Public declarations }
    property ChoosenID: integer read FChoosenID;
    procedure SetLookUpForm(LUsource,LUdest : TCustomADODataSet; FrmCaption,
      LUDestFld: string);
  end;

implementation

uses dmMain;

{$R *.DFM}

{ TfrmLUado }

procedure TfrmLUado.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLUado.grdLookupDblClick(Sender: TObject);
begin
  SelectCurrentRec;
end;

procedure TfrmLUado.btnSelectClick(Sender: TObject);
begin
  SelectCurrentRec;
end;

procedure TfrmLUado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TimerType.Enabled := False;
end;

procedure TfrmLUado.SelectCurrentRec;
begin
  FChoosenID := dtsLookup.DataSet.Fields[0].AsInteger;
  if Assigned(LUdestSet) then
    LUdestSet.Locate(LUDestF,dtsLookup.DataSet.Fields[0].AsInteger,[]);
  ModalResult := mrOk;
end;

procedure TfrmLUado.TimerTypeTimer(Sender: TObject);
begin
  CurrentLookUp := '';
end;

procedure TfrmLUado.grdLookupKeyPress(Sender: TObject; var Key: Char);
begin
  CurrentLookUp := CurrentLookUp + Key;
  dtsLookup.DataSet.Locate(grdLookup.SelFld,CurrentLookUp,[loCaseInsensitive,loPartialKey]);
  if Key = #13 then SelectCurrentRec;
end;

procedure TfrmLUado.FormShow(Sender: TObject);
begin
  Self.Color := dtmMain.ScrPnlColor;
  dtmMain.SetGrdColors(grdLookup);
  grdLookup.OddColor := dtmMain.OddGrdColor;
  //
  FChoosenID := -1;
  TimerType.Enabled := True;
  ModalResult := mrNone;
//  grdLookup.SelectedIndex := -1;
  grdLookup.SelectedIndex := 0;
  grdLookup.SetFocus;
  grdLookup.OnColEnter(grdLookup);
end;

{procedure TfrmLUado.SetInsPos;
var
  delPos : integer;
  iFnd : integer;
begin
  iFnd := 1;
  posIns := Pos('-1',strSQL);
  delPos := posIns+1;
  while (posIns > 1) and (iFnd<2) do
  begin
    if strSQL[posIns] = ' ' then
      Inc(iFnd);
    Dec(posIns);
  end;
  posIns := posIns + 2;
  Delete(strSQL,posIns,delPos-posIns+1);
//  LUdestF := strSQL;
end;}

procedure TfrmLUado.SetLookUpForm(LUsource, LUdest: TCustomADODataSet;
  FrmCaption, LUDestFld: string);
var
  grdTW : integer;
  i, iSel : integer;
begin
  if LUsource is TADOQuery then
    strSQL := TADOQuery(LUsource).SQL.Text
  else
    strSQL := TADODataSet(LUsource).CommandText;
  //
//--  SetInsPos;
  iSel := grdLookup.SelectedIndex;
  dtsLookup.DataSet := LUsource;
  Self.Caption      := FrmCaption;
  LUdestSet := LUdest;
  LUdestF   := LUDestFld;
  //
  if not dtsLookup.DataSet.Active then
    SetAndOpenLU_Data(True);
  // Set Form width
  grdTW := 0;
  for i := 0 to grdLookup.Columns.Count -1 do
    grdTW := grdTW + grdLookup.Columns[i].Width;
  Self.Width := grdTW+38;
  Self.Realign;
  if iSel < grdLookup.Columns.Count then
    grdLookup.SelectedIndex := iSel;
end;

procedure TfrmLUado.grdLookupColExit(Sender: TObject);
begin
  grdLookup.Columns[grdLookup.SelectedIndex].Title.Color := grdLookup.FixedColor;
end;

procedure TfrmLUado.edtFilterChange(Sender: TObject);
begin
  if Trim(edtFilter.Text) = '' then
    FilterDataSet(dtsLookup.DataSet,'')
  else
    FilterDataSet(dtsLookup.DataSet,grdLookup.SelFld+' like '''+edtFilter.Text+'%''');
end;

procedure TfrmLUado.btnSearchClick(Sender: TObject);
begin
  if grdLookup.SelFld = '' then
    MesDlg('Please select the field in the grid you wish to search on.','I')
  else
    SetAndOpenLU_Data(False);
(*  tmpFld := dtsLookup.DataSet.FieldByName(grdLookup.SelFld).Origin;
  if tmpFld = '' then
    tmpFld := grdLookup.SelFld;
  //
  lblCurS.Caption := grdLookup.SelectedField.DisplayName + ' like ' + edtFilter.Text;
{  newSQL := strSQL;
  if (Pos('where',newSQL) <> 0) or (Pos('WHERE',newSQL) <> 0) then
    Insert(tmpFld+' like '''+edtFilter.Text+'%'' ',newSQL,posIns)
  else
    Insert('and '+tmpFld+' like '''+edtFilter.Text+'%'' ',newSQL,posIns);
}
  newSQL := strSQL + 'and '+tmpFld+' like '''+edtFilter.Text+'%'' ';
  OpenLU_Data;
  *)
end;

procedure TfrmLUado.SetAndOpenLU_Data(FirstTime: boolean);
var
  tmpSQL : string;
begin
  tmpSQL := '';
  if FirstTime then
    tmpSQL := dtsLookup.DataSet.Fields[0].Origin
  else
  begin
    tmpSQL := dtsLookup.DataSet.FieldByName(grdLookup.SelFld).Origin;
    lblCurS.Caption := grdLookup.SelectedField.DisplayName + ' like ' + edtFilter.Text;
  end;
  if tmpSQL = '' then
    tmpSQL := grdLookup.SelFld;
  if (Pos('where',strSQL) <> 0) or (Pos('WHERE',strSQL) <> 0) then
    tmpSQL := ' and '+ tmpSQL
  else
    tmpSQL := ' where ' + tmpSQL;
  if FirstTime then
    newSQL := strSQL + tmpSQL+' = -1'
  else
  begin
    if chkEqual.Checked then
    begin
      if dtsLookup.DataSet.FieldByName(grdLookup.SelFld).DataType in
        [ftString,ftDate,ftTime,ftDateTime,ftMemo,ftFmtMemo,ftFixedChar,
         ftWideString] then
        newSQL := strSQL + tmpSQL +' = '''+edtFilter.Text+''' '
      else
        newSQL := strSQL + tmpSQL +' = '+edtFilter.Text;
    end
    else
      newSQL := strSQL + tmpSQL +' like '''+edtFilter.Text+'%'' ';
  end;
  OpenLU_Data;
end;

procedure TfrmLUado.OpenLU_Data;
begin
  dtsLookup.DataSet.DisableControls;
  dtsLookup.DataSet.Close;
  FilterDataSet(dtsLookup.DataSet,'');
  try
    if dtsLookup.DataSet is TADOQuery then
      TADOQuery(dtsLookup.DataSet).SQL.Text := newSQL
    else
      TADODataSet(dtsLookup.DataSet).CommandText := newSQL;
  finally
    dtsLookup.DataSet.EnableControls;
    dtsLookup.DataSet.Open;
  end;
end;

end.
