unit fmAdvancedFilterAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dmAdvancedFilter, StdCtrls, DBCtrls, Grids, DBGrids;

type
  TfrmAdvancedFilterAdmin = class(TForm)
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBGrid1: TDBGrid;
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdvancedFilterAdmin: TfrmAdvancedFilterAdmin;

implementation

{$R *.dfm}

procedure TfrmAdvancedFilterAdmin.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = 65) then
    DBMemo1.SelectAll;
end;

end.
