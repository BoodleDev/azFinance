unit fmGTAppSet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBaseGrdClr, Menus, Grids, DBGrids, DBGrdClr, ExtCtrls, ComCtrls,
  ToolWin, Db, fmLookUp;

type
  TfrmGTAppSet = class(TfrmDBBaseGrdClr)
    dtsGTApps: TDataSource;
    btnLUAcc: TToolButton;
    pnlTop: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdBaseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnLUAccClick(Sender: TObject);
  private
    { Private declarations }
    FCurData: TDataSet;
    FLUData: TDataSet;
    procedure SetCurData(const Value: TDataSet);
    procedure DataAfterInsert(DataSet: TDataSet);
    procedure SetLUData(const Value: TDataSet);
  public
    { Public declarations }
    property CurData : TDataSet read FCurData write SetCurData;
    property LUData  : TDataSet read FLUData write SetLUData;
  end;

implementation

uses dmMain;

{$R *.DFM}

{ TfrmGTAppSet }

procedure TfrmGTAppSet.DataAfterInsert(DataSet: TDataSet);
begin
  DataSet.Cancel;
end;

procedure TfrmGTAppSet.SetCurData(const Value: TDataSet);
begin
  FCurData := Value;
  if Assigned(CurData) then
  begin
    dtsGTApps.DataSet := CurData;
    CurData.Close;
    CurData.AfterInsert := DataAfterInsert;
    CurData.Open;
    CurrentDts := dtsGTApps;
  end;
end;

procedure TfrmGTAppSet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Assigned(CurData) then
    CurData.Close;
end;

procedure TfrmGTAppSet.grdBaseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_Delete then
    Abort;
end;

procedure TfrmGTAppSet.btnLUAccClick(Sender: TObject);
var
  frmLU : TfrmLookUp;
  LUres : integer;
begin
  inherited;
  frmLU := TfrmLookUp.Create(nil);
  try
    dtmMain.SetGrdColors(frmLU.grdLookup);
    frmLU.SetLookUpForm(LUData,nil,'Account look up','',True);
    frmLU.ShowModal;
    LUres := frmLU.ChoosenID;
    if LUres <> -1 then
    begin
      CurData.Edit;
      CurData.FieldByName('CtrlAcc').AsInteger := LUres;
      CurData.Post;
    end;
  finally
    frmLU.Free;
  end;
end;

procedure TfrmGTAppSet.SetLUData(const Value: TDataSet);
begin
  FLUData := Value;
  if Assigned(LUData) then
    LUData.Open;
end;

end.
