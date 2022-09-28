unit fmSMSWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmWizard, ImgList, ExtCtrls, StdCtrls, ComCtrls, DBCtrls, ADODB,
  StrUtils, Grids, ValEdit;

type
  TfrmSMSWizard = class(TfrmWizard)
    tsTemplateCategory: TTabSheet;
    cmbTempCategory: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    lvwTemplates: TListView;
    TabSheet1: TTabSheet;
    ImageList2: TImageList;
    chkDrafts: TCheckBox;
    cmbEntity: TComboBox;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    radFreeText: TRadioButton;
    radTemplate: TRadioButton;
    Panel3: TPanel;
    Panel4: TPanel;
    pnlClient: TPanel;
    lblMessage: TLabel;
    Label4: TLabel;
    memMessage: TMemo;
    edtMSISDN: TEdit;
    stsMesg: TStatusBar;
    pnlTop: TPanel;
    Label5: TLabel;
    cmbLoanRef: TComboBox;
    procedure TabSheet1Show(Sender: TObject);
    procedure tsTemplateCategoryShow(Sender: TObject);
    procedure lvwTemplatesDblClick(Sender: TObject);
    procedure btnFinishClick(Sender: TObject);
    procedure memMessageChange(Sender: TObject);
    procedure lvwTemplatesSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure cmbTempCategoryChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbLoanRefChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FConnection: TADOConnection;
    procedure SetConnection(const Value: TADOConnection);
    { Private declarations }
  public
    { Public declarations }
    property Connection: TADOConnection read FConnection write SetConnection;
  end;

var
  frmSMSWizard: TfrmSMSWizard;

procedure ExecuteSMSWizard(sConnection: WideString; UserID: String; RoleID, EntityID: Integer);

implementation

uses dmSMSWizard, DB;

{$R *.dfm}

procedure ExecuteSMSWizard(sConnection: WideString; UserID: String; RoleID, EntityID: Integer);
var
  Tel3: String;
  msisdn: String;
  I: Integer;
begin
  frmSMSWizard := TfrmSMSWizard.Create(nil);
  dtmSMSWizard := TdtmSMSWizard.Create(nil);
  dtmSMSWizard.cnSMS.Close;
  dtmSMSWizard.cnSMS.ConnectionString := sConnection;
  dtmSMSWizard.cnSMS.Open;

  dtmSMSWizard.EntityID := EntityID;
  dtmSMSWizard.UserID := UserID;
  dtmSMSWizard.RoleID := RoleID;
  frmSMSWizard.cmbEntity.Items.Add(
    dtmSMSWizard.dsEntity.FieldByName('EntCode').AsString + ' - ' +
    dtmSMSWizard.dsEntity.FieldByName('Name').AsString + ' ' +
    dtmSMSWizard.dsEntity.FieldByName('Name2').AsString);
  frmSMSWizard.cmbEntity.ItemIndex := 0;
  Tel3 := Trim(dtmSMSWizard.dsEntity.FieldByName('TelNo3').AsString);
  for I := 1 to Length(Tel3) do
    if Ord(Tel3[I]) in [48..57] then
      msisdn := msisdn + Tel3[I];

  frmSMSWizard.edtMSISDN.Text := msisdn;
  frmSMSWizard.edtMSISDN.ReadOnly := True;
  frmSMSWizard.edtMSISDN.Color := clBtnFace;

  try
    {if MSISDN <> '' then
    begin
      frmSMSWizard.edtMSISDN.ReadOnly := True;
      frmSMSWizard.edtMSISDN.Text := MSISDN;
      frmSMSWizard.edtMSISDN.Color := clBtnFace;
    end;}
    if frmSMSWizard.ShowModal = mrOK then
      MessageDlg('SMS has been sent.', mtInformation, [mbOK], 0);
  finally
    FreeAndNil(frmSMSWizard);
    FreeAndNil(dtmSMSWizard);
  end;
end;

procedure TfrmSMSWizard.btnFinishClick(Sender: TObject);
var
  msisdn: String;
  LoanID: Integer;
begin
  if Length(Trim(memMessage.Text)) = 0 then
    MessageDlg('No message supplied.', mtError, [mbOK], 0)
  else if Length(memMessage.Text) > 160 then
    MessageDlg('Message length is longer than the 160 characters permissable.',
      mtError, [mbOK], 0)
  else if Copy(edtMSISDN.Text, 1,1) <> '0' then
    MessageDlg('Invalid format for cellphone number.', mtError, [mbOK], 0)
  else if pnlTop.Visible and (cmbLoanRef.Text = '') then
    MessageDlg('A Loan Reference must be selected.', mtError, [mbOK], 0)
  else if MessageDlg('Are you sure you want to send this sms now?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      msisdn := StringReplace(edtMSISDN.Text,'0','27',[]);
      if pnlTop.Visible then
        LoanID := 0
      else
        LoanID := dtmSMSWizard.qryLoans.FieldByName('LoanID').AsInteger;

      with dtmSMSWizard do
      begin
        cmdAddSMS.Parameters.ParamByName('LoanID').Value := LoanID;
        cmdAddSMS.Parameters.ParamByName('EntityID').Value := EntityID;
        cmdAddSMS.Parameters.ParamByName('CellNo').Value := msisdn;
        cmdAddSMS.Parameters.ParamByName('Message').Value := memMessage.Text;
        cmdAddSMS.Parameters.ParamByName('TemplateID').Value := dsTemplates.FieldByName('TemplateID').AsInteger;
        cmdAddSMS.Parameters.ParamByName('UserID').Value := UserID;
        cmdAddSMS.Execute;
      end;
    except
      MessageDlg('An error occurred while attempting to send this sms. ' +
        'Please contact your Adminstrator.', mtError, [mbOK], 0);
      Abort;
    end;
    inherited;
    ModalResult := mrOK;
  end;
end;

procedure TfrmSMSWizard.cmbTempCategoryChange(Sender: TObject);
var
  Item: TListItem;
begin
  inherited;
  if dtmSMSWizard.dsCategories.Locate('Description', cmbTempCategory.Text, []) then
  begin
    lvwTemplates.Clear;
    dtmSMSWizard.dsTemplates.First;
    while not dtmSMSWizard.dsTemplates.Eof do
    begin
      Item := lvwTemplates.Items.Add;
      Item.Caption := dtmSMSWizard.dsTemplates.FieldByName('Template').AsString;
      Item.ImageIndex := 0;
      Item.StateIndex := dtmSMSWizard.dsTemplates.FieldByName('TemplateID').AsInteger;
      dtmSMSWizard.dsTemplates.Next;
    end;
  end;
end;

procedure TfrmSMSWizard.FormShow(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    dtmSMSWizard.GetTemplateCategories(cmbTempCategory.Items);
    dtmSMSWizard.dsTemplates.Open;
  finally
    Screen.Cursor := crDefault;
  end;                           
end;

procedure TfrmSMSWizard.lvwTemplatesDblClick(Sender: TObject);
begin
  inherited;
  btnNext.Click;
end;

procedure TfrmSMSWizard.lvwTemplatesSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  inherited;
  if Assigned(Item) then
  begin
    dtmSMSWizard.dsTemplates.Locate('TemplateID',Item.StateIndex,[]);
    pnlTop.Visible := dtmSMSWizard.dsTemplates.FieldByName('IsDynamic').AsBoolean;
    memMessage.Text := Item.Caption;
  end;
end;

procedure TfrmSMSWizard.memMessageChange(Sender: TObject);
begin
  inherited;
  stsMesg.SimpleText := '  ' + IntToStr(Length(memMessage.Text)) +
    ' Characters (' + IntToStr(160 - Length(memMessage.Text)) + ' remaining)';
end;

procedure TfrmSMSWizard.SetConnection(const Value: TADOConnection);
begin
  FConnection := Value;
  dtmSMSWizard.cnSMS.Connected := False;
  dtmSMSWizard.cnSMS.ConnectionString := Connection.ConnectionString;
  dtmSMSWizard.cnSMS.Connected := True;
end;

procedure TfrmSMSWizard.TabSheet1Show(Sender: TObject);
begin
  inherited;
  edtMSISDN.SetFocus;
  // *** Allow users to change template text
  //memMessage.ReadOnly := radTemplate.Checked;
  cmbLoanRef.Items := dtmSMSWizard.LoanList;
  if cmbLoanRef.Visible then
    if cmbLoanRef.Items.Count = 1 then
    begin
      cmbLoanRef.ItemIndex := 0;
      cmbLoanRefChange(cmbLoanRef);
    end;
end;

procedure TfrmSMSWizard.tsTemplateCategoryShow(Sender: TObject);
begin
  inherited;
  if cmbTempCategory.ItemIndex = -1 then
    if cmbTempCategory.Items.Count > 0 then
    begin
      cmbTempCategory.ItemIndex := 0;
      cmbTempCategoryChange(cmbTempCategory);
    end;

  cmbTempCategory.SetFocus;
end;

procedure TfrmSMSWizard.cmbLoanRefChange(Sender: TObject);
begin
  inherited;
  with dtmSMSWizard do
  begin
    try
      Screen.Cursor := crHourGlass;
      qryLoans.Locate('LoanRef', cmbLoanRef.Text, []);
      qryLoadTemplate.Parameters[0].Value := dsTemplates.FieldByName('TemplateID').AsInteger;
      qryLoadTemplate.Parameters[1].Value := qryLoans.FieldByName('LoanID').AsInteger;
      qryLoadTemplate.Open;
      memMessage.Text := qryLoadTemplate.Fields[0].AsString;
      qryLoadTemplate.Close;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmSMSWizard.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTop.Hide;
end;

end.
