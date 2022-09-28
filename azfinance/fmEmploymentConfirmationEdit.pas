unit fmEmploymentConfirmationEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Mask, dmEmployer, dblookup;

type
  TfrmEmploymentConfirmationEdit = class(TForm)
    edtContactPerson: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtPosition: TDBEdit;
    Label4: TLabel;
    edtDepartment: TDBEdit;
    Label5: TLabel;
    edtContactNo: TDBEdit;
    Label6: TLabel;
    edtNotes: TDBMemo;
    btnCancel: TButton;
    btnOK: TButton;
    Label7: TLabel;
    edtEmployerName: TDBEdit;
    Label8: TLabel;
    edtRegistrationName: TDBEdit;
    Label9: TLabel;
    edtTradingName: TDBEdit;
    Bevel1: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmploymentConfirmationEdit: TfrmEmploymentConfirmationEdit;

implementation

{$R *.dfm}

end.
