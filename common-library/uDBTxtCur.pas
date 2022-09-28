unit uDBTxtCur;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls;

type
  TDBTxtCur = class(TDBText)
  private
    { Private declarations }
  protected
    { Protected declarations }
    function GetLabelText: string; override;
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TDBTxtCur]);
end;

{ TDBTxtCur }

function TDBTxtCur.GetLabelText: string;
begin
  if csPaintCopy in ControlState then
    Result := '0.00'
  else
  begin
    if Caption = '' then
      Result := Caption
    else
//    Result := Caption;
      Result := FloatToStrF(StrToFloat(Caption),ffCurrency,15,2);
{    if Assigned(Field) then
    begin
      Result := FloatToStrF(Field.AsCurrency,ffCurrency,15,2);
    end;
}
  end;

//  inherited;
//  if csDesigning in ComponentState then Result := '0.00';
end;

end.
