unit fmBase_About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TfrmBase_About = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    OKButton: TButton;
    lblAppName: TLabel;
    lblVersion: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure OKButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase_About: TfrmBase_About;

implementation

uses uConst;

{$R *.DFM}

procedure TfrmBase_About.OKButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBase_About.FormCreate(Sender: TObject);
begin
  lbLAppname.Caption := ChangeFileExt(ExtractFileName(ParamStr(0)),'');
  lblVersion.Caption := 'Version ' + Version;
end;

end.

