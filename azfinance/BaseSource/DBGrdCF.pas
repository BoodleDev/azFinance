unit DBGrdCF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, DB;

type
  TDBGrdCF = class(TDBGrid)
  private
    { Private declarations }
    FOddColor: TColor;
    FSelFld: string;
    FSelFldLbl: TLabel;
    FSelColor: TColor;
    FSelColorFont: TColor;
    FCurLUstr: string;
    procedure SetOddColor(const Value: TColor);
    procedure SetSelFldLbl(const Value: TLabel);
    procedure SetSelColor(const Value: TColor);
    procedure SetSelColorFont(const Value: TColor);
    procedure SetCurLUstr(const Value: string);
  protected
    { Protected declarations }
    procedure DrawColumnCell(const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState); override; //dynamic;
    procedure ColEnter; override;
    procedure ColExit; override;
    procedure KeyPress(var Key: Char); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property OddColor : TColor read FOddColor write SetOddColor;
    property SelFld : string read FSelFld;
    property SelFldLbl : TLabel read FSelFldLbl write SetSelFldLbl;
    property SelColor : TColor read FSelColor write SetSelColor;
    property SelColorFont : TColor read FSelColorFont write SetSelColorFont;
    property CurLUstr : string read FCurLUstr write SetCurLUstr;
  end;

procedure Register;

implementation
{$R 'DBGrdCF.dcr'}

procedure Register;
begin
  RegisterComponents('GrayTech', [TDBGrdCF]);
end;

{ TDBGrdCF }

procedure TDBGrdCF.ColEnter;
begin
  inherited;
  FSelFld := Self.SelectedField.FieldName;
  if Assigned(SelFldLbl) then
    SelFldLbl.Caption := Self.Columns[Self.SelectedIndex].Title.Caption;
  Self.Columns[Self.SelectedIndex].Title.Color := SelColor;
  Self.Columns[Self.SelectedIndex].Title.Font.Color := SelColorFont;
end;

procedure TDBGrdCF.ColExit;
begin
  inherited;
  Self.Columns[Self.SelectedIndex].Title.Color := Self.FixedColor;
  Self.Columns[Self.SelectedIndex].Title.Font.Color := Self.TitleFont.Color;
end;

constructor TDBGrdCF.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FOddColor := clInfoBk;
  FSelColor := clNavy;
  FSelColorFont := clWhite;
  FCurLUstr := '';
  Self.Options := [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit];
end;

procedure TDBGrdCF.DrawColumnCell(const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
begin
  if OddColor <> clWhite then
    if Odd(Self.DataSource.DataSet.RecNo) then
    begin
      if Self.Canvas.Brush.Color = Self.Color then
        Self.Canvas.Brush.Color := OddColor;
      Self.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  inherited;
end;

procedure TDBGrdCF.KeyPress(var Key: Char);
begin
  inherited;
  if Length(FCurLUstr) > 20 then
    FCurLUstr := '';
  if Assigned(Self.DataSource.DataSet) then
    if Self.DataSource.DataSet.State = dsBrowse then
      FCurLUstr := FCurLUstr + Key;
end;

procedure TDBGrdCF.SetCurLUstr(const Value: string);
begin
  FCurLUstr := Value;
end;

procedure TDBGrdCF.SetOddColor(const Value: TColor);
begin
  FOddColor := Value;
  //  if (FOddColor=clWhite) then MessageDlg('',mtWarning,[mbOk],0);
end;

procedure TDBGrdCF.SetSelColor(const Value: TColor);
begin
  FSelColor := Value;
end;

procedure TDBGrdCF.SetSelColorFont(const Value: TColor);
begin
  FSelColorFont := Value;
end;

procedure TDBGrdCF.SetSelFldLbl(const Value: TLabel);
begin
  FSelFldLbl := Value;
end;

end.
