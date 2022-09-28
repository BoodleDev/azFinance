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
    qryBankDetEntityID: TIntegerField;
    qryBankDetTypeID: TSmallintField;
    qryBankDetBrecID: TIntegerField;
    qryBankDetBName: TStringField;
    qryBankDetBBranch: TStringField;
    qryBankDetBBCode: TStringField;
    qryBankDetAccNo: TStringField;
    qryBankDetAccName: TStringField;
    qryBankDetAccType: TSmallintField;
    qryBankDetDateOpen: TDateTimeField;
    qryBankDetUserID: TStringField;
    qryBankDetsAccType: TStringField;
    qryBankDetBranch: TStringField;
    dsBranchCode: TADODataSet;
    dsBankCDV: TADODataSet;
    qryBankInactive: TADOQuery;
    IntegerField1: TIntegerField;
    SmallintField1: TSmallintField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    SmallintField2: TSmallintField;
    DateTimeField1: TDateTimeField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    dtsBankInactive: TDataSource;
    cmdCopyToActive: TADOCommand;
    qryBankInactiveActive: TWordField;
    qryBankDetActive: TWordField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure dtsBanksDataChange(Sender: TObject; Field: TField);
    procedure qryBankDetBeforePost(DataSet: TDataSet);
    procedure qryBankDetCalcFields(DataSet: TDataSet);
    procedure qryBankInactiveBeforePost(DataSet: TDataSet);
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
    procedure CopyToActive;
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
    qryBankDet.FieldByName('Active').AsInteger := 1;
    qryBankDet.FieldByName('BBranch').AsString := qryBranchC.FieldByName('BranchName').AsString;
    qryBankDet.FieldByName('BBCode').AsString := qryBranchC.FieldByName('BranchCode').AsString;
  end;
end;

procedure TdtmBankDet.qryBankDetCalcFields(DataSet: TDataSet);
var
  sAccType: String;
begin
  DataSet.FieldByName('Branch').AsString :=
    DataSet.FieldByName('BBCode').AsString + '  ' +
    DataSet.FieldByName('BBranch').AsString;

  case DataSet.FieldByName('AccType').AsInteger of
    0:  sAccType := 'Cheque / Current account';
    1:  sAccType := 'Savings account';
    2:  sAccType := 'Transmission account';
    3:  sAccType := 'Bond account';
    4:  sAccType := 'Credit card account'
  end;  
  DataSet.FieldByName('sAccType').AsString := sAccType;
end;

procedure TdtmBankDet.CopyToActive;
begin
  cmdCopyToActive.Parameters[0].Value := CurEntID;
  cmdCopyToActive.Execute;
end;

procedure TdtmBankDet.qryBankInactiveBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('UserID').AsString := dtmMain.CurrentID;
  if qryBranchC.Locate('RecID',DataSet.FieldByName('BrecID').AsInteger,[]) then
  begin
    DataSet.FieldByName('EntityID').AsInteger := FCurEntID;
    DataSet.FieldByName('TypeID').AsInteger := FCurTypeID;
    DataSet.FieldByName('Active').AsInteger := 0;
    DataSet.FieldByName('BBranch').AsString := qryBranchC.FieldByName('BranchName').AsString;
    DataSet.FieldByName('BBCode').AsString := qryBranchC.FieldByName('BranchCode').AsString;
  end;
end;

end.
