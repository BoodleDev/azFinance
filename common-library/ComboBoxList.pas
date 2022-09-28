unit ComboBoxList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TComboBoxList = class(TComboBox)
  private
    FItemName: String;
    FItemValue: String;
    procedure SetItemName(const Value: String);
    procedure SetItemValue(const Value: String);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    property ItemName: String read FItemName write SetItemName;
    property ItemValue: String read FItemValue write SetItemValue;
    procedure Change; override;
    procedure DrawItem(Index: Integer; Rect: TRect;
      State: TOwnerDrawState); override;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TComboBoxList]);
end;

{ TComboBoxList }

procedure TComboBoxList.Change;
begin
  FItemName := Self.Items.Names[Self.ItemIndex];
  FItemValue  := Self.Items.Values[ItemName];
  inherited Changed;
end;

constructor TComboBoxList.Create(AOwner: TComponent);
begin
  inherited;
  Self.Style := csOwnerDrawFixed;
  self.ItemHeight := 15;
end;

procedure TComboBoxList.DrawItem(Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
begin
  Self.Canvas.FillRect(Rect);
  Self.Canvas.TextOut(Rect.Left + 2, Rect.Top + 1,
    Self.Items.Names[Index]);
end;

procedure TComboBoxList.SetItemName(const Value: String);
begin
  FItemName := Value;
end;

procedure TComboBoxList.SetItemValue(const Value: String);
begin
  FItemValue := Value;
end;

end.
