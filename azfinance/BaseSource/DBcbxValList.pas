unit DBcbxValList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls;

type
  TDBcbxValList = class(TDBComboBox)
  private
    { Private declarations }
    procedure UpdateData(Sender: TObject);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TDBcbxValList]);
end;

{ TDBcbxValList }

constructor TDBcbxValList.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink.OnUpdateData := UpdateData;
end;

destructor TDBcbxValList.Destroy;
begin
  inherited;

end;

procedure TDBcbxValList.UpdateData(Sender: TObject);
begin
  FDataLink.Field.Text := 1;
  t
end;

end.
