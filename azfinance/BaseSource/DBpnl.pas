unit DBpnl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls;

type
  TDBEdtDbt = class(TDBEdit)
  private
    { Private declarations }
    FAssociateDBT: TDBText;
    procedure SetAssociateDBT(const Value: TDBText);
    procedure SetAstDbtLT;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property AssociateDBT: TDBText read FAssociateDBT write SetAssociateDBT;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TDBEdtDbt]);
end;

{ TDBEdtDbt }

constructor TDBEdtDbt.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TDBEdtDbt.Destroy;
begin
  inherited Destroy;
end;

procedure TDBEdtDbt.SetAstDbtLT;
begin
  AssociateDBT.Left := Self.Left;
  AssociateDBT.Top  := Self.Top-10;
end;

procedure TDBEdtDbt.SetAssociateDBT(const Value: TDBText);
begin
  FAssociateDBT := Value;
  //
  if Assigned(FAssociateDBT) then
  begin
    SetAstDbtLT;
  end;
end;

end.
