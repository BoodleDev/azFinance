unit fmLURel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ComCtrls, ToolWin, Grids, DBGrids, DBTables, StdCtrls,
  Unit32, ImgList, DBGrdClr;

type
  TfrmLURel = class(TForm)
    ToolBar1: TToolBar;
    btnClose: TToolButton;
    ToolButton1: TToolButton;
    grdLookup: TDBGrdClr;
//  grdLookup: TDBGrid;
    TimerType: TTimer;
    btnSelect: TToolButton;
    ToolButton2: TToolButton;
    pnlFilter: TPanel;
    Label1: TLabel;
    lblFldFilter: TLabel;
    edtFilter: TEdit;
    imglstMain: TImageList;
    dtsLookup: TDataSource;
    pnlRel: TPanel;
    grdRel: TDBGrdClr;
    dtsRelation: TDataSource;
    procedure btnCloseClick(Sender: TObject);
    procedure grdLookupDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelectClick(Sender: TObject);
    procedure TimerTypeTimer(Sender: TObject);
    procedure grdLookupKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure grdLookupColEnter(Sender: TObject);
    procedure grdLookupColExit(Sender: TObject);
    procedure edtFilterChange(Sender: TObject);
  private
    { Private declarations }
    CurrentLookup : string;
    LookUpFld : String;
    FChoosenID: integer;
    LUdestSet : TDataSet;
    LUdestF   : string;
    UseLike   : boolean;
    procedure SelectCurrentRec;
  public
    { Public declarations }
    property ChoosenID: integer read FChoosenID;
    procedure SetLookUpForm(LUsource,LUdest : TDataSet; FrmCaption,
      LUDestFld: string; SQLfilter:boolean);
  end;

implementation

uses dmMain;

{$R *.DFM}

{ TfrmLURel }

procedure TfrmLURel.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLURel.grdLookupDblClick(Sender: TObject);
begin
  SelectCurrentRec;
end;

procedure TfrmLURel.btnSelectClick(Sender: TObject);
begin
  SelectCurrentRec;
end;

procedure TfrmLURel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TimerType.Enabled := False;
end;

procedure TfrmLURel.SelectCurrentRec;
begin
  FChoosenID := dtsLookup.DataSet.FieldByName('IDVal').AsInteger;
  if Assigned(LUdestSet) then
    LUdestSet.Locate(LUDestF,dtsLookup.DataSet.FieldByName('IDVal').AsInteger,[]);
  ModalResult := mrOk;
end;

procedure TfrmLURel.TimerTypeTimer(Sender: TObject);
begin
  CurrentLookUp := '';
end;

procedure TfrmLURel.grdLookupKeyPress(Sender: TObject; var Key: Char);
begin
  CurrentLookUp := CurrentLookUp + Key;
  dtsLookup.DataSet.Locate(LookUpFld,CurrentLookUp,[loCaseInsensitive,loPartialKey]);
  if Key = #13 then SelectCurrentRec;
end;

procedure TfrmLURel.FormShow(Sender: TObject);
begin
  Self.Color := dtmMain.ScrPnlColor;
  dtmMain.SetGrdColors([grdLookup,grdRel]);
  //
  FChoosenID := -1;
  TimerType.Enabled := True;
  ModalResult := mrNone;
  grdLookup.Columns[grdLookup.SelectedIndex].Title.Color := clTeal;
  LookUpFld := grdLookup.SelectedField.FieldName;
  lblFldFilter.Caption := grdLookup.Columns[grdLookup.SelectedIndex].Title.Caption;
  //
end;

procedure TfrmLURel.SetLookUpForm(LUsource, LUdest: TDataSet;
  FrmCaption, LUDestFld: string; SQLfilter:boolean);
var
  grdTW : integer;
  i, iSel : integer;
begin
  iSel := grdLookup.SelectedIndex;
  dtsLookup.DataSet := LUsource;
  Self.Caption      := FrmCaption;
  LUdestSet := LUdest;
  LUdestF   := LUDestFld;
  UseLike   := SQLfilter;
  // Set Form width
  grdTW := 0;
  for i := 0 to grdLookup.Columns.Count -1 do
    grdTW := grdTW + grdLookup.Columns[i].Width;
  Self.Width := grdTW+38;
  Self.Realign;
  if iSel < grdLookup.Columns.Count then
    grdLookup.SelectedIndex := iSel;
end;

procedure TfrmLURel.grdLookupColEnter(Sender: TObject);
begin
  LookUpFld := grdLookup.SelectedField.FieldName;
  lblFldFilter.Caption := grdLookup.Columns[grdLookup.SelectedIndex].Title.Caption;
  grdLookup.Columns[grdLookup.SelectedIndex].Title.Color := clTeal;
end;

procedure TfrmLURel.grdLookupColExit(Sender: TObject);
begin
  grdLookup.Columns[grdLookup.SelectedIndex].Title.Color := grdLookup.FixedColor;
end;

procedure TfrmLURel.edtFilterChange(Sender: TObject);
begin
  if Trim(edtFilter.Text) = '' then
    FilterDataSet(dtsLookup.DataSet,'')
  else
  begin
    if UseLike then
      FilterDataSet(dtsLookup.DataSet,LookUpFld+' like '''+edtFilter.Text+'%''')
    else
      FilterDataSet(dtsLookup.DataSet,LookUpFld+'='''+edtFilter.Text+'*''');
  end;
end;

end.
