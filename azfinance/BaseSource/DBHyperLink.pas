unit DBHyperLink;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ShellApi;

type THyperLink = (hlUrl,hlEmail);
type THyperLinkSet = set of THyperLink;

type
  TDBHyperLink = class(TDBText)
  private
    FLinkType: THyperLink;
    procedure SetLinkType(const Value: THyperLink);
    { Private declarations }
  protected
    { Protected declarations }
  public                                       
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure WndProc(var Mesg: TMessage);override;
    procedure OpenEmail(Subject: String; Body: WideString);
    procedure OpenUrl;
  published
    { Published declarations }
    property LinkType: THyperLink read FLinkType write SetLinkType default hlUrl;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TDBHyperLink]);
end;

{ TDBHyperLink }

constructor TDBHyperLink.Create(AOwner: TComponent);
begin
  inherited;
  Self.Cursor := crHandPoint;
  Self.Font.Color := clBlue;
end;

procedure TDBHyperLink.SetLinkType(const Value: THyperLink);
begin
  FLinkType := Value;
end;

procedure TDBHyperLink.WndProc(var Mesg: TMessage);
begin
  if Mesg.Msg = CM_MOUSELEAVE then
    Self.Font.Style := Self.Font.Style - [fsUnderline]
  else if Mesg.Msg = CM_MOUSEENTER then
    Self.Font.Style := Self.Font.Style + [fsUnderline];
  inherited;
end;

procedure TDBHyperLink.OpenEmail(Subject: String; Body: WideString);
var
  Email: String;
begin
  inherited;
  Email := 'mailto:' + Self.DataSource.DataSet.FieldByName(Self.DataField).AsString +
    '&Subject='+subject+' &Body=' + Body;
  ShellExecute(Application.MainForm.Handle, 'open', pChar(Email),'', '', SW_SHOW);
end;

procedure TDBHyperLink.OpenUrl;
begin
  inherited;
    ShellExecute(Application.MainForm.Handle, 'open', pChar('http://' +
      Self.DataSource.DataSet.FieldByName(Self.DataField).AsString),'', '', SW_SHOW);
end;

end.
