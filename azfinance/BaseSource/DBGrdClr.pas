unit DBGrdClr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids;

type
  TDBGrdClr = class(TDBGrid)
  private
    { Private declarations }
    FOddColor: TColor;
    procedure SetOddColor(const Value: TColor);
  protected
    { Protected declarations }
    procedure DrawColumnCell(const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState); override; //dynamic;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property OddColor : TColor read FOddColor write SetOddColor;
  end;

procedure Register;

implementation
{$R 'DBGrdClr.dcr'}

procedure Register;
begin
  RegisterComponents('GrayTech', [TDBGrdClr]);
end;

{ TDBGrdClr }

constructor TDBGrdClr.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FOddColor := clInfoBk;
  Self.Options := [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit];
end;

procedure TDBGrdClr.DrawColumnCell(const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//  inherited;
  if OddColor <> clWhite then
    if Odd(Self.DataSource.DataSet.RecNo) then
    begin
      if Self.Canvas.Brush.Color = Self.Color then
        Self.Canvas.Brush.Color := OddColor;
      Self.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  inherited;
end;

procedure TDBGrdClr.SetOddColor(const Value: TColor);
begin
  FOddColor := Value;
  //  if (FOddColor=clWhite) then MessageDlg('',mtWarning,[mbOk],0);
end;

end.
