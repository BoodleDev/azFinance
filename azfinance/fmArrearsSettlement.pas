unit fmArrearsSettlement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TfrmArrearsSettlement = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    btnClose: TButton;
    grdSummary: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtAccountNo: TEdit;
    edtArrears: TEdit;
    edtDelinquency: TEdit;
    Label4: TLabel;
    cmbStartmonth: TComboBox;
    Label5: TLabel;
    cmbTerm: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArrearsSettlement: TfrmArrearsSettlement;

implementation

{$R *.dfm}

end.
