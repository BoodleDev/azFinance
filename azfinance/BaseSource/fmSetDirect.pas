unit fmSetDirect;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, FileCtrl, StdCtrls, ExtCtrls, Grids, Outline, DirOutln,
  Unit32, Buttons, ImgList;

type
  TfrmSetDirect = class(TForm)
    dlbDataDir: TDirectoryListBox;
    tblSetDir: TToolBar;
    btnClose: TToolButton;
    ToolButton1: TToolButton;
    btnSetDir: TToolButton;
    pnlMain: TPanel;
    cbDrive: TDriveComboBox;
    imglst: TImageList;
    odNetDir: TOpenDialog;
    btnNetDir: TToolButton;
    procedure btnSetDirClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnNetDirClick(Sender: TObject);
  private
    { Private declarations }
    DefTblToLU: string;
    IniToUse: string;
  public
    { Public declarations }
    class function ShowSetDataDirFrm(iniFile,tblExists: string):boolean;
  end;

implementation

{$R *.DFM}

class function TfrmSetDirect.ShowSetDataDirFrm(iniFile,tblExists: string): boolean;
var
  frmSetDir : TfrmSetDirect;
begin
  frmSetDir := TfrmSetDirect.Create(nil);
  try
    frmSetDir.IniToUse   := iniFile;
    frmSetDir.DefTblToLU := tblExists;
    frmSetDir.ShowModal;
    Result := frmSetDir.ModalResult = mrOk;
  finally
    frmSetDir.Release;
  end;
end;

procedure TfrmSetDirect.btnCloseClick(Sender: TObject);
begin
  close;
end;

{WB 28/01/2000
 Check for files to exists in the choosen directory and if it does
 set the directory and write it to the ini file}
procedure TfrmSetDirect.btnSetDirClick(Sender: TObject);
var
  sMainData, sCurDir : string;
  i : integer;
begin
  sMainData := '';
  //Check the current position in the directory box for the file
  sCurDir := ExpandUNCFileName(dlbDataDir.Directory);
  if FileExists(sCurDir+'\'+DefTblToLU) then
    sMainData := sCurDir
  else  //else loop the items in the box and add the file to check
  begin
    for i := dlbDataDir.ItemIndex to dlbDataDir.Items.Count-1 do
    begin
      if FileExists(sCurDir+'\'+DefTblToLU) then
         sMainData := sCurDir;
      sCurDir := dlbDataDir.Directory+ '\' + dlbDataDir.Items[i];
    end;
  end;
  // if the file was not found sMainData will be ''
  if sMainData='' then
  begin
    MesDlg('Could not find specific files in directory.','E');
    ModalResult := mrNone;
  end
  else
  begin
    MesDlg('Directory accepted as, '+sMainData,'I');
    WriteIni(IniToUse,'Path','Main',sMainData);
    ModalResult := mrOk;
  end;
end;

procedure TfrmSetDirect.btnNetDirClick(Sender: TObject);
begin
  if odNetDir.Execute then
    dlbDataDir.Directory := odNetDir.FileName;
end;

end.
