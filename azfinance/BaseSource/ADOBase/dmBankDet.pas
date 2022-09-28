unit dmBankDet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TdtmBankDet = class(TDataModule)
    qryBanks: TADOQuery;
    dtsBanks: TDataSource;
    qryBranchN: TADOQuery;
    qryBranchC: TADOQuery;
    qryBankDet: TADOQuery;
    dtsBankDet: TDataSource;
    dtsBranchN: TDataSource;
    dtsBranchC: TDataSource;
    qryBranchNIDVal: TIntegerField;
    qryBranchNBranchCode: TStringField;
    qryBranchNBranchName: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure dtsBanksDataChange(Sender: TObject; Field: TField);
    procedure qryBankDetBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FCurEntID: integer;
    FCurTypeID: integer;
    procedure SetBankDataStatus(Ready: boolean);
    procedure SetCurEntID(const Value: integer);
    procedure SetCurTypeID(const Value: integer);
  public
    { Public declarations }
    property CurEntID : integer read FCurEntID write SetCurEntID;
    property CurTypeID: integer read FCurTypeID write SetCurTypeID;
    procedure SetDBName(conStr : WideString);
  end;

//var
//  dtmBankDet: TdtmBankDet;

implementation

uses dmMain;

{$R *.DFM}

procedure TdtmBankDet.SetDBName(conStr: WideString);
begin
{  if conStr <> '' then
  begin
    Put a connection on for all the queries
    SetBankDataStatus(True);
  end; // if
}
  SetBankDataStatus(True);
end;

procedure TdtmBankDet.SetBankDataStatus(Ready: boolean);
var
  i : integer;
begin
  for i := 0 to Self.ComponentCount-1 do
    if Self.Components[i] is TDataSet then
      TDataSet(Self.Components[i]).Active := Ready;
end;

procedure TdtmBankDet.DataModuleDestroy(Sender: TObject);
begin
  SetBankDataStatus(False);
end;

procedure TdtmBankDet.SetCurEntID(const Value: integer);
begin
  FCurEntID := Value;
  qryBankDet.Close;
  qryBankDet.Parameters[0].Value := FCurEntID;
end;

procedure TdtmBankDet.SetCurTypeID(const Value: integer);
begin
  FCurTypeID := Value;
  qryBankDet.Close;
  qryBankDet.Parameters[1].Value := FCurTypeID;
end;

procedure TdtmBankDet.DataModuleCreate(Sender: TObject);
begin
  FCurEntID  := 0;
  FCurTypeID := 0;
end;

procedure TdtmBankDet.dtsBanksDataChange(Sender: TObject; Field: TField);
begin
  qryBranchN.Parameters[0].Value := qryBanks.FieldByName('BankName').AsString;
  if qryBranchN.Active then
    qryBranchN.Requery;
end;

procedure TdtmBankDet.qryBankDetBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('UserID').AsString := dtmMain.CurrentID;
  if qryBranchC.Locate('RecID',qryBankDet.FieldByName('BrecID').AsInteger,[]) then
  begin
    qryBankDet.FieldByName('EntityID').AsInteger := FCurEntID;
    qryBankDet.FieldByName('TypeID').AsInteger := FCurTypeID;
    qryBankDet.FieldByName('BBranch').AsString := qryBranchC.FieldByName('BranchName').AsString;
    qryBankDet.FieldByName('BBCode').AsString := qryBranchC.FieldByName('BranchCode').AsString;
  end;
end;

end.
