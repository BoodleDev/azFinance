unit fmEmailPreview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, OleCtrls, SHDocVw, ActiveX, ImgList, SHELLAPI,
  ComObj, DB, ADODB;

type
  TfrmEmailPreview = class(TForm)
    wbEmail: TWebBrowser;
    lvAttachements: TListView;
    lblAttachements: TLabel;
    btnOK: TButton;
    lblMessage: TLabel;
    imlAttachments: TImageList;
    dsGetEmailAttachments: TADODataSet;
    dsGetDocumentDetails: TADODataSet;
    dsEmail: TADODataSet;
    procedure GetAttachements();
    procedure btnOKClick(Sender: TObject);
    procedure lvAttachementsDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    attachments: array of array[0..1] of string;
    noOfDocuments: Integer;
  public
    { Public declarations }
    EmailID: Integer;
  end;

var
  frmEmailPreview: TfrmEmailPreview;

implementation

uses dmMain, dmLoanC, StrUtils;

{$R *.dfm}

procedure WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
var
   sl: TStringList;
   ms: TMemoryStream;
begin
   WebBrowser.Navigate('about:blank');
   while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

   if Assigned(WebBrowser.Document) then
   begin
     sl := TStringList.Create;
     try
       ms := TMemoryStream.Create;
       try
         sl.Text := HTMLCode;
         sl.SaveToStream(ms);
         ms.Seek(0, 0) ;
         (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms));
       finally
         ms.Free;
       end;
     finally
       sl.Free;
     end;
   end;
end;

procedure TfrmEmailPreview.GetAttachements();
var
  attachmentCount: integer;
  x: integer;
  Guid: TGUID;
  GuidStr: String;
begin
  dsGetEmailAttachments.Close();
  dsGetEmailAttachments.Parameters.ParamByName('EmailID').Value := EmailID;
  dsGetEmailAttachments.Open();

  dsGetDocumentDetails.Close();
  dsGetDocumentDetails.Parameters.ParamByName('EmailID').Value := EmailID;
  dsGetDocumentDetails.Open;

  attachmentCount := dsGetDocumentDetails.RecordCount + dsGetEmailAttachments.RecordCount;
  noOfDocuments := dsGetDocumentDetails.RecordCount - 1;
  SetLength(attachments,attachmentCount);

  dsGetDocumentDetails.First;
  x := 0;
  while not dsGetDocumentDetails.Eof do
  begin
    OleCheck(CreateGUID(Guid));
    GuidStr := GUIDToString(Guid);
    GuidStr := StringReplace(GuidStr,'{','',[rfReplaceAll]);
    GuidStr := StringReplace(GuidStr,'}','',[rfReplaceAll]);

    attachments[x,0] := dsGetDocumentDetails.FieldByName('Description').AsString;
    attachments[x,1] := GuidStr;
    with lvAttachements.Items.Add()do
    begin
      Caption := attachments[x,0];
      ImageIndex := 0;
    end;

    dsGetDocumentDetails.Next;
    x := x + 1;
  end;

  dsGetDocumentDetails.Close();

  dsGetEmailAttachments.First;
  while not dsGetEmailAttachments.Eof do
  begin
    attachments[x,0] := dsGetEmailAttachments.FieldByName('Description').AsString;
    attachments[x,1] := dsGetEmailAttachments.FieldByName('Path').AsString;

    with lvAttachements.Items.Add()do
    begin
      Caption := attachments[x,0];
      ImageIndex := 0;
    end;

    x := x + 1;
    dsGetEmailAttachments.Next;
  end;
  dsGetEmailAttachments.Close();
end;                    

procedure TfrmEmailPreview.btnOKClick(Sender: TObject);
begin
  Close();
end;

procedure OpenDocument(UseSmartDox: Boolean; Parameters: PChar);
begin
  if UseSmartDox then
  begin
    ShellExecute(Application.Handle,'Open', 'SmartDox.exe', parameters,'',SW_SHOWNORMAL);
  end
  else
  begin
    ShellExecute(Application.Handle,'Open',parameters,'','',SW_SHOWNORMAL);
  end;
end;

procedure TfrmEmailPreview.lvAttachementsDblClick(Sender: TObject);
var
  Parameters: String;
  UseSmartDox: Boolean;
begin
  UseSmartDox := False;
  if lvAttachements.Selected.Index > noOfDocuments then
    parameters := PChar(attachments[lvAttachements.Selected.Index,1])
  else
  begin
    if FileExists(attachments[0,1]+'.PDF') then
      parameters := PChar(attachments[0,1]+'.PDF')
    else
    begin
      UseSmartDox := True;
      Parameters :=
        ' CONNECTION="' + dtmMain.ConnectionString + '" ' +
        ' UID=' + IntToStr(dtmMain.UserKey) +
        ' AID=' + dsEmail.FieldByName('AccountID').AsString +
        ' APPID=100' +
        ' EID=' + dsEmail.FieldByName('EntityID').AsString +
        ' VID=' + dsEmail.FieldByName('DocumentVersionID').AsString +
        ' TID=6' +
        ' DIALOG=0' +
        ' ATTACH=0' +
        ' ATTID=0' +
        ' AONLY=0' +
        ' GUID=' + PChar(attachments[lvAttachements.Selected.Index,1]);

      if not dsEmail.FieldByName('Parameter1').IsNull then
        Parameters := Parameters + ' P1=' + dsEmail.FieldByName('Parameter1').AsString;

      if not dsEmail.FieldByName('Parameter2').IsNull then
        Parameters := Parameters + ' P2=' + dsEmail.FieldByName('Parameter2').AsString;

      if not dsEmail.FieldByName('Parameter3').IsNull then
        Parameters := Parameters + ' P3=' + dsEmail.FieldByName('Parameter3').AsString;

      if not dsEmail.FieldByName('Parameter4').IsNull then
        Parameters := Parameters + ' P4=' + dsEmail.FieldByName('Parameter4').AsString;

      if not dsEmail.FieldByName('Parameter5').IsNull then
        Parameters := Parameters + ' P5=' + dsEmail.FieldByName('Parameter5').AsString;
    end
  end;

  OpenDocument(UseSmartDox, PChar(Parameters));
end;

procedure TfrmEmailPreview.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  x: integer;
begin
  dsEmail.Close;

  lvAttachements.Items.Clear();

  if Length(attachments) > 0 then
    for x := 0 to noOfDocuments do
      DeleteFile(attachments[x,1]+'.PDF');
end;

procedure TfrmEmailPreview.FormShow(Sender: TObject);
var
  EmailMessage: String;
begin
  dsEmail.Close;
  dsEmail.Parameters[0].Value := EmailID;
  dsEmail.Open;
  EmailMessage := dsEmail.FieldByName('Message').AsString;

  wbEmail.Anchors := [akLeft,akTop,akRight,akBottom]; //No Anchor property in designer, so done programatically

  if Length(EmailMessage) > 0 then
    WBLoadHTML(wbEmail, EmailMessage);

  GetAttachements();
end;

end.
