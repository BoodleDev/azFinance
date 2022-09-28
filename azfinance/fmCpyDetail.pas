unit fmCpyDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, ExtCtrls, DBCtrls, Buttons, Mask, ComCtrls, ToolWin,
  fmEntityDetail, ShellAPI, Db, Grids, DBGrids, DBGrdClr, Unit32, dmBankDet,
  fmLookUp, DBHyperLink;

type
  TfrmCpyDetail = class(TfrmEntityDetail)
    lblWebS: TLabel;
    dbtWebS: TDBText;
    edtWebS: TDBEdit;
    tsBankDet: TTabSheet;
    tsEntT: TTabSheet;
    grdRelation: TDBGrdClr;
    ToolBar1: TToolBar;
    btnAddRelation: TToolButton;
    btnDeleteRelation: TToolButton;
    tsEmp: TTabSheet;
    lblPayD: TLabel;
    Label9: TLabel;
    dbtPayd: TDBText;
    lblSalFreq: TLabel;
    edtPayD: TDBEdit;
    cbxPayFreq: TComboBox;
    Label3: TLabel;
    cbxPdow: TComboBox;
    tsERel: TTabSheet;
    grdERLink: TDBGrdClr;
    tlbERLink: TToolBar;
    btnAddRL: TToolButton;
    btnDelRL: TToolButton;
    tlbBank: TToolBar;
    ToolButton1: TToolButton;
    btnBankNew: TToolButton;
    btnBankAmend: TToolButton;
    btnBankSave: TToolButton;
    btnBankCancel: TToolButton;
    btnBankDelete: TToolButton;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    dbtBName: TDBText;
    dbtBBranch: TDBText;
    dbtBBCode: TDBText;
    dbtAccNa: TDBText;
    dbtAccNo: TDBText;
    lblAccType: TLabel;
    edtAccName: TDBEdit;
    edtAccNo: TDBEdit;
    cbAccType: TComboBox;
    cbxBank: TDBLookupComboBox;
    cbxBrName: TDBLookupComboBox;
    cbxBrCode: TDBLookupComboBox;
    btnLUBank: TBitBtn;
    procedure btnAddRelationClick(Sender: TObject);
    procedure btnDeleteRelationClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbxPayFreqChange(Sender: TObject);
    procedure cbxPdowChange(Sender: TObject);
    procedure btnAddRLClick(Sender: TObject);
    procedure btnDelRLClick(Sender: TObject);
    procedure btnBankAmendClick(Sender: TObject);
    procedure btnBankSaveClick(Sender: TObject);
    procedure btnBankCancelClick(Sender: TObject);
    procedure btnBankDeleteClick(Sender: TObject);
    procedure tsBankDetShow(Sender: TObject);
    procedure btnLUBankClick(Sender: TObject);
    procedure pcEntityChanging(Sender: TObject; var AllowChange: Boolean);
    procedure tsBankDetHide(Sender: TObject);
  private
    { Private declarations }
    dtmBankData : TdtmBankDet;
    BankLink: TDataLink;
    FCurEntID: integer;
    FCurTypeID: integer;
//    function DoERLookFrm:integer;
    procedure BankDetAfterInsert(DataSet: TDataSet);
    procedure SetCurEntID(const Value: integer);
    procedure SetCurTypeID(const Value: integer);
    procedure DataChange(DataSet: TDataSet);
    procedure SetBankStrValues;
    procedure DoBranchNameLU;
    procedure SetBankDetails;
    procedure DoEntReference(EntityID: Integer; ShowBox: boolean);
//    procedure AddRefRelToEnt(LinkID: integer);
  public
    { Public declarations }
    property CurEntID : integer read FCurEntID write SetCurEntID;
    property CurTypeID: integer read FCurTypeID write SetCurTypeID;
    procedure CreateCompanyLoan;
  end;

implementation

uses uBase32, dmEntityLoan, uConst, dmMain, uLScentral, fmLURel, dmEntity,
  fmEntCheck, dmEntRef, fmEntDetS;

{$R *.DFM}

procedure TfrmCpyDetail.CreateCompanyLoan;
begin
  CurEntID :=  dtmMain.qryEntDet.FieldByName('EntityId').AsInteger;
  CurTypeID := CPYtype;

 //  lblSalFreq.Caption   := GetPayFreq(dtmEntityC.qryEntCpyAdd.FieldByName('PayFreq').AsString);
  cbxPayFreq.ItemIndex := cbxPayFreq.Items.IndexOf(lblSalFreq.Caption);
//  cbxPdow.ItemIndex    := dtmEntityC.qryEntCpyAdd.FieldByName('PayDOW').AsInteger;

  dtmMain.SetGrdColors([grdRelation, grdERLink]);
  dtmEntityLoan.SetAllQueries(True);

  SetBankDetails;
end;

procedure TfrmCpyDetail.FormDestroy(Sender: TObject);
begin
  inherited;
//  CheckDataSet(dtmEntityC.qryEntCpyAdd);
  dtmEntityLoan.SetAllQueries(False);
  dtmEntityLoan.SetAllQueries(False);
  FreeAndNil(dtmBankData);
end;

procedure TfrmCpyDetail.btnAddRelationClick(Sender: TObject);
begin
  inherited;
  //dtmEntityLoan.AddModule;
end;

procedure TfrmCpyDetail.btnDeleteRelationClick(Sender: TObject);
begin
 // inherited;
 //  dtmEntityLoan.DeleteModule;
end;

procedure TfrmCpyDetail.cbxPayFreqChange(Sender: TObject);
begin
  inherited;
  dtmEntityLoan.qryEntCpyAdd.Edit;
  dtmEntityLoan.qryEntCpyAdd.FieldByName('PayFreq').AsString :=
    GetPayFreqStatus(cbxPayFreq.ItemIndex);
end;

procedure TfrmCpyDetail.cbxPdowChange(Sender: TObject);
begin
  inherited;
  dtmEntityLoan.qryEntCpyAdd.Edit;
  dtmEntityLoan.qryEntCpyAdd.FieldByName('PayDOW').AsInteger := cbxPdow.ItemIndex;
end;

//function TfrmCpyDetail.DoERLookFrm: integer;
//var
//  frmLU : TfrmLURel;
//begin
//  frmLU := TfrmLURel.Create(nil);
//  try
//    dtmEntityLoan.qryERLU.Open;
//    dtmEntityLoan.qryAllEntLU.Open;
//    frmLU.SetLookUpForm(dtmEntityLoan.qryAllEntLU,nil,'Relation lookup','',True);
//    frmLU.dtsRelation.DataSet := dtmEntityLoan.qryERLU;
//    frmLU.ShowModal;
//    Result := frmLU.ChoosenID;
//  finally
//    dtmEntityLoan.qryAllEntLU.Close;
//    frmLU.Free;
//  end;
//end;

procedure TfrmCpyDetail.btnAddRLClick(Sender: TObject);
{var
  LinkEnt : integer;
begin
  // inherited;
  LinkEnt := DoERLookFrm;
  if LinkEnt <> -1 then
    dtmEntityLoan.AddEntEntRelation(LinkEnt);}
var
  frmEntChk : TfrmEntCheck;
  //NewRefID : integer;
begin
  // inherited;
  frmEntChk := TfrmEntCheck.Create(Self);
  dtmEntity := TdtmEntity.Create(Self);
  try
    frmEntChk.DoEntityCheck(CPYtype,False, True);
    if frmEntChk.ModalResult = mrYes then // New entity
    begin
      DoEntReference(frmEntChk.ChosenID,True);
      dtmEntityLoan.AddEntityRelation(frmEntChk.ChosenID, frmEntChk.EntType);
      //AddRefRelToEnt(frmEntChk.ChosenID);
    end
    else if frmEntChk.ModalResult = mrOK then
      dtmEntityLoan.AddEntityRelation(frmEntChk.ChosenID, frmEntChk.EntType);
      //AddRefRelToEnt(frmEntChk.ChosenID);
  finally
    FreeAndNil(frmEntChk);
    FreeAndnil(dtmEntity);
  end;
end;

procedure TfrmCpyDetail.DoEntReference(EntityID: Integer; ShowBox: boolean);
var
  frmEntRef : TfrmEntDetS;
  ShowFrm : boolean;
begin
  dtmEntRef := TdtmEntRef.Create(Self);
  dtmEntRef.EntType := CPYType;
  frmEntRef := TfrmEntDetS.Create(Self);
  frmEntRef.DBName := dtmMain.dbData.ConnectionString;
  try
    dtmEntRef.CurID := EntityID; //dtmEntityC.qryERLink.FieldByName('LinkID').AsInteger;
    ShowFrm := True;

    if ShowFrm then
    begin
      frmEntRef.ShowBoxes(ShowBox);
      frmEntRef.ShowModal;
    end;
  finally
    frmEntRef.Free;
    //
    dtmEntRef.Free;
    dtmEntRef := nil;
  end;
end;

//procedure TfrmCpyDetail.AddRefRelToEnt(LinkID: integer);
//var
//  RelLU : integer;
//begin
//  // Get relation type if rel ent exists.
//  RelLU  := ShowLU(dtmEntityLoan.qryERLU,'Relation type');
//  if RelLU <> -1 then
//  begin
//    dtmEntityLoan.AddEntEntRelation(LinkID);
//    dtmEntityLoan.qryERLink.Requery;
//  end;
//end;

procedure TfrmCpyDetail.btnDelRLClick(Sender: TObject);
begin
  // inherited;
  dtmEntityLoan.DelCurRelWrapper;
end;

procedure TfrmCpyDetail.btnBankAmendClick(Sender: TObject);
begin
  dtmBankData.qryBankDet.Edit;
end;

procedure TfrmCpyDetail.btnBankSaveClick(Sender: TObject);
begin
  dtmBankData.qryBankDet.Post;
end;

procedure TfrmCpyDetail.btnBankCancelClick(Sender: TObject);
begin
  dtmBankData.qryBankDet.Cancel;
end;

procedure TfrmCpyDetail.btnBankDeleteClick(Sender: TObject);
begin
  if MesDlg('Are you sure you want to delete these bank details?','C') = mrOK then
    dtmBankData.qryBankDet.Delete;
end;

procedure TfrmCpyDetail.BankDetAfterInsert(DataSet: TDataSet);
begin
  Dataset.FieldByName('EntityID').AsInteger := FCurEntID;
  Dataset.FieldByName('TypeID').AsInteger   := FCurTypeID;
end;

procedure TfrmCpyDetail.SetCurEntID(const Value: integer);
begin
  FCurEntID := Value;
end;

procedure TfrmCpyDetail.SetCurTypeID(const Value: integer);
begin
  FCurTypeID := Value;
end;

procedure TfrmCpyDetail.tsBankDetShow(Sender: TObject);
begin
  inherited;
  SetBankDetails;
end;

procedure TfrmCpyDetail.SetBankStrValues;
begin
//  qryBranchC.Locate
  dtmBankData.qryBankDet.FieldByName('BBranch').AsString :=
    dtmBankData.qryBranchC.FieldByName('BranchName').AsString;
  dtmBankData.qryBankDet.FieldByName('BBCode').AsString  :=
    dtmBankData.qryBranchC.FieldByName('BranchCode').AsString;
  dtmBankData.qryBankDet.FieldByName('UserID').AsString  := dtmMain.CurrentID;
end;

procedure TfrmCpyDetail.DataChange(DataSet: TDataSet);
begin
  case DataSet.State of
  dsBrowse: begin
              btnBankAmend.Enabled := True;
              btnBankSave.Enabled := False;
              btnBankCancel.Enabled := False;
            end;
  dsInsert, dsEdit: begin
              btnBankAmend.Enabled := False;
              btnBankSave.Enabled := True;
              btnBankCancel.Enabled := True;
            end;
  end;
end;

procedure TfrmCpyDetail.btnLUBankClick(Sender: TObject);
begin
  inherited;
  DoBranchNameLU;
end;

procedure TfrmCpyDetail.DoBranchNameLU;
var
  frmLookUp : TfrmLookUp;
begin
  frmLookUp := TfrmLookUp.Create(Self);
  try
    dtmMain.SetGrdColors([frmLookUp.grdLookup]);
    if dtmBankData.Tag = 0 then
      frmLookUp.SetLookUpForm(dtmBankData.qryBranchN,nil,'Find bank branch','',True)
    else
      frmLookUp.SetLookUpForm(dtmBankData.qryBranchN,nil,'Find bank branch','',False);
    frmLookUp.ShowModal;
    if frmLookUp.ChoosenId <> -1 then
    begin
      dtmBankData.qryBankDet.Edit;
      dtmBankData.qryBankDet.FieldByName('BRecID').AsInteger := frmLookUp.ChoosenId;
      dtmBankData.qryBankDet.Post;
    end;
  finally
    Screen.Cursor := crDefault;
    dtmBankData.qryBranchN.Filter := '';
    dtmBankData.qryBranchN.Filtered := False;
    frmLookUp.Free;
  end;
end;

procedure TfrmCpyDetail.pcEntityChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if pcEntity.ActivePage = tsBankDet then
  begin
    if dtmBankData.qryBankDet.State in [dsEdit,dsInsert] then
      case MesDlg('Do you want to save the bank details?','F') of
        mrYes:  begin
                  SetBankStrValues;
                  dtmBankData.qryBankDet.Post;
                end;
        mrNo: dtmBankData.qryBankDet.Cancel;
        mrCancel: AllowChange := False;
      end;
  end;
end;

procedure TfrmCpyDetail.tsBankDetHide(Sender: TObject);
begin
  if dtmBankData.qryBankDet.State in [dsEdit,dsInsert] then
  begin
   // if Self.ModalResult = mrOk then
   // begin
      SetBankStrValues;
      dtmBankData.qryBankDet.Post;
   // end
   // else
   //   dtmBankData.qryBankDet.Cancel;
  end;
  inherited;
end;

procedure TfrmCpyDetail.SetBankDetails;
begin
  if not (Assigned(dtmBankData)) then
  begin
    dtmBankData := TdtmBankDet.Create(Self);
    dtmBankData.qryBankDet.AfterInsert := BankDetAfterInsert;
    dtmBankData.SetDBName(dtmMain.dbData.ConnectionString);
    dtmBankData.CurEntID := FCurEntID;
    dtmBankData.CurTypeID := FCurTypeID;

    BankLink := TDataLink.Create;
    BankLink.DataSource := dtmBankData.dtsBankDet;
    BankLink.DataSet.AfterOpen   := DataChange;
    BankLink.DataSet.AfterEdit   := DataChange;
    BankLink.DataSet.AfterInsert := DataChange;
    BankLink.DataSet.AfterPost   := DataChange;
    BankLink.DataSet.AfterCancel := DataChange;

    dtmBankData.qryBankDet.Open;
    dtmBankData.qryBranchN.Close;
    dtmBankData.qryBranchN.Open;
    dtmBankData.qryBranchC.Close;
    dtmBankData.qryBranchC.Open;

  end;

  if not dtmBankData.qryBankDet.FieldByName('AccType').IsNull then
  begin
    cbAccType.ItemIndex := dtmBankData.qryBankDet.FieldByName('AccType').AsInteger;
    lblAccType.Caption := cbAccType.Text;
  end
  else
    lblAccType.Caption := 'none';
end;

end.
