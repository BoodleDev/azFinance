unit fmDBBaseGrdClr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, FileCtrl,
  Unit32, Menus, DBGrdClr;

type
  TfrmDBBaseGrdClr = class(TfrmDBBase)
    pnlMBase: TPanel;
    grdBase: TDBGrdClr;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FSaveGrdCol: Boolean;
  public
    { Public declarations }
    property SaveGrdCol : Boolean read FSaveGrdCol write FSaveGrdCol;
  end;

implementation

uses dmMain;

{$R *.DFM}

{ TfrmDBBaseGrd }

procedure TfrmDBBaseGrdClr.FormCreate(Sender: TObject);
begin
  inherited;
  grdBase.Color      := dtmMain.GrdColor;
  grdBase.FixedColor := dtmMain.FixGrdColor;
  grdBase.OddColor   := dtmMain.OddGrdColor;
  if FileExists(AppDir+'Views\'+Self.ClassName+'.grd') then
    grdBase.Columns.LoadFromFile(AppDir+'Views\'+Self.ClassName+'.grd');
end;

procedure TfrmDBBaseGrdClr.FormDestroy(Sender: TObject);
begin
  inherited;
  if SaveGrdCol then
    grdBase.Columns.SaveToFile(AppDir+'Views\'+Self.ClassName+'.grd');
end;

end.
