unit fmSendFax;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RFCOMAPILib_TLB, StdCtrls, Buttons, ComCtrls, ImgList, ShellAPI,
  Menus;

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
    Label5: TLabel;
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
    procedure btnSendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure lvwAttachDblClick(Sender: TObject);
    procedure lvwAvailableDblClick(Sender: TObject);
    procedure edtToNameChange(Sender: TObject);
    procedure ppmFilesPopup(Sender: TObject);
    procedure Open1Click(Sender: TObject);
  private
    { Private declarations }
    AttachList: TStringList;
    OtherList: TStringList;
    FaxServer: IFaxServer;
    FaxSheet: CoverSheet;
    FFilename: String;
    procedure LoadFiles;
    procedure SetFilename(const Value: String);
    procedure SetSendEnabled;
  public
    { Public declarations }
    property Filename: String read FFilename write SetFilename;
  end;

var
  frmSendFax: TfrmSendFax;

implementation

uses dmMain;


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
begin
  try
    NewFax := FaxServer.Faxes[FaxServer.AuthorizationUserID].Create;
    NewFax.OwnerID := FaxServer.AuthorizationUserID;
    NewFax.ToFaxNumber := edtToFaxNo.Text;
    NewFax.ToName := edtToName.Text;

    for I := 0 to AttachList.Count - 1 do
      if AttachList.Values[AttachList.Names[I]] = '1' then
        NewFax.Attachments.Add(AttachList.Names[I], 0);
    NewFax.HasCoversheet := 1;
    NewFax.IsFineMode := 1;
    NewFax.OriginalFCSFilename := FaxSheet.ID;
    NewFax.Send;
    //NewFax.UniqueID
    //ShowMessage(NewFax.UniqueID);
    MessageDlg('Fax sent successfully', mtInformation, [mbOK], 0);
    ModalResult := mrOK;
  except
    MessageDlg('An unknown error occurred', mtError, [mbOK], 0);
  end;
end;

procedure TfrmSendFax.FormCreate(Sender: TObject);
begin
  AttachList := TStringList.Create;
  OtherList := TStringList.Create;
  FaxServer := CoFaxServer.Create;
  FaxServer.ServerName := '10.11.0.104';
  FaxServer.UseNTAuthentication := 1;
  FaxServer.Protocol := cpTCPIP;
  FaxServer.OpenServer;

  FaxSheet := FaxServer.CoverSheets.Item[4];

  edtFromName.Text := FaxServer.AuthorizationUser.DefaultFromName;
  edtFromCompany.Text := FaxServer.AuthorizationUser.DefaultToCompany;
  edtFromFaxNo.Text := FaxServer.AuthorizationUser.DefaultToFaxNumber;
  edtFromTelNo.Text := FaxServer.AuthorizationUser.DefaultToVoiceNumber;
  edtFromEmail.Text := FaxServer.AuthorizationUser.EmailAddress;
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

end.
