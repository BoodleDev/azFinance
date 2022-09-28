unit DirectoryPnl;
{===============================================================================
 Author  : Wicus Botha
 Date    : 31/01/2000
 Unit    : This is a simple component to have the basic components for directory
           browsing & directory selecting options.
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, FileCtrl;

type
  TDirectoryPnl = class(TPanel)
  private
    { Private declarations }
    TopPnl   : TPanel;
    dcbDrive : TDriveComboBox;
    dlbDirs  : TDirectoryListBox;
    flbFiles : TFileListBox;
    procedure ResizeSettings;
  protected
    { Protected declarations }
    procedure OnResizePnl(Sender: TObject);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TDirectoryPnl]);
end;

{ TDirectoryPnl }

constructor TDirectoryPnl.Create(AOwner: TComponent);
begin
  inherited;
  Self.Height := 350;
  Self.Width  := 260;
  Self.BevelOuter := bvLowered;
  // Create other components
  TopPnl   := TPanel.Create(Self);
  dcbDrive := TDriveComboBox.Create(Self);
  dlbDirs  := TDirectoryListBox.Create(Self);
  flbFiles := TFileListBox.Create(Self);
  // Set Other components parent
  TopPnl.Parent := Self;
  TopPnl.Color := clTeal;
  dcbDrive.Parent := TopPnl;
  dlbDirs.Parent := Self;
  flbFiles.Parent := Self;
  // Set Other components
  TopPnl.Align := alTop;
  dlbDirs.Align := alTop;
  flbFiles.Align := alClient;
  // Set dimensions
  TopPnl.Height := 35;
  dlbDirs.Height := 170;
  dcbDrive.DirList := dlbDirs;
  dlbDirs.FileList := flbFiles;
  ResizeSettings;
  OnResize := OnResizePnl;
end;

destructor TDirectoryPnl.Destroy;
begin
  dcbDrive.Free;
  TopPnl.Free;
  dlbDirs.Free;
  flbFiles.Free;
  inherited Destroy;
end;

procedure TDirectoryPnl.OnResizePnl(Sender: TObject);
begin
  inherited;
  ResizeSettings;
end;

procedure TDirectoryPnl.ResizeSettings;
begin
  dcbDrive.Top  := Trunc( (TopPnl.Height-19) / 2 );
  dcbDrive.Left := 10;
  dcbDrive.Width:= TopPnl.Width - 20;
end;

end.
