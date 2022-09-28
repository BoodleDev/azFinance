object dtmBatchQuery: TdtmBatchQuery
  OldCreateOrder = False
  Left = 356
  Top = 226
  Height = 479
  Width = 741
  object cdsBatchQry: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBatchQry'
    ReadOnly = True
    Left = 48
    Top = 112
    object cdsBatchQryTransNo: TIntegerField
      FieldName = 'TransNo'
      ReadOnly = True
    end
    object cdsBatchQryBatchNo: TStringField
      FieldName = 'BatchNo'
      FixedChar = True
      Size = 10
    end
    object cdsBatchQryEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object cdsBatchQryLoanID: TIntegerField
      DisplayWidth = 3
      FieldName = 'LoanID'
    end
    object cdsBatchQryTransCode: TIntegerField
      FieldName = 'TransCode'
    end
    object cdsBatchQryEffectDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'EffectDate'
    end
    object cdsBatchQryValueDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'ValueDate'
    end
    object cdsBatchQryPostDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'PostDate'
    end
    object cdsBatchQryAmount: TBCDField
      DisplayWidth = 14
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object cdsBatchQryUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object cdsBatchQryRefNo: TStringField
      FieldName = 'RefNo'
      Size = 12
    end
    object cdsBatchQryRefNo2: TStringField
      FieldName = 'RefNo2'
      Size = 12
    end
  end
  object dspBatchQry: TDataSetProvider
    DataSet = qryBatchQry
    Left = 48
    Top = 64
  end
  object dtsBatchQry: TDataSource
    DataSet = cdsBatchQry
    Left = 48
    Top = 136
  end
  object qryBatchQry: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select TransNo, BatchID, BatchNo, LoanID, EntCode, LoanKey, Tran' +
      'sCode, TransType, EffectDate, ValueDate, PostDate, Amount, UserI' +
      'D, RefNo, RefNo2 from lsBatchHistory'
    Parameters = <>
    Left = 48
    Top = 16
  end
  object qryGetUserID: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 'select distinct(UserID) from lsBatchControl where Status=20'
    Parameters = <>
    Left = 176
    Top = 16
  end
  object qryBatchCtrl: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryBatchCtrlCalcFields
    CommandText = 
      'select BatchID, BatchNo, BatchType,UserID, RequestDate, Status, ' +
      'HashTotal, TotalRecords, TotalErrors, AcceptID, AcceptDate, Proc' +
      'essedID, ProcessedDate '#13#10'from lsBatchControl'
    Parameters = <>
    Left = 192
    Top = 88
    object qryBatchCtrlBatchID: TIntegerField
      FieldName = 'BatchID'
    end
    object qryBatchCtrlBatchNo: TStringField
      FieldName = 'BatchNo'
      FixedChar = True
      Size = 10
    end
    object qryBatchCtrlUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qryBatchCtrlRequestDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'RequestDate'
    end
    object qryBatchCtrlStatus: TSmallintField
      FieldName = 'Status'
    end
    object qryBatchCtrlHashTotal: TBCDField
      DisplayWidth = 15
      FieldName = 'HashTotal'
      currency = True
      Precision = 19
    end
    object qryBatchCtrlTotalRecords: TIntegerField
      FieldName = 'TotalRecords'
    end
    object qryBatchCtrlTotalErrors: TIntegerField
      FieldName = 'TotalErrors'
    end
    object qryBatchCtrlAcceptID: TStringField
      FieldName = 'AcceptID'
      Size = 10
    end
    object qryBatchCtrlAcceptDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'AcceptDate'
    end
    object qryBatchCtrlProcessedID: TStringField
      FieldName = 'ProcessedID'
      Size = 10
    end
    object qryBatchCtrlProcessedDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'ProcessedDate'
    end
    object qryBatchCtrlBatchType: TIntegerField
      FieldName = 'BatchType'
    end
    object qryBatchCtrlBatchDes: TStringField
      FieldKind = fkCalculated
      FieldName = 'BatchDes'
      Size = 10
      Calculated = True
    end
  end
  object qryDetForBC: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'SELECT TR.BatchNo, LD.RefNo AS AccountNo, TR.EntCode, TR.TransCo' +
      'de, TR.TransType, TR.EffectDate,'#13#10'TR.ValueDate, TR.PostDate, TR.' +
      'Amount, TR.UserID, TR.RefNo, TR.RefNo2 '#13#10'FROM lsBatchTrans TR'#13#10'L' +
      'EFT JOIN lsLoanDetail LD ON TR.LoanID = LD.LoanID'
    Parameters = <>
    Left = 192
    Top = 168
    object qryDetForBCBatchNo: TStringField
      DisplayLabel = 'Batch no'
      FieldName = 'BatchNo'
      FixedChar = True
      Size = 10
    end
    object qryDetForBCAccountNo: TStringField
      DisplayLabel = 'Account No.'
      FieldName = 'AccountNo'
      Size = 15
    end
    object qryDetForBCEntCode: TStringField
      DisplayLabel = 'Code'
      FieldName = 'EntCode'
      Size = 10
    end
    object qryDetForBCTransCode: TIntegerField
      DisplayLabel = 'Trans code'
      FieldName = 'TransCode'
    end
    object qryDetForBCEffectDate: TDateTimeField
      DisplayLabel = 'Effect date'
      DisplayWidth = 10
      FieldName = 'EffectDate'
    end
    object qryDetForBCAmount: TBCDField
      DisplayWidth = 10
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryDetForBCUserID: TStringField
      DisplayWidth = 10
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object qryDetForBCRefNo: TStringField
      DisplayWidth = 10
      FieldName = 'RefNo'
      FixedChar = True
      Size = 10
    end
    object qryDetForBCRefNo2: TStringField
      FieldName = 'RefNo2'
      Size = 10
    end
    object qryDetForBCValueDate: TDateTimeField
      FieldName = 'ValueDate'
    end
    object qryDetForBCPostDate: TDateTimeField
      FieldName = 'PostDate'
    end
    object qryDetForBCTransType: TSmallintField
      FieldName = 'TransType'
      Visible = False
    end
  end
  object ExportData1: TExportData
    ShowMessageComplete = False
    RunExport = False
    DoExportLine = False
    VisibleFldOnly = False
    Left = 48
    Top = 200
  end
  object dtsBatchCtrl: TDataSource
    DataSet = qryBatchCtrl
    Left = 192
    Top = 109
  end
  object dtsDetForBC: TDataSource
    DataSet = qryDetForBC
    Left = 192
    Top = 189
  end
end
