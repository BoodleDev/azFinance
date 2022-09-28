unit ADOgrdCFS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBGrdCF, DB, ADOdb;

type
  TADOgrdCFS = class(TDBGrdCF)
  private
    { Private declarations }
    iCurCol : integer;
    iCurDesc: string;
    SortOrder : boolean;
    FFixFields: string;
    procedure SetIndexForADO(FldName: string);
    procedure SetFixFields(const Value: string);
  protected
    { Protected declarations }
    procedure TitleClick(Column: TColumn); override;
  public
    { Public declarations }
  published
    { Published declarations }
    property FixFields : string read FFixFields write SetFixFields;
  end;

procedure Register;

implementation
{$R 'ADOgrdCFS.dcr'}

procedure Register;
begin
  RegisterComponents('GrayTech', [TADOgrdCFS]);
end;

{ TADOgrdCFS }

procedure TADOgrdCFS.SetFixFields(const Value: string);
begin
  FFixFields := Value;
end;

procedure TADOgrdCFS.SetIndexForADO(FldName: string);
var
  tmpInd : string;
begin
  tmpInd := FldName;
  if not SortOrder then
    tmpInd := tmpInd +' DESC';
  if Trim(FixFields) <> '' then
    tmpInd := tmpInd+','+FixFields;
  (DataSource.DataSet as TADODataSet).IndexFieldNames := tmpInd;
end;

procedure TADOgrdCFS.TitleClick(Column: TColumn);
begin
  inherited;
  if Assigned(DataSource.DataSet) and
    (DataSource.DataSet is TADODataSet) then
  begin
    if (DataSource.DataSet as TADODataSet).CursorLocation = clUseClient then
    begin
      if Trim(iCurDesc) <> '' then
        Self.Columns[iCurCol].Title.Caption := iCurDesc;
      iCurCol  := Column.Index;
      iCurDesc := Column.Title.Caption;
      SortOrder := not SortOrder;
      if SortOrder then
        Self.Columns[iCurCol].Title.Caption := iCurDesc+ ' ~a'
      else
        Self.Columns[iCurCol].Title.Caption := iCurDesc+ ' ~z';
      //  
      if DataSource.DataSet.Active then
      begin
        case Column.Field.FieldKind of
          fkData : SetIndexForADO(Column.FieldName);
          fkCalculated : SetIndexForADO(Column.Field.Origin);
        end;
{        FCurFldSort := Column.FieldName;
        FSortFldTitle   := Column.Title.Caption;
        if Assigned(SortLabel) then
          SortLabel.Caption := Column.Title.Caption; }
      end;
    end;
  end;
end;

end.
