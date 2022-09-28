object dtmBatchSusp: TdtmBatchSusp
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 269
  Top = 197
  Height = 425
  Width = 662
  object qryTransType: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT TransCode, TransType, Description, DefaultVal'#13#10'FROM Trans' +
      'setup'#13#10'WHERE AppID=100'#13#10'AND TransType = :TransType'#13#10'AND NotUse =' +
      ' 0'
    Parameters = <
      item
        Name = 'TransType'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    Left = 32
    Top = 16
  end
  object qrySuspTrans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = qrySuspTransAfterOpen
    AfterInsert = qrySuspTransAfterInsert
    CommandText = 
      'select TransNo, BatchId, BatchNo, LoanId,EntityID,EntCode, Trans' +
      'Code, TransType, TransDate, EffectDate, ValueDate, Amount, UserI' +
      'd, RefNo,RefNo2,Processed'#13#10'from lsBatchTrans'#13#10'where LoanId = -1'
    Parameters = <>
    Left = 128
    Top = 16
    object qrySuspTransTransNo: TAutoIncField
      FieldName = 'TransNo'
      ReadOnly = True
    end
    object qrySuspTransBatchId: TIntegerField
      FieldName = 'BatchId'
    end
    object qrySuspTransBatchNo: TStringField
      FieldName = 'BatchNo'
      FixedChar = True
      Size = 10
    end
    object qrySuspTransLoanId: TIntegerField
      FieldName = 'LoanId'
    end
    object qrySuspTransEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object qrySuspTransEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object qrySuspTransTransCode: TIntegerField
      FieldName = 'TransCode'
    end
    object qrySuspTransTransDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'TransDesc'
      LookupDataSet = qryTransType
      LookupKeyFields = 'TransCode'
      LookupResultField = 'Description'
      KeyFields = 'TransCode'
      LookupCache = True
      Size = 25
      Lookup = True
    end
    object qrySuspTransTransType: TSmallintField
      FieldName = 'TransType'
    end
    object qrySuspTransTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object qrySuspTransEffectDate: TDateTimeField
      FieldName = 'EffectDate'
    end
    object qrySuspTransValueDate: TDateTimeField
      FieldName = 'ValueDate'
    end
    object qrySuspTransAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object qrySuspTransUserId: TStringField
      FieldName = 'UserId'
      Size = 10
    end
    object qrySuspTransRefNo: TStringField
      FieldName = 'RefNo'
      Size = 10
    end
    object qrySuspTransRefNo2: TStringField
      FieldName = 'RefNo2'
      Size = 10
    end
    object qrySuspTransProcessed: TBooleanField
      FieldName = 'Processed'
    end
  end
  object dtsSuspTrans: TDataSource
    DataSet = qrySuspTrans
    Left = 128
    Top = 32
  end
  object qryBatchHistory: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = qryBatchHistoryAfterOpen
    OnCalcFields = qryBatchHistoryCalcFields
    CommandText = 
      'SELECT TransNo, BatchId, BatchNo, LoanId, EntCode, BH.TransCode,' +
      ' BH.TransType, '#13#10'TS.Description,Cast(Cast(TransDate as Char(11))' +
      ' as DateTime) as TransDate, EffectDate, ValueDate, '#13#10'PostDate, A' +
      'mount, AmtPost, BH.UserId, RefNo, Refno2, Processed'#13#10'FROM lsBatc' +
      'hHistory BH'#13#10'LEFT JOIN TransSetup TS on BH.TransCode = TS.TransC' +
      'ode'#13#10'WHERE LoanId = -1'#13#10'AND TransNo not in'#13#10'(SELECT (LinkID1)'#13#10'F' +
      'ROM lsBatchTrans'#13#10'WHERE LoanID = -2'#13#10'UNION'#13#10'SELECT DISTINCT(Link' +
      'ID1)'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = -2)'
    Parameters = <>
    Left = 32
    Top = 88
    object qryBatchHistoryTransNo: TAutoIncField
      FieldName = 'TransNo'
      ReadOnly = True
    end
    object qryBatchHistoryBatchId: TIntegerField
      FieldName = 'BatchId'
    end
    object qryBatchHistoryBatchNo: TStringField
      FieldName = 'BatchNo'
      FixedChar = True
      Size = 10
    end
    object qryBatchHistoryLoanId: TIntegerField
      FieldName = 'LoanId'
    end
    object qryBatchHistoryEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object qryBatchHistoryTransCode: TIntegerField
      FieldName = 'TransCode'
    end
    object qryBatchHistoryTransType: TSmallintField
      FieldName = 'TransType'
    end
    object qryBatchHistoryDescription: TStringField
      FieldName = 'Description'
      Size = 25
    end
    object qryBatchHistoryTransDate: TDateTimeField
      FieldName = 'TransDate'
    end
    object qryBatchHistoryEffectDate: TDateTimeField
      FieldName = 'EffectDate'
    end
    object qryBatchHistoryValueDate: TDateTimeField
      FieldName = 'ValueDate'
    end
    object qryBatchHistoryPostDate: TDateTimeField
      FieldName = 'PostDate'
    end
    object qryBatchHistoryAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object qryBatchHistoryAmtPost: TBCDField
      FieldName = 'AmtPost'
      Precision = 19
    end
    object qryBatchHistoryUserId: TStringField
      FieldName = 'UserId'
      Size = 10
    end
    object qryBatchHistoryRefNo: TStringField
      FieldName = 'RefNo'
      Size = 10
    end
    object qryBatchHistoryRefno2: TStringField
      FieldName = 'Refno2'
      Size = 10
    end
    object qryBatchHistoryProcessed: TBooleanField
      FieldName = 'Processed'
    end
    object qryBatchHistoryAllocated: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Allocated'
      Calculated = True
    end
  end
  object dtsBatchHistory: TDataSource
    DataSet = qryBatchHistory
    Left = 32
    Top = 104
  end
  object cdsLnAlloc: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsLnAllocAfterPost
    Left = 128
    Top = 96
    object cdsLnAllocTransNo: TIntegerField
      FieldName = 'TransNo'
    end
    object cdsLnAllocLoanId: TIntegerField
      FieldName = 'LoanId'
    end
    object cdsLnAllocRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object cdsLnAllocRefNo2: TStringField
      FieldName = 'RefNo2'
      Size = 10
    end
    object cdsLnAllocEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object cdsLnAllocEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object cdsLnAllocAmount: TCurrencyField
      FieldName = 'Amount'
    end
    object cdsLnAllocEffectDate: TDateField
      FieldName = 'EffectDate'
    end
    object cdsLnAllocValueDate: TDateTimeField
      FieldName = 'ValueDate'
    end
    object cdsLnAllocSuspCode: TIntegerField
      FieldName = 'SuspCode'
    end
    object cdsLnAllocLoanCode: TIntegerField
      FieldName = 'LoanCode'
    end
  end
  object qryLoans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT CAST(LoanID AS varchar(10)) AS LoanID, ED.EntityID, ED.En' +
      'tCode, Name, Name2 AS Surname, LoanType, RefNo AS LoanNo,'#13#10'dbo.F' +
      'GetLoanStatusName(LD.Status) AS sStatus, LD.Status'#13#10'FROM lsLoanD' +
      'etail LD'#13#10'LEFT JOIN EntityData ED on LD.EntityID = ED.EntityID'
    Parameters = <>
    Left = 32
    Top = 176
  end
  object dtsLnAlloc: TDataSource
    DataSet = cdsLnAlloc
    Left = 128
    Top = 112
  end
  object qryBatchTrans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'select TransNo, BatchId, BatchNo, LoanId,EntityID,EntCode, Trans' +
      'Code, TransType, TransDate, EffectDate, ValueDate, PostDate, Amo' +
      'unt, UserId, RefNo,RefNo2, Processed, LinkID1'#13#10'from lsBatchTrans' +
      ' '
    Parameters = <>
    Left = 224
    Top = 16
  end
  object cmdSetLoanID: TADOCommand
    CommandText = 
      'update  lsBatchHistory Set LoanId = -2'#13#10'where TransNo = :InTrans' +
      'No'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'InTransNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 224
    Top = 88
  end
  object cmdProcessBatch: TADOCommand
    CommandText = 'lsProcessBatch;1'
    CommandType = cmdStoredProc
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@BatchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@inUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 320
    Top = 80
  end
  object cmdBeforePost: TADOCommand
    CommandText = 'lsBatchBeforePost;1'
    CommandType = cmdStoredProc
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@BatchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 320
    Top = 16
  end
  object qryCurBatches: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select BatchNo from lsBatchControl'#13#10'where UserID= :inUser and St' +
      'atus < 10'#13#10'and BatchType = 3'
    Parameters = <
      item
        Name = 'inUser'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 128
    Top = 176
  end
  object qrySuspBatches: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforeOpen = qrySuspBatchesBeforeOpen
    CommandText = 
      'select BatchID, BatchNo'#13#10'from lsBatchControl'#13#10'where BatchID in'#13#10 +
      '(select BatchID '#13#10'from lsBatchHistory'#13#10'where LoanID = -1)'#13#10'--and' +
      ' UserId = :InUserID'
    Parameters = <
      item
        Name = 'InUserID'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 224
    Top = 168
  end
  object qryToUse: TADOQuery
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 328
    Top = 160
  end
  object dtsLoans: TDataSource
    DataSet = qryLoans
    Left = 32
    Top = 200
  end
  object qryAlTrans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterPost = qryAlTransAfterPost
    AfterDelete = qryAlTransAfterDelete
    CommandText = 
      'select LT.TransNo, LT.BatchID, LT.BatchNo, LT.LoanID,LT.EntityID' +
      ', LT.EntCode, '#13#10'LT.TransCode as LoanCode, ST.TransCode as SuspCo' +
      'de, LT.Status, LT.LinkID1, LT.LinkID2, LT.TransDate, LT.EffectDa' +
      'te, LT.ValueDate, '#13#10'LT.PostDate, LT.Amount, LT.AmtPost, LT.UserI' +
      'D, LT.RefNo, LT.RefNo2, LT.Processed'#13#10'from lsBatchTrans LT'#13#10'left' +
      ' join lsBatchTrans ST on LT.LinkID1 = ST.LinkID1 and ST.LoanID =' +
      ' -2'#13#10'where  LT.TransType IN (11,26)'#13#10#13#10#13#10'/*select TransNo, Batch' +
      'ID, BatchNo, LoanID, EntityID, EntCode, TransCode, TransType, St' +
      'atus, LinkID1, LinkID2, TransDate, EffectDate, ValueDate, PostDa' +
      'te, Amount, AmtPost, UserID, RefNo, RefNo2, Processed'#13#10'from lsBa' +
      'tchTrans'#13#10'where TransType = 11*/'
    Parameters = <>
    Left = 32
    Top = 264
    object qryAlTransTransNo: TAutoIncField
      FieldName = 'TransNo'
      ReadOnly = True
    end
    object qryAlTransBatchID: TIntegerField
      FieldName = 'BatchID'
    end
    object qryAlTransBatchNo: TStringField
      FieldName = 'BatchNo'
      FixedChar = True
      Size = 10
    end
    object qryAlTransLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object qryAlTransEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object qryAlTransEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object qryAlTransLoanCode: TIntegerField
      FieldName = 'LoanCode'
    end
    object qryAlTransSuspCode: TIntegerField
      FieldName = 'SuspCode'
    end
    object qryAlTransStatus: TIntegerField
      FieldName = 'Status'
    end
    object qryAlTransLinkID1: TIntegerField
      FieldName = 'LinkID1'
    end
    object qryAlTransLinkID2: TIntegerField
      FieldName = 'LinkID2'
    end
    object qryAlTransTransDate: TDateTimeField
      FieldName = 'TransDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryAlTransEffectDate: TDateTimeField
      FieldName = 'EffectDate'
    end
    object qryAlTransValueDate: TDateTimeField
      FieldName = 'ValueDate'
    end
    object qryAlTransPostDate: TDateTimeField
      FieldName = 'PostDate'
    end
    object qryAlTransAmount: TBCDField
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryAlTransAmtPost: TBCDField
      FieldName = 'AmtPost'
      Precision = 19
    end
    object qryAlTransUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qryAlTransRefNo: TStringField
      FieldName = 'RefNo'
      Size = 10
    end
    object qryAlTransRefNo2: TStringField
      FieldName = 'RefNo2'
      Size = 10
    end
    object qryAlTransProcessed: TBooleanField
      FieldName = 'Processed'
    end
  end
  object dtsAlTrans: TDataSource
    DataSet = qryAlTrans
    Left = 32
    Top = 280
  end
  object qryAlBatches: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforeOpen = qryAlBatchesBeforeOpen
    CommandText = 
      'select BatchID, BatchNo'#13#10'from lsBatchControl'#13#10'where UserID = :In' +
      'UserID'#13#10'and BatchType = 3'#13#10'and Status < 10'
    Parameters = <
      item
        Name = 'InUserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 224
    Top = 232
  end
  object cmdClearBatch: TADOCommand
    CommandText = 'Delete from lsBatchTrans'#13#10'where BatchId = :InBatchID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'InBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 328
    Top = 240
  end
  object cmdDelAlTrans: TADOCommand
    CommandText = 'delete'#13#10'from lsBatchTrans'#13#10'where LinkID1 = :InLinkID1'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'InLinkID1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 128
    Top = 256
  end
  object cdsMultiSusp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 56
    object cdsMultiSuspLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object cdsMultiSuspEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object cdsMultiSuspAmount: TCurrencyField
      FieldName = 'Amount'
    end
  end
  object dtsMultiSusp: TDataSource
    DataSet = cdsMultiSusp
    Left = 456
    Top = 72
  end
  object cdsBatch: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 144
    object cdsBatchLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object cdsBatchLoanNo: TStringField
      FieldName = 'LoanNo'
      Size = 10
    end
    object cdsBatchEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object cdsBatchEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object cdsBatchName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object cdsBatchSurname: TStringField
      FieldName = 'Surname'
      Size = 50
    end
    object cdsBatchLoanType: TStringField
      FieldName = 'LoanType'
      Size = 3
    end
    object cdsBatchStatus: TIntegerField
      FieldName = 'Status'
    end
    object cdsBatchsStatus: TStringField
      FieldName = 'sStatus'
    end
    object cdsBatchAmount: TBCDField
      FieldName = 'Amount'
      currency = True
    end
  end
  object dtsBatch: TDataSource
    DataSet = cdsBatch
    Left = 456
    Top = 160
  end
  object qryLoans2: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT CAST(LoanID AS varchar(10)) AS LoanID, ED.EntityID, ED.En' +
        'tCode, Name, Name2 AS Surname, LoanType, RefNo AS LoanNo,'
      'dbo.FGetLoanStatusName(LD.Status) AS sStatus, LD.Status'
      'FROM lsLoanDetail LD'
      'LEFT JOIN EntityData ED on LD.EntityID = ED.EntityID'
      '')
    Left = 72
    Top = 168
  end
end
