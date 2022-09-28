unit uGTcentral;

interface

uses
  SysUtils, Controls, Forms, ExtCtrls, Unit32, dmMain, fmMain, fmDefaults,
  uConst, Menus;

function FreeCurrentForm: boolean;
procedure LoadDefaultForm;
procedure LoadForm(TfrmToLoad: TFormClass; RepIndex, HlpIndex: integer);
procedure LoadMainFrmPos;
procedure OpenHelpFile(HlpName : string);
procedure RunCreateForm;
procedure SetDropDownMenu(Sender: TObject);
procedure SetPanelMenu(pnlToSet: TPanel);
procedure TileMainPanel;
procedure WriteMainFrmPos;

implementation

function FreeCurrentForm: boolean;
begin
  try
    if Assigned(frmMain.CurrentForm) then
    begin
      if frmMain.CurrentForm is TfrmDefaults then
        TileMainPanel;
      frmMain.CurrentForm.Close;
      frmMain.CurrentForm.Free;
    end;
    frmMain.CurrentForm := nil;
    Result := True;
    frmMain.pnlCurFrm.Caption := 'Program name';
  except
    Result := false;
  end;
  frmMain.ReportIndex := 0;
  frmMain.CurrentHelpID := 0;
end;

procedure LoadMainFrmPos;
begin
  frmMain.Left := ReadIniInt(StoreDef,'ScreenXY','MainX',frmMain.Left);
  frmMain.Top  := ReadIniInt(StoreDef,'ScreenXY','MainY',frmMain.Top);
end;

// WB - Procedure to load a form into main panel
procedure LoadDefaultForm;
begin
  LoadForm(TfrmDefaults, -1, 0);
  TfrmDefaults(frmMain.CurrentForm).DefIniToUse := StoreDef;
end;

procedure LoadForm(TfrmToLoad: TFormClass; RepIndex, HlpIndex: integer);
begin
  if FreeCurrentForm then
  begin
    Screen.Cursor := crHourGlass;
    try
      frmMain.CurrentForm := TfrmToLoad.Create(frmMain);
      frmMain.pnlCurFrm.Caption := frmMain.CurrentForm.Caption;
      frmMain.CurrentForm.BorderStyle := bsNone;
      frmMain.CurrentForm.Align  := alClient;
      frmMain.CurrentForm.Parent := frmMain.pnlMain;
      frmMain.CurrentForm.Show;
      frmMain.CurrentForm.Realign;
      frmMain.ReportIndex   := RepIndex;
      frmMain.CurrentHelpID := HlpIndex;
      //buttons
      frmMain.btnPreview.Enabled := frmMain.ReportIndex <> -1;
      frmMain.btnPrint.Enabled   := frmMain.ReportIndex <> -1;
    finally
      Screen.Cursor := crDefault;
    end;
  end
  else
    MesDlg('Could not load form','E');
end;

procedure OpenHelpFile(HlpName : string);
begin
  if Trim(HlpName) <> '' then
  begin
    if frmMain.CurrentHelpID = 0 then
      Application.HelpJump('')
    else
      Application.HelpJump(HlpName+IntToStr(frmMain.CurrentHelpID));
  end;
end;

procedure RunCreateForm;
begin
  ShortDateFormat := 'dd/mm/yyyy';
  TileMainPanel;
  frmMain.cbMenu.ItemIndex := 0;
  frmMain.cbMenuChange(frmMain);
end;

procedure SetDropDownMenu(Sender: TObject);
begin
  if (Sender as TMenuItem).Tag > 0 then
  begin
    frmMain.cbMenu.ItemIndex := ((Sender as TMenuItem).Tag-1);
    frmMain.cbMenuChange(nil);
  end;
end;

procedure SetPanelMenu(pnlToSet: TPanel);
begin
  if frmMain.CurrentMenuPanel<>pnlToSet then
  begin
    pnlToSet.Parent := frmMain.pnlFix;
    pnlToSet.Align  := alClient;
    frmMain.cbMenu.BringToFront;
    pnlToSet.Visible := True;
    if Assigned(frmMain.CurrentMenuPanel) then
    begin
      frmMain.CurrentMenuPanel.Visible := false;
      frmMain.CurrentMenuPanel.Align   := alNone;
      frmMain.CurrentMenuPanel.Parent  := frmMain;
      frmMain.CurrentMenuPanel.SendToBack;
    end;
    frmMain.CurrentMenuPanel := pnlToSet;
  end;
end;

procedure TileMainPanel;
var
  i : integer;
begin
  dtmMain.BackGroundSrc := ReadIniStr(StoreDef,'Defaults','BackGround');
  //Paint Main toolbar
  frmMain.bgMain.SourceDir    := dtmMain.BackGroundSrc;
  frmMain.bgMain.Active       := True;
  frmMain.pnlCurFrm.Color     := GetDefColor(StoreDef,'CurFrmBar');
  frmMain.MenuPnlColor        := GetDefColor(StoreDef,'DefColor');
  dtmMain.ScrPnlColor := GetDefColor(StoreDef,'PnlScreen');
  dtmMain.RecBarColor := GetDefColor(StoreDef,'RecBar');
  for i := 0 to frmMain.ControlCount-1 do
  begin
    //if (frmMain.Controls[i] is TPanel) and
    if (frmMain.Controls[i]).Tag = 9 then
      (frmMain.Controls[i] as TPanel).Color := frmMain.MenuPnlColor;
  end;
  frmMain.pnlDefaults.Color := frmMain.MenuPnlColor;
end;

procedure WriteMainFrmPos;
begin
  WriteIniInt(StoreDef,'ScreenXY','MainX',frmMain.Left);
  WriteIniInt(StoreDef,'ScreenXY','MainY',frmMain.Top);
end;

end.
