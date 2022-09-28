unit fmAcceptOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ComCtrls,
  DBDateTimePicker;

type
  TfrmAcceptOption = class(TForm)
    grdOptions: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    btnCancel: TButton;
    btnAccept: TButton;
    Label2: TLabel;
    dtpAcceptDate: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcceptOption: TfrmAcceptOption;

implementation

uses dmLoanC;

{$R *.dfm}

procedure TfrmAcceptOption.FormCreate(Sender: TObject);
begin
  dtpAcceptDate.Date := Date;
end;

end.
