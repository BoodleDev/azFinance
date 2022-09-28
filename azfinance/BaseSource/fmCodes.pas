unit fmCodes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, Menus, ComCtrls, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  DBGrdClr, fmLookup, DB, Unit32, DBCtrls, uConst, ImgList, fmBase;

type
  TfrmCodes = class(TfrmBase)
    btnClear: TToolButton;
    imgLst: TImageList;
    pgcCodes: TPageControl;
    tshAddress: TTabSheet;
    pnlAddress: TPanel;
    grdAddress: TDBGrdClr;
    ToolBar2: TToolBar;
    btnTown: TToolButton;
    btnAddress: TToolButton;
    tshBank: TTabSheet;
    pnlBank: TPanel;
    grdBank: TDBGrdClr;
    ToolBar1: TToolBar;
    btnBank: TToolButton;
    btnBranch: TToolButton;
    ToolBar3: TToolBar;
    ToolButton5: TToolButton;
    Panel1: TPanel;
    Label5: TLabel;
    lblBankFldFilter: TLabel;
    edtBankFilter: TEdit;
    ToolButton6: TToolButton;
    ToolBar4: TToolBar;
    ToolButton1: TToolButton;
    Panel2: TPanel;
    Label1: TLabel;
    lblAddressFldFilter: TLabel;
    edtAddressFilter: TEdit;
    ToolButton2: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnTownClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBankClick(Sender: TObject);
    procedure btnBranchClick(Sender: TObject);
    procedure btnAddressClick(Sender: TObject);
    procedure pgcCodesChange(Sender: TObject);
    procedure grdBankColEnter(Sender: TObject);
    procedure grdBankColExit(Sender: TObject);
    procedure edtBankFilterChange(Sender: TObject);
    procedure grdAddressColEnter(Sender: TObject);
    procedure grdAddressColExit(Sender: TObject);
    procedure edtAddressFilterChange(Sender: TObject);
  private
    { Private declarations }
    BankLookUpFld    : String;
    AddressLookUpFld : String;
    function DoNewMaster(InputCaption,InputLabel,Msg : String): Boolean;
    function ShowLookup(frmCaption,FldName :String; dtsLU :TDatasource):String;
    function DoNewDetail(LUCaption,FldLU,InputCaption,lblCaption,LocFld1,
             LocFld2 : String; dtsLU :TDatasource; qryLocate :TDataSet): Boolean;
    procedure GetTheBankLookUp;
    procedure GetTheAddressLookUp;
  public
    { Public declarations }
  end;

implementation

uses dmMain, dmCodes, fmCodeLU;

{$R *.DFM}

procedure TfrmCodes.FormCreate(Sender: TObject);
begin
  inherited;
  dtmCodes := TdtmCodes.Create(self);
  dtmCodes.SetCodeData(True);
  dtmMain.SetGrdColors(grdAddress);
  dtmMain.SetGrdColors(grdBank);
end;

procedure TfrmCodes.btnTownClick(Sender: TObject);
begin
  if DoNewMaster('Enter the town name','Town name','Accept new town as') then
    dtmCodes.InsertMaster(dtmCodes.qryAddress,'TownName','SuburbName','PostCode');
  dtmCodes.RefreshData(dtmCodes.qryAddressLU);
end;

procedure TfrmCodes.btnBankClick(Sender: TObject);
begin
  if DoNewMaster('Enter the bank name','Bank name','Accept new bank as') then
    dtmCodes.InsertMaster(dtmCodes.qryBank,'BankName','BranchName','BranchCode');
  dtmCodes.RefreshData(dtmCodes.qryBankLu);
end;

function TfrmCodes.DoNewMaster(InputCaption,InputLabel,Msg :String): Boolean;
begin
  Result := False;
  dtmCodes.MasterVal := InputBox(InputCaption,InputLabel,'');
  if Trim(dtmCodes.MasterVal) <> '' then
    Result := MesDlg(Msg +' '+ dtmCodes.MasterVal+'?','C') = mrYes;
end;

procedure TfrmCodes.btnBranchClick(Sender: TObject);
begin
  if DoNewDetail('Select bank','BankName','Enter branch name','Branch name',
    'BankName','BranchName',dtmCodes.dtsBankLu,dtmCodes.qryBank) then
    dtmCodes.InsertDetail(dtmCodes.qryBank,'BankName','BranchName','BranchCode');
end;

procedure TfrmCodes.btnAddressClick(Sender: TObject);
begin
  inherited;
  if DoNewDetail('Select town','Townname','Enter suburb name','Suburb name',
    'TownName','SuburbName',dtmCodes.dtsAddressLu,dtmCodes.qryAddress) then
    dtmCodes.InsertDetail(dtmCodes.qryAddress,'TownName','SuburbName','PostCode');
end;

function TfrmCodes.DoNewDetail(LUCaption,FldLU,InputCaption,lblCaption,
  LocFld1,LocFld2 : String; dtsLU :TDatasource; qryLocate :TDataSet): Boolean;
begin
  Result := False;
  dtmCodes.MasterVal := ShowLookup(LUCaption,FldLU,dtsLU);
  if Trim(dtmCodes.MasterVal) <> '' then
  begin
    dtmCodes.Detailone := InputBox(InputCaption,lblCaption,'');
    if Trim(dtmCodes.Detailone) <> '' then
    begin
      if not qryLocate.Locate(LocFld1+';'+LocFld2,
        VarArrayOf([dtmCodes.MasterVal,dtmCodes.DetailOne]),[loCaseInsensitive]) then
      begin
        dtmCodes.DetailTwo := InputBox('Enter '+dtmCodes.DetailOne+'''s code','Code:','');
        if Trim(dtmCodes.DetailTwo) <> '' then
          Result := MesDlg('Accept '+dtmCodes.DetailOne+' and code '+
            dtmCodes.DetailTwo+'?','C') = mrYes;
      end
      else
        MesDlg(dtmCodes.DetailOne+' and '+dtmCodes.DetailTwo+' already exist.','E')
    end;
  end;
end;

function TfrmCodes.ShowLookup(frmCaption,FldName :String; dtsLU :TDatasource):String;
var
  frmCodeLU : TfrmCodeLU;
begin
  frmCodeLU := TfrmCodeLU.Create(self);//Create the lookup form
  try//set the lookup form's caption and datasource
    Result := '';
    dtmMain.SetGrdColors(frmCodeLU.grdLookup);
    frmCodeLU.Caption := frmCaption;
    frmCodeLU.FldName := FldName;
    frmCodeLU.dtsLU   := dtsLU;
    if dtmCodes.Tag = 1 then
      frmCodeLU.SQLFilter := True;
    frmCodeLU.ShowModal;//show hte lookup form
    Result := frmCodeLU.LUValue;
  finally
    frmCodeLU.Free;//Destroy the lookup
  end;
end;

procedure TfrmCodes.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmCodes.Free;
  dtmCodes := nil;
end;

procedure TfrmCodes.btnClearClick(Sender: TObject);
begin
  inherited;
  FilterDataset(dtmCodes.qryBank,'');
  FilterDataset(dtmCodes.qryAddress,'');
  FilterDataset(dtmCodes.qryBankLu,'');
  FilterDataset(dtmCodes.qryAddressLu,'');
end;

procedure TfrmCodes.FormShow(Sender: TObject);
begin
  inherited;
  pnlAddress.Color := dtmMain.ScrPnlColor;
  pnlBank.Color    := dtmMain.ScrPnlColor;
  tshAddress.Show;
  GetTheBankLookup;
  GetTheAddressLookup;
end;

procedure TfrmCodes.GetTheBankLookUp;
begin
  BankLookUpFld := grdBank.SelectedField.FieldName;
  grdBank.Columns[grdBank.SelectedIndex].Title.Color := clTeal;
  lblBankFldFilter.Caption := grdBank.Columns[grdBank.SelectedIndex].Title.Caption;
end;

procedure TfrmCodes.GetTheAddressLookUp;
begin
  AddressLookUpFld := grdAddress.SelectedField.FieldName;
  grdAddress.Columns[grdAddress.SelectedIndex].Title.Color := clTeal;
  lblAddressFldFilter.Caption := grdAddress.Columns[grdAddress.SelectedIndex].Title.Caption;
end;

procedure TfrmCodes.pgcCodesChange(Sender: TObject);
begin
  inherited;
  //Bank=1;Address=2
  if pgcCodes.ActivePage = tshBank then
    dtmCodes.BankOrAddr := 1
  else
    dtmCodes.BankOrAddr := 2;
end;

procedure TfrmCodes.grdBankColEnter(Sender: TObject);
begin
  inherited;
  GetTheBankLookup;
end;

procedure TfrmCodes.grdBankColExit(Sender: TObject);
begin
  inherited;
  grdBank.Columns[grdBank.SelectedIndex].Title.Color := dtmMain.FixGrdColor;
end;

procedure TfrmCodes.edtBankFilterChange(Sender: TObject);
begin
  inherited;
  if Trim(edtBankFilter.Text) = '' then
    FilterDataSet(dtmCodes.qryBank,'')
  else
    FilterDataSet(dtmCodes.qryBank,BankLookUpFld+' like '''+edtBankFilter.Text+'%''');
end;

procedure TfrmCodes.grdAddressColEnter(Sender: TObject);
begin
  inherited;
  GetTheAddressLookup;
end;

procedure TfrmCodes.grdAddressColExit(Sender: TObject);
begin
  inherited;
  grdAddress.Columns[grdAddress.SelectedIndex].Title.Color := dtmMain.FixGrdColor;
end;

procedure TfrmCodes.edtAddressFilterChange(Sender: TObject);
begin
  inherited;
  if Trim(edtAddressFilter.Text) = '' then
    FilterDataSet(dtmCodes.qryAddress,'')
  else
    FilterDataSet(dtmCodes.qryAddress,AddressLookUpFld+' like '''+edtAddressFilter.Text+'%''');
end;

end.
