unit fmLookUp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ComCtrls, ToolWin, Grids, DBGrids, DBTables, StdCtrls,
  Unit32, ImgList, DBGrdClr;

type
  TfrmLookUp = class(TForm)
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
    procedure edtFilterKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    CurrentLookup : string;
    LookUpFld : String;
    FChoosenID: Variant;
    LUdestSet : TDataSet;
    LUdestF   : string;
    UseLike   : boolean;
    procedure SelectCurrentRec;
  public
    { Public declarations }
    property ChoosenID: variant read FChoosenID;
    procedure SetLookUpForm(LUsource,LUdest : TDataSet; FrmCaption,
      LUDestFld: string; SQLfilter:boolean);
  end;

//var
//  frmLookUp : TfrmLookUp;

implementation

uses dmMain;

{$R *.DFM}

{ TfrmLookUp }

procedure TfrmLookUp.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLookUp.grdLookupDblClick(Sender: TObject);
begin
  SelectCurrentRec;
end;

procedure TfrmLookUp.btnSelectClick(Sender: TObject);
begin
  SelectCurrentRec;
end;

procedure TfrmLookUp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TimerType.Enabled := False;
end;

procedure TfrmLookUp.SelectCurrentRec;
begin
  //FChoosenID := dtsLookup.DataSet.FieldByName('IDVal').Value;
  FChoosenID := dtsLookup.DataSet.Fields[0].Value;
  if Assigned(LUdestSet) then
    //LUdestSet.Locate(LUDestF,dtsLookup.DataSet.FieldByName('IDVal').Value,[]);
    LUdestSet.Locate(LUDestF,dtsLookup.DataSet.Fields[0].Value,[]);
  ModalResult := mrOk;
end;

procedure TfrmLookUp.TimerTypeTimer(Sender: TObject);
begin
  CurrentLookUp := '';
end;

procedure TfrmLookUp.grdLookupKeyPress(Sender: TObject; var Key: Char);
begin
  CurrentLookUp := CurrentLookUp + Key;
  dtsLookup.DataSet.Locate(LookUpFld,CurrentLookUp,[loCaseInsensitive,loPartialKey]);
  if Key = #13 then SelectCurrentRec;
end;

procedure TfrmLookUp.FormShow(Sender: TObject);
begin
  //
//  grdLookup.FixedColor := dtmMain.FixGrdColor;
  //
  FChoosenID := -1;
  TimerType.Enabled := True;
  ModalResult := mrNone;
  grdLookup.Columns[grdLookup.SelectedIndex].Title.Color := clNavy;
  grdLookup.Columns[grdLookup.SelectedIndex].Title.Font.Color := clWhite;
  LookUpFld := grdLookup.SelectedField.FieldName;
  lblFldFilter.Caption := grdLookup.Columns[grdLookup.SelectedIndex].Title.Caption;
  Left := (Screen.Width - Width) div 2;
  Top  := (Screen.Height - Height) div 2;
  dtmMain.SetGrdColors([grdLookup]);
  //
end;

procedure TfrmLookUp.SetLookUpForm(LUsource, LUdest: TDataSet;
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

procedure TfrmLookUp.grdLookupColEnter(Sender: TObject);
begin
  LookUpFld := grdLookup.SelectedField.FieldName;
  lblFldFilter.Caption := grdLookup.Columns[grdLookup.SelectedIndex].Title.Caption;
  grdLookup.Columns[grdLookup.SelectedIndex].Title.Color := clNavy;
  grdLookup.Columns[grdLookup.SelectedIndex].Title.Font.Color := clWhite;
end;

procedure TfrmLookUp.grdLookupColExit(Sender: TObject);
begin
  grdLookup.Columns[grdLookup.SelectedIndex].Title.Color := grdLookup.FixedColor;
  grdLookup.Columns[grdLookup.SelectedIndex].Title.Font.Color := clBlack;
end;

procedure TfrmLookUp.edtFilterChange(Sender: TObject);
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

procedure TfrmLookUp.edtFilterKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(Key) = vk_return then
    btnSelect.Click;
end;

end.
