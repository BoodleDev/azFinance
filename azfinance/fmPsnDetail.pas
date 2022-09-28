unit fmPsnDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmEntityDetail, Db, Menus, StdCtrls, ExtCtrls, DBCtrls, Buttons, Mask,
  ComCtrls, ToolWin, Grids, DBGrids, DBGrdClr, DBCGrids, Unit32, dmBankDet,
  fmLookUp, dbDateTimePicker;

type
  TfrmPsnDetail = class(TfrmEntityDetail)
    tsBankDet: TTabSheet;
    btnBank: TBitBtn;
    Label3: TLabel;
    dbtIDno: TDBText;
    edtIDno: TDBEdit;
    Label4: TLabel;
    dbtSalN: TDBText;
    edtSalNo: TDBEdit;
    tsRel: TTabSheet;
    grdERLink: TDBGrdClr;
    tlbERLink: TToolBar;
    btnAddRL: TToolButton;
    btnDelRL: TToolButton;
    Label6: TLabel;
    dbtTitle: TDBText;
    rgpPresOR: TDBRadioGroup;
    btnNewHAdr: TBitBtn;
    Label50: TLabel;
    Label51: TLabel;
    dbtLandLord: TDBText;
    dbtLandLordTel: TDBText;
    edtLandlord: TDBEdit;
    edtLandlordTel: TDBEdit;
    btnPreResAdr: TBitBtn;
    tsEmpDet: TTabSheet;
    Label8: TLabel;
    btnBranchLink: TSpeedButton;
    Label28: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label31: TLabel;
    Label55: TLabel;
    dbtEmpSup: TDBText;
    dbtMthSal: TDBText;
    btnLUnionLink: TSpeedButton;
    btnEmpLink: TSpeedButton;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    lblRetAge: TLabel;
    dbtEmpDate: TDBText;
    dbtRetDate: TDBText;
    Label59: TLabel;
    dbtWPEDate: TDBText;
    Label60: TLabel;
    btnPFundLink: TSpeedButton;
    Label61: TLabel;
    dbtPFundDate: TDBText;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Bevel1: TBevel;
    lblPrdEmp: TLabel;
    dbtPayD: TDBText;
    Label65: TLabel;
    lblSalFreq: TLabel;
    dbtPayP: TDBText;
    edtSup: TDBEdit;
    edtGross: TDBEdit;
    edtEmpDate: TDBEdit;
    edtRetDate: TDBEdit;
    edtRetAge: TEdit;
    edtWPEDate: TDBEdit;
    edtPFundDate: TDBEdit;
    edtPayDay: TDBEdit;
    edtPayPoint: TDBEdit;
    edtPFundNo: TDBEdit;
    cbxPayFreq: TComboBox;
    tsAddOn: TTabSheet;
    Label33: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbtND: TDBText;
    lblMaritalStats: TLabel;
    lblPersonOcc: TLabel;
    lblPersonEmp: TLabel;
    lblNation: TLabel;
    Label52: TLabel;
    lblPersonInd: TLabel;
    Label66: TLabel;
    dbtNLR: TDBText;
    edtNumDep: TDBEdit;
    cblOccupation: TDBLookupComboBox;
    cblMaritalStatus: TDBLookupComboBox;
    cblNationality: TDBLookupComboBox;
    cblEmploy: TDBLookupComboBox;
    rgpSex: TDBRadioGroup;
    cblPersonInd: TDBLookupComboBox;
    edtNLR: TDBEdit;
    Label21: TLabel;
    Label9: TLabel;
    lblAge: TLabel;
    dbtDOB: TDBText;
    edtBirth: TDBEdit;
    DBText1: TDBText;
    Label14: TLabel;
    btnAmdRel: TToolButton;
    btnViewRel: TToolButton;
    lblBranch: TLabel;
    lblEmp: TLabel;
    lblLink2: TLabel;
    lblLink1: TLabel;
    cmbTitle: TDBComboBox;
    cmbEntInd2: TDBLookupComboBox;
    lblEntInd2: TLabel;
    btnCalc: TToolButton;
    lblNetSal: TLabel;
    edtNetSal: TDBEdit;
    lblStatus: TLabel;
    dbCBStatus: TDBLookupComboBox;
    lblEntInd: TLabel;
    lblCBStatus: TLabel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
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
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    btnBankNew: TToolButton;
    btnBankAmend: TToolButton;
    btnBankSave: TToolButton;
    btnBankCancel: TToolButton;
    btnBankDelete: TToolButton;
    txtSurname: TDBText;
    lblSurname: TLabel;
    procedure btnBankClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAddRLClick(Sender: TObject);
    procedure btnDelRLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtBirthChange(Sender: TObject);
    procedure edtIDnoChange(Sender: TObject);
    procedure edtRetAgeExit(Sender: TObject);
    procedure edtRetDateChange(Sender: TObject);
    procedure edtEmpDateChange(Sender: TObject);
    procedure cbxPayFreqChange(Sender: TObject);
    procedure btnEmpLinkClick(Sender: TObject);
    procedure btnBranchLinkClick(Sender: TObject);
    procedure btnLUnionLinkClick(Sender: TObject);
    procedure btnPFundLinkClick(Sender: TObject);
    procedure btnAmdRelClick(Sender: TObject);
    procedure btnViewRelClick(Sender: TObject);
    procedure btnNewHAdrClick(Sender: TObject);
    procedure btnPreResAdrClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure cmbTitleChange(Sender: TObject);
    procedure tsBankDetShow(Sender: TObject);
    procedure tsBankDetHide(Sender: TObject);
    procedure cbAccTypeChange(Sender: TObject);
    procedure btnLUBankClick(Sender: TObject);
    procedure btnBankAmendClick(Sender: TObject);
    procedure btnBankSaveClick(Sender: TObject);
    procedure btnBankCancelClick(Sender: TObject);
    procedure btnBankDeleteClick(Sender: TObject);
  private
    { Private declarations }
    dtmBankData : TdtmBankDet;
    BankLink: TDataLink;
    FCurEntID: integer;
    FCurTypeID: integer;
    FCurrentID: string;
    function SetAgeLabel(InputStr: string): string;
    function IDnoToBirthDate(InputStr: string): string;
    procedure DoEntReference(EntityID: Integer; ShowBox: boolean);
    procedure SetNonDBLabels;
    procedure AddRefRelToEnt(LinkID: integer);
    procedure SetStaticNameLabels;
    procedure BankDetAfterInsert(DataSet: TDataSet);
    procedure SetBankStrValues;
    procedure DoBranchNameLU;
    procedure SetCurEntID(const Value: integer);
    procedure SetCurTypeID(const Value: integer);
  public
    { Public declarations }
    //property DBName : WideString  read FDBName write SetDBName;
    property CurrentID : string read FCurrentID write FCurrentID;
    property CurEntID : integer read FCurEntID write SetCurEntID;
    property CurTypeID: integer read FCurTypeID write SetCurTypeID;
    procedure DataChange(DataSet: TDataSet);
    procedure ShowBoxes(ShowStatus : boolean); override;
  end;

implementation

uses dmMain, dmEntityC, uBase32, uConst, uLScentral, fmLURel, dmEntCode,
  uLSConst, fmEntCheck, dmEntRef, fmEntDetS, dmEntCheck,
  dmEntity, fmAffordCalc;

{$R *.DFM}

procedure TfrmPsnDetail.FormCreate(Sender: TObject);
begin
  inherited;
  dtmEntCode := TdtmEntCode.Create(Self);
  dtmEntCode.SetPersonCTL(True);

  dtmMain.SetGrdColors(grdERLink);

  dtmEntityC.SetAllQueries(True);

  SetNonDBLabels;
  lblSalFreq.Caption   := GetPayFreq(dtmEntityC.qryEntPsnAdd.FieldByName('PayFreq').AsString);
  cbxPayFreq.ItemIndex := cbxPayFreq.Items.IndexOf(lblSalFreq.Caption);
  SetStaticNameLabels;
end;

procedure TfrmPsnDetail.BankDetAfterInsert(DataSet: TDataSet);
begin
  Dataset.FieldByName('EntityID').AsInteger := FCurEntID;
  Dataset.FieldByName('TypeID').AsInteger   := FCurTypeID;
end;

procedure TfrmPsnDetail.SetStaticNameLabels;
begin
  lblBranch.Caption := dtmEntityC.GetLinkDet(dtmEntityC.qryEntPsnAdd.FieldByName('BranchID').AsInteger);
  lblEmp.Caption := dtmEntityC.GetLinkDet(dtmEntityC.qryEntPsnAdd.FieldByName('EmpID').AsInteger);
  lblLink2.Caption := dtmEntityC.GetLinkDet(dtmEntityC.qryEntPsnAdd.FieldByName('Link2').AsInteger);
  lblLink1.Caption := dtmEntityC.GetLinkDet(dtmEntityC.qryEntPsnAdd.FieldByName('Link1').AsInteger);
end;

procedure TfrmPsnDetail.FormShow(Sender: TObject);
begin
  inherited;
  edtRetAge.Text := '';
  edtRetDate.DataSource := dtmEntityC.dtsEntPsnAdd;
  lblRetAge.Caption := '';
  
  CurEntID := dtmEntityC.qryEntity.FieldByName('EntityId').AsInteger;
  CurTypeID := PSNtype;
  //dtmBankData.SetDBName(dtmMain.dbData.ConnectionString);
end;

procedure TfrmPsnDetail.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmEntityC.SetAllQueries(False);
  FreeAndNil(dtmEntCode);
  FreeAndNil(dtmBankData);
end;

procedure TfrmPsnDetail.btnBankClick(Sender: TObject);
begin
  inherited;
  DoBankDetail(dtmEntityC.qryEntity.FieldByName('EntityId').AsInteger,
    PSNtype,btnAmend.Visible);
end;

procedure TfrmPsnDetail.AddRefRelToEnt(LinkID: integer);
var
  RelLU : integer;
begin
  // Get relation type if rel ent exists.
  RelLU  := ShowLU(dtmEntityC.qryERLU,'Relation type');
  if RelLU <> -1 then
  begin
    dtmEntityC.AddEntEntRelation(LinkID);
    dtmEntityC.qryERLink.Requery;
  end;
end;

procedure TfrmPsnDetail.btnAddRLClick(Sender: TObject);
var
  frmEntChk : TfrmEntCheck;
  //NewRefID : integer;
begin
  // inherited;
  frmEntChk := TfrmEntCheck.Create(Self);
  dtmEntity := TdtmEntity.Create(Self);
  try
    frmEntChk.DoEntityCheck(PSNType,True);
    if frmEntChk.ModalResult = mrYes then // New entity
    begin
      DoEntReference(frmEntChk.ChosenID,True);
      AddRefRelToEnt(frmEntChk.ChosenID);
    end
    else if frmEntChk.ModalResult = mrOK then
      AddRefRelToEnt(frmEntChk.ChosenID);
  finally
    FreeAndNil(frmEntChk);
    FreeAndnil(dtmEntity);
  end;
end;

procedure TfrmPsnDetail.btnDelRLClick(Sender: TObject);
begin
  // inherited;
  dtmEntityC.DelCurRelWrapper;
end;

{WB 31/01/2000 Give age according to input date string - for Birth day boxes}
function TfrmPsnDetail.SetAgeLabel(InputStr: string): string;
begin
  //Calc age
  if Length(InputStr)>=10 then
    Result := Age(StrToDate(InputStr),Date)
  else
    Result:= '';
end;

{WB 31/01/2000 Convert correct ID number into birthdate}
function TfrmPsnDetail.IDnoToBirthDate(InputStr: string): string;
var
  TempDate : string;
begin
  if Length(InputStr)>=6 then
  begin
    try
      TempDate := Copy(InputStr,5,2)+'/'+Copy(InputStr,3,2)+'/19'+
        Copy(InputStr,1,2);
      StrToDate(TempDate);
      Result := TempDate;
    except
      Result := '';
    end;
  end;
end;

procedure TfrmPsnDetail.edtBirthChange(Sender: TObject);
begin
  inherited;
  //Calc age for Person
  lblAge.Caption := SetAgeLabel(edtBirth.Text);
end;

procedure TfrmPsnDetail.edtIDnoChange(Sender: TObject);
var
 BirthDate : String;
begin
  inherited;
  if Length(edtIdno.Text)>=6 then
  begin
    edtBirth.Text := IDnoToBirthDate(edtIdno.Text);
    BirthDate := edtBirth.Text;
    if CheckDataSetForPost(dtmEntityC.qryEntity) then
    begin
      try
        dtmEntityC.qryEntPsnAdd.Edit;
        dtmEntityC.qryEntPsnAdd.FieldByName('DOB').AsDateTime := StrToDate(BirthDate);
      except
      end;
    end;
  end;
end;

{WB 31/01/2000
 When form is read only set the comboBoxes's text to the normal labels}
procedure TfrmPsnDetail.SetNonDBLabels;
begin
  lblNation.Caption := cblNationality.Text;
  lblMaritalStats.Caption := cblMaritalStatus.Text;
  lblPersonOcc.Caption := cblOccupation.Text;
  lblPersonEmp.Caption := cblEmploy.Text;
  lblPersonInd.Caption := cblPersonInd.Text;
  lblEntInd.Caption    := cmbEntInd2.Text;
  lblCBStatus.Caption  := dbCBStatus.Text;
end;

procedure TfrmPsnDetail.edtRetAgeExit(Sender: TObject);
var
  tempAge : integer;
begin
  inherited;
  try
    tempAge := StrToInt(edtRetAge.Text);
    dtmEntityC.qryEntPsnAdd.Edit;
    dtmEntityC.qryEntPsnAdd.FieldByName('RetireDate').AsDateTime :=
      IncMonth(dtmEntityC.qryEntPsnAdd.FieldByName('DOB').AsDateTime,
        tempAge*12);
  except
  end;
end;

procedure TfrmPsnDetail.edtRetDateChange(Sender: TObject);
begin
  inherited;
  if (Trim(edtRetAge.Text)='') and
    (Trim(edtRetDate.Text)<>'') and (Trim(edtBirth.Text)<>'') then
  begin
    //SetAge
    edtRetAge.Text := Age(StrToDate(edtBirth.Text),
      StrToDate(edtRetDate.Text));
    lblRetAge.Caption := edtRetAge.Text;
  end;
end;

procedure TfrmPsnDetail.edtEmpDateChange(Sender: TObject);
begin
  inherited;
  try
//    if not dtmPerson.qryPersonAddOn.FieldByName('EmpDate').IsNull then
    if Length(edtEmpDate.Text)>4 then
//      lblPrdEmp.Caption := IntToStr(NoOfMonths(StrToDate(edtEmpDate.Text),Date));
    begin
      RunQry(dtmEntityC.qryToUse,'select cast(datediff(day,''' +
        edtEmpdate.Text + ''',getdate()) as float) / 365 from lsentpsnadd', 'O');
      lblPrdEmp.Caption := FormatFloat('##0.##',dtmEntityC.qryToUse.Fields[0].AsFloat);
      dtmEntityC.qryToUse.Close;
    end
  except
      lblPrdEmp.Caption := '0';
  end;
end;

procedure TfrmPsnDetail.cbxPayFreqChange(Sender: TObject);
begin
  inherited;
  dtmEntityC.qryEntPsnAdd.Edit;
  // Hard coded function to cbx itemindex
  dtmEntityC.qryEntPsnAdd.FieldByName('PayFreq').AsString :=
    GetPayFreqStatus(cbxPayFreq.ItemIndex);
end;

procedure TfrmPsnDetail.btnEmpLinkClick(Sender: TObject);
begin
  inherited;
  dtmEntityC.DoLSerLU(lsEmployer,'EmpID');
  lblEmp.Caption := dtmEntityC.GetLinkDet(dtmEntityC.qryEntPsnAdd.FieldByName('EmpID').AsInteger);
end;

procedure TfrmPsnDetail.btnBranchLinkClick(Sender: TObject);
begin
  inherited;
  dtmEntityC.DoLSerLU(lsBranch,'BranchID');
  lblBranch.Caption := dtmEntityC.GetLinkDet(dtmEntityC.qryEntPsnAdd.FieldByName('BranchID').AsInteger);
  // do function to get the name back
end;

procedure TfrmPsnDetail.btnLUnionLinkClick(Sender: TObject);
begin
  inherited;
  dtmEntityC.DoLSerLU(0,'Link2');
  lblLink2.Caption := dtmEntityC.GetLinkDet(dtmEntityC.qryEntPsnAdd.FieldByName('Link2').AsInteger);
end;

procedure TfrmPsnDetail.btnPFundLinkClick(Sender: TObject);
begin
  inherited;
  dtmEntityC.DoLSerLU(0,'Link1');
  lblLink1.Caption := dtmEntityC.GetLinkDet(dtmEntityC.qryEntPsnAdd.FieldByName('Link1').AsInteger);
end;

procedure TfrmPsnDetail.DoEntReference(EntityID: Integer; ShowBox: boolean);
var
  frmEntRef : TfrmEntDetS;
  ShowFrm : boolean;
begin
  dtmEntRef := TdtmEntRef.Create(Self);
  dtmEntRef.EntType := PSNType;
  frmEntRef := TfrmEntDetS.Create(Self);
  frmEntRef.dtsEntity.DataSet := dtmEntRef.qryEntity;
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

procedure TfrmPsnDetail.btnAmdRelClick(Sender: TObject);
begin
  inherited;
  DoEntReference(dtmEntityC.qryERLink.FieldByName('LinkID').AsInteger, True);
end;

procedure TfrmPsnDetail.btnViewRelClick(Sender: TObject);
begin
  inherited;
  DoEntReference(dtmEntityC.qryERLink.FieldByName('LinkID').AsInteger, False);
end;

procedure TfrmPsnDetail.btnNewHAdrClick(Sender: TObject);
begin
  inherited;
  DoAddressDetail(AdrPrev);
end;

procedure TfrmPsnDetail.btnPreResAdrClick(Sender: TObject);
begin
  inherited;
  DoAddressDetail(AdrNewH);
end;

procedure TfrmPsnDetail.btnSaveClick(Sender: TObject);
begin
  inherited;
  dtmMain.qryEntDet.Requery;
end;

procedure TfrmPsnDetail.ShowBoxes(ShowStatus: boolean);
begin
  inherited;
  dbCBStatus.Visible       := ShowStatus;
  cblPersonInd.Visible     := ShowStatus;
  cmbEntInd2.Visible       := ShowStatus;
  cblMaritalStatus.Visible := ShowStatus;
  cblOccupation.Visible    := ShowStatus;
  cblEmploy.Visible        := ShowStatus;
  cblNationality.Visible   := ShowStatus;
  cmbTitle.Visible         := ShowStatus;
  rgpDefAddress.Enabled    := ShowStatus;
  rgpDocAdr.Enabled        := ShowStatus;
  rgpPresOR.Enabled        := ShowStatus;
  rgpSex.Enabled           := ShowStatus;
  edtRetAge.Visible        := ShowStatus;
  cbxPayFreq.Visible       := ShowStatus;
  tlbERLink.Enabled        := ShowStatus;
  btnBranchLink.Visible    := ShowStatus;
  btnEmpLink.Visible       := ShowStatus;
  btnLUnionLink.Visible    := ShowStatus;
  btnPFundLink.Visible     := ShowStatus;
end;

procedure TfrmPsnDetail.btnCalcClick(Sender: TObject);
var
  frmAffordCalc : TfrmAffordCalc;
begin
  frmAffordCalc := TfrmAffordCalc.Create(Self);
  try
    frmAffordCalc.ShowModal;
  finally
    frmAffordCalc.Free;
  end;
end;

procedure TfrmPsnDetail.cmbTitleChange(Sender: TObject);
 procedure SetGender(iStr:Char);
 begin
   if not CheckDataSetForPost(dtmEntityC.qryEntPsnAdd) then
     dtmEntityC.qryEntPsnAdd.Edit;
   dtmEntityC.qryEntPsnAdd.FieldByName('Gender').AsString := iStr;
 end;
begin
  inherited;
  case cmbTitle.ItemIndex of
    2,4,5  :  SetGender('F');
    3      :  SetGender('M');
  end
end;

procedure TfrmPsnDetail.tsBankDetShow(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    tsBankDet.Repaint;
    if not (Assigned(dtmBankData)) then
    begin
      dtmBankData := TdtmBankDet.Create(Self);
      dtmBankData.qryBankDet.AfterInsert := BankDetAfterInsert;
      dtmBankData.SetDBName(dtmMain.dbData.ConnectionString);

    dtmBankData.CurEntID := FCurEntID;
    dtmBankData.CurTypeID := FCurTypeID;

    if cbxBank.Visible then
      cbxBank.SetFocus;

    BankLink := TDataLink.Create;
    BankLink.DataSource := dtmBankData.dtsBankDet;
    BankLink.DataSet.AfterOpen   := DataChange;
    BankLink.DataSet.AfterEdit   := DataChange;
    BankLink.DataSet.AfterInsert := DataChange;
    BankLink.DataSet.AfterPost   := DataChange;
    BankLink.DataSet.AfterCancel := DataChange;

    dtmBankData.qryBankDet.Open;
    dtmBankData.qryBranchN.Open;
    dtmBankData.qryBranchC.Open;

    end;

    if not dtmBankData.qryBankDet.FieldByName('AccType').IsNull then
    begin
      cbAccType.ItemIndex := dtmBankData.qryBankDet.FieldByName('AccType').AsInteger;
      lblAccType.Caption := cbAccType.Text;
    end
    else
      lblAccType.Caption := 'none';

    dtmBankData.qryBankDet.Edit;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPsnDetail.SetBankStrValues;
begin
//  qryBranchC.Locate
  dtmBankData.qryBankDet.FieldByName('BBranch').AsString :=
    dtmBankData.qryBranchC.FieldByName('BranchName').AsString;
  dtmBankData.qryBankDet.FieldByName('BBCode').AsString  :=
    dtmBankData.qryBranchC.FieldByName('BranchCode').AsString;
  dtmBankData.qryBankDet.FieldByName('UserID').AsString  := dtmMain.CurrentID;
end;

procedure TfrmPsnDetail.tsBankDetHide(Sender: TObject);
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

procedure TfrmPsnDetail.cbAccTypeChange(Sender: TObject);
begin
  inherited;
  dtmBankData.qryBankDet.Edit;
  dtmBankData.qryBankDet.FieldByName('AccType').AsInteger := cbAccType.ItemIndex;
end;

procedure TfrmPsnDetail.btnLUBankClick(Sender: TObject);
begin
  inherited;
  DoBranchNameLU;
end;

procedure TfrmPsnDetail.DoBranchNameLU;
var
  frmLookUp : TfrmLookUp;
begin
  frmLookUp := TfrmLookUp.Create(Self);
  try
    dtmMain.SetGrdColors(frmLookUp.grdLookup);
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

procedure TfrmPsnDetail.SetCurEntID(const Value: integer);
begin
  FCurEntID := Value;
//  dtmBankData.CurEntID := FCurEntID;
end;

procedure TfrmPsnDetail.SetCurTypeID(const Value: integer);
begin
  FCurTypeID := Value;
 // dtmBankData.CurTypeID := FCurTypeID;
end;

procedure TfrmPsnDetail.btnBankAmendClick(Sender: TObject);
begin
  dtmBankData.qryBankDet.Edit;
end;

procedure TfrmPsnDetail.DataChange(DataSet: TDataSet);
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

procedure TfrmPsnDetail.btnBankSaveClick(Sender: TObject);
begin
  dtmBankData.qryBankDet.Post;
end;

procedure TfrmPsnDetail.btnBankCancelClick(Sender: TObject);
begin
  dtmBankData.qryBankDet.Cancel;
end;

procedure TfrmPsnDetail.btnBankDeleteClick(Sender: TObject);
begin
  if MesDlg('Are you sure you want to delete these bank details?','C') = mrOK then
    dtmBankData.qryBankDet.Delete;
end;

end.
