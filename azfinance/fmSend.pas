unit fmSend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, ImgList, ShellAPI, Buttons, Menus, uADSI,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, DB, ADODB;

type
  TfrmSend = class(TForm)
    Label1: TLabel;
    cmbMethod: TComboBox;
    lblEmail: TLabel;
    edtEmail: TEdit;
    lblFax: TLabel;
    edtFax: TEdit;
    btnCancel: TButton;
    btnOK: TButton;
    Label4: TLabel;
    lvwFile: TListView;
    imlFiles: TImageList;
    ppmFiles: TPopupMenu;
    btnAdd: TSpeedButton;
    Delete1: TMenuItem;
    StatusBar: TStatusBar;
    Open1: TMenuItem;
    dlgAttachment: TOpenDialog;
    btnEmail: TSpeedButton;
    SMTP: TIdSMTP;
    MailMessage: TIdMessage;
    dbData: TADOConnection;
    dsUser: TADODataSet;
    btnAddNotes: TButton;
    memNotes: TMemo;
    lblNotes: TLabel;
    procedure cmbMethodChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFaxKeyPress(Sender: TObject; var Key: Char);
    procedure lvwFileDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnAddNotesClick(Sender: TObject);
    procedure SMTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
  private
    Email: String;
    Fax: String;
    FileList: TStringList;
    FFilename: String;
    FSendReadOnly: Boolean;
    procedure SetFilename(const Value: String);
    procedure SetSendReadOnly(const Value: Boolean);
    procedure LoadFiles;
    procedure SendMail;
    { Private declarations }
  public
    { Public declarations }
    property Filename: String read FFilename write SetFilename;
    property SendReadOnly: Boolean read FSendReadOnly write SetSendReadOnly;
  end;

function SendFile(Filename: String; SendReadOnly: Boolean): Boolean;

var
  frmSend: TfrmSend;

implementation

{$R *.dfm}

function SendFile(Filename: String; SendReadOnly: Boolean): Boolean;
begin
  frmSend := TfrmSend.Create(nil);
  try
    frmSend.Filename := Filename;
    frmSend.SendReadOnly := SendReadOnly;
    frmSend.ShowModal;
  finally
    FreeAndNil(frmSend);
  end;
  Result := True;
end;

function ExtractFileIcon(AppPath: String): TIcon;
var
  Icon: TIcon;
  IconH: HIcon;
begin
  //if not (Value = '') then
    //AppInfo.Add(IntToStr(Result.AbsoluteIndex) + '=' + Value);
    //AppInfo[0,0] := Value;
  if FileExists(AppPath) then
  begin
    Icon := TIcon.Create;
    IconH := ExtractIcon(Application.Handle,PChar(AppPath),1);
    Icon.Handle := IconH;
    //imlMenu.AddIcon(Icon);
    //imlExplore.AddIcon(Icon);
    Result    := Icon;//imlExplore.Count - 1;
    //Result.SelectedIndex := imlSmall.Count - 1;
    //Icon.Free;
  end
  else
    Result := nil;
end;

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
begin
  Icon2 := TIcon.Create;
  if GetIndexofExtSmall(Exename) > 0 Then
  begin
    Icon2.Handle := GetIndexOfExtLarge(Exename);
    Result := Icon2;
  end
  else
    Result := nil;
  //Icon2.Free;
end;

{ TfrmSend }

procedure TfrmSend.SetFilename(const Value: String);
begin
  FFilename := Value;
  lvwFile.Items.Clear;
  imlFiles.Clear;
  FileList.Clear;

  FileList.Delimiter := ';';
  FileList.DelimitedText := Filename;
  LoadFiles;
end;

procedure TfrmSend.LoadFiles;
var
  I: Integer;
  Item: TListItem;
begin
  lvwFile.Clear;
  for I := 0 to FileList.Count - 1 do
    if FileExists(FileList.Strings[I]) then
    begin
      Item := lvwFile.Items.Add;
      Item.Caption := ExtractFileName(FileList.Strings[I]);
      Item.ImageIndex := imlFiles.AddIcon(ExtractIcon(FileList.Strings[I]));
    end;
end;

procedure TfrmSend.cmbMethodChange(Sender: TObject);
begin
  case cmbMethod.ItemIndex of
    1:
    begin
      lblEmail.Enabled := True;
      edtEmail.Enabled := True;
      edtEmail.Color := clWindow;

      lblFax.Enabled := False;
      edtFax.Enabled := False;
      edtFax.Color := clBtnFace;
    end;
    0:
    begin
      lblEmail.Enabled := False;
      edtEmail.Enabled := False;
      edtEmail.Color := clBtnFace;

      lblFax.Enabled := True;
      edtFax.Enabled := True;
      edtFax.Color := clWindow;
    end;
    else
    begin
      lblEmail.Enabled := False;
      edtEmail.Enabled := False;
      edtEmail.Color := clBtnFace;

      lblFax.Enabled := False;
      edtFax.Enabled := False;
      edtFax.Color := clBtnFace;
    end;
  end;
end;

procedure TfrmSend.FormShow(Sender: TObject);
begin
  cmbMethodChange(nil);
end;

procedure TfrmSend.edtFaxKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TfrmSend.lvwFileDblClick(Sender: TObject);
begin
  if Assigned(lvwFile.Selected) then
    ShellExecute(Application.Handle, 'Open', PChar(FileList.Strings[lvwFile.Selected.Index]), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmSend.SetSendReadOnly(const Value: Boolean);
begin
  FSendReadOnly := Value;
  btnAdd.Enabled := not SendReadOnly;
  Delete1.Enabled := not SendReadOnly;
end;

procedure TfrmSend.FormCreate(Sender: TObject);
begin
  dsUser.Close;
  dsUser.Parameters[0].Value := uADSI.GetFullyQualifedUsername;
  dsUser.Open;
  Email := dsUser.FieldByName('Email').AsString;
  Fax := dsUser.FieldByName('FaxNo').AsString;
  StatusBar.Panels[0].Text := dsUser.FieldByName('DomainName').AsString;
  StatusBar.Panels[1].Text := Email;
  StatusBar.Panels[2].Text := Fax;

  FileList := TStringList.Create;
  btnEmail.Parent := edtEmail;
  btnEmail.Top := edtEmail.Top + 1;
  btnEmail.Left := edtEmail.Width - btnEmail.Width;
  btnEmail.Anchors := [akRight, akTop, akBottom];
  btnEmail.Show;
end;

procedure TfrmSend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FileList);
end;

procedure TfrmSend.btnAddClick(Sender: TObject);
begin
  if dlgAttachment.Execute then
  begin
    FileList.Add(dlgAttachment.FileName);
    LoadFiles;
  end;
end;

//procedure TfrmSend.SendMail(Body: WideString; Subject, Address,
 // Attachment: String; SendHTML: Boolean);
procedure TfrmSend.SendMail;
var
  lTextPart: TIdText;
  I: Integer;
begin
  SMTP.Host := '10.11.0.103';// dtmMain.EmailHost;//'smtp.tiscali.co.za';
  SMTP.Port := 25;

  MailMessage.MessageParts.Clear;
  MailMessage.From.Address := Email; //dtmMain.EmailAddress;//'autoreply@brumafinance.co.za';

  if cmbMethod.ItemIndex = 0 then
    MailMessage.Recipients.EMailAddresses := edtFax.Text + '@e2fax.co.za'
  else
    MailMessage.Recipients.EMailAddresses := edtEmail.Text;

  if (cmbMethod.ItemIndex = 0) and (memNotes.Text <> '') then
    MailMessage.Subject := memNotes.Text
  else
    MailMessage.Subject := '';
    
  MailMessage.ContentType := 'multipart/mixed';

    //'PLEASE NOTE: This message was sent by an unattended mailbox, ' +
    //'please do not reply to this message';

  for I := 0 to FileList.Count -1 do
    if FileExists(FileList.Strings[I]) then
      TIdAttachment.Create(MailMessage.MessageParts, FileList.Strings[I]);

  lTextPart := TIdText.Create(MailMessage.MessageParts);
  if 1 =1 then //SendHtml
  begin
    lTextPart.ContentType := 'text/html';
    //lTextPart.Body.Text := Body + dtmMain.EmailFooter;
  end
  else
  begin
    lTextPart.ContentType := 'text/plain';
   // lTextPart.Body.Text := Body + #13#10 + #13#10 +
     // dtmMain.EmailFooter;
    lTextPart.ContentTransfer := '7bit';
  end;

  try
    try
      //SMTP.Username := 'berkim\Danielt';
      //SMTP.Password := 'dan163';
      SMTP.AuthenticationType := atNone;
      SMTP.Connect(1000);
      SMTP.Send(MailMessage);
    except on E:Exception do

    end;
  finally
    if SMTP.Connected then
      SMTP.Disconnect;
    FreeAndNil(lTextPart);
  end;
end;

procedure TfrmSend.btnOKClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    if (cmbMethod.Text = 'Fax') and (Length(edtFax.Text) <> 10) then
      MessageDlg('Invalid Fax number', mtError, [mbOK], 0)
    else if (cmbMethod.Text = 'Fax') and (FileList.Count = 0) then
      MessageDlg('Please attach a document to fax', mtError, [mbOK], 0)
    else if (cmbMethod.Text = 'Fax') and (Length(Fax) <> 10) then
      MessageDlg('You do not have a valid fax number with which to send out from', mtError, [mbOK], 0)
    else
      SendMail;
    //SendEmail;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmSend.btnAddNotesClick(Sender: TObject);
begin
  lblNotes.Show;
  memNotes.Show;
  Self.Height := 366;
  btnAddNotes.Hide;
  memNotes.SetFocus;
end;

procedure TfrmSend.SMTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: String);
begin
  StatusBar.Panels[3].Text := AStatusText;
  Application.ProcessMessages;
end;

end.
