object dtmProcBatch: TdtmProcBatch
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 480
  Top = 217
  Height = 402
  Width = 565
  object cmdSetBCStatus: TADOCommand
    CommandText = 
      'update lsBatchControl set Status = :inStatus where BatchID= :inB' +
      'atchID'
    CommandTimeout = 60
    Connection = conLSproc
    Parameters = <
      item
        Name = 'inStatus'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'inBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 153
    Top = 60
  end
  object qryGetBCStatus: TADODataSet
    Connection = conLSproc
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select Status from lsBatchControl where BatchID= :inBatchID'
    CommandTimeout = 60
    Parameters = <
      item
        Name = 'inBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 57
    Top = 60
  end
  object qryGetLoanReCalc: TADODataSet
    Connection = conLSproc
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select TransNo,LoanID from lsBatchTrans '#13#10'where BatchID= :BatchI' +
      'D and LoanID in (select LoanID from lsLoanDetail'#13#10'   where LoanT' +
      'ype in (select LoanType'#13#10'    from lsLoanTypes where ForceStartD=' +
      '1))'
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'BatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 152
    Top = 112
  end
  object qryCntPayOut: TADODataSet
    Connection = conLSproc
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select count(BatchID) from lsBatchHistory'#13#10'where BatchID= :Batch' +
      'ID and TransType=15'#13#10'  and LoanID in (select LoanID from lsLoanD' +
      'etail '#13#10'    where DefIon=0 and TotInterest>0.01 and LTaccT<2)'
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'BatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 112
  end
  object qryCntValDate: TADODataSet
    Connection = conLSproc
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select count(BatchID) from lsBatchTrans '#13#10'where BatchID=:BatchID' +
      ' and '#13#10'(ValueDate is not null) and (ValueDate < EffectDate)'
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'BatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 168
  end
  object cmdDoDefInt: TADOCommand
    CommandText = 'lsAddDefIntToBH;1'
    CommandTimeout = 600
    CommandType = cmdStoredProc
    Connection = conLSproc
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
    Left = 248
    Top = 112
  end
  object qryToUse: TADOQuery
    Connection = conLSproc
    LockType = ltReadOnly
    Parameters = <>
    Left = 320
    Top = 16
  end
  object cmdProcBatch1: TADOCommand
    CommandText = 'lsProcessBatch;1'
    CommandTimeout = 600
    CommandType = cmdStoredProc
    Connection = conLSproc
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
    Left = 56
    Top = 240
  end
  object conLSproc: TADOConnection
    CommandTimeout = 240
    IsolationLevel = ilReadUncommitted
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 8
  end
  object cmdBeforePost: TADOCommand
    CommandText = 'lsBatchBeforePost;1'
    CommandTimeout = 600
    CommandType = cmdStoredProc
    Connection = conLSproc
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
    Left = 152
    Top = 240
  end
  object cmdAfterPost: TADOCommand
    CommandText = 'lsBatchAfterPost;1'
    CommandTimeout = 600
    CommandType = cmdStoredProc
    Connection = conLSproc
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
    Left = 240
    Top = 240
  end
  object qryValueD: TADODataSet
    Connection = conLSproc
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TransNo, BT.LoanID, TransType, EffectDate, ValueDate, Amo' +
      'unt'#13#10'FROM lsBatchTrans BT'#13#10'LEFT JOIN lsLoanDetail LD ON BT.LoanI' +
      'D = LD.LoanID'#13#10'WHERE BatchID=:BatchID '#13#10'AND (ValueDate is not nu' +
      'll) '#13#10'AND (ValueDate < EffectDate)'#13#10'AND TransType NOT IN (5,13,1' +
      '4,28,29)'#13#10'AND LD.Status <> 45'
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'BatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 136
    Top = 168
  end
  object qryRates: TADODataSet
    Connection = conLSproc
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select EffectDate,IntRate,DepositRate from lsLoanTRate'#13#10'where Lo' +
      'anType=:LoanType'
    CommandTimeout = 120
    DataSource = dtsLDS
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanType'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 272
    Top = 168
  end
  object dtsValueD: TDataSource
    DataSet = qryValueD
    Left = 136
    Top = 184
  end
  object qryLDS: TADODataSet
    Connection = conLSproc
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select LoanID,LoanType, LTaccT from lsLoanDetail where LoanID=:L' +
      'oanID'
    CommandTimeout = 120
    DataSource = dtsValueD
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 208
    Top = 168
  end
  object dtsLDS: TDataSource
    DataSet = qryLDS
    Left = 208
    Top = 184
  end
  object cmdProcBatch: TADOCommand
    CommandText = 'lsProcessBatch;1'
    CommandType = cmdStoredProc
    Connection = conLSproc
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
    Top = 240
  end
end
