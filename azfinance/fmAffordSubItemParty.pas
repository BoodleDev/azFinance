unit fmAffordSubItemParty;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ToolWin, Unit32;

type
  TfrmAffordSubItemParty = class(TForm)
    btnClose: TButton;
    grpApplicant: TGroupBox;
    grdApplicant: TDBGrid;
    grpSpouse: TGroupBox;
    grdSpouse: TDBGrid;
    tlbrSpouse: TToolBar;
    btnSpouseAdd: TToolButton;
    btnSpouseEdit: TToolButton;
    tlbrApplicant: TToolBar;
    btnApplicantAdd: TToolButton;
    btnApplicantEdit: TToolButton;
    btnApplicantEnable: TToolButton;
    btnApplicantDisable: TToolButton;
    btnSpouseEnable: TToolButton;
    btnSpouseDisable: TToolButton;
    procedure btnAddEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnEnableDisableClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FCanEditAffordabilityActions: Boolean;
    FAssignCaption: string;
    FLoanID: Integer;
    FCategoryID: Integer;
    FCategory: String;
    FCategoryType: String;
    FAllowDuplicate: Boolean;
    FOnlyRead: Boolean;
    FReload: Boolean;


    procedure SetAssignCaption(const value: string);
    procedure SetLoanID(const Value: Integer);
    procedure SetCategoryID(const Value: Integer);
    procedure SetCategory(const Value: String);
    procedure SetCategoryType(const Value: String);
    procedure SetAllowDuplicate(const Value: Boolean);
    procedure SetOnlyRead(const Value: Boolean);



    procedure EditPartyTypeSubItem(SubItemID, ItemID: Integer; SourceID: Integer; Source: String;
      CategoryDescription, Description: String; Amount: Currency; PartyType: String;
      ActionID: Integer; Action, ActionUser, ActionDate: String);

//    procedure DeletePartyTypeSubItem(SubItemID: Integer; PartyType: String);

    property CanEditAffordabilityActions: Boolean read FCanEditAffordabilityActions write FCanEditAffordabilityActions;

  public
    { Public declarations }
    property AssignCaption: string read FAssignCaption write SetAssignCaption;
    property LoanID: Integer read FLoanID write SetLoanID;
    property CategoryID: Integer read FCategoryID write SetCategoryID;
    property Category: String read FCategory write SetCategory;
    property CategoryType: String read FCategoryType write SetCategoryType;
    property AllowDuplicate: Boolean read FAllowDuplicate write SetAllowDuplicate;
    property OnlyRead: Boolean read FOnlyRead write SetOnlyRead;
    property Reload: Boolean read FReload;
    
  end;

var
  frmAffordSubItemParty: TfrmAffordSubItemParty;


implementation

uses dmAffordability, dmMain, dmSecurity, fmAffordItemPartyType, DB;

{$R *.DFM}
procedure TfrmAffordSubItemParty.SetAssignCaption(const value: string);
begin
  FAssignCaption := Value;
  Self.Caption := AssignCaption;
end;
procedure TfrmAffordSubItemParty.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
end;
procedure TfrmAffordSubItemParty.SetCategoryID(const Value: Integer);
begin
  FCategoryID := Value;
end;
procedure TfrmAffordSubItemParty.SetCategory(const Value: String);
begin
  FCategory := Value;
end; 
procedure TfrmAffordSubItemParty.SetCategoryType(const Value: String);
begin
  FCategoryType := Value;
end;
procedure TfrmAffordSubItemParty.SetAllowDuplicate(const Value: Boolean);
begin
  FAllowDuplicate := Value;
end;
procedure TfrmAffordSubItemParty.SetOnlyRead(const Value: Boolean);
begin
  FOnlyRead := Value;

  if (FOnlyRead = False) then
    if CanEditAffordabilityActions = False then// if user not allowed to change then access screen as read only
      FOnlyRead := True;

  if (OnlyRead = True) then
  begin

    btnApplicantAdd.Enabled := False;
    btnApplicantEdit.Enabled := False;
    btnApplicantEnable.Enabled := False;
    btnApplicantDisable.Enabled := False;
    //btnApplicantDelete.Enabled := False;

    btnSpouseAdd.Enabled := False;
    btnSpouseEdit.Enabled := False;
    btnSpouseEnable.Enabled := False;
    btnSpouseDisable.Enabled := False;
    //btnSpouseDelete.Enabled := False;

    //grdApplicant.Color := clBtnFace;
    //grdApplicant.ReadOnly := True;
    grdApplicant.Enabled := True;
    grdApplicant.Color := clWhite;

    //grdSpouse.Color := clBtnFace;
    //grdSpouse.ReadOnly := True;
    grdSpouse.Enabled := True;
    grdSpouse.Color := clWhite;

  end
  else if (OnlyRead = False) then
  begin


    btnApplicantAdd.Enabled := True;
    btnApplicantAdd.Visible := True;
    btnSpouseAdd.Enabled := True;
    btnSpouseAdd.Visible := True;
  end;

end;


procedure TfrmAffordSubItemParty.FormShow(Sender: TObject);
begin

  dtmAffordability.dsSubItemApplicant.Close;
  dtmAffordability.dsSubItemApplicant.Close;
  dtmAffordability.dsSubItemApplicant.Parameters.ParamByName('LoanID').Value := LoanID;
  dtmAffordability.dsSubItemApplicant.Parameters.ParamByName('CategoryID').Value := CategoryID;
  dtmAffordability.dsSubItemApplicant.Open;

  dtmAffordability.dsSubItemSpouse.Close;
  dtmAffordability.dsSubItemSpouse.Close;  
  dtmAffordability.dsSubItemSpouse.Parameters.ParamByName('LoanID').Value := LoanID;
  dtmAffordability.dsSubItemSpouse.Parameters.ParamByName('CategoryID').Value := CategoryID;
  dtmAffordability.dsSubItemSpouse.Open;


  //zero row = no action other than add, regardless of read only
  if(dtmAffordability.dsSubItemApplicant.RecordCount = 0) then
  begin

    btnApplicantEdit.Enabled := False;
    btnApplicantEdit.Visible := False;
    btnApplicantEnable.Enabled := False;
    btnApplicantEnable.Visible := False;
    btnApplicantDisable.Enabled := False;
    btnApplicantDisable.Visible := False;
    //btnApplicantDelete.Enabled := False;
    //btnApplicantDelete.Visible := False;

    grdApplicant.Enabled := True;
    grdApplicant.Color := clWhite;
  end;


  
  if(dtmAffordability.dsSubItemSpouse.RecordCount = 0) then
  begin

    btnSpouseEdit.Enabled := False;
    btnSpouseEdit.Visible := False;
    btnSpouseEnable.Enabled := False;
    btnSpouseEnable.Visible := False;
    btnSpouseDisable.Enabled := False;
    btnSpouseDisable.Visible := False;
    //btnSpouseDelete.Enabled := False;
    //btnSpouseDelete.Visible := False;

    grdSpouse.Enabled := True;
    grdSpouse.Color := clWhite;
  end;

end;  
procedure TfrmAffordSubItemParty.FormCreate(Sender: TObject);
begin
  CanEditAffordabilityActions := dtmSecurity.AllowAccess(301);
end;

procedure TfrmAffordSubItemParty.EditPartyTypeSubItem(SubItemID, ItemID: Integer;
  SourceID: Integer; Source: String;
  CategoryDescription, Description: String; Amount: Currency; PartyType: String;
  ActionID: Integer; Action, ActionUser, ActionDate: String);
begin
  frmAffordItemPartyType := TfrmAffordItemPartyType.Create(Self);

  try

    frmAffordItemPartyType.AssignCaption := Category +' - '+ CategoryDescription;
    if (Description = '') then
      frmAffordItemPartyType.AssignCaption := frmAffordItemPartyType.AssignCaption +' New';

    frmAffordItemPartyType.SourceID := SourceID;
    frmAffordItemPartyType.Source := Source;
    frmAffordItemPartyType.CategoryType := CategoryType;
    frmAffordItemPartyType.Description := Description;
    frmAffordItemPartyType.OnlyRead := OnlyRead;

    frmAffordItemPartyType.edtCategory.Text := CategoryDescription;
    frmAffordItemPartyType.edtAmount.Text := FloatToStr(Amount);
    frmAffordItemPartyType.edtAction.Text := Action;
    frmAffordItemPartyType.edtActionUser.Text := ActionUser;
    frmAffordItemPartyType.edtActionDate.Text := ActionDate;


    if frmAffordItemPartyType.ShowModal = mrOk then
    begin

      if ((frmAffordItemPartyType.cmbSource.Text <> Source)
          or
          (frmAffordItemPartyType.edtCategory.Text <> CategoryDescription)
          or
          (frmAffordItemPartyType.cmbDescription.Text <> Description)
          or
          (frmAffordItemPartyType.edtAmount.Text <> FloatToStr(Amount))) then
      begin

        FReload := True;
        SourceID := frmAffordItemPartyType.SourceID;
        CategoryDescription := frmAffordItemPartyType.edtCategory.Text;
        Description := frmAffordItemPartyType.cmbDescription.Text;
        Amount := StrToCurr(frmAffordItemPartyType.edtAmount.Text);

        with dtmAffordability do
        begin
          SaveSubItem(SubItemID, ItemID, LoanID, SourceID, CategoryID, CategoryDescription, PartyType,
            Description, Amount, ActionID, AllowDuplicate);

          if (PartyType = 'A') then
          begin
            RequeryOnRecord(dsSubItemApplicant, 'SubItemID');
            grdApplicant.Refresh;
          end
          else
          if (PartyType = 'S') then
          begin
            RequeryOnRecord(dsSubItemSpouse, 'SubItemID');
            grdSpouse.Refresh;
          end;
            
        end;

      end;

    end
    else
    begin
      dtmAffordability.dsSubItemApplicant.Cancel;
      dtmAffordability.dsSubItemSpouse.Cancel;
    end;
  finally
      FreeAndNil(frmAffordItemPartyType);
   end;
end;

procedure TfrmAffordSubItemParty.btnAddEditClick(Sender: TObject);
var
  SubItemID, ItemID: Integer;
  SourceID: Integer;
  Source: String;
  PartyType: String;
  ActionID: Integer;
  CategoryDescription: String;
  Description: String;
  Amount: Currency;
  Action, ActionUser, ActionDate: String;
begin
  ActionID := 0;
  SubItemID := 0;
  ItemID := 0;
  SourceID := 0;
  Source := '';
  CategoryDescription := ''; // Default
  Description := ''; // Default
  Amount := 0.00; //
  Action := '';
  ActionUser := '';
  ActionDate := '';


  try

    if ((Sender = btnApplicantAdd) or (Sender = btnApplicantEdit)
        or
        (Sender = btnSpouseAdd) or (Sender = btnSpouseEdit)) then
    begin

      if ((Sender = btnApplicantAdd) or (Sender = btnApplicantEdit)) then
        grdApplicant.SetFocus
      else if ((Sender = btnSpouseAdd) or (Sender = btnSpouseEdit)) then
       grdSpouse.SetFocus;

      if ((Sender = btnApplicantAdd) or (Sender = btnApplicantEdit)) then
        PartyType := 'A'
      else
      if ((Sender = btnSpouseAdd) or (Sender = btnSpouseEdit)) then
       PartyType := 'S';

      if ((Sender = btnApplicantAdd) or (Sender = btnSpouseAdd)) then
        ActionID := 1 //Added
      else
      if ((Sender = btnApplicantEdit) or (Sender = btnSpouseEdit)) then
       ActionID := 2; //Edited

      if ((Sender = btnApplicantAdd) and (dtmAffordability.dsSubItemApplicant.RecordCount <> 0)) then
      begin // i don't want to read item id as the change in new one's description might change existing ones description to reflect as new
        //ItemID := dtmAffordability.dsSubItemApplicant.FieldByName('ItemID').AsInteger;
        SourceID := dtmAffordability.dsSubItemApplicant.FieldByName('SourceID').AsInteger;
        Source := dtmAffordability.dsSubItemApplicant.FieldByName('Source').AsString;
        CategoryDescription := dtmAffordability.dsSubItemApplicant.FieldByName('Category').AsString;
      end
      else
      if ((Sender = btnSpouseAdd) and (dtmAffordability.dsSubItemSpouse.RecordCount <> 0)) then
      begin // i don't want to read item id as the change in new one's description might change existing ones description to reflect as new
        //ItemID := dtmAffordability.dsSubItemSpouse.FieldByName('ItemID').AsInteger;
        SourceID := dtmAffordability.dsSubItemSpouse.FieldByName('SourceID').AsInteger;
        Source := dtmAffordability.dsSubItemSpouse.FieldByName('Source').AsString;
        CategoryDescription := dtmAffordability.dsSubItemSpouse.FieldByName('Category').AsString;
      end;


      if (Sender = btnApplicantEdit) then
      begin
        SubItemID := dtmAffordability.dsSubItemApplicant.FieldByName('SubItemID').AsInteger;
        ItemID := dtmAffordability.dsSubItemApplicant.FieldByName('ItemID').AsInteger; 
        SourceID := dtmAffordability.dsSubItemApplicant.FieldByName('SourceID').AsInteger;
        Source := dtmAffordability.dsSubItemApplicant.FieldByName('Source').AsString;
        CategoryDescription := dtmAffordability.dsSubItemApplicant.FieldByName('Category').AsString;
        Description := dtmAffordability.dsSubItemApplicant.FieldByName('Description').AsString;
        Amount := dtmAffordability.dsSubItemApplicant.FieldByName('Amount').AsCurrency;
        Action := dtmAffordability.dsSubItemApplicant.FieldByName('Action').AsString;
        ActionUser := dtmAffordability.dsSubItemApplicant.FieldByName('ActionUser').AsString;
        ActionDate := dtmAffordability.dsSubItemApplicant.FieldByName('ActionDate').AsString;

      end
      else
      if (Sender = btnSpouseEdit) then
      begin
        SubItemID := dtmAffordability.dsSubItemSpouse.FieldByName('SubItemID').AsInteger;
        ItemID := dtmAffordability.dsSubItemSpouse.FieldByName('ItemID').AsInteger;  
        SourceID := dtmAffordability.dsSubItemSpouse.FieldByName('SourceID').AsInteger;
        Source := dtmAffordability.dsSubItemSpouse.FieldByName('Source').AsString;
        CategoryDescription := dtmAffordability.dsSubItemSpouse.FieldByName('Category').AsString;
        Description := dtmAffordability.dsSubItemSpouse.FieldByName('Description').AsString;
        Amount := dtmAffordability.dsSubItemSpouse.FieldByName('Amount').AsCurrency;
        Action := dtmAffordability.dsSubItemSpouse.FieldByName('Action').AsString;
        ActionUser := dtmAffordability.dsSubItemSpouse.FieldByName('ActionUser').AsString;
        ActionDate := dtmAffordability.dsSubItemSpouse.FieldByName('ActionDate').AsString;
      end;


      EditPartyTypeSubItem(SubItemID, ItemID, SourceID, Source,
        CategoryDescription, Description, Amount, PartyType,
        ActionID, Action, ActionUser, ActionDate);

    end;
  finally
  end;

end;


procedure TfrmAffordSubItemParty.grdDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Action : String;
begin

  if (Sender = grdApplicant) then
    Action := dtmAffordability.dsSubItemApplicant.FieldByName('Action').AsString
  else if (Sender = grdSpouse) then
    Action := dtmAffordability.dsSubItemSpouse.FieldByName('Action').AsString;

  //show user name or user department
  if (Column.FieldName = 'ActionUser') then
    Column.Visible := (dtmSecurity.RoleID in [65,64,66,82,91]);//64:Fraud Consultant, 66:Credit Vetting Manager, 82:Credit Vetting Supervisor, 91:Credit Vetting Team Leader

  if (Column.FieldName = 'ActionUserDepartment') then
    Column.Visible := ( not (dtmSecurity.RoleID in [65,64,66,82,91]));//64:Fraud Consultant, 66:Credit Vetting Manager, 82:Credit Vetting Supervisor, 91:Credit Vetting Team Leader



  //Grey out the Row
  if (Action = 'Disabled') then
  begin

    if (Sender = grdApplicant) then
    begin

      grdApplicant.Canvas.Brush.Color := clBtnFace;
      grdApplicant.Canvas.Pen.Width := 2;
      grdApplicant.Canvas.Font.Color := clGray;
      grdApplicant.Canvas.FillRect(Rect);
      grdApplicant.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else if (Sender = grdSpouse) then
    begin

      grdSpouse.Canvas.Brush.Color := clBtnFace;
      grdSpouse.Canvas.Pen.Width := 2;
      grdSpouse.Canvas.Font.Color := clGray;
      grdSpouse.Canvas.FillRect(Rect);
      grdSpouse.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;

  end;

  //Highlight the focused row
  if ((gdFocused in State) or (gdSelected in State) ) then
  begin

    if (Sender = grdApplicant) then
    begin
      grdApplicant.Canvas.Brush.Color := clHighlight;
      grdApplicant.Canvas.Font.Color := clBlack;
      grdApplicant.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    end
    else if (Sender = grdSpouse) then
    begin

      grdSpouse.Canvas.Brush.Color := clHighlight;
      grdSpouse.Canvas.Font.Color := clBlack;
      grdSpouse.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    end;

    //show and hide buttons
    if (OnlyRead = False) then
    begin

      if ((Sender = grdApplicant) and (dtmAffordability.dsSubItemApplicant.RecordCount <> 0)) then
      begin

        btnApplicantAdd.Enabled := True;
        btnApplicantAdd.Visible := True;
        btnApplicantEdit.Enabled := True;
        btnApplicantEdit.Visible := True;
        btnApplicantEnable.Enabled := False;
        btnApplicantEnable.Visible := False;
        btnApplicantDisable.Enabled := True;
        btnApplicantDisable.Visible := True;
        //btnApplicantDelete.Enabled := False;
        //btnApplicantDelete.Visible := False;
      end
      else if ((Sender = grdSpouse) and (dtmAffordability.dsSubItemSpouse.RecordCount <> 0))  then
      begin

        btnSpouseAdd.Enabled := True;
        btnSpouseAdd.Visible := True;
        btnSpouseEdit.Enabled := True;
        btnSpouseEdit.Visible := True;
        btnSpouseEnable.Enabled := False;
        btnSpouseEnable.Visible := False;
        btnSpouseDisable.Enabled := True;
        btnSpouseDisable.Visible := True;
        //btnSpouseDelete.Enabled := False;
        //btnSpouseDelete.Visible := False;
      end;

      if (Action = 'Disabled') then
      begin

        if ((Sender = grdApplicant) and (dtmAffordability.dsSubItemApplicant.RecordCount <> 0)) then
        begin
          btnApplicantEdit.Enabled := False;
          //btnApplicantEdit.Visible := False; //always show edit
          btnApplicantEnable.Enabled := True;
          btnApplicantEnable.Visible := True;
          btnApplicantDisable.Enabled := False;
          btnApplicantDisable.Visible := False;
        end
        else if ((Sender = grdSpouse) and (dtmAffordability.dsSubItemSpouse.RecordCount <> 0)) then
        begin
          btnSpouseEdit.Enabled := False;
          //btnSpouseEdit.Visible := False; //always show edit
          btnSpouseEnable.Enabled := True;
          btnSpouseEnable.Visible := True;
          btnSpouseDisable.Enabled := False;
          btnSpouseDisable.Visible := False;
        end;
      end;
      (*
      if ((Sender = grdApplicant) and (dtmAffordability.dsSubItemApplicant.RecordCount <> 0)) then
      begin
        btnApplicantDelete.Enabled := dtmAffordability.dsSubItemApplicant.FieldByName('ApplicationAmount').IsNull;
        btnApplicantDelete.Visible := dtmAffordability.dsSubItemApplicant.FieldByName('ApplicationAmount').IsNull;
      end
      else if ((Sender = grdSpouse) and (dtmAffordability.dsSubItemSpouse.RecordCount <> 0)) then
      begin
        btnSpouseDelete.Enabled := dtmAffordability.dsSubItemSpouse.FieldByName('ApplicationAmount').IsNull;
        btnSpouseDelete.Visible := dtmAffordability.dsSubItemSpouse.FieldByName('ApplicationAmount').IsNull;
      end;*)
    end;
  end;
end;


//procedure TfrmAffordSubItemParty.DeletePartyTypeSubItem(SubItemID: Integer; PartyType: String);
//begin
//
//  try
//
//    FReload := True;
//    with dtmAffordability do
//    begin
//      DeleteSubItem(SubItemID);
//
//      if (PartyType = 'A') then
//      begin
//        RequeryOnRecord(dsSubItemApplicant, 'SubItemID');
//        grdApplicant.Refresh;
//      end
//      else
//      if (PartyType = 'S') then
//      begin
//        RequeryOnRecord(dsSubItemSpouse, 'SubItemID');
//        grdSpouse.Refresh;
//      end;
//
//    end;
//
//  finally
//  end;
//
//end;

procedure TfrmAffordSubItemParty.btnEnableDisableClick(Sender: TObject);
var
  SubItemID, ItemID: Integer;
  SourceID: Integer;
  PartyType: String;
  ActionID: Integer;
  CategoryDescription: String;
  Description: String;
  Amount: Currency;
begin
  SubItemID := 0;
  ItemID    := 0;
  SourceID  := 0;
  Amount    := 0;
  ActionID  := 0;
   try

    if ((Sender = btnApplicantEnable) or (Sender = btnApplicantDisable)
        or
        (Sender = btnSpouseEnable) or (Sender = btnSpouseDisable)) then
    begin

      if ((Sender = btnApplicantEnable) or (Sender = btnApplicantDisable)) then
        grdApplicant.SetFocus
      else if ((Sender = btnSpouseEnable) or (Sender = btnSpouseDisable)) then
       grdSpouse.SetFocus;

       if ((Sender = btnApplicantEnable) or (Sender = btnApplicantDisable)) then
        PartyType := 'A'
      else
      if ((Sender = btnSpouseEnable) or (Sender = btnSpouseDisable)) then
       PartyType := 'S';


      if ((Sender = btnApplicantEnable) or (Sender = btnSpouseEnable)) then
        ActionID := 4 //Enabled
      else
      if ((Sender = btnApplicantDisable) or (Sender = btnSpouseDisable)) then
       ActionID := 3; //Disabled

      if ((Sender = btnApplicantEnable) or (Sender = btnApplicantDisable)) then
      begin
        SubItemID := dtmAffordability.dsSubItemApplicant.FieldByName('SubItemID').AsInteger;
        ItemID := dtmAffordability.dsSubItemApplicant.FieldByName('ItemID').AsInteger;
        SourceID := dtmAffordability.dsSubItemApplicant.FieldByName('SourceID').AsInteger;
        CategoryDescription := dtmAffordability.dsSubItemApplicant.FieldByName('Category').AsString;
        Description := dtmAffordability.dsSubItemApplicant.FieldByName('Description').AsString;
        Amount := dtmAffordability.dsSubItemApplicant.FieldByName('Amount').AsCurrency;
      end
      else
      if ((Sender = btnSpouseEnable) or (Sender = btnSpouseDisable)) then
      begin
        SubItemID := dtmAffordability.dsSubItemSpouse.FieldByName('SubItemID').AsInteger;
        ItemID := dtmAffordability.dsSubItemSpouse.FieldByName('ItemID').AsInteger;
        SourceID := dtmAffordability.dsSubItemSpouse.FieldByName('SourceID').AsInteger;
        CategoryDescription := dtmAffordability.dsSubItemSpouse.FieldByName('Category').AsString;
        Description := dtmAffordability.dsSubItemSpouse.FieldByName('Description').AsString;
        Amount := dtmAffordability.dsSubItemSpouse.FieldByName('Amount').AsCurrency;
      end;

      FReload := True;
      with dtmAffordability do
      begin
        SaveSubItem(SubItemID, ItemID, LoanID, SourceID, CategoryID, CategoryDescription, PartyType,
          Description, Amount, ActionID, AllowDuplicate);
          
        if (PartyType = 'A') then
        begin
          RequeryOnRecord(dsSubItemApplicant, 'SubItemID');
          grdApplicant.Refresh;
        end
        else
        if (PartyType = 'S') then
        begin
          RequeryOnRecord(dsSubItemSpouse, 'SubItemID');
          grdSpouse.Refresh;
        end;

      end;

    end;
  finally
  end;

  
end;

procedure TfrmAffordSubItemParty.btnDeleteClick(Sender: TObject);
begin
(*
  with dtmAffordability do
  begin

    if ((Sender = btnApplicantDelete) or (Sender = btnSpouseDelete)) then
    begin

      if MessageDlg('Are you sure you want to delete this affordability sub item?',
        mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      begin

        if (Sender = btnApplicantDelete) then
        begin
          PartyType := 'A';
          SubItemID := dsSubItemApplicant.FieldByName('SubItemID').AsInteger;
        end
        else
        if (Sender = btnSpouseDelete) then
        begin
          PartyType := 'S';
          SubItemID := dsSubItemSpouse.FieldByName('SubItemID').AsInteger;
        end;

        DeletePartyTypeSubItem(SubItemID, PartyType);

      end;
    end;
  end; *)
end;


end.

