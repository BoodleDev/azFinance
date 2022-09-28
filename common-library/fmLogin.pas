unit fmLogin;
// YOU MUST ASSIGN THE LOGIN DATASET

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, ExtCtrls, pbBackGround, Unit32, Jpeg,
  fmNewPass;

type
  TfrmLogin = class(TForm)
    imgLogo: TImage;
    lblCopyRight: TLabel;
    lblDDteam: TLabel;
    lblVersion: TLabel;
    lblUser: TLabel;
    lblPass: TLabel;
    btnOk: TSpeedButton;
    btnCancel: TSpeedButton;
    edtUserId: TEdit;
    edtPassW: TEdit;
    btnClose: TSpeedButton;
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPassWKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure imgLogoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    iCnt : integer;
    NewPass : string;
    FNewPwd : string;
    FLoginDataSet: TDataSet;
    FMasterPass: boolean;
    FIniToUse: string;
    function VerifyPassWord:boolean;
    function NewUser:boolean;
    function GetCurPass : string;
    procedure CheckUserLogin;
//    procedure CreatePassChangeFrm;
//    procedure btnPCOkClick(Sender: TObject);
    procedure SetUserIDgroup(inLeft,inTop :integer);
    procedure SetNewPassword(Username: String);
  public
    { Public declarations }
    procedure SetFormCosmetics(LogonL,LogonT,bOkL,bOkT,bCnL,bCnT,lblverL,
      lblVerT,lblCRtop,lblDteamTop:integer; verCaption:string;
      allFontColor, lblverColor: TColor);
    procedure SetAllFontColor(inColor: TColor);
    property LoginDataSet : TDataSet read FLoginDataSet write FLoginDataSet;
    property MasterPass: boolean read FMasterPass;
    property NewPwd :string read FNewPwd;
    property IniToUse:string read FIniToUse write FIniToUse;
  end;

implementation

{$R *.DFM}

procedure TfrmLogin.FormCreate(Sender: TObject);
var
  Rgn: Hrgn;
begin
  IniToUse := '';
  Rgn := CreateRoundRectRgn(0,0,486,299,50,50);
  SetWindowRgn(Handle,Rgn,True);
end;

procedure TfrmLogin.FormDestroy(Sender: TObject);
begin
  if IniToUse<>'' then
  begin
    LoginDataSet.Close;  //close tbl Security Manager
    //write last user to access system to Ini-File
    WriteIni(IniToUse,'Users','LastUser',edtUserID.Text);
  end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  Self.ModalResult := mrNone;
  //
  if FileExists(AppDir+'Resources\'+Application.Title+'.jpg') then
  begin
    imgLogo.Picture.LoadFromFile(AppDir+'Resources\'+Application.Title+'.jpg');
    Self.ClientHeight := imgLogo.Height;
    Self.ClientWidth  := imgLogo.Width;
  end
  else
  begin
    MesDlg('Resource file missing.','E');
    Self.ClientHeight := 299;
    Self.ClientWidth  := 486;
    Self.ModalResult := mrAbort;
  end;
  //
  FMasterPass := False;
  if IniToUse <> '' then
  begin
    iCnt := 3; //set count
    edtPassW.Text  := ''; //clear password box
    edtUserID.Text := ReadIniStr(IniToUse,'Users','LastUser');
    if edtUserID.Text = '' then
      edtUserID.SetFocus //set focus to proper box
    else
      edtPassW.SetFocus;
    //get info of last user to access system
    LoginDataSet.Open; //open tbl Security Manager
  end;
end;

function TfrmLogin.GetCurPass: string;
begin
  Result := FormatDateTime('ddyyyymm',Date);
  Result := Result + Copy(TimeToStr(Time),4,1);
end;

procedure TfrmLogin.edtPassWKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
/////MASTER LOGIN - begin
    if (edtUserId.Text = 'Admin') and (edtPassW.Text = GetCurPass) then
    begin
      FMasterPass := True;
      Self.ModalResult := mrOk;
    end
/////MASTER LOGIN - end
    else
      CheckUserLogin;
  end;
end;

procedure TfrmLogin.btnOkClick(Sender: TObject);
begin
  Self.ModalResult := mrOk; //set Result = Ok - speed Btns
end;

procedure TfrmLogin.btnCancelClick(Sender: TObject);
begin
  Self.ModalResult := mrNo; //set Result = No - speed Btns
end;

function TfrmLogin.NewUser: boolean;
begin
  Result := False;
  if LoginDataSet.Locate('UserID',edtUserId.Text,[]) then
  begin
     if LoginDataSet.FieldByName('Locked').AsBoolean then
     begin
         Result := True;
        //if UserID is locked then force user to change password
        //CreatePassChangeFrm;
        SetNewPassword(edtUserId.Text);
        if NewPass <> '' then
        begin
          FNewPwd := MoreFunCode(NewPass,True);
          edtPassW.Text := NewPass;
          Self.ModalResult := mrOk; //set Result = Ok
        end
     end  {if Locked}
  end;
end;

{WB 31/01/2000
 Login form - To login into the Loan System.
 System verify if the UserID & Password is valid}
function TfrmLogin.VerifyPassWord:boolean;//check for valid login
begin
  if LoginDataSet.Locate('UserID',edtUserId.Text,[]) then
  begin
    if MoreFunCode(LoginDataSet.FieldByName('UserPass').AsString,False)=edtPassW.Text then
      Result := true  {if Pass}
    else
      Result := false;{else Pass}
  end {if FindKey}
  else
    Result := false; {else FindKey}
end;

procedure TfrmLogin.CheckUserLogin;
begin
  if NewUser then
    Exit;
  If (VerifyPassWord) and (iCnt > 0) then
  begin //check pass and count
    Self.ModalResult := mrOk; //set Result = Ok
  end {if Pass & count}
  else
  begin
    iCnt := iCnt - 1;  //decrement count
    MesDlg('Incorrect attempt, you only have '+IntToStr(iCnt)+' attempt(s) left !','W');
    edtPassW.Text := '';  //clear password box
    edtPassW.SetFocus;   //set password box focus
    if (iCnt < 1) then
    begin //check if count is valid
      Self.ModalResult := mrNo; //set Result = No
    end;
 end; {else Pass & count}
end;

procedure TfrmLogin.SetUserIDgroup(inLeft, inTop: integer);
begin
  lblUser.Left   := inLeft;
  lblUser.Top    := inTop;
  lblPass.Left   := inLeft;
  lblPass.Top    := inTop  + 31;
  edtUserID.Left := inLeft + 55;
  edtUserID.Top  := inTop  - 4;
  edtPassW.Left  := inLeft + 55;
  edtPassW.Top   := inTop  + 27;
end;

procedure TfrmLogin.SetAllFontColor(inColor: TColor);
var
  i : integer;
begin
  for i := 0 to Self.ComponentCount-1 do
  begin
    if (Self.Components[i] is TLabel) then
      (Self.Components[i] as TLabel).Font.Color := inColor;
  end;
  btnOk.Font.Color := inColor;
  btnCancel.Font.Color := inColor;
end;

procedure TfrmLogin.SetFormCosmetics(LogonL, LogonT, bOkL, bOkT, bCnL, bCnT,
  lblverL, lblVerT, lblCRtop, lblDteamTop: integer; verCaption: string;
  allFontColor, lblverColor: TColor);
begin
  btnOk.Left        := bOkL;
  btnOk.Top         := bOkT;
  btnCancel.Left    := bCnL;
  btnCancel.Top     := bCnT;
  lblCopyRight.Top  := lblCRtop;
  lblDDteam.Top     := lblDteamTop;

  lblVersion.Left   := lblverL;
  lblVersion.Top    := lblVerT;
  lblVersion.Caption:= verCaption;

  SetUserIDgroup(LogonL, LogonT);
  SetAllFontColor(allFontColor);
  lblVersion.Font.Color := lblverColor;
end;

{ -----------------------------------------------------------------------------
  ----------------  Create dynamic Password change Form - BEGIN  --------------
  -----------------------------------------------------------------------------}
//procedure TfrmLogin.CreatePassChangeFrm;
//var
//  frmChgPass : TForm;
//  lblS : TLabel;
//  edtS : TEdit;
//  btnS : TBitBtn;
//  //
//  procedure SetControlScrSettings(ctrlToSet: TControl;
//    cLeft, cTop, cWidth: integer);
//  begin
//    ctrlToSet.Left   := cLeft;
//    ctrlToSet.Top    := cTop;
//    ctrlToSet.Width  := cWidth;
//  end;
//  procedure CreateLabels(lblCap:string; cLeft, cTop, cWidth: integer);
//  begin
//    lblS := TLabel.Create(frmChgPass);
//    lblS.Parent := frmChgPass;
//    SetControlScrSettings(lblS,cLeft, cTop, cWidth);
//    lblS.Caption := lblCap;
//  end;
//  procedure CreateEdits(inTag, cLeft, cTop, cWidth: integer);
//  begin
//    edtS := TEdit.Create(frmChgPass);
//    edtS.Tag := inTag;
//    edtS.Parent := frmChgPass;
//    SetControlScrSettings(edtS,cLeft,cTop,cWidth);
//    edtS.MaxLength := 10;
//    edtS.PasswordChar := '#';
//  end;
//  procedure CreateBtns(butKind: TBitBtnKind; cLeft, cTop, cWidth: integer);
//  begin
//    btnS := TBitBtn.Create(frmChgPass);
//    btnS.Parent := frmChgPass;
//    btnS.Kind   := butKind;
//    SetControlScrSettings(btnS,cLeft,cTop,cWidth);
//  end;
//begin
//  frmChgPass := TForm.Create(nil);
//  try
//    frmChgPass.BorderStyle  := bsSingle;
//    frmChgPass.Caption      := 'Change Password';
//    frmChgPass.Position     := poScreenCenter;
//    frmChgPass.ClientHeight := 101;
//    frmChgPass.ClientWidth  := 232;
//    frmChgPass.BorderIcons  := [biSystemMenu];
//    //
//    CreateLabels('Password',4,8,1);
//    CreateLabels('Confirm password',4,48,1);
//    //
//    CreateEdits(8,101,5,121);
//    CreateEdits(9,101,45,121);
//    //
//    CreateBtns(bkCustom,64,72,75);
//    btnS.Caption := 'OK';
//    btnS.Glyph   := btnOk.Glyph;
//    btnS.OnClick := btnPCOkClick;
//    CreateBtns(bkCancel,155,72,75);
//    //
//    frmChgPass.ModalResult := mrNone; //set Result to None
//    NewPass := '';
//    frmChgPass.ShowModal;
//  finally
//    frmChgPass.Free;
//    frmChgPass := nil;
//  end;
//end;

procedure TfrmLogin.SetNewPassword(Username: String);
var
  frmNewPass: TfrmNewPass;
begin
  frmNewPass := TfrmNewPass.Create(nil);
  try
    frmNewPass.edtUser.Text := Username;
    if frmNewPass.Showmodal = mrOK then
      NewPass := frmNewPass.edtPass.Text
    else
      NewPass := '';
  finally
    frmNewPass.Free;
  end;
end;

//procedure TfrmLogin.btnPCOkClick(Sender: TObject);
//var
//  pass1, pass2 : string;
//  i : integer;
//begin
//  for i := 1 to (Sender as TBitBtn).Parent.ComponentCount-1 do
//  begin
//    if (Sender as TBitBtn).Parent.Components[i].Tag = 8 then
//      pass1 := ((Sender as TBitBtn).Parent.Components[i] as TEdit).Text;
//    if (Sender as TBitBtn).Parent.Components[i].Tag = 9 then
//    begin
//      pass2 := ((Sender as TBitBtn).Parent.Components[i] as TEdit).Text;
//      ((Sender as TBitBtn).Parent.Components[i] as TEdit).Text := '';
//      ((Sender as TBitBtn).Parent.Components[i] as TEdit).SetFocus;
//    end;
//  end;
//  if pass1 = pass2 then
//  begin
//    NewPass := pass1;
//    ((Sender as TBitBtn).Parent as TForm).ModalResult := mrOk; //if passwords match set Result = Ok
//  end
//  else
//  begin
//    MessageDlg('Passwords does not match',mtError,[mbOk],0);
//    NewPass := '';
//  end;
//end;
{ -----------------------------------------------------------------------------
  ----------------  Create dynamic Password change Form - END  ----------------
  -----------------------------------------------------------------------------}

procedure TfrmLogin.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLogin.imgLogoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_Syscommand, $F012, 0);
end;

end.
