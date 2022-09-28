unit fmPreviewDocMax;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODI_TLB;

type
  TDocView = class(TMiDocView)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
//    constructor Create(AOwner: TComponent); override;
    procedure WndProc(var Mesg: TMessage);override;
  published
    { Published declarations }
  end;

type
  TfrmPreviewDocMax = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DocView: TDocView;
  end;

var
  frmPreviewDocMax: TfrmPreviewDocMax;

implementation

{$R *.dfm}

procedure TfrmPreviewDocMax.FormCreate(Sender: TObject);
begin
  DocView := TDocView.Create(Self);
  DocView.Parent := Self;
  DocView.Align := alClient;
  DocView.FitMode := miByWidth;
  DocView.Show;
  DocView.Document := nil;
end;

procedure TfrmPreviewDocMax.FormDestroy(Sender: TObject);
begin
  DocView.FileName := '';
  DocView.Parent := nil;
  FreeAndNil(DocView);
end;

{ TDocView }

procedure TDocView.WndProc(var Mesg: TMessage);
begin
  inherited;
  if Mesg.Msg = WM_LBUTTONDOWN then
    frmPreviewDocMax.Close;
end;

end.
