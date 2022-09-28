unit fmAffordDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Db, ADODB, ucbxDBList;

type
  TfrmAffordDetail = class(TForm)
    lblCaption: TLabel;
    btnSave: TButton;
    btnClose: TButton;
    lblAmount: TLabel;
    cmbDescription: TDBLookupComboBox;
    edtAmount: TDBEdit;
    edtDescription: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

{var
  frmBase_LUAfford: TfrmBase_LUAfford;}

implementation

uses dmAffordability, Unit32, dmMain;

{$R *.DFM}

end.
