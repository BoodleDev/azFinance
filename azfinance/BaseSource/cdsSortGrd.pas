unit cdsSortGrd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBClient, DB, StdCtrls, DBGrdCF;

type
  TcdsSortGrd = class(TDBGrdCF)
  private
    { Private declarations }
    SortOrder : boolean;
    iCurCol : integer;
    iCurDesc: string;
    FCurFldSort: string;
    FSortFldTitle: string;
    FSortLabel: TLabel;
    procedure SetIndexForCDS(cdsData: TClientDataSet; inFldName: string);
  protected
    { Protected declarations }
    procedure TitleClick(Column: TColumn); override;
  public
    { Public declarations }
  published
    { Published declarations }
    property CurFldSort : string read FCurFldSort;
    property SortFldTitle   : string read FSortFldTitle;
    property SortLabel      : TLabel read FSortLabel write FSortLabel;
  end;

procedure Register;

implementation
{$R 'cdsSortGrd.dcr'}

procedure Register;
begin
  RegisterComponents('GrayTech', [TcdsSortGrd]);
end;

{ TcdsSortGrd }

procedure TcdsSortGrd.SetIndexForCDS(cdsData: TClientDataSet;
  inFldName: string); // copied from Unit32
var
  idxno : integer;
  TheIndexName : string;
begin
  cdsData.IndexDefs.Update;
  if SortOrder then
    TheIndexName := 'i_'+inFldName
  else
    TheIndexName := 'i_'+inFldName+'d';
  idxno := cdsData.IndexDefs.IndexOf(TheIndexName);
  if idxno = -1 then
  begin
    if SortOrder then
      cdsData.IndexDefs.Add(TheIndexName,inFldName,[])
    else
      cdsData.IndexDefs.Add(TheIndexName,inFldName,
        [ixDescending,ixCaseInsensitive]);
  end;
  cdsData.IndexName := TheIndexName;
end;

procedure TcdsSortGrd.TitleClick(Column: TColumn);
begin
  inherited;
  if Assigned(DataSource.DataSet) and
    (DataSource.DataSet is TClientDataSet) then
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
    if (DataSource.DataSet as TClientDataSet).Active then
    begin
      case Column.Field.FieldKind of
        fkData : SetIndexForCDS(TClientDataSet(DataSource.DataSet),Column.FieldName);
        fkCalculated : SetIndexForCDS(TClientDataSet(DataSource.DataSet),Column.Field.Origin);
      end;
      FCurFldSort := Column.FieldName;
      FSortFldTitle   := Column.Title.Caption;
      if Assigned(SortLabel) then
        SortLabel.Caption := Column.Title.Caption;
//      Column.Title.Color := clTeal;
    end;
  end;
end;

end.
