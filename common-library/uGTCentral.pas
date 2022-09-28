unit uGTcentral;

interface

uses
  Windows,SysUtils, Controls, Forms, StdCtrls, ExtCtrls, Menus, Unit32, SlidingPanel,
  Dialogs, ShellApi;

procedure LoadTheForm(frmToLoad: TForm; pnlParent: TPanel);
procedure LoadMainFrmPos(iniUse: string);
procedure OpenAccZoneHelp(HelpID: Integer);
procedure OpenHelpFile(HlpName: string; CurHlpID: integer);
procedure RunCreateForm(cbMenu: TComboBox);
procedure SetDropDownMenu(Sender: TObject; cbMenu: TComboBox);
procedure SetCurMenuPnl(var CurMenuPnl, pnlToSet, pnlFix: TPanel; cbMenu: TComboBox); overload;
procedure SetCurMenuPnl(var CurMenuPnl, pnlToSet: TPanel; pnlFix: TSlidingPanel; cbMenu: TComboBox); overload;
procedure WriteMainFrmPos(iniUse: string);

implementation

procedure LoadMainFrmPos(iniUse: string);
var
  Center: TPoint;
Const
  DWidth = 720;
  DHeight = 540;
begin
  //frmMain.Left := ReadIniInt(iniUse,'ScreenXY','MainX',frmMain.Left);
  //frmMain.Top  := ReadIniInt(iniUse,'ScreenXY','MainY',frmMain.Top);
  if ReadIniInt(iniUse, 'ScreenXY', 'WindowState', 0) = 1 then
    Application.MainForm.WindowState := wsMaximized
  else
  begin
    Center.X := (Screen.Width  - DWidth) div 2;
    Center.Y := (Screen.Height - DHeight) div 2;
    Application.MainForm.WindowState := wsNormal;
    Application.MainForm.Left   := ReadIniInt(iniUse, 'ScreenXY','MainX',Center.X);//Application.MainForm.Left);
    Application.MainForm.Top    := ReadIniInt(iniUse, 'ScreenXY','MainY',Center.Y);//Application.MainForm.Top);
    Application.MainForm.Width  := ReadIniInt(iniUse, 'ScreenXY','Width',DWidth);//Application.MainForm.Width);
    Application.MainForm.Height := ReadIniInt(iniUse, 'ScreenXY','Height',DHeight);//Application.MainForm.Height);
  end;
end;

// WB - Procedure to load a form into main panel
procedure LoadTheForm(frmToLoad: TForm; pnlParent : TPanel);
begin
  frmToLoad.BorderStyle := bsNone;
  frmToLoad.Parent      := pnlParent;
  frmToLoad.Align       := alClient;
  frmToLoad.Show;
  frmToLoad.Realign;
end;

procedure OpenAccZoneHelp(HelpID: Integer);
var
  OpenHelp: TOpenDialog;
begin
  if FileExists(Application.HelpFile) then
  begin
    if ExtractFileExt(Application.HelpFile) = '.chm' then
      ShellExecute(Application.Handle,'open',PChar(Application.Helpfile),nil,nil,SW_SHOWNORMAL)
    else
      OpenHelpFile(Application.HelpFile,HelpID);//Hlp file entry name 'LS2S_cs'
  end
  else
  begin
    if MesDlg('Cannot find the ' + Application.HelpFile + ' file.' + #13 +
      'Do you want to try and find this file yourself?','C') = mrYes then
      begin
        OpenHelp := TOpenDialog.Create(nil);
        OpenHelp.Filter := 'Help Files (*.hlp; *.chm)|*.hlp;*.chm';  
        OpenHelp.InitialDir := ParamStr(0);
        if OpenHelp.Execute then
        begin
          Application.Helpfile := OpenHelp.FileName;
          OpenHelpFile(Application.HelpFile,HelpID);
        end
      end;
    if not(FileExists(Application.HelpFile)) then
      MesDlg('Contact the Administrator to receive this file', 'I');
  end;
end;

procedure OpenHelpFile(HlpName : string; CurHlpID: integer);
begin
  if Trim(HlpName) <> '' then
  begin
    if CurHlpID = 0 then
      Application.HelpJump('')
    else
      Application.HelpJump(HlpName+IntToStr(CurHlpID));
  end;
end;

procedure RunCreateForm(cbMenu : TComboBox);
begin
  ShortDateFormat := 'dd/mm/yyyy';
  cbMenu.ItemIndex := 0;
  cbMenu.OnChange(nil);
end;

procedure SetDropDownMenu(Sender: TObject; cbMenu : TComboBox);
begin
  if (Sender as TMenuItem).Tag > 0 then
  begin
    cbMenu.ItemIndex := ((Sender as TMenuItem).Tag-1);
    cbMenu.OnChange(nil);
  end;
end;

procedure SetCurMenuPnl(var CurMenuPnl, pnlToSet, pnlFix: TPanel; cbMenu: TComboBox);
begin
  if CurMenuPnl<>pnlToSet then
  begin
    pnlToSet.Parent := pnlFix;
    pnlToSet.Align  := alClient;
    pnlToSet.BevelInner := bvNone;
    pnlToSet.BevelOuter := bvNone;
    cbMenu.BringToFront;
    pnlToSet.Visible := True;
    if Assigned(CurMenuPnl) then
    begin
      CurMenuPnl.Visible := false;
      CurMenuPnl.Align   := alNone;
      CurMenuPnl.Parent  := Application.MainForm;
      CurMenuPnl.SendToBack;
    end;
    CurMenuPnl := pnlToSet;
  end;
end;

procedure SetCurMenuPnl(var CurMenuPnl, pnlToSet: TPanel; pnlFix: TSlidingPanel; cbMenu: TComboBox);
begin
  if CurMenuPnl<>pnlToSet then
  begin
    pnlToSet.Parent := pnlFix;
    pnlToSet.Align  := alClient;
    pnlToSet.BevelInner := bvNone;
    pnlToSet.BevelOuter := bvNone;
    cbMenu.BringToFront;
    pnlToSet.Visible := True;
    if Assigned(CurMenuPnl) then
    begin
      CurMenuPnl.Visible := false;
      CurMenuPnl.Align   := alNone;
      CurMenuPnl.Parent  := Application.MainForm;
      CurMenuPnl.SendToBack;
    end;
    CurMenuPnl := pnlToSet;
  end;
end;

procedure WriteMainFrmPos(iniUse: string);
begin
  if Application.MainForm.WindowState = wsMaximized then
    WriteIniInt(iniUse,'ScreenXY','WindowState',1)
  else
  begin
    WriteIniInt(iniUse,'ScreenXY','WindowState',0);
    WriteIniInt(iniUse,'ScreenXY','MainX', Application.MainForm.Left);
    WriteIniInt(iniUse,'ScreenXY','MainY', Application.MainForm.Top);
    WriteIniInt(iniUse,'ScreenXY','Width', Application.MainForm.Width);
    WriteIniInt(iniUse,'ScreenXY','Height',Application.MainForm.Height);
  end;
end;

end.
