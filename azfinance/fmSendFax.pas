unit fmSendFax;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RFCOMAPILib_TLB, StdCtrls, Buttons, ComCtrls, ImgList, ShellAPI,
  Menus, StrUtils, Math, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, IdMessage;

type
  TfrmSendFax = class(TForm)
    btnSend: TButton;
    GroupBox1: TGroupBox;
    edtFromName: TEdit;
    Label1: TLabel;
    edtFromFaxNo: TEdit;
    Label2: TLabel;
    edtFromTelNo: TEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    lblFaxEmail: TLabel;
    edtToName: TEdit;
    edtToFaxNo: TEdit;
    GroupBox3: TGroupBox;
    btnCancel: TButton;
    Label6: TLabel;
    Label7: TLabel;
    btnAdd: TSpeedButton;
    btnAddAll: TSpeedButton;
    btnRemove: TSpeedButton;
    btnRemoveAll: TSpeedButton;
    edtFromCompany: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    edtFromEmail: TEdit;
    lvwAttach: TListView;
    lvwAvailable: TListView;
    imlFiles: TImageList;
    ppmFiles: TPopupMenu;
    Open1: TMenuItem;
    GroupBox4: TGroupBox;
    memNote: TMemo;
    lblMesgChars: TLabel;
    lblCostCode: TLabel;
    edtCostCode: TEdit;
    SMTP: TIdSMTP;
    MailMessage: TIdMessage;
    procedure btnSendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure lvwAttachDblClick(Sender: TObject);
    procedure lvwAvailableDblClick(Sender: TObject);
    procedure edtToNameChange(Sender: TObject);
    procedure ppmFilesPopup(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure memNoteChange(Sender: TObject);
  private
    { Private declarations }
    AttachList: TStringList;
    OtherList: TStringList;
    FaxServer: IFaxServer;
    FaxSheet: CoverSheet;
    FFilename: String;
    FSendMethod: String;
    FSendMessage: String;
    FUseSMTP: Boolean;
    procedure LoadFiles;
    procedure SetFilename(const Value: String);
    procedure SetSendMethod(const value: String);
    procedure SetSendEnabled;
    procedure SetSendMessage(const Value: String);
    procedure SendSMTP;
    procedure SetUseSMTP(const Value: Boolean);
  public
    { Public declarations }
    property UseSMTP: Boolean read FUseSMTP write SetUseSMTP default False;
    property Filename: String read FFilename write SetFilename;
    property SendMethod: String read FSendMethod write SetSendMethod;
    property SendMessage: String read FSendMessage write SetSendMessage;

  end;

var
  frmSendFax: TfrmSendFax;

implementation

uses dmMain, SendMail;


{$R *.dfm}

function ExtractIcon(EXEName: String): TIcon;
  function GetIndexOfExtSmall( ext: String ): Hicon;
  var shfi: TSHFileInfo;
  begin
    ShGetFileInfo(Pchar(Ext), 0, SHFi,
    SizeOf(SHFi), SHGFI_EXETYPE or SHGFI_ICON or SHGFI_SYSICONINDEX or SHGFI_SMALLICON );
    result := shfi.HIcon;
  end;

  function GetIndexOfExtLarge( ext: String ): Hicon;
  var shfi: TSHFileInfo;
  begin
    ShGetFileInfo(Pchar(Ext), 0, SHFi,
    SizeOf(SHFi), SHGFI_EXETYPE or SHGFI_ICON or SHGFI_SYSICONINDEX or SHGFI_LARGEICON );
    result := shfi.HIcon;
  end;
Var
  Icon2: Ticon;
  IconHandle: Hicon;
begin
  Icon2 := TIcon.Create;
  IconHandle := GetIndexofExtSmall(Exename);
  if IconHandle > 0 Then
  begin
    Icon2.Handle := IconHandle;
    Result := Icon2;
  end
  else
    Result := nil;
end;

procedure TfrmSendFax.btnSendClick(Sender: TObject);
var
  NewFax: Fax;
  I: Integer;
  J : Integer;
  Note : String;
  Line: String;
//  NextChar: String;
  Index: Integer;
  Mapi: TMAPIMail;

  function DeleteLineBreaks(const S: string): string;
  var
     Source, SourceEnd: PChar;
  begin
     Source := Pointer(S) ;
     SourceEnd := Source + Length(S) ;
     while Source < SourceEnd do
     begin
       case Source^ of
         #10: Source^ := #32;
         #13: Source^ := #32;
       end;
       Inc(Source) ;
     end;
     Result := S;
  End;

  function AlterLineBreaks(const S: string): string;
  var
     Source, SourceEnd: PChar;
  begin
     Source := Pointer(S) ;
     SourceEnd := Source + Length(S) ;
     while Source < SourceEnd do
     begin
       case Source^ of
         #10: Source^ := #32;
         #13: Source^ := #94;
       end;
       Inc(Source) ;
     end;
     Result := S;
  End;
begin
  try
    if SendMethod = 'Fax' then
    begin
        NewFax := FaxServer.Faxes[FaxServer.AuthorizationUserID].Create;
        NewFax.OwnerID := FaxServer.AuthorizationUserID;
        NewFax.ToFaxNumber := edtToFaxNo.Text;
        NewFax.ToName := edtToName.Text;
        Note := AlterLineBreaks(memNote.Text);

        J := 1;
        while Length(Note) > 0 do
        begin
          Index := Min(70, Length(Note));
          if Pos('^', LeftStr(Note, Index)) > 0 then
            Index := Pos('^', LeftStr(Note, Index));

          Line := LeftStr(Note, Index - 1);

          if J < 22 then
          begin
            try
              NewFax.CoverSheetNotes[J] := Line;
            except
              Showmessage(IntToStr(J));
            end;
          end;
            if (Pos('^', LeftStr(Note, Index)) = 0) and (Index > 1) then
              Index := Index - 1;

            Delete(Note, 1, Index);
          Inc(J);
        end;

        for I := 0 to AttachList.Count - 1 do
          if AttachList.Values[AttachList.Names[I]] = '1' then
            NewFax.Attachments.Add(AttachList.Names[I], 0);
        NewFax.HasCoversheet := 1;
        NewFax.IsFineMode := 1;
        if edtCostCode.Text <> '' then
          NewFax.BillingCode1 := edtCostCode.Text;
        NewFax.OriginalFCSFilename := FaxSheet.ID;
        NewFax.Send;
        //NewFax.UniqueID
        //ShowMessage(NewFax.UniqueID);
        MessageDlg(SendMethod + ' was sent', mtInformation, [mbOK], 0);
    end
    else if SendMethod = 'Email' then
    begin
      if UseSMTP then
        SendSMTP
      else
      begin
        Mapi := TMAPIMail.Create(Self);
        try
          Mapi.Subject := 'Quotation from Bruma Finance';
          Mapi.Body := memNote.Text;// 'To ' + edtToName.Text + ',' + #13#10#13#10 + memNote.Text + 'Kind regards';
          Mapi.Recipients.Add('smtp:' + edtToFaxNo.Text);
          for I := 0 to AttachList.Count - 1 do
            if AttachList.Values[AttachList.Names[I]] = '1' then
          Mapi.Attachments.Add(AttachList.Names[I]);
          Mapi.Send
        finally
          FreeAndNil(Mapi);
        end;
      end;
    end;

    ModalResult := mrOK;
  except
    MessageDlg('An unknown error occurred', mtError, [mbOK], 0);
  end;
end;

procedure TfrmSendFax.SendSMTP();
var
  I: Integer;
begin
    Screen.Cursor := crHourGlass;

   //setup SMTP
   SMTP.Host := '10.11.0.103';
   SMTP.Port := 25;
 
   //setup mail message
   MailMessage.From.Address := 'info@brumafinance.co.za';
   MailMessage.Recipients.EMailAddresses := edtToFaxNo.Text;

   MailMessage.Subject := 'Quotation from Bruma Finance';
   MailMessage.Body.Text := memNote.Text;

   for I := 0 to AttachList.Count - 1 do
      if AttachList.Values[AttachList.Names[I]] = '1' then
        TIdAttachment.Create(MailMessage.MessageParts, AttachList.Names[I]) ;
 
   //send mail
   try
     try
       SMTP.Connect(1000) ;
       SMTP.Send(MailMessage) ;
     except on E:Exception do
       //StatusMemo.Lines.Insert(0, 'ERROR: ' + E.Message) ;
     end;
   finally
     if SMTP.Connected then SMTP.Disconnect;

    Screen.Cursor := crDefault;
   end;

end;


procedure TfrmSendFax.FormCreate(Sender: TObject);
begin
  AttachList := TStringList.Create;
  OtherList := TStringList.Create;
  (*FaxServer := CoFaxServer.Create;
  FaxServer.ServerName := '10.11.0.123';
  FaxServer.UseNTAuthentication := 1;
  FaxServer.Protocol := cpTCPIP;
  FaxServer.OpenServer;

  FaxSheet := FaxServer.CoverSheets.Item[4];

  edtFromName.Text := FaxServer.AuthorizationUser.DefaultFromName;
  edtFromCompany.Text := FaxServer.AuthorizationUser.DefaultToCompany;
  edtFromFaxNo.Text := FaxServer.AuthorizationUser.DefaultToFaxNumber;
  edtFromTelNo.Text := FaxServer.AuthorizationUser.DefaultToVoiceNumber;
  edtFromEmail.Text := FaxServer.AuthorizationUser.EmailAddress;
  *)
  memNoteChange(Self);
end;

procedure TfrmSendFax.SetFilename(const Value: String);
var
  Files: String;
begin
  FFilename := Value;
  lvwAttach.Items.Clear;
  imlFiles.Clear;
  AttachList.Clear;
  Files := StringReplace(Value, ' ', '%20', [rfReplaceAll]);
  AttachList.Delimiter := ';';
  AttachList.DelimitedText := Files;
  AttachList.Text := StringReplace(AttachList.Text, '%20', ' ', [rfReplaceAll]);
  LoadFiles;
end;

procedure TfrmSendFax.LoadFiles;
var
  I: Integer;
  Item: TListItem;
  sFile: String;
begin
  lvwAttach.Clear;
  lvwAvailable.Clear;
  for I := 0 to AttachList.Count - 1 do
  begin
    sFile := AttachList.Names[I];
    if FileExists(sFile) then
    begin
      if ExtractFilePath(sFile) <> TempFolder then
      begin
        CopyFile(PChar(sFile), PChar(TempFolder + ExtractFileName(sFile)), false);
        AttachList.Strings[I] := TempFolder + ExtractFileName(sFile) + '=' + AttachList.Values[sFile];
        sFile := TempFolder + ExtractFileName(sFile);
      end;

      if AttachList.Values[sFile] = '1' then
        Item := lvwAttach.Items.Add
      else
        Item := lvwAvailable.Items.Add;
      Item.Caption := ExtractFileName(sFile);
      Item.ImageIndex := imlFiles.AddIcon(ExtractIcon(sFile));
    end;
  end;
  SetSendEnabled;
end;

procedure TfrmSendFax.SetSendEnabled;
begin
  btnSend.Enabled := (lvwAttach.Items.Count > 0) and (edtToName.Text <> '')
    and (edtToFaxNo.Text <> '');
end;

procedure TfrmSendFax.btnAddClick(Sender: TObject);
var
  ListView: TListView;
  Value: String;
  I: Integer;
begin
  if (Sender = btnRemove) or (Sender = btnRemoveAll) then
  begin
    ListView := lvwAttach;
    Value := '0';
  end
  else
  begin
    ListView := lvwAvailable;
    Value := '1';
  end;

  if ((Sender = btnAdd) or (Sender = btnRemove)) and (Assigned(ListView.Selected)) then
    AttachList.Values[TempFolder + ListView.Selected.Caption] := Value
  else
  begin
    for I := 0 to ListView.Items.Count - 1 do
      if AttachList.Values[AttachList.Names[I]] <> Value then
        AttachList.Values[AttachList.Names[I]] := Value;
  end;
  LoadFiles;
end;

procedure TfrmSendFax.lvwAttachDblClick(Sender: TObject);
begin
  btnAddClick(btnRemove);
end;

procedure TfrmSendFax.lvwAvailableDblClick(Sender: TObject);
begin
  btnAddClick(btnAdd);
end;

procedure TfrmSendFax.edtToNameChange(Sender: TObject);
begin
  SetSendEnabled;
end;

procedure TfrmSendFax.ppmFilesPopup(Sender: TObject);
begin
  if Sender is TListView then
  begin
    Open1.Enabled := Assigned(TListView(Sender).Selected);
  end;
end;

procedure TfrmSendFax.Open1Click(Sender: TObject);
var
  ListView: TListView;
begin
  if lvwAttach.Focused then
    ListView := lvwAttach
  else
    ListView := lvwAvailable;

  if Assigned(ListView.Selected) then
  begin
    ShellExecute(Application.Handle, 'open', PChar(TempFolder + ListView.Selected.Caption),
      nil, nil, SW_SHOWNORMAL);
  end;
end;


procedure TfrmSendFax.SetSendMethod(const value: String);
begin
  FSendMethod := value;
  if value = 'Fax' then
  begin
    frmSendFax.Caption := 'Send Fax';
    memNote.ReadOnly:= true;
    memNote.color:= clBtnFace;
    frmSendFax.lblFaxEmail.Caption:= 'Fax No.';
    edtCostCode.Show;
    lblCostCode.Show;
  end
  else if value = 'Email' then
  begin
    frmSendFax.Caption := 'Send Email';
    frmSendFax.lblFaxEmail.Caption:= 'Email';
    edtCostCode.Hide;
    lblCostCode.Hide;
  end
end;

procedure TfrmSendFax.memNoteChange(Sender: TObject);
begin
  lblMesgChars.Caption := IntToStr(Length(memNote.Text)) + '/1400';
end;

procedure TfrmSendFax.SetSendMessage(const Value: String);
begin
  FSendMessage := Value;

  //if SendMethod <> 'Fax' then
    memNote.Text := SendMessage;
end;

procedure TfrmSendFax.SetUseSMTP(const Value: Boolean);
begin
  FUseSMTP := Value;
end;

end.
