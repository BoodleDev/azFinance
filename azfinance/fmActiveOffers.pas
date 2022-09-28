unit fmActiveOffers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrmActiveOffers = class(TForm)
    grdOffers: TDBGrid;
    grdSettlements: TDBGrid;
    btnCancel: TButton;
    btnOK: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActiveOffers: TfrmActiveOffers;

implementation

uses dmLoanC;

{$R *.dfm}

end.
