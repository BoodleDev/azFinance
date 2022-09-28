unit PackDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl, DB, DBTables, BDE, Gauges;

type
  TPackDB = class(TComponent)
  private
    { Private declarations }
    Table : TTable;
    FgugProg: TGauge;
    flbToPack: TFileListBox;
    FDBDirectory: string;
    FPackDBNow: Boolean;
    FShowMes: Boolean;
    procedure RestructureTable;
    procedure PackTheDB;
    procedure SetDBDirectory(const Value: string);
    procedure SetPackDBNow(const Value: Boolean);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property gugProg : TGauge read FgugProg write FgugProg;
    property DBDirectory: string read FDBDirectory write SetDBDirectory;
    property PackDBNow : Boolean read FPackDBNow write SetPackDBNow;
    property ShowMes: Boolean read FShowMes write FShowMes;
  end;

procedure Register;

implementation
{$R 'PackDB.dcr'}

procedure Register;
begin
  RegisterComponents('GrayTech', [TPackDB]);
end;

{ TflbPackDB }

constructor TPackDB.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  PackDBNow := False;
  ShowMes   := False;
  flbToPack := TFileListBox.Create(self);
  flbToPack.Mask := '*.db';
end;

destructor TPackDB.Destroy;
begin
  inherited;
  //
end;

procedure TPackDB.PackTheDB;
var
 i : integer;
begin
  if Assigned(gugProg) then
  begin
    gugProg.MaxValue := flbToPack.Items.Count;
    gugProg.Progress := 0;
  end;
  Table.DatabaseName := flbToPack.Directory;
  for i := 0 to flbToPack.Items.Count -1 do
  begin
    Table.TableName := flbToPack.Items[i];
    RestructureTable;
    Application.ProcessMessages;
    if Assigned(gugProg) then
      gugProg.Progress := gugProg.Progress + 1;
  end;
  if Assigned(gugProg) then
    gugProg.Progress := gugProg.MaxValue;
  PackDBNow := False;
  if ShowMes then
    MessageDlg('Pack completed.',mtInformation,[mbOk],0);
end;

procedure TPackDB.RestructureTable;
var
  hDb: hDBIDb;
  TblDesc: CRTblDesc;
  Props: CurProps;
//  pFDesc: FLDDesc;
begin
  Table.Open;
  // Get the table properties.
  Check(DbiGetCursorProps(Table.Handle, Props));
  // Get the database handle.
  Check(DbiGetObjFromObj(hDBIObj(Table.Handle), objDATABASE, hDBIObj(hDb)));
  // Setup the Table descriptor for DbiDoRestructure
  Table.Close;
  FillChar(TblDesc, SizeOf(TblDesc), #0);
  StrPCopy(TblDesc.szTblName, Table.Tablename);
  StrCopy(TblDesc.szTblType, szParadox);
  TblDesc.bPack := True;
  // The optional parameters are passed in through the FLDDesc structure.
  //   It is possible to change many Options at one time by using a pointer
  //   to a FLDDesc (pFLDDesc) and allocating memory for the structure.
(*  pFDesc.iOffset := 0;
  pFDesc.iLen := Length('BLOCK SIZE') + 1;
  StrPCopy(pFDesc.szName, IntToStr(BlockSize));
  // The changed values of the optional parameters are in a contiguous memory
  //   space.  Sonce only one parameter is being used, the OptData variable
  //   can be used as a contiguous memory space.
  TblDesc.iOptParams := 1;  // Only one optional parameter
  TblDesc.pFldOptParams := @pFDesc;
  TblDesc.pOptData := @OptData[1];
*)
  // Restructure the table with the new parameter.
  Check(DbiDoRestructure(hDb, 1, @TblDesc, nil, nil, nil, False));
end;

procedure TPackDB.SetDBDirectory(const Value: string);
begin
  FDBDirectory := Value;
  flbToPack.Directory := Value;
end;

procedure TPackDB.SetPackDBNow(const Value: Boolean);
begin
  FPackDBNow := Value;
  if Value then
    PackTheDB;
end;

end.
