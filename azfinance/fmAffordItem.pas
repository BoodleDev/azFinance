unit fmAffordItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrmAffordItem = class(TForm)
    grdSubItems: TDBGrid;
    btnClose: TButton;
    procedure grdSubItemsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAffordItem: TfrmAffordItem;

implementation

uses dmAffordability;

{$R *.dfm}

procedure TfrmAffordItem.grdSubItemsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DELETE then
    dtmAffordability.dsSubItems.Delete;
end;

end.
