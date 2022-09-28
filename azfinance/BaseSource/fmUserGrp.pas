unit fmUserGrp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, DBGrdClr,
  DBCtrls, Unit32, fmLookUp, fmGauge, DB, Mask, Menus;

type
  TfrmUserGrp = class(TfrmBase)
    grdForm: TDBGrdClr;
    Label1: TLabel;
    cbxUsrGrp: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    btnAddMod: TToolButton;
    btnCopyP: TToolButton;
    btnNewGrp: TToolButton;
    btnAddMods: TButton;
    DBText1: TDBText;
    imgY: TImage;
    imgB: TImage;
    grdComp: TDBGrdClr;
    Label4: TLabel;
    DBText2: TDBText;
    edtID: TDBEdit;
    btnDelGrp: TToolButton;
    btnAmend: TToolButton;
    ppmForm: TPopupMenu;
    SelectAll1: TMenuItem;
    DeselectAll1: TMenuItem;
    ppmComp: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Access1: TMenuItem;
    Visible1: TMenuItem;
    Access2: TMenuItem;
    Visible2: TMenuItem;
    All1: TMenuItem;
    N1: TMenuItem;
    All2: TMenuItem;
    N2: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxUsrGrpChange(Sender: TObject);
    procedure btnAddModsClick(Sender: TObject);
    procedure grdFormDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdFormCellClick(Column: TColumn);
    procedure edtIDChange(Sender: TObject);
    procedure btnNewGrpClick(Sender: TObject);
    procedure btnAmendClick(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
  private
    { Private declarations }
    lstUsrGrp : TStringList;
    function DoLUAppID :integer;
    procedure SetCBXitems(cbx :TComboBox; lst :TStringList);
//    procedure LinkGTAppToGrp(AppID: integer);
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmSecGrp;

{$R *.DFM}

procedure TfrmUserGrp.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors([grdForm,grdComp]);
  dtmSecGrp.SetDataStatus(True);
  dtmSecGrp.LoadList(lstUsrGrp,dtmSecGrp.qryUserGrp,'Description','TypeKey');
  SetCBXitems(cbxUsrGrp,lstUsrGrp);
  edtID.DataSource := dtmSecGrp.dtsAppFrm;
end;

procedure TfrmUserGrp.FormCreate(Sender: TObject);
begin
  inherited;
  dtmSecGrp := TdtmSecGrp.Create(Self);
  lstUsrGrp := TStringList.Create;
  lstUsrGrp.Sorted := True;
end;

procedure TfrmUserGrp.FormDestroy(Sender: TObject);
begin
  inherited;
  lstUsrGrp.Free;
  lstUsrGrp := nil;
  dtmSecGrp.Free;
  dtmSecGrp := nil;
end;

procedure TfrmUserGrp.SetCBXitems(cbx :TComboBox; lst :TStringList);
var
  i : integer;
begin
  cbx.Items.Clear;
  for i := 0 to lst.Count-1 do
  begin
    cbx.Items.Add(lst.Names[i]);
  end;
  cbx.ItemIndex := 0;
  cbx.OnChange(nil);
end;

procedure TfrmUserGrp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmSecGrp.SetDataStatus(False);
end;

procedure TfrmUserGrp.cbxUsrGrpChange(Sender: TObject);
begin
  inherited;
  dtmSecGrp.qryUserGrp.Locate('TypeKey',lstUsrGrp.Values[cbxUsrGrp.Text],[]);
  btnAddMods.Enabled := dtmSecGrp.qryAppID.Fields[0].IsNull;
end;

function TfrmUserGrp.DoLUAppID :integer;
var
  frmAppLU : TfrmLookUp;
begin
  frmAppLU := TfrmLookUp.Create(Self);
  try
    dtmMain.SetGrdColors([frmAppLU.grdLookup]);
    frmAppLU.SetLookUpForm(dtmSecGrp.qryGTApps,nil,'Module lookup','',False);
    frmAppLU.ShowModal;
    Result := frmAppLU.ChoosenID;
  finally
    frmAppLU.Free;
  end;
end;

procedure TfrmUserGrp.btnAddModsClick(Sender: TObject);
var
  LUres : integer;
begin
  inherited;
  LUres := DoLUAppID;
  if LUres <> -1 then
  begin
    if MesDlg('Are you sure you want to link module to user group?','C') = mrYes then
    begin
      dtmSecGrp.AddModuleToGrp(LUres);
      cbxUsrGrpChange(Self);
    end;  
  end;
end;

{procedure TfrmUserGrp.LinkGTAppToGrp(AppID: integer);
var
  frmProg : TfrmGauge;
begin
  frmProg := TfrmGauge.Create(Self);
  try
    dtmSecGrp.gugProg := frmProg.Gauge1;
    frmProg.Show;
    dtmSecGrp.CopyModuleToGrp(AppID);
  finally
    frmProg.Free;
  end;
end;}

procedure TfrmUserGrp.grdFormDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Column.Index <> 0 then
  begin
    TDBGrid(Sender).Canvas.FillRect(Rect);
    if Column.Field.AsInteger = 0 then
      TDBGrid(Sender).Canvas.Draw(Rect.Left+20,Rect.Top+1,imgB.Picture.Bitmap)
    else
      TDBGrid(Sender).Canvas.Draw(Rect.Left+20,Rect.Top+1,imgY.Picture.Bitmap)
  end;
end;

procedure TfrmUserGrp.grdFormCellClick(Column: TColumn);
begin
  inherited;
  if Column.Field.DataType = ftSmallInt then
  begin
    Column.Grid.DataSource.DataSet.Edit;
    if Column.Field.AsInteger = 0 then
      Column.Field.AsInteger := 1
    else
      Column.Field.AsInteger := 0;
    Column.Grid.DataSource.DataSet.Post;
    Column.Grid.SelectedIndex := 0;
  end;
end;

procedure TfrmUserGrp.edtIDChange(Sender: TObject);
begin
  inherited;
  grdComp.Enabled := not grdComp.DataSource.DataSet.Fields[0].IsNull;
  if dtmSecGrp.qryAppFrm.FieldByName('FrmID').AsInteger <> 0 then
  begin
//    FilterDataSet(dtmSecGrp.qryFrmObjLU,'FrmID='+dtmSecGrp.qryAppFrm.FieldByName('FrmID').AsString);
//    if dtmSecGrp.qryFrmObj.Active then
//      dtmSecGrp.qryFrmObj.Refresh;
  end;
end;

procedure TfrmUserGrp.btnNewGrpClick(Sender: TObject);
var
  newGrp : string;
  newKey : integer;
begin
  //inherited;
  newGrp := InputBox('New user group','New user group','');
  if Trim(newGrp) <> '' then
  begin
    newKey := dtmSecGrp.AddNewUserGroup(newGrp);
    lstUsrGrp.Add(newGrp+'='+IntToStr(newKey));
    cbxUsrGrp.Items.Add(newGrp);
    cbxUsrGrp.ItemIndex := cbxUsrGrp.Items.IndexOf(newGrp);
    cbxUsrGrpChange(nil);
    MesDlg('New user group added.','I');
  end;
end;

procedure TfrmUserGrp.btnAmendClick(Sender: TObject);
var
  oldGrp, newGrp : string;
begin
  //inherited;
  oldGrp := cbxUsrGrp.Text;
  newGrp := InputBox('New user group','New user group',oldGrp);
  if Trim(newGrp) <> '' then
  begin
    dtmSecGrp.qryUserGrp.Edit;
    dtmSecGrp.qryUserGrp.FieldByName('Description').AsString := newGrp;
    dtmSecGrp.qryUserGrp.Post;
    //
    lstUsrGrp.Add(newGrp+'='+lstUsrGrp.Values[oldGrp]);
    cbxUsrGrp.Items.Add(newGrp);
    lstUsrGrp.Delete(lstUsrGrp.IndexOfName(oldGrp));
    cbxUsrGrp.Items.Delete(cbxUsrGrp.Items.IndexOf(oldGrp));
    cbxUsrGrp.ItemIndex := cbxUsrGrp.Items.IndexOf(newGrp);
    MesDlg('User group renamed.','I');
  end;
end;

procedure TfrmUserGrp.SelectAll1Click(Sender: TObject);
begin
  inherited;
  dtmSecGrp.AppFrmUpdate(TControl(Sender).Tag);
end;

end.

