unit dmBatchQuery;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Provider, DBClient, ADODB, Unit32, ExportData;

type
  TdtmBatchQuery = class(TDataModule)
    cdsBatchQry: TClientDataSet;
    dspBatchQry: TDataSetProvider;
    dtsBatchQry: TDataSource;
    qryBatchQry: TADODataSet;
    qryGetUserID: TADODataSet;
    qryBatchCtrl: TADODataSet;
    qryDetForBC: TADODataSet;
    qryDetForBCBatchNo: TStringField;
    qryDetForBCTransCode: TIntegerField;
    qryDetForBCEffectDate: TDateTimeField;
    qryDetForBCAmount: TBCDField;
    qryDetForBCUserID: TStringField;
    qryDetForBCRefNo: TStringField;
    ExportData1: TExportData;
    dtsBatchCtrl: TDataSource;
    dtsDetForBC: TDataSource;
    cdsBatchQryTransNo: TIntegerField;
    cdsBatchQryBatchNo: TStringField;
    cdsBatchQryEntCode: TStringField;
    cdsBatchQryLoanID: TIntegerField;
    cdsBatchQryTransCode: TIntegerField;
    cdsBatchQryEffectDate: TDateTimeField;
    cdsBatchQryValueDate: TDateTimeField;
    cdsBatchQryPostDate: TDateTimeField;
    cdsBatchQryAmount: TBCDField;
    cdsBatchQryUserID: TStringField;
    cdsBatchQryRefNo: TStringField;
    cdsBatchQryRefNo2: TStringField;
    qryBatchCtrlBatchID: TIntegerField;
    qryBatchCtrlBatchNo: TStringField;
    qryBatchCtrlUserID: TStringField;
    qryBatchCtrlRequestDate: TDateTimeField;
    qryBatchCtrlStatus: TSmallintField;
    qryBatchCtrlHashTotal: TBCDField;
    qryBatchCtrlTotalRecords: TIntegerField;
    qryBatchCtrlTotalErrors: TIntegerField;
    qryBatchCtrlAcceptID: TStringField;
    qryBatchCtrlAcceptDate: TDateTimeField;
    qryBatchCtrlProcessedID: TStringField;
    qryBatchCtrlProcessedDate: TDateTimeField;
    qryDetForBCEntCode: TStringField;
    qryDetForBCValueDate: TDateTimeField;
    qryDetForBCPostDate: TDateTimeField;
    qryDetForBCRefNo2: TStringField;
    qryBatchCtrlBatchDes: TStringField;
    qryBatchCtrlBatchType: TIntegerField;
    qryDetForBCTransType: TSmallintField;
    qryDetForBCAccountNo: TStringField;
    procedure qryBatchCtrlCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenBatchQry(TblToQry, strQuery: string);
    procedure AddComboList(DataSetToAdd:TADODataSet;FldToUse:string;
      OutPutList:TStrings);
    procedure GetDetailForBatchControl;
    procedure GetDetailForBatchNoParent(inTblName : string);
  end;

var
  dtmBatchQuery: TdtmBatchQuery;

implementation

uses dmMain, uLSConst;

{$R *.DFM}

{ TdtmBatchQuery }

procedure TdtmBatchQuery.AddComboList(DataSetToAdd: TADODataSet;
  FldToUse: string; OutPutList: TStrings);
begin
  OutPutList.Clear;
  OutPutList.Add('All');
  DataSetToAdd.Open;
  DataSetToAdd.First;
  while not DataSetToAdd.Eof do
  begin
    OutPutList.Add(DataSetToAdd.FieldByName(FldToUse).AsString);
    DataSetToAdd.Next;
  end;
  DataSetToAdd.Close;
end;

procedure TdtmBatchQuery.OpenBatchQry(TblToQry, strQuery: string);
var
  strSQL : string;
begin
  try
    Screen.Cursor := crHourGlass;
    strSQL := 'select TransNo,BatchID,BatchNo,LoanID,EntCode,'+
      'TransCode,TransType,EffectDate,ValueDate,PostDate,Amount,UserID,'+
      'RefNo,RefNo2 from '+TblToQry;
    if Trim(strQuery) <> '' then
      strSQL := strSQL + ' where '+strQuery;
    cdsBatchQry.Close;
    qryBatchQry.Close;
    qryBatchQry.CommandText := strSQL;
    qryBatchQry.Open;
    cdsBatchQry.Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TdtmBatchQuery.GetDetailForBatchControl;
var
  BuildSQL : string;
begin
  BuildSQL := '';
  qryDetForBC.Close;
  BuildSQL := 'SELECT TR.BatchNo, LD.RefNo AS AccountNo, ED.EntCode, TR.TransCode, TR.TransType, TR.EffectDate,'+
   'TR.ValueDate, TR.PostDate, TR.Amount, TR.UserID, TR.RefNo, TR.RefNo2 FROM ';
  if qryBatchCtrl.FieldByName('Status').AsInteger = bsProcess then
    BuildSQL := BuildSQL + 'lsBatchHistory TR'
  else
    BuildSQL := BuildSQL + 'lsBatchTrans TR';

  BuildSQL := BuildSQL + ' LEFT JOIN lsLoanDetail LD ON TR.LoanID = LD.LoanID';
  BuildSQL := BuildSQL + ' LEFT JOIN  EntityData ED ON LD.EntityID = ED.EntityID';
  BuildSQL := BuildSQL + ' WHERE BatchID='+IntToStr(qryBatchCtrl.FieldByName('BatchID').AsInteger);
  qryDetForBC.CommandText := BuildSQL;
  try
    qryDetForBC.Open
  except
    MesDlg('Could not get detail for Batch','E');
  end;
end;

procedure TdtmBatchQuery.GetDetailForBatchNoParent(inTblName : string);
begin
  qryDetForBC.Close;
  qryDetForBC.CommandText :=
    'SELECT TR.BatchNo, LD.RefNo AS AccountNo, ED.EntCode, TR.TransCode, TR.TransType, TR.EffectDate,'+
    'TR.ValueDate, TR.PostDate, TR.Amount, TR.UserID, TR.RefNo, TR.RefNo2 from ' + inTblName + ' TR ' +
    'LEFT JOIN lsLoanDetail LD ON TR.LoanID = LD.LoanID ' +
    'LEFT JOIN EntityData ED ON LD.EntityID = ED.EntityID';
  try
    qryDetForBC.Open
  except
    MesDlg('Could not get detail for Batch','E');
  end;
end;

procedure TdtmBatchQuery.qryBatchCtrlCalcFields(DataSet: TDataSet);
begin
  case DataSet.FieldByName('BatchType').AsInteger of
    btUser    : DataSet.FieldByName('BatchDes').AsString := 'User';
    btSystem  : DataSet.FieldByName('BatchDes').AsString := 'System';
    btSuspense: DataSet.FieldByName('BatchDes').AsString := 'Suspense';
    btImex    : DataSet.FieldByName('BatchDes').AsString := 'Imex';
    btCAM     : DataSet.FieldByName('BatchDes').AsString := 'CAM';
  end;
end;

end.
