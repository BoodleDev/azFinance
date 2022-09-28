unit uBase32;

interface

uses SysUtils, Windows, Graphics, Variants, Controls, Forms, DB, Unit32,
  dmMain, fmLookUp, fmLogin, uConst, fmBankDetails, ADODB;

  function ShowLU(LUDataSet :TDataset; LUCaption :String):integer;
  procedure AboutFrm(LogonL,LogonT,bOkL,bOkT,bCnL,bCnT,lblverL,
      lblVerT,lblCRtop,lblDteamTop:integer; verCaption,AppTitle :string;
      allFontColor, lblverColor: TColor);
  procedure LoginForm(LogonL,LogonT,bOkL,bOkT,bCnL,bCnT,lblverL,
      lblVerT,lblCRtop,lblDteamTop:integer; verCaption:string;
      allFontColor, lblverColor: TColor);
  procedure DoBankDetail(Entity,EntType :Integer; Boxes :Boolean);
  procedure ChangePassword(UserID :string);
  procedure RefreshData(DataSet :TDataSet);
  procedure SetNewPassword(UserID, NewPwd :string);
  procedure SetLoginDT(InDT: boolean; UserID :string);

implementation

function ShowLU(LUDataSet :TDataset; LUCaption :String):integer;
var
  frmLU : TfrmLookUp;
begin
  frmLU := TfrmLookUp.Create(nil);
  try
    dtmMain.SetGrdColors([frmLU.grdLookup]);
    frmLU.SetLookUpForm(LUDataSet,nil,LUCaption,'',True);
    frmLU.ShowModal;
    if frmLU.ChoosenID = Null then
      Result := -1
    else
      Result := frmLU.ChoosenID;
  finally
    frmLU.Free;
  end;
end;

procedure AboutFrm(LogonL,LogonT,bOkL,bOkT,bCnL,bCnT,lblverL,
      lblVerT,lblCRtop,lblDteamTop:integer; verCaption,AppTitle :string;
      allFontColor, lblverColor: TColor);
var
  frmAbout : TfrmLogin;
begin
  frmAbout := TfrmLogin.Create(nil);
  try
    frmAbout.Caption := AppTitle;
    frmAbout.SetFormCosmetics(LogonL,LogonT,bOkL,bOkT,bCnL,bCnT,lblverL,
       lblVerT,lblCRtop,lblDteamTop,verCaption,allFontColor,lblverColor);
    frmAbout.ShowModal;
  finally
    frmAbout.Free;
  end;
end;

procedure LoginForm(LogonL,LogonT,bOkL,bOkT,bCnL,bCnT,lblverL,
      lblVerT,lblCRtop,lblDteamTop:integer; verCaption:string;
      allFontColor, lblverColor: TColor);
var
  frmLogin : TfrmLogin;
begin
  frmLogin := TfrmLogin.Create(nil);
  frmLogin.LoginDataSet := dtmMain.qryLogin;
  frmLogin.Caption      := 'Login';
  try
    frmLogin.IniToUse := StoreDef;
    frmLogin.SetFormCosmetics(LogonL,LogonT,bOkL,bOkT,bCnL,bCnT,lblverL,
       lblVerT,lblCRtop,lblDteamTop,verCaption,allFontColor,lblverColor);
    if frmLogin.ShowModal <> mrOk then
      Application.Terminate
    else
    begin
      dtmMain.SetCurLogin;
      if dtmMain.qryLogin.FieldByName('Locked').AsBoolean then
        SetNewPassword(dtmMain.CurrentID,frmLogin.NewPwd);
    end;
  finally
    frmLogin.Free;
    dtmMain.qryLogin.Close;
  end;
end;

procedure DoBankDetail(Entity,EntType :Integer; Boxes :Boolean);
var
  frmBank : TfrmBankDetails;
  // move this to the apps
begin
  frmBank := TfrmBankDetails.Create(nil);
  frmBank.DBName       := dtmMain.dbData.ConnectionString;
  frmBank.CurrentID    := dtmMain.CurrentID;
  frmBank.CurEntID     := Entity;
  frmBank.CurTypeID    := EntType;
  frmBank.ShowBoxes    := Boxes;
  try
    frmBank.Showmodal;
  finally
    frmBank.Free;
  end;
end;

procedure ChangePassword(UserID :string);
begin
  RunQry(dtmMain.qryToUse,'update SecurityTbl set Locked=1'+
    'where UserID='''+UserID+'''','E');
  MesDlg('The next time you do login the system will prompt you for your new password','I');
end;

procedure RefreshData(DataSet :TDataSet);
begin
  DataSet.DisableControls;
  try
    DataSet.Close;
    DataSet.Open;
  finally
    DataSet.EnableControls;
  end;
end;

procedure SetNewPassword(UserID, NewPwd :string);
begin
  RunQry(dtmMain.qryToUse,'update SecurityTbl set Locked=0,'+
    'UserPass='''+NewPwd+''' where UserID='''+UserID+'''','E');
end;

procedure SetLoginDT(InDT: boolean; UserID :string);
var
  Fld : string;
begin
  if InDT then
    Fld := 'LastInDT'
  else
    Fld := 'LastOutDT';
  RunQry(dtmMain.qryToUse,'update SecurityTbl set '+Fld+'='''+
    FormatDateTime('mm/dd/yyyy hh:mm:ss',Now)+''' where UserID='''+
    UserID+'''','E');
end;

end.
