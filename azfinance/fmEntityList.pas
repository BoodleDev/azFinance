unit fmEntityList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, Grids, DBGrids, Menus, ComCtrls, ToolWin, fmDBGridView, Unit32,
  StdCtrls, Mask,DB , DBCtrls, fmDBBaseGrdClr, DBGrdClr, ExtCtrls,
  ImgList, ShellApi, fmEntityDetail, fmCpyDetail, fmPsnDetail, fmEntCheck;

type
  TfrmEntityList = class(TfrmDBBaseGrdClr)
    btnView: TToolButton;
    imglstMain: TImageList;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    pnlFilter: TPanel;
    Label1: TLabel;
    lblFldFilter: TLabel;
    edtFilter: TEdit;
    ToolButton1: TToolButton;
    pnlCompany: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblWebsite: TLabel;
    dbtWebsite: TDBText;
    Label9: TLabel;
    DBText8: TDBText;
    btnWebsite: TButton;
    pnlPerson: TPanel;
    DBText5: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBText15: TDBText;
    dtsGrdBase: TDataSource;
    btnNewL: TToolButton;
    procedure btnNewClick(Sender: TObject);
    procedure btnAmendClick(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure edtFilterChange(Sender: TObject);
    procedure grdBaseColEnter(Sender: TObject);
    procedure grdBaseColExit(Sender: TObject);
    procedure btnWebsiteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    LookUpFld  : String;
    FEntityLU  : TDataSet;
    FEntAddQry : TDataSet;
    procedure GetTheLookUp;
    procedure DoFormSetup;
    procedure DoEntityDetail(ShowBox :boolean; inID :integer);
    procedure DoNewEntity;
  public
    { Public declarations }
    procedure SetDBSettings(qryMain,qryLU :TDataSet; EntType :Integer);
  end;

implementation

uses dmMain, uConst, dmEntityC, uBase32;

{$R *.DFM}

procedure TfrmEntityList.SetDBSettings(qryMain,qryLU :TDataSet; EntType :Integer);
begin
  FEntAddQry         := qryMain;
  FEntityLU          := qryLU;
  dtsGrdBase.DataSet := qryLU;
  dtmEntityC.EntType := EntType;
  DoFormSetup;
end;

procedure TfrmEntityList.DoFormSetup;
begin
  pnlCompany.Visible := (dtmEntityC.EntType = CPYType);
  pnlPerson.Visible  := not pnlCompany.Visible;
  //
  if dtmEntityC.EntType = CPYType then
    dtmMain.SetCpyQueries(True)
  else
    dtmMain.SetPSNQueries(True);
  GetTheLookup;
end;

procedure TfrmEntityList.GetTheLookUp;
begin
  LookUpFld := grdBase.SelectedField.FieldName;
  grdBase.Columns[grdBase.SelectedIndex].Title.Color := clTeal;
  lblFldFilter.Caption := grdBase.Columns[grdBase.SelectedIndex].Title.Caption;
end;

procedure TfrmEntityList.grdBaseColEnter(Sender: TObject);
begin
  inherited;
  GetTheLookup;
end;

procedure TfrmEntityList.edtFilterChange(Sender: TObject);
begin
  inherited;
  if Trim(edtFilter.Text) = '' then
    FilterDataSet(FEntityLU,'')
  else
    FilterDataSet(FEntityLU,LookUpFld+'='''+edtFilter.Text+'*''');
end;

procedure TfrmEntityList.grdBaseColExit(Sender: TObject);
begin
  inherited;
  grdBase.Columns[grdBase.SelectedIndex].Title.Color := dtmMain.FixGrdColor;
end;

procedure TfrmEntityList.btnWebsiteClick(Sender: TObject);
begin
  inherited;
  ShellExecute(Handle, 'open', pChar(dtmMain.qryCPY.FieldByName('Website').AsString)
    ,'', '', SW_SHOW);
end;

procedure TfrmEntityList.DoNewEntity;
var
  frmEntChk : TfrmEntCheck;
begin
  frmEntChk := TfrmEntCheck.Create(Self);
  try
    frmEntChk.EntType := dtmEntityC.EntType;
    frmEntChk.ShowModal;
    if frmEntChk.ChoosenID <> -1 then // User did not select anything
    begin
      if frmEntChk.ChoosenID = -2 then // New entity
      begin
        if dtmEntityC.AddNewEntity then // Link an existing entity
        begin
          dtmMain.CompleteNewEnt(dtmEntityC.CurID);
          DoEntityDetail(True,dtmEntityC.CurID);
        end;
      end
      else
      begin
        dtmEntityC.CurID := frmEntChk.ChoosenID;
        dtmEntityC.AddRelationship(dtmEntityC.CurID,0,dtmEntityC.RelID);// Add app relation
        RefreshData(FEntityLU);
        FEntityLU.Locate('IdVal',dtmEntityC.CurID,[]); // Refresh LU & Locate Ent
        DoEntityDetail(True,dtmEntityC.CurID); // DoEntDetail
      end;
    end;
  finally
    frmEntChk.Free;
  end;
end;

procedure TfrmEntityList.btnNewClick(Sender: TObject);
begin
  inherited;
  DoNewEntity;
end;

procedure TfrmEntityList.btnAmendClick(Sender: TObject);
begin
  inherited;
  DoEntityDetail(True,FEntityLU.FieldByName('IdVal').AsInteger);
end;

procedure TfrmEntityList.btnViewClick(Sender: TObject);
begin
  inherited;
  DoEntityDetail(False,FEntityLU.FieldByName('IdVal').AsInteger)
end;

procedure TfrmEntityList.DoEntityDetail(ShowBox :boolean; inID :integer);
var
  frmEntDetail : TfrmEntityDetail;
begin
  if dtmEntityC.EntType = CPYtype then
    frmEntDetail := TfrmCpyDetail.Create(nil)
  else
    frmEntDetail := TfrmPsnDetail.Create(nil);
  dtmEntityC.CurID := inID;
  try
    frmEntDetail.dtsEntity.DataSet := dtmEntityC.qryEntity;
    frmEntDetail.DBName := dtmMain.dbData.ConnectionString;
    frmEntDetail.ShowBoxes(ShowBox);
    frmEntDetail.ShowModal;
  finally
    frmEntDetail.Free;
  end;
  RefreshData(FEntityLU);
  FEntityLU.Locate('IDVal',dtmEntityC.CurID,[]);
end;

procedure TfrmEntityList.btnDeleteClick(Sender: TObject);
begin
  //inherited;
  if MesDlg('Delete '+FEntityLU.FieldByName('Name').AsString+' ?','C') = mrYes then
  begin
//    dtmMain.DeleteEntity(FEntityLU.FieldByName('IDVal').AsString);
//    dtmMain.RefreshData(FEntityLU);
//    dtmMain.RefreshData(FEntAddQry);
  end;
end;

procedure TfrmEntityList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if dtmEntityC.EntType = CPYType then
    dtmMain.SetCpyQueries(False)
  else
    dtmMain.SetPSNQueries(False);
end;

procedure TfrmEntityList.FormCreate(Sender: TObject);
begin
  inherited;
  dtmEntityC := TdtmEntityC.Create(Self);
end;

procedure TfrmEntityList.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmEntityC.Free;
  dtmEntityC := nil;
end;

end.

