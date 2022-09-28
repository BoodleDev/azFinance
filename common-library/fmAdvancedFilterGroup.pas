unit fmAdvancedFiltergroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmAdvancedFilterGroup = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cmbGroupType: TComboBox;
    btnOK: TButton;
    btnCancel: TButton;
    cmbGroupID: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdvancedFilterGroup: TfrmAdvancedFilterGroup;

implementation

{$R *.dfm}

end.
