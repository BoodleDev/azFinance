unit EdtFilter;
{===============================================================================
 Programmer             : Wynand Wessels
 Date                   : xx/xx/2001
 Unit                   :
 PreConditions          : none.
 PostConditions         : none.
 History                :
 ==============================================================================}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TqType = (tqStr,tqInt,tqDec);
  TEdtFilter = class(TEdit)
  private
    { Private declarations }
    FfeActive: Boolean;
    FfeOperator: String;
    FfeWildCard: String;
    FfeDataField: String;
    FfeFilterStr: String;
    FfeType: TqType;
    procedure SetfeActive(const Value: Boolean);
    procedure SetfeDataField(const Value: String);
    procedure SetfeOperator(const Value: String);
    procedure SetfeType(const Value: TqType);
    procedure SetfeWildCard(const Value: String);
    function  GetStrQuot(inVal:String):String;
  protected
    { Protected declarations }
    procedure Change; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property feDataField : String read FfeDataField write SetfeDataField;
    property feOperator : String read FfeOperator write SetfeOperator;
    property feWildCard :String read FfeWildCard write SetfeWildCard;
    property feType : TqType read FfeType write SetfeType;
    property feFilterStr : String read FfeFilterStr;
    property feActive : Boolean read FfeActive write SetfeActive;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TEdtFilter]);
end;

{ TEdtFilter }

procedure TEdtFilter.Change;
begin
  FfeFilterStr := feDataField + ' ' + feOperator + ' ' +
                  GetStrQuot(Self.Text+feWildCard);
  inherited;
end;

constructor TEdtFilter.Create(AOwner: TComponent);
begin
  inherited;
end;

function TEdtFilter.GetStrQuot(inVal: String): String;
begin
  if feType = tqStr then
    result := QuotedStr(inVal)
  else
    result := inVal;
end;

procedure TEdtFilter.SetfeActive(const Value: Boolean);
begin
  FfeActive := Value;
end;

procedure TEdtFilter.SetfeDataField(const Value: String);
begin
  FfeDataField := Value;
end;

procedure TEdtFilter.SetfeOperator(const Value: String);
begin
  FfeOperator := Value;
end;

procedure TEdtFilter.SetfeType(const Value: TqType);
begin
  FfeType := Value;
end;

procedure TEdtFilter.SetfeWildCard(const Value: String);
begin
  FfeWildCard := Value;
end;

end.
