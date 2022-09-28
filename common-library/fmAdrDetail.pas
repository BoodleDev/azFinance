unit fmAdrDetail;
{===============================================================================
 Author  : Wicus Botha
 Date    : 31/01/2000
 Unit    : Base address form for all DB apps.
 PreConditions  : Have to assign the Address datasource.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, DB, Buttons, dmAdrDetail, fmLookUp,
  Unit32;

type
  TfrmAdrDetail = class(TForm)
    LCode: TLabel;
    edtAdr1: TDBEdit;
    edtAdr2: TDBEdit;
    edtCode: TDBEdit;
    edtAdr3: TDBEdit;
    edtAdr4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnLUSuburb: TBitBtn;
    dbtAdr1: TDBText;
    dbtAdr2: TDBText;
    dbtAdr3: TDBText;
    dbtAdr4: TDBText;
    dbtCode: TDBText;
    btnLUCode: TBitBtn;
    btnOK: TButton;
    btnCancel: TButton;
    cmbProvince: TDBLookupComboBox;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLUSuburbClick(Sender: TObject);
    procedure btnLUCodeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    dtmData   : TdtmAdrDetail;
    frmLookUp : TfrmLookUp;
    FShowBoxes: boolean;
    FCurEntID: integer;
    FCurTypeID: integer;
    FCurAdrType: integer;
    FCurrentID: string;
    procedure FilterAdrData(sFilter:string);
    procedure SetBoxes(Status: boolean);
    procedure SetShowBoxes(const Value: boolean);
    procedure SetCurAdrType(const Value: integer);
    procedure SetCurEntID(const Value: integer);
    procedure SetCurTypeID(const Value: integer);
    procedure AddressAfterInsert(DataSet: TDataSet);
    procedure DoLookUpAdr(WhereClause: string);
  public
    { Public declarations }
    property ShowBoxes : boolean read FShowBoxes write SetShowBoxes;
    property CurEntID  : integer read FCurEntID write SetCurEntID;
    property CurTypeID : integer read FCurTypeID write SetCurTypeID;
    property CurAdrType: integer read FCurAdrType write SetCurAdrType;
    property CurrentID : string read FCurrentID write FCurrentID;
  end;

implementation

{$R *.DFM}

procedure TfrmAdrDetail.FormCreate(Sender: TObject);
begin
  dtmData := TdtmAdrDetail.Create(Self);
  dtmData.qryAddress.AfterInsert := AddressAfterInsert;
end;

{WB 31/01/2000
 Address from - Used to show & capture address detail
 All address field names in the database carry the names below,
 except for 2 Postal address fields}
procedure TfrmAdrDetail.FormShow(Sender: TObject);
begin
  Self.ModalResult := mrNone;
  if edtAdr1.Visible then
    edtAdr1.SetFocus;//set focus if can
  dtmData.qryAddress.Open;
end;

{WB 31/01/2000
 This will set the boxes as either view only or allow new & amendments}
procedure TfrmAdrDetail.SetBoxes(Status: boolean);
begin //make boxes accessible or not - view(no access) or capture(access)
  edtAdr1.Visible := Status;
  edtAdr2.Visible := Status;
  edtAdr3.Visible := Status;
  edtAdr4.Visible := Status;
  edtCode.Visible := Status;
  BtnCancel.Visible := Status;
  btnLUSuburb.Visible := Status;
  btnLUCode.Visible   := Status;
end;

procedure TfrmAdrDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (dtmData.qryAddress.State = dsEdit) or (dtmData.qryAddress.State = dsInsert) then
  begin
    if Self.ModalResult = mrOk then
    begin
      dtmData.qryAddress.FieldByName('UserID').AsString := CurrentID;
      dtmData.qryAddress.Post;
    end
    else
      dtmData.qryAddress.Cancel;
  end;
end;

procedure TfrmAdrDetail.FilterAdrData(sFilter: string);
begin
  dtmData.qryAddress.Filtered := False;
  dtmData.qryAddress.Filter   := sFilter;
  if sFilter <> '' then
    dtmData.qryAddress.Filtered := True;
end;

procedure TfrmAdrDetail.SetShowBoxes(const Value: boolean);
begin
  FShowBoxes := Value;
  SetBoxes(FShowBoxes);
end;

procedure TfrmAdrDetail.SetCurAdrType(const Value: integer);
begin
  FCurAdrType := Value;
  FilterAdrData('AddressType='+IntToStr(FCurAdrType));
end;

procedure TfrmAdrDetail.SetCurEntID(const Value: integer);
begin
  FCurEntID := Value;
  dtmData.CurEntID := FCurEntID;
end;

procedure TfrmAdrDetail.SetCurTypeID(const Value: integer);
begin
  FCurTypeID := Value;
  dtmData.CurTypeID := FCurTypeID;
end;

procedure TfrmAdrDetail.DoLookUpAdr(WhereClause: string);
begin
  dtmData.SetLUData(WhereClause);
  frmLookUp := TfrmLookUp.Create(Self);
  try
    if dtmData.Tag = 0 then
      frmLookUp.SetLookUpForm(dtmData.qryAdrLU,nil,'Find postal detail','',True)
    else
      frmLookUp.SetLookUpForm(dtmData.qryAdrLU,nil,'Find postal detail','',False);
    frmLookUp.ShowModal;
    if frmLookUp.ChoosenId <> -1 then
    begin
      dtmData.qryAddress.Edit;
      dtmData.qryAddress.FieldByName('Address3').AsString :=
        dtmData.qryAdrLU.FieldByName('SuburbName').AsString;
      dtmData.qryAddress.FieldByName('Address4').AsString :=
        dtmData.qryAdrLU.FieldByName('TownName').AsString;
      dtmData.qryAddress.FieldByName('AddressCode').AsString :=
        dtmData.qryAdrLU.FieldByName('PostCode').AsString;
    end;
  finally
    Screen.Cursor := crDefault;
    frmLookUp.Free;
    frmLookUp := nil;
  end;
end;

procedure TfrmAdrDetail.btnLUSuburbClick(Sender: TObject);
var
  tmpStr : string;
begin
  tmpStr := '';
  if Trim(edtAdr3.Text) <> '' then
  begin
    if MesDlg('Lookup only current Suburb - "'+Trim(edtAdr3.Text)+'"?','C') = mrYes then
    begin
      tmpStr := UpperCase(edtAdr3.Text[1])+LowerCase(Copy(edtAdr3.Text,2,50));
      tmpStr := 'where SuburbName like '''+tmpStr+'%''';
    end;  
  end;
  DoLookUpAdr(tmpStr);
end;

procedure TfrmAdrDetail.btnLUCodeClick(Sender: TObject);
var
  tmpStr : string;
begin
  tmpStr := '';
  if Trim(edtCode.Text) <> '' then
  begin
    if MesDlg('Lookup only current Postal code - "'+Trim(edtCode.Text)+'"?','C') = mrYes then
    begin
      tmpStr := 'where PostCode like '''+edtCode.Text+'%''';
    end;  
  end;
  DoLookUpAdr(tmpStr);
end;

procedure TfrmAdrDetail.AddressAfterInsert(DataSet: TDataSet);
begin
  Dataset.FieldByName('EntityID').AsInteger    := FCurEntID;
  Dataset.FieldByName('TypeID').AsInteger      := FCurTypeID;
  Dataset.FieldByName('AddressType').AsInteger := FCurAdrType;
end;

procedure TfrmAdrDetail.FormDestroy(Sender: TObject);
begin
  dtmData.Free;
  dtmData := nil;
end;

end.

