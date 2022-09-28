unit fmOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfrmOptions = class(TForm)
    TreeView1: TTreeView;
    Button1: TButton;
    Button2: TButton;
    PageControl1: TPageControl;
    tsFonts: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ColorBox2: TColorBox;
    Button3: TButton;
    Button4: TButton;
    ComboBox1: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOptions: TfrmOptions;

implementation

{$R *.dfm}

end.
