unit fmDBGridView;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, Grids, DBGrids, ComCtrls, ToolWin, Menus;

type
  TfrmDBGridView = class(TfrmDBBase)
    grdMain: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmMain;

{$R *.DFM}

{ TfrmDBGridView }

procedure TfrmDBGridView.FormShow(Sender: TObject);
begin
  inherited;
  grdMain.Color := dtmMain.GrdColor;
end;

end.
