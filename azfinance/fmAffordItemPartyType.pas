unit fmAffordItemPartyType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Db, ADODB, ucbxDBList, NumEdit, DateUtils;

type
  TfrmAffordItemPartyType = class(TForm)
    lblAmount: TLabel;
    lblDescription: TLabel;
    lblAction: TLabel;
    lblActionUser: TLabel;
    lblActionDate: TLabel;
    btnCancel: TButton;
    btnSave: TButton;
    cmbDescription: TComboBox;
    edtAction: TEdit;
    edtActionUser: TEdit;
    edtActionDate: TEdit;
    edtAmount: TNumEdit;
    lblCategory: TLabel;
    lblSource: TLabel;
    cmbSource: TComboBox;
    edtCategory: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }  
    FCanEditAffordabilityActions: Boolean;
    FAssignCaption: string;
    FSourceID: Integer;
    FSource: String;
    FCategoryType: String;
    FDescription: String;
    FOnlyRead: Boolean;

    procedure SetAssignCaption(const value: string);
    procedure SetSourceID(const Value: Integer);
    procedure SetSource(const Value: String);
    procedure SetCategoryType(const Value: String);
    procedure SetDescription(const Value: String);
    procedure SetOnlyRead(const Value: Boolean);

    property CanEditAffordabilityActions: Boolean read FCanEditAffordabilityActions write FCanEditAffordabilityActions;

  public
    { Public declarations }
    property AssignCaption: string read FAssignCaption write SetAssignCaption;
    property SourceID: Integer read FSourceID write SetSourceID;
    property Source: String read FSource write SetSource;
    property CategoryType: String read FCategoryType write SetCategoryType;
    property Description: String read FDescription write SetDescription;
    property OnlyRead: Boolean read FOnlyRead write SetOnlyRead;
  end;

var
  frmAffordItemPartyType: TfrmAffordItemPartyType;

implementation

uses dmAffordability, dmMain, dmSecurity, Unit32;

{$R *.DFM}
procedure TfrmAffordItemPartyType.SetAssignCaption(const value: string);
begin
  FAssignCaption := Value;
  Self.Caption := AssignCaption;
end;
procedure TfrmAffordItemPartyType.SetSourceID(const Value: Integer);
begin
  FSourceID := Value;
end;
procedure TfrmAffordItemPartyType.SetSource(const Value: String);
begin
  FSource := Value;
end;
procedure TfrmAffordItemPartyType.SetCategoryType(const Value: String);
begin
  FCategoryType := Value;
end;
procedure TfrmAffordItemPartyType.SetDescription(const Value: String);
begin
  FDescription := Value;
end;
procedure TfrmAffordItemPartyType.SetOnlyRead(const Value: Boolean);
begin
  FOnlyRead := Value;

  if (FOnlyRead = False) then
    if CanEditAffordabilityActions = False then// if user not allowed to change then access screen as read only
      FOnlyRead := True;
end;


procedure TfrmAffordItemPartyType.FormCreate(Sender: TObject);
begin

  cmbSource.Text := '';
  edtCategory.Text := '';
  cmbDescription.Text := '';
  edtAmount.Text := '0.00';
  edtAction.Text := '';
  edtActionUser.Text := '';
  edtActionDate.Text := '';

  CanEditAffordabilityActions := dtmSecurity.AllowAccess(301);

end;

procedure TfrmAffordItemPartyType.FormShow(Sender: TObject);
var
  MonthDate: TDateTime;
  I: Integer;
begin


  if (OnlyRead = True) then
  begin

    cmbSource.Style := csSimple;
    cmbSource.Enabled := False;
    cmbSource.Color := clBtnFace;
    cmbSource.Text := Source;

    edtCategory.Enabled := False;
    edtCategory.Color := clBtnFace;

    cmbDescription.Style := csSimple;
    cmbDescription.Enabled := False;
    cmbDescription.Color := clBtnFace;
    cmbDescription.Text := Description;

    edtAmount.Enabled := False;
    edtAmount.Color := clBtnFace;

  end
  else if (OnlyRead = False) then
  begin
    
    with dtmAffordability do
    begin
      dsSource.Close;
      dsSource.Open;

      cmbSource.Style := csDropDownList;
      cmbSource.Enabled := True;
      cmbSource.Color := clWindow;
      
      cmbSource.Items.Clear();
      while not dsSource.Eof do
      begin
        cmbSource.Items.Add(dsSource.FieldByName('Description').AsString);
        dsSource.Next;
      end;
      dsSource.Close;

      if Source = '' then
        cmbSource.ItemIndex := 0
      else
        cmbSource.ItemIndex := cmbSource.Items.IndexOf(Source);
      

      edtCategory.Enabled := True;
      edtCategory.Color := clWindow;

      if CategoryType = 'I' then
      begin
        cmbDescription.Style := csDropDown;
        cmbDescription.Enabled := True;
        cmbDescription.Color := clWindow;

        MonthDate := Today;

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
        cmbDescription.Enabled := True;
        cmbDescription.Color := clWindow;
        cmbDescription.Text := Description;
      end;

      edtAmount.Enabled := True;
    end;
    
  end;

end;


procedure TfrmAffordItemPartyType.btnSaveClick(Sender: TObject);
begin
(*
  if (memNote.Text = '') then
    MessageDlg('Amount is required to continue', mtInformation, [mbOK], 0)
  else
    ModalResult := mrOK;
 *)

  with dtmAffordability do
  begin 
    dsSource.Open;
    dsSource.Locate('Description', cmbSource.Items.Strings[cmbSource.ItemIndex],[]);
    FSourceID := dsSource.FieldByName('SourceID').AsInteger;
    dsSource.Close;
  end;

  ModalResult := mrOK;
end;


end.
