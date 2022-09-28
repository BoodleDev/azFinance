unit fmEntCheck;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, DBGrdClr,
  dmEntCheck, Unit32;

type
  TfrmEntCheck = class(TfrmBase)
    grdSearch: TDBGrdClr;
    Label4: TLabel;
    pnlTop: TPanel;
    lblRegNo: TLabel;
    lblName: TLabel;
    edtRegNo: TEdit;
    edtName: TEdit;
    pnlSname: TPanel;
    lblName2: TLabel;
    edtName2: TEdit;
    btnCheck: TToolButton;
    btnSel: TToolButton;
    btnNew: TToolButton;
    StatusBar1: TStatusBar;
    imgPerson: TImage;
    imgCompany: TImage;
    pnlEntType: TPanel;
    lblEntType: TLabel;
    cmbEntType: TComboBox;
    lblIDError: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure btnSelClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure cmbEntTypeChange(Sender: TObject);
    procedure cmbEntTypeDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure edtRegNoChange(Sender: TObject);
    procedure edtRegNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    dtmData : TdtmEntCheck;
    FEntType: integer;
    FChosenID: integer;
    procedure SetEntType(const Value: integer);
  public
    { Public declarations }
    NullableID: Boolean;
    AddToApp: Boolean;
    property EntType   : integer read FEntType write SetEntType;
    property ChosenID : integer read FChosenID;
    procedure DoEntityCheck(EntityType: Integer; Exclusive, AllowNullID: Boolean);
  end;

implementation

uses dmMain, dmEntity;

{$R *.DFM}

{ TfrmEntCheck }

procedure TfrmEntCheck.FormCreate(Sender: TObject);
begin
  inherited;
  AddToApp := True;
  dtmData := TdtmEntCheck.Create(Self);
  dtmMain.SetGrdColors([grdSearch]);
  FChosenID := -1;
  Self.ModalResult := mrNone;
  btnSel.Enabled   := False;
  NullableID := False;
  //cmbEntType.ItemIndex := EntType -1;
end;

procedure TfrmEntCheck.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmData.Free;
  dtmData := nil;
end;

procedure TfrmEntCheck.DoEntityCheck(EntityType: Integer; Exclusive, AllowNullID: Boolean);
begin
  EntType := EntityType;
  NullableID := AllowNullID;
  cmbEntType.ItemIndex := EntType -1;
  if Exclusive then
    pnlEntType.Hide;
  Self.ShowModal;
end;

procedure TfrmEntCheck.SetEntType(const Value: integer);
begin
  FEntType := Value;
  dtmData.EntType := EntType;
  if EntType = 1 then
  begin
    lblRegNo.Caption := 'ID No.';
    lblName2.Caption := 'Surname';
  end
  else
  begin
    lblRegNo.Caption := 'Registration No.';
    lblName2.Caption := 'Contact';
  end;
  //pnlSname.Visible := EntType = 1;
  {if EntType = 1 then
    Self.Width := 619
  else
    Self.Width := 464;}
end;

procedure TfrmEntCheck.btnCheckClick(Sender: TObject);
begin
  inherited;
  lblIDError.Hide;
  
  if EntType = 1 then // 1=PSNtype
  begin
    if not IsNoMod10(Trim(edtRegNo.Text)) then
    begin
      MesDlg('Id number is not valid','E');
      lblIDError.Caption := 'Invalid ID number';
      lblIDError.Show;
      Exit;
    end
    else if not NullableID then
      if Trim(edtRegNo.Text) = '' then
      begin
        //MessageDlg('An ID Number must be entered', mtError,[mbOK],0);
        //Exit;
        lblIDError.Caption := 'Required for new entries';
        lblIDError.Show;
      end;
  end
  else // 2=CPYtype
  begin
    if not NullableID then
      if Trim(edtRegNo.Text) = '' then
      begin
        MessageDlg('A registration number must be entered', mtError,[mbOK],0);
        Exit;
      end;
  end;
  
  if (Trim(edtRegNo.Text)='') and (Trim(edtName.Text)='') and
    (Trim(edtName2.Text)='') then
    MesDlg('At least one of the available criteria must be completed','E')
  else
  begin
      dtmData.GetPosMatches(Trim(edtRegNo.Text),Trim(edtName.Text),Trim(edtName2.Text));
      btnSel.Enabled := dtmData.qrySearch.RecordCount > 0;
//      if not dtmData.FindDuplicateRegNo(edtRegNo.Text,EntType) then
      if Length(Trim(edtRegNo.Text)) > 0 then
        if dtmData.qrySearch.Locate('RegNo', edtRegNo.Text, []) then
        begin
          if EntType = 1 then
            MesDlg('A person with that ID number already exists','E')
          else
            MesDlg('A company with that registration number already exists','E');
          Exit;
        end;

      if (NullableID) or (edtRegNo.Text <> '') then
        btnNew.Enabled := True;
        
      if dtmData.qrySearch.RecordCount = 0 then
        MesDlg('No match found, press "New" to create client','I');
      //end;
  end;
end;

procedure TfrmEntCheck.btnSelClick(Sender: TObject);
var
  strID: String;
  CanSelect: Boolean;
begin
  inherited;
  if Trim(dtmData.qrySearch.FieldByName('EntCode').AsString) <> '' then
  begin
    CanSelect := True;
    if not NullableID then
      if (not IsNoMod10(Trim(dtmData.qrySearch.FieldByName('RegNo').AsString))) or
        (dtmData.qrySearch.FieldByName('RegNo').AsString = '') then
      begin
        strID := dtmData.qrySearch.FieldByName('RegNo').AsString;
        repeat
          CanSelect := InputQuery('Invalid ID number', 'ID Number', strID);
        until
          ((IsNoMod10(strID)) and (strID <> '')) or (not CanSelect);

        if CanSelect then
        begin
          try
            dtmData.cmdUpdateRegNo.Parameters.ParamByName('prRegNo').Value := strID;
            dtmData.cmdUpdateRegNo.Parameters.ParamByName('prEntityID').Value :=
              dtmData.qrySearch.FieldByName('EntityID').AsInteger;
            dtmData.cmdUpdateRegNo.Execute;
          except
            CanSelect := False;
            MessageDlg('An error occurred while attempting to update the clien''ts ID number',
              mtError, [mbOK], 0);
          end;
        end;
      end;

    if CanSelect then
      if MesDlg('Add '+dtmData.qrySearch.FieldByName('Name').AsString+' - '+
        dtmData.qrySearch.FieldByName('RegNo').AsString+' to database?','C')= mrYes then
      begin
        FChosenID := dtmData.qrySearch.FieldByName('EntityID').AsInteger;
        Self.ModalResult := mrOk;
      end;
  end;
end;

procedure TfrmEntCheck.btnNewClick(Sender: TObject);
begin
  inherited;
  if dtmData.qrySearch.Active then
  begin
    dtmEntity.EntType := EntType;
    FChosenID := dtmEntity.AddNewEntity(AddToApp);
    if ChosenID > -1 then
    begin
      dtmEntity.CompleteNewEnt(edtRegNo.Text,edtName.Text,edtName2.Text);
      Self.ModalResult := mrYes;
    end;
  end
  else
    MesDlg('You are required to check for possible matches before creating a new ' +
      cmbEntType.Text,'E');
end;

procedure TfrmEntCheck.cmbEntTypeChange(Sender: TObject);
begin
  inherited;
  EntType := cmbEntType.ItemIndex + 1;
end;

procedure TfrmEntCheck.cmbEntTypeDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  inherited;
  cmbEntType.Canvas.FillRect(Rect);
  if Index = 0 then
    cmbEntType.Canvas.Draw(Rect.Left,Rect.Top,imgPerson.Picture.Graphic)
  else
    cmbEntType.Canvas.Draw(Rect.Left,Rect.Top,imgCompany.Picture.Graphic);

  cmbEntType.Canvas.TextOut(Rect.Left + 20, Rect.Top+1,cmbEntType.Items[Index]);
end;

procedure TfrmEntCheck.edtRegNoChange(Sender: TObject);
begin
  inherited;
  btnNew.Enabled := False;
end;

procedure TfrmEntCheck.edtRegNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
    btnCheckClick(btnCheck);
end;

end.

