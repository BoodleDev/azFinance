object dtmSettle: TdtmSettle
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 346
  Top = 270
  Height = 343
  Width = 531
  object UpdLoanDetails: TADOCommand
    CommandText = 
      'update lsLoanDetail'#13#10'set Status=50, UpdateUser=:inUserID, Update' +
      'Date = getdate(),'#13#10'ArrearsBucket=0.00, ArrearsAmt=0.00, ArrearsN' +
      'o=0,  AmountDue=0.00,   NoOfPay=NoOfPay+1, LastDPay=GetDate(), L' +
      'astAmtPay=:inSettleAmt'#13#10'where LoanID= :inLoanID'
    Connection = dbSettle
    Parameters = <
      item
        Name = 'inUserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'inSettleAmt'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 10
        Size = 8
        Value = Null
      end
      item
        Name = 'inLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 152
  end
  object qryGetLDS: TADODataSet
    Connection = dbSettle
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select LoanID, EntityID, EntCode,LoanKey,LoanType, LTaccT, Start' +
      'Date, Status, ArrearsBucket, RefNo'#13#10'from lsLoanDetail where Loan' +
      'ID= :LID'
    Parameters = <
      item
        Name = 'LID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 16
  end
  object qryAccBal: TADODataSet
    Connection = dbSettle
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    CommandText = 'lsGetAccBal;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LoanID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 40
    Top = 96
  end
  object qryLT: TADODataSet
    Connection = dbSettle
    LockType = ltReadOnly
    CommandText = 
      'select LoanType, ArrTransType from lsLoanTypes'#13#10'where LoanType=:' +
      'LoanType'
    DataSource = dtsGetLDS
    IndexFieldNames = 'LoanType'
    MasterFields = 'LoanType'
    Parameters = <
      item
        Name = 'LoanType'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 112
    Top = 24
  end
  object qryLTrate: TADODataSet
    Connection = dbSettle
    LockType = ltReadOnly
    CommandText = 
      'select LoanType, EffectDate, IntRate from lsLoanTRate'#13#10'where Loa' +
      'nType=:LoanType'
    DataSource = dtsGetLDS
    IndexFieldNames = 'LoanType'
    MasterFields = 'LoanType'
    Parameters = <
      item
        Name = 'LoanType'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 168
    Top = 24
  end
  object qryCapBal: TADODataSet
    Connection = dbSettle
    LockType = ltReadOnly
    CommandText = 'lsGetCapBalance;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LoanID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 112
    Top = 96
  end
  object dtsGetLDS: TDataSource
    DataSet = qryGetLDS
    Left = 40
    Top = 32
  end
  object qryGetDepBal: TADODataSet
    Connection = dbSettle
    LockType = ltReadOnly
    CommandText = 'lsGetDepBal;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LoanID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 184
    Top = 96
  end
  object qryToUse: TADOQuery
    Connection = dbSettle
    LockType = ltReadOnly
    Parameters = <>
    Left = 40
    Top = 208
  end
  object qryLoanAcc: TADODataSet
    Connection = dbSettle
    CursorType = ctStatic
    LockType = ltReadOnly
    MarshalOptions = moMarshalModifiedOnly
    CommandText = 'lsGetLnAccSettle;1'
    CommandTimeout = 180
    CommandType = cmdStoredProc
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LnID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@dFrm'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@dTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Prepared = True
    Left = 261
    Top = 80
  end
  object qryCapBalD: TADODataSet
    Connection = dbSettle
    LockType = ltReadOnly
    CommandText = 'lsGetCapBalDate;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LoanID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ValDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 260
    Top = 32
  end
  object cmdGetBatchNo: TADOCommand
    CommandText = 'lsGetNewBatchNo;1'
    CommandType = cmdStoredProc
    Connection = dbSettle
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@inUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@inStatus'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@inType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NewBatchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 120
    Top = 200
  end
  object qryLastIntD: TADODataSet
    Connection = dbSettle
    LockType = ltReadOnly
    CommandText = 'lsGetLastIntDate;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LnID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 260
    Top = 128
  end
  object dbSettle: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 392
    Top = 32
  end
end
