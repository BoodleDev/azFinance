unit fmAffordItemParty;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, DBDateTimePicker, StrUtils,
  NumEdit, DateUtils;

type
  TfrmAffordItemParty = class(TForm)
    lblCategory: TLabel;
    btnCancel: TButton;
    btnSave: TButton;
    cmbCategory: TComboBox;
    lblDescription: TLabel;
    cmbDescription: TComboBox;
    grbApplicant: TGroupBox;
    grbSpouse: TGroupBox;
    cmbApplicantSource: TComboBox;
    lblApplicantSource: TLabel;
    lblSpouseSource: TLabel;
    cmbSpouseSource: TComboBox;
    lblApplicantAmount: TLabel;
    edtApplicantAmount: TNumEdit;
    lblSpouseAmount: TLabel;
    edtSpouseAmount: TNumEdit;
    lblApplicantAction: TLabel;
    lblApplicantActionUser: TLabel;
    lblApplicantActionDate: TLabel;
    edtApplicantAction: TEdit;
    edtApplicantActionUser: TEdit;
    edtApplicantActionDate: TEdit;
    lblSpouseAction: TLabel;
    edtSpouseAction: TEdit;
    edtSpouseActionUser: TEdit;
    lblSpouseActionUser: TLabel;
    lblSpouseActionDate: TLabel;
    edtSpouseActionDate: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbCategorySelect(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);

  private
    { Private declarations }
    FCanEditAffordabilityActions: Boolean;
    FAssignCaption: string;
    FLoanID: Integer;
    FDefaultApplicantSourceID: Integer;
    FApplicantSourceID: Integer;
    FDefaultSpouseSourceID: Integer;
    FSpouseSourceID: Integer;
    FCategoryID: Integer;
    FCategory: String;
    FCategoryType: String;
    FAllowSubItem: Boolean;
    FAllowDuplicate: Boolean;
    FDescription: String;
    FOnlyRead: Boolean;


//    procedure SetAssignCaption(const value: string);
//    procedure SetLoanID(const Value: Integer);
//    procedure SetCategoryID(const Value: Integer);
//    procedure SetCategory(const Value: String);
//    procedure SetCategoryType(const Value: String);
//    procedure SetAllowSubItem(const Value: Boolean);
//    procedure SetAllowDuplicate(const Value: Boolean);
//    procedure SetDescription(const Value: String);
    procedure SetOnlyRead(const Value: Boolean);

    property CanEditAffordabilityActions: Boolean read FCanEditAffordabilityActions write FCanEditAffordabilityActions;


  public
    { Public declarations }
//    property AssignCaption: string read FAssignCaption write SetAssignCaption;
    property LoanID: Integer read FLoanID write FLoanID;
    property DefaultApplicantSourceID: Integer read FDefaultApplicantSourceID;
    property ApplicantSourceID: Integer read FApplicantSourceID;
    property DefaultSpouseSourceID: Integer read FDefaultSpouseSourceID;
    property SpouseSourceID: Integer read FSpouseSourceID;
    property CategoryID: Integer read FCategoryID write FCategoryID;
    property Category: String read FCategory write FCategory;
    property CategoryType: String read FCategoryType write FCategoryType;
    property AllowSubItem: Boolean read FAllowSubItem write FAllowSubItem;
    property AllowDuplicate: Boolean read FAllowDuplicate write FAllowDuplicate;
    property Description: String read FDescription write FDescription;
    property OnlyRead: Boolean read FOnlyRead write SetOnlyRead;

  end;

var
  frmAffordItemParty: TfrmAffordItemParty;

implementation

uses dmMain, dmAffordability, dmSecurity, DB;

{$R *.dfm}

//procedure TfrmAffordItemParty.SetAssignCaption(const value: string);
//begin
//  FAssignCaption := Value;
//  Self.Caption := AssignCaption;
//end;

//procedure TfrmAffordItemParty.SetLoanID(const Value: Integer);
//begin
//  FLoanID := Value;
//end;

//procedure TfrmAffordItemParty.SetCategoryID(const Value: Integer);
//begin
//  FCategoryID := Value;
//end;

//procedure TfrmAffordItemParty.SetCategory(const Value: String);
//begin
//  FCategory := Value;
//end;
//
//procedure TfrmAffordItemParty.SetCategoryType(const Value: String);
//begin
//  FCategoryType := Value;
//end;
//
//procedure TfrmAffordItemParty.SetAllowSubItem(const Value: Boolean);
//begin
//  FAllowSubItem := Value;
//end;
//
//procedure TfrmAffordItemParty.SetAllowDuplicate(const Value: Boolean);
//begin
//  FAllowDuplicate := Value;
//end;
//
//procedure TfrmAffordItemParty.SetDescription(const Value: String);
//begin
//  FDescription := Value;
//end;

procedure TfrmAffordItemParty.SetOnlyRead(const Value: Boolean);
begin
  FOnlyRead := Value;

  if (FOnlyRead = False) then
    if CanEditAffordabilityActions = False then// if user not allowed to change then access screen as read only
      FOnlyRead := True;
end;

procedure TfrmAffordItemParty.FormCreate(Sender: TObject);
begin
  cmbApplicantSource.Text     := '';
  cmbSpouseSource.Text        := '';
  cmbCategory.Text            := '';
  cmbDescription.Text         := '';
  edtApplicantAmount.Text     := '0.00';
  edtSpouseAmount.Text        := '0.00';
  edtApplicantAction.Text     := '';
  edtApplicantActionUser.Text := '';
  edtApplicantActionDate.Text := '';
  edtSpouseAction.Text        := '';
  edtSpouseActionUser.Text    := '';
  edtSpouseActionDate.Text    := '';
  CanEditAffordabilityActions := dtmSecurity.AllowAccess(301);
end;

procedure TfrmAffordItemParty.FormShow(Sender: TObject);
var
  MonthDate: TDateTime;
  I: Integer;
begin
  MonthDate := Today;
  with dtmAffordability do
  begin
    dsCategorySourceAction.Close;
    dsCategorySourceAction.Close;
    dsCategorySourceAction.Parameters.ParamByName('LoanID').Value := LoanID;
    dsCategorySourceAction.Parameters.ParamByName('CategoryID').Value := CategoryID;
    dsCategorySourceAction.Open;
    if (OnlyRead = True) then
    begin
      cmbApplicantSource.Style := csSimple;
      cmbApplicantSource.Enabled := False;
      cmbApplicantSource.Color := clBtnFace;
      cmbApplicantSource.Text := dsCategorySourceAction.FieldByName('ApplicantSource').AsString;
      cmbSpouseSource.Style := csSimple;
      cmbSpouseSource.Enabled := False;
      cmbSpouseSource.Color := clBtnFace;
      cmbSpouseSource.Text := dsCategorySourceAction.FieldByName('SpouseSource').AsString;
      cmbCategory.Style := csSimple;
      cmbCategory.Enabled := False;
      cmbCategory.Color := clBtnFace;
      cmbCategory.Text := Category;
      cmbDescription.Style := csSimple;
      cmbDescription.Enabled := False;
      cmbDescription.Color := clBtnFace;
      cmbDescription.Text := Description;
      edtApplicantAmount.Enabled := False;
      edtApplicantAmount.Color := clBtnFace;
      edtSpouseAmount.Enabled := False;
      edtSpouseAmount.Color := clBtnFace;
      edtApplicantAction.Text := dsCategorySourceAction.FieldByName('ApplicantAction').AsString;
      edtApplicantActionDate.Text := dsCategorySourceAction.FieldByName('ApplicantActionDate').AsString;
      edtSpouseAction.Text := dsCategorySourceAction.FieldByName('SpouseAction').AsString;
      edtSpouseActionDate.Text := dsCategorySourceAction.FieldByName('SpouseActionDate').AsString;

      //show user name or user department
      if (dtmSecurity.RoleID in [65,64,66,82,91]) then //64:Fraud Consultant, 66:Credit Vetting Manager, 82:Credit Vetting Supervisor, 91:Credit Vetting Team Leader
        begin
          edtApplicantActionUser.Text := dsCategorySourceAction.FieldByName('ApplicantActionUser').AsString;
          edtSpouseActionUser.Text := dsCategorySourceAction.FieldByName('SpouseActionUser').AsString;
        end
      else
        begin
          edtApplicantActionUser.Text := dsCategorySourceAction.FieldByName('ApplicantActionUserDepartment').AsString;
          edtSpouseActionUser.Text := dsCategorySourceAction.FieldByName('SpouseActionUserDepartment').AsString;
        end;

      btnSave.Visible := False;
      btnCancel.Enabled := True;
      btnCancel.Caption := '&Close';
    end
    else if (OnlyRead = False) then
    begin
      dsSource.Close;
      dsSource.Close;
      dsSource.Open;
      cmbApplicantSource.Style := csDropDownList;
      cmbApplicantSource.Enabled := True;
      cmbApplicantSource.Color := clWindow;
      cmbApplicantSource.Items.Clear();
      dsSource.First;
      while not dsSource.Eof do
      begin
        cmbApplicantSource.Items.Add(dsSource.FieldByName('Description').AsString);
        dsSource.Next;
      end;
      cmbSpouseSource.Style := csDropDownList;
      cmbSpouseSource.Enabled := True;
      cmbSpouseSource.Color := clWindow;
      cmbSpouseSource.Items.Clear();
      dsSource.First;
      while not dsSource.Eof do
      begin
        cmbSpouseSource.Items.Add(dsSource.FieldByName('Description').AsString);
        dsSource.Next;
      end;

      if CategoryID = 0 then
      begin
        cmbApplicantSource.ItemIndex := 0;
        dsSource.Locate('Description', cmbApplicantSource.Items.Strings[cmbApplicantSource.ItemIndex],[]);
        FDefaultApplicantSourceID := dsSource.FieldByName('SourceID').AsInteger;
        cmbSpouseSource.ItemIndex := 0;
        dsSource.Locate('Description', cmbSpouseSource.Items.Strings[cmbSpouseSource.ItemIndex],[]);
        FDefaultSpouseSourceID := dsSource.FieldByName('SourceID').AsInteger;
        cmbCategory.Style := csDropDownList;
        cmbCategory.Enabled := True;
        cmbCategory.Color := clWindow;
        dsTypeCategory.Close;
        dsTypeCategory.Close;
        dsTypeCategory.Parameters.ParamByName('CategoryType').Value := CategoryType;
        dsTypeCategory.Parameters.ParamByName('LoanID').Value := LoanID;
        dsTypeCategory.Open;
        dsExcludeCategory.Close;
        dsExcludeCategory.Close;
        dsExcludeCategory.Parameters.ParamByName('LoanID').Value := LoanID;
        dsExcludeCategory.Parameters.ParamByName('CategoryType').Value := CategoryType;
        dsExcludeCategory.Open;
        cmbCategory.Items.Clear();
        while not dsTypeCategory.Eof do
        begin
          if not dsExcludeCategory.Locate('CategoryID', dsTypeCategory.FieldByName('CategoryID').AsInteger, []) then
            cmbCategory.Items.Add(dsTypeCategory.FieldByName('Description').AsString);

          dsTypeCategory.Next;
        end;
        dsTypeCategory.Close;
        dsTypeCategory.Close;
        dsExcludeCategory.Close;
        dsExcludeCategory.Close;

        //show amount and description as editable but disabled until category is selected
        if CategoryType = 'I' then
          begin
            cmbDescription.Style   := csDropDown;
            cmbDescription.Enabled := False;
            cmbDescription.Color   := clWindow;
            cmbDescription.Items.Clear();

            for I := 1 to 6 do
            begin
              cmbDescription.Items.Add(FormatDateTime('MMMM yyyy', MonthDate));
              MonthDate := IncMonth(MonthDate, -1);
            end;

            if (Description = '') then
              cmbDescription.ItemIndex := 0
            else
              cmbDescription.Text := Description;
          end
        else
          begin
            cmbDescription.Style := csSimple;
            cmbDescription.Enabled := False;
            cmbDescription.Color := clWindow;
            cmbDescription.Text := Description;
          end;

        edtApplicantAmount.Enabled := False;
        edtApplicantAmount.Color := clWindow;
        edtSpouseAmount.Enabled := False;
        edtSpouseAmount.Color := clWindow;

        //this will al be empty as there as the category is is = 0
        edtApplicantAction.Text := dsCategorySourceAction.FieldByName('ApplicantAction').AsString;
        edtApplicantActionDate.Text := dsCategorySourceAction.FieldByName('ApplicantActionDate').AsString;

        edtSpouseActionDate.Text := dsCategorySourceAction.FieldByName('SpouseActionDate').AsString;
        edtSpouseActionUser.Text := dsCategorySourceAction.FieldByName('SpouseActionUser').AsString;

        //show user name or user department
        if (dtmSecurity.RoleID in [65,64,66,82,91]) then //64:Fraud Consultant, 66:Credit Vetting Manager, 82:Credit Vetting Supervisor, 91:Credit Vetting Team Leader
          begin
            edtApplicantActionUser.Text := dsCategorySourceAction.FieldByName('ApplicantActionUser').AsString;
            edtSpouseActionUser.Text := dsCategorySourceAction.FieldByName('SpouseActionUser').AsString;
          end
        else
          begin
            edtApplicantActionUser.Text := dsCategorySourceAction.FieldByName('ApplicantActionUserDepartment').AsString;
            edtSpouseActionUser.Text    := dsCategorySourceAction.FieldByName('SpouseActionUserDepartment').AsString;
          end;

        btnSave.Enabled := False;

      end
      else
        begin
          FDefaultApplicantSourceID    := dsCategorySourceAction.FieldByName('ApplicantSourceID').AsInteger;
          cmbApplicantSource.ItemIndex := cmbApplicantSource.Items.IndexOf(dsCategorySourceAction.FieldByName('ApplicantSource').AsString);
          FDefaultSpouseSourceID       := dsCategorySourceAction.FieldByName('SpouseSourceID').AsInteger;
          cmbSpouseSource.ItemIndex    := cmbSpouseSource.Items.IndexOf(dsCategorySourceAction.FieldByName('SpouseSource').AsString);
          cmbCategory.Style          := csSimple;
          cmbCategory.Enabled        := False;
          cmbCategory.Color          := clBtnFace;
          cmbCategory.Text           := Category;
          cmbDescription.Style       := csSimple;
          cmbDescription.Enabled     := False;
          cmbDescription.Color       := clBtnFace;
          cmbDescription.Text        := Description;
          edtApplicantAmount.Enabled := True;
          edtApplicantAmount.Color   := clWindow;
          edtSpouseAmount.Enabled    := True;
          edtSpouseAmount.Color      := clWindow;

          edtApplicantAction.Text := dsCategorySourceAction.FieldByName('ApplicantAction').AsString;
          edtApplicantActionDate.Text := dsCategorySourceAction.FieldByName('ApplicantActionDate').AsString;

          edtSpouseAction.Text := dsCategorySourceAction.FieldByName('SpouseAction').AsString;
          edtSpouseActionDate.Text := dsCategorySourceAction.FieldByName('SpouseActionDate').AsString;

          //show user name or user department
          if (dtmSecurity.RoleID in [65,64,66,82,91]) then //64:Fraud Consultant, 66:Credit Vetting Manager, 82:Credit Vetting Supervisor, 91:Credit Vetting Team Leader
            begin
              edtApplicantActionUser.Text := dsCategorySourceAction.FieldByName('ApplicantActionUser').AsString;
              edtSpouseActionUser.Text    := dsCategorySourceAction.FieldByName('SpouseActionUser').AsString;
            end
          else
            begin
              edtApplicantActionUser.Text := dsCategorySourceAction.FieldByName('ApplicantActionUserDepartment').AsString;
              edtSpouseActionUser.Text    := dsCategorySourceAction.FieldByName('SpouseActionUserDepartment').AsString;
            end;
          btnSave.Enabled := True;
          btnSave.Visible := True;
          btnSave.Caption := '&Save';

          btnCancel.Enabled := True;
          btnCancel.Caption := '&Cancel';
        end;
    end;
    dsSource.Close;
    dsSource.Close;
    dsCategorySourceAction.Close;
    dsCategorySourceAction.Close;
  end;
end;

procedure TfrmAffordItemParty.btnSaveClick(Sender: TObject);
begin
  if (cmbDescription.Text = '') then
    begin
      MessageDlg(cmbCategory.Text +' decription is required to continue', mtInformation, [mbOK], 0);
    end
  else
    begin
      with dtmAffordability do
      begin
        dsSource.Open;
        dsSource.Locate('Description', cmbApplicantSource.Items.Strings[cmbApplicantSource.ItemIndex],[]);
        FApplicantSourceID := dsSource.FieldByName('SourceID').AsInteger;
        dsSource.Locate('Description', cmbSpouseSource.Items.Strings[cmbSpouseSource.ItemIndex],[]);
        FSpouseSourceID := dsSource.FieldByName('SourceID').AsInteger;
        dsSource.Close;
        dsSource.Close;
        if CategoryID = 0 then
          begin
            dsTypeCategory.Open;
            dsTypeCategory.Locate('Description', cmbCategory.Items.Strings[cmbCategory.ItemIndex],[]);
            CategoryID     := dsTypeCategory.FieldByName('CategoryID').AsInteger;
            AllowSubItem   := dsTypeCategory.FieldByName('AllowSubItem').AsBoolean;
            AllowDuplicate := dsTypeCategory.FieldByName('AllowDuplicate').AsBoolean;
            dsTypeCategory.Close;
            dsTypeCategory.Close;
          end
        else
          begin
            AllowSubItem   := False;//the one's that don't allow sub item will be on a screen that show subitem on grid
            AllowDuplicate := False; // allow duplicate does not get used whwn saving allow subitem = false
          end;
      end;
      ModalResult := mrOK;
    end;
end;

procedure TfrmAffordItemParty.cmbCategorySelect(Sender: TObject);
var
  EditDescription: Boolean;

begin
  with dtmAffordability do
  begin
    dsTypeCategory.Open;
    dsTypeCategory.Locate('Description', cmbCategory.Items.Strings[cmbCategory.ItemIndex],[]);
    EditDescription := dsTypeCategory.FieldByName('AllowSubItem').AsBoolean;
    dsTypeCategory.Close;
    dsTypeCategory.Close;
  end;

  if EditDescription then
    begin
      cmbDescription.Enabled := True;
      cmbDescription.Color   := clWindow;

      if (cmbDescription.Style = csSimple) then
        cmbDescription.Text      := ''     // Default
      else if (cmbDescription.Style = csDropDown) then
        cmbDescription.ItemIndex := 0;     // Default
    end
  else
    begin
      cmbDescription.Enabled := False;
      cmbDescription.Color   := clBtnFace;
      cmbDescription.Text    := cmbCategory.Text;// Default
    end;

  if btnSave.Enabled = False then
  begin
    edtApplicantAmount.Enabled := True;
    edtApplicantAmount.Color   := clWindow;
    edtSpouseAmount.Enabled    := True;
    edtSpouseAmount.Color      := clWindow;
    btnSave.Enabled            := True;
  end;
end;

end.
