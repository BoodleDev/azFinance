unit ConnectionMonitor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ADODB;

type
  TConnectionMonitor = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(Owner: TComponent); override;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TConnectionMonitor]);
end;

{ TConnectionMonitor }

constructor TConnectionMonitor.Create(Owner: TComponent);
var
  I: Integer;
begin
  inherited;
  for I := 0 to Self.Owner.ComponentCount -1 do
  begin
    if Self.Owner.Components[I] is TADOConnection then
      if TADOConnection(Self.Owner.Components[I]).ConnectionString <> '' then
        MessageDlg('ADOConnection ' + TADOConnection(Self.Owner.Components[I]).Name +
        ' has an active connection',
          mtWarning, [mbOK], 0);        
         // TADOConnection(Self.Owner.Components[I]).ConnectionString := '';
  end;
end;

end.
 