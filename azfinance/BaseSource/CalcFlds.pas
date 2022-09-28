unit CalcFlds;

interface

uses
  Classes, DB;

type
//  TStringField = class(DB.TStringField)
  TIntegerField = class(DB.TIntegerField)
  protected
    function GetCanModify : boolean; override;
  end;

implementation

//function TStringField.GetCanModify: boolean;
function TIntegerField.GetCanModify: boolean;
begin
  Result := not ReadOnly;
end;

end.

