unit NoEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TNoEdit = class(TEdit)
  private
    { Private declarations }
  protected
    { Protected declarations }
    procedure KeyPress(var Key: Char); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TNoEdit]);
end;

{ TNoEdit }

constructor TNoEdit.Create(AOwner: TComponent);
begin
  inherited;  
  Self.Text := '0.00';
end;

procedure TNoEdit.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  //
  if not ((Key in ['0'..'9','.','-',Char(VK_Delete),Char(VK_Back)])) then
    Abort
  else
  begin
    if Key = '.' then
    begin
      if Pos('.',Self.Text)<>0 then
        Abort;
    end;
    if Key = '-' then
    begin
      if (Pos('-',Self.Text)=0) then
        Self.SelStart := 0
      else
        Abort;
    end;
  end;
end;

end.
