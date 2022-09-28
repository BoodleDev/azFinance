unit fmDBBaseGrd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, FileCtrl,
  Unit32, Menus;

type
  TfrmDBBaseGrd = class(TfrmDBBase)
    pnlMBase: TPanel;
    grdBase: TDBGrid;
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

{$R *.DFM}

{ TfrmDBBaseGrd }

procedure TfrmDBBaseGrd.FormCreate(Sender: TObject);
begin
  inherited;
//  if FileExists(AppDir+'Views\'+Self.ClassName+'.grd') then
//    grdBase.Columns.LoadFromFile(AppDir+'Views\'+Self.ClassName+'.grd');
end;

procedure TfrmDBBaseGrd.FormDestroy(Sender: TObject);
begin
  inherited;
//  if SaveGrdCol then
//    grdBase.Columns.SaveToFile(AppDir+'Views\'+Self.ClassName+'.grd');
end;

end.
