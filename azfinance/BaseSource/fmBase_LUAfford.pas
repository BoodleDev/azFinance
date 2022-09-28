unit fmBase_LUAfford;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Db, ADODB, ucbxDBList;

type
  TfrmBase_LUAfford = class(TForm)
    lblCaption: TLabel;
    btnSave: TButton;
    btnClose: TButton;
    edtAmount: TDBEdit;
    lnlAmount: TLabel;
    btnDelete: TButton;
    cbxDescLU: TcbxDBList;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

{var
  frmBase_LUAfford: TfrmBase_LUAfford;}

implementation

uses dmAffordCalc, Unit32, dmMain;

{$R *.DFM}

end.
