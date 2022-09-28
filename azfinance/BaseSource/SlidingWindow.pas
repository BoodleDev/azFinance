unit SlidingWindow;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  commctrl;

type
  TSlidingWindow = class(TPanel)
  private
    FItems: TStrings;
    procedure SetItems(const Value: TStrings);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }    
    constructor Create(AOwner: TComponent); override;
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
  published
    { Published declarations }
    property Items: TStrings read FItems write SetItems;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TSlidingWindow]);
  RegisterPropertyEditor(TypeInfo(string), TSlidingWindow,
    'Caption', String);
end;

{ TSlidingWindow }

constructor TSlidingWindow.Create(AOwner: TComponent);
begin
  inherited;
  Width := 200;
  Height := 300;
end;

procedure TSlidingWindow.Edit;
begin
  inherited;

end;

function TSlidingWindow.GetAttributes: TPropertyAttributes;
begin

end;

procedure TSlidingWindow.SetItems(const Value: TStrings);
begin
  Showmessage('Daniel');
  FItems := Value;
end;

end.
 