unit fmDefaults;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, StdCtrls, Buttons, ExtCtrls, pbBackGround, Unit32,
  ExtDlgs;

type
  TfrmDefaults = class(TForm)
    pnlMain: TPanel;
    bgDefBack: TpbBackGround;
    spPnlColor: TShape;
    shpCurFrm: TShape;
    btnPnlColor: TSpeedButton;
    btnBackGround: TSpeedButton;
    btnGrdColor: TSpeedButton;
    btnCurFrm: TSpeedButton;
    imgBG: TImage;
    shpOneColor: TShape;
    btnOneColor: TSpeedButton;
    btnRecBar: TSpeedButton;
    btnScreenPnl: TSpeedButton;
    shpRecBar: TShape;
    shpScreenPnl: TShape;
    clrdDef: TColorDialog;
    odBackG: TOpenPictureDialog;
    tblDefaults: TToolBar;
    btnExit: TToolButton;
    btnSave: TToolButton;
    btnCancel: TToolButton;
    btnDelete: TToolButton;
    shpGrd: TShape;
    btnFixGrid: TSpeedButton;
    shpFGrid: TShape;
    btnGrdOddColors: TSpeedButton;
    shpOddGrdColor: TShape;
    BitBtn1: TBitBtn;
    procedure btnPnlColorClick(Sender: TObject);
    procedure btnBackGroundClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnGrdColorClick(Sender: TObject);
    procedure btnCurFrmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRecBarClick(Sender: TObject);
    procedure btnScreenPnlClick(Sender: TObject);
    procedure btnOneColorClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnFixGridClick(Sender: TObject);
    procedure btnGrdOddColorsClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    FDefIniToUse: string;
    function ExeDlgColor(curColor: TColor):Integer;
    procedure SaveBackGroundSettings;
    procedure LoadTileSrcFromINI;
    procedure SetDefIniToUse(const Value: string);
  public
    { Public declarations }
    property DefIniToUse : string read FDefIniToUse write SetDefIniToUse;
  end;

implementation

{$R *.DFM}

procedure TfrmDefaults.btnExitClick(Sender: TObject);
begin
  close;
end;

function TfrmDefaults.ExeDlgColor(curColor: TColor): Integer;
begin
  clrdDef.Color := curColor;
  if clrdDef.Execute then
    Result := clrdDef.Color
  else
    Result := curColor;
end;

{WB 31/01/2000
 Read background settings from ini file}
procedure TfrmDefaults.SaveBackGroundSettings;
begin
  WriteIni(DefIniToUse,'Defaults','BackGround',odBackG.FileName);
  WriteIniDefColor(DefIniToUse,'DefColor',spPnlColor.Brush.Color);
  WriteIniDefColor(DefIniToUse,'CurFrmBar',shpCurFrm.Brush.Color);
  WriteIniDefColor(DefIniToUse,'RecBar',shpRecBar.Brush.Color);
  WriteIniDefColor(DefIniToUse,'PnlScreen',shpScreenPnl.Brush.Color);
  WriteIniDefColor(DefIniToUse,'GrdColor',shpGrd.Brush.Color);
  WriteIniDefColor(DefIniToUse,'FixGrdColor',shpFGrid.Brush.Color);
  WriteIniDefColor(DefIniToUse,'GrdOddColor',shpOddGrdColor.Brush.Color);
end;

procedure TfrmDefaults.btnPnlColorClick(Sender: TObject);
begin
  spPnlColor.Brush.Color := ExeDlgColor(spPnlColor.Brush.Color);
end;
procedure TfrmDefaults.btnCurFrmClick(Sender: TObject);
begin
  shpCurFrm.Brush.Color := ExeDlgColor(shpCurFrm.Brush.Color);
end;
procedure TfrmDefaults.btnRecBarClick(Sender: TObject);
begin
  shpRecBar.Brush.Color := ExeDlgColor(shpRecBar.Brush.Color);
  tblDefaults.Color := shpRecBar.Brush.Color;
end;
procedure TfrmDefaults.btnScreenPnlClick(Sender: TObject);
begin
  shpScreenPnl.Brush.Color := ExeDlgColor(shpScreenPnl.Brush.Color);
end;
{WB 31/01/2000 default}
procedure TfrmDefaults.btnGrdColorClick(Sender: TObject);
begin
  shpGrd.Brush.Color := ExeDlgColor(shpGrd.Brush.Color);
end;
procedure TfrmDefaults.btnFixGridClick(Sender: TObject);
begin
  shpFGrid.Brush.Color := ExeDlgColor(shpFGrid.Brush.Color);
end;
procedure TfrmDefaults.btnGrdOddColorsClick(Sender: TObject);
begin
  shpOddGrdColor.Brush.Color := ExeDlgColor(shpOddGrdColor.Brush.Color);
end;

procedure TfrmDefaults.btnOneColorClick(Sender: TObject);
begin
  clrdDef.Color := shpOneColor.Brush.Color;
  if (clrdDef.Execute) then
  begin
    shpOneColor.Brush.Color  := clrdDef.Color;
    spPnlColor.Brush.Color   := clrdDef.Color;
    shpCurFrm.Brush.Color    := clrdDef.Color;
    shpRecBar.Brush.Color    := clrdDef.Color;
    shpScreenPnl.Brush.Color := clrdDef.Color;
    tblDefaults.Color := shpRecBar.Brush.Color;
  end;
end;

procedure TfrmDefaults.btnBackGroundClick(Sender: TObject);
begin
  odBackG.Execute;
  if odBackG.FileName <> '' then
  begin
    imgBG.Picture.LoadFromFile(odBackG.FileName);
    bgDefBack.Active := False;
    bgDefBack.SourceDir := odBackG.FileName;
    bgDefBack.Active := True;
  end;
end;

procedure TfrmDefaults.btnSaveClick(Sender: TObject);
begin
  SaveBackGroundSettings;
end;

procedure TfrmDefaults.btnCancelClick(Sender: TObject);
begin
  LoadTileSrcFromINI;
end;

procedure TfrmDefaults.LoadTileSrcFromINI;
var
  tempDir : string;
begin
  try
    tempDir := ReadIniStr(DefIniToUse,'Defaults','BackGround');
    imgBG.Picture.LoadFromFile(tempDir);
    odBackG.FileName := tempDir;
    bgDefBack.SourceDir := tempDir;
    bgDefBack.Active := True;
  except
  end;
end;

{WB 31/01/2000
 On form create set the color & background defaults}
procedure TfrmDefaults.SetDefIniToUse(const Value: string);
begin
  FDefIniToUse := Value;
  //
  spPnlColor.Brush.Color     := GetDefColor(DefIniToUse,'DefColor');
  shpCurFrm.Brush.Color      := GetDefColor(DefIniToUse,'CurFrmBar');
  shpRecBar.Brush.Color      := GetDefColor(DefIniToUse,'RecBar');
  shpScreenPnl.Brush.Color   := GetDefColor(DefIniToUse,'PnlScreen');
  shpGrd.Brush.Color         := GetDefColor(DefIniToUse,'GrdColor');
  shpFGrid.Brush.Color       := GetDefColor(DefIniToUse,'FixGrdColor');
  shpOddGrdColor.Brush.Color := GetDefColor(DefIniToUse,'GrdOddColor');
  tblDefaults.Color      := shpRecBar.Brush.Color;
  LoadTileSrcFromINI;
  //
end;

procedure TfrmDefaults.BitBtn1Click(Sender: TObject);
begin
  spPnlColor.Brush.Color := clBtnFace;
  shpRecBar.Brush.Color  := clBtnFace; 
end;

end.
