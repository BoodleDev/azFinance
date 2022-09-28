unit SelectFolderDialog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ShellAPI, ShlObj;

type
  TSelectFolderDialog = class(TComponent)
  private
    FFolderpath: String;
    { Private declarations }
  protected
    { Protected declarations }
    function BrowseDialog(const Title: String; const Flag: Integer): String;
  public
    { Public declarations }
    property Folderpath: String read FFolderpath write FFolderpath;
    function Execute: Boolean;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Graytech', [TSelectFolderDialog]);
end;

{ TSelectFolderDialog }

function TSelectFolderDialog.BrowseDialog(const Title: String;
  const Flag: Integer): String;
Var
  lpItemID: PItemIDList;
  BrowseInfo: TBrowseInfo;
  DisplayName: array [0..Max_Path] of char;
  TempPath: array [0..Max_Path] of char;
begin
  Result := '';
  FillChar(BrowseInfo, SizeOf(TBrowseInfo), #0);
  //BrowseInfo.hwndOwner := Application.MainForm.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  BrowseInfo.lpszTitle := PChar(Title);
  BrowseInfo.ulFlags := Flag;

  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemID <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    Result := TempPath;
    GlobalFreePtr(lpItemID);
  end;
end;

function TSelectFolderDialog.Execute: Boolean;
begin
  FolderPath := BrowseDialog('Select Folder', BIF_RETURNONLYFSDIRS);
  Result := FolderPath <> '';
end;

end.
 