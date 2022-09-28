object dtmSettlementQuotes: TdtmSettlementQuotes
  OldCreateOrder = False
  Left = 1098
  Top = 557
  Height = 332
  Width = 429
  object dsSettlements: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsSettlementsAfterOpen
    OnNewRecord = dsSettlementsNewRecord
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SELECT @LoanID = :LoanID'#13#10#13#10#13#10'SELECT Sett' +
      'lementID, LD.RefNo, ST.LoanID, ST.CreateDate, ST.CreateUser, Set' +
      'tlementAmount, ExpiryDate, SentMethod, SentAddress, 1 AS Version' +
      ','#13#10#9'LoanBalance, SettlementInterest, AdditionalCharges, FutureTr' +
      'ansactions, DepositBalance, SettlementAmount'#13#10'FROM lsSettlements' +
      ' ST'#13#10'LEFT JOIN lsLoanDetail LD ON ST.LoanID = LD.LoanID'#13#10'WHERE S' +
      'T.LoanID = @LoanID'#13#10#13#10'UNION'#13#10#13#10'SELECT ST.SettlementID, '#39#39', ST.Ac' +
      'countID, ST.CreateDate, SC.UserID, SUM(TR.Amount), ST.ExpiryDate' +
      ', ST.SendMethod, ST.SendDetail, 2,'#13#10#9'0, 0, 0, 0, 0, 0'#13#10'FROM DCC_' +
      'Settlement ST'#13#10'LEFT JOIN SecurityTbl SC ON ST.CreateUserID = SC.' +
      'UserKey'#13#10'LEFT JOIN DCC_SettlementTransaction TR ON ST.Settlement' +
      'ID = TR.SettlementID'#13#10'WHERE AccountID = @LoanID'#13#10'GROUP BY ST.Set' +
      'tlementID, ST.AccountID, ST.CreateDate, SC.UserID, ST.ExpiryDate' +
      ', ST.SendMethod, ST.SendDetail'#13#10#13#10'ORDER BY Version DESC, Settlem' +
      'entID DESC'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 128
    object dsSettlementsSettlementID: TAutoIncField
      FieldName = 'SettlementID'
      ReadOnly = True
    end
    object dsSettlementsLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object dsSettlementsCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object dsSettlementsCreateUser: TStringField
      FieldName = 'CreateUser'
      Size = 10
    end
    object dsSettlementsSettlementAmount: TBCDField
      FieldName = 'SettlementAmount'
      currency = True
      Precision = 19
    end
    object dsSettlementsExpiryDate: TDateTimeField
      FieldName = 'ExpiryDate'
    end
    object dsSettlementsSentMethod: TStringField
      DisplayWidth = 20
      FieldName = 'SentMethod'
    end
    object dsSettlementsSentAddress: TStringField
      FieldName = 'SentAddress'
      Size = 80
    end
    object dsSettlementsVersion: TIntegerField
      FieldName = 'Version'
      ReadOnly = True
    end
    object dsSettlementsLoanBalance: TBCDField
      FieldName = 'LoanBalance'
      ReadOnly = True
      Precision = 19
    end
    object dsSettlementsSettlementInterest: TBCDField
      FieldName = 'SettlementInterest'
      ReadOnly = True
      Precision = 19
    end
    object dsSettlementsAdditionalCharges: TBCDField
      FieldName = 'AdditionalCharges'
      ReadOnly = True
      Precision = 19
    end
    object dsSettlementsFutureTransactions: TBCDField
      FieldName = 'FutureTransactions'
      ReadOnly = True
      Precision = 19
    end
    object dsSettlementsDepositBalance: TBCDField
      FieldName = 'DepositBalance'
      ReadOnly = True
      Precision = 19
    end
    object dsSettlementsSettlementAmount_1: TBCDField
      FieldName = 'SettlementAmount_1'
      ReadOnly = True
      Precision = 19
    end
    object dsSettlementsRefNo: TStringField
      FieldName = 'RefNo'
      ReadOnly = True
      Size = 15
    end
  end
  object dtsSettlements: TDataSource
    DataSet = dsSettlements
    Left = 32
    Top = 144
  end
  object dsTransactions: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'EXEC lsGetSettlement :LoanID, :SettlementDate'#13#10#13#10#13#10'/*DECLARE @Se' +
      'ttlementDate DATETIME, @LoanID INT, @NoMonths INT, @FeesPaid MON' +
      'EY'#13#10#13#10'SELECT @SettlementDate = SettlementDate, @LoanID = LoanID'#13 +
      #10#13#10'SELECT @NoMonths = COUNT(*)'#13#10'FROM lsMonthEnd ME, lsLoanDetail' +
      #13#10'WHERE CONVERT(VARCHAR(7),MonthEndDate,120) BETWEEN CONVERT(VAR' +
      'CHAR(7),GETDATE(),120)  AND CONVERT(VARCHAR(7),@SettlementDate,1' +
      '20)'#13#10'AND LoanID = @LoanID'#13#10'AND MonthEndDate >= FirstInsDate'#13#10#13#10#13 +
      #10'SELECT @FeesPaid = ISNULL(SUM(AmtPost),0)'#13#10'FROM lsBatchHistory ' +
      'BH'#13#10'--LEFT JOIN lsLoanDetail LD ON BH.LoanID = LD.LoanID'#13#10'WHERE ' +
      'CONVERT(VARCHAR(7),EffectDate,120) BETWEEN CONVERT(VARCHAR(7),GE' +
      'TDATE(),120)  AND CONVERT(VARCHAR(7),@SettlementDate,120)'#13#10'AND B' +
      'H.LoanID = @LoanID'#13#10'AND TransType = 17'#13#10#13#10#13#10'SELECT dbo.FGetCapBa' +
      'lDate(LoanID, GETDATE()) AS LoanBalance,'#13#10'dbo.lsGetIntToDate(Loa' +
      'nID, @SettlementDate)AS SettlementInterest,'#13#10'dbo.mMAX(0,(FeeToIn' +
      'sTot * @NoMonths) - @FeesPaid) AS FutureTrans, 0 AS DepositBalan' +
      'ce, 0 AS AdditionalCharges'#13#10'FROM lsLoanDetail'#13#10'WHERE LoanID = @L' +
      'oanID*/'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SettlementDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 128
    Top = 16
  end
  object cmdAddQuote: TADOCommand
    CommandText = 
      'INSERT INTO lsSettlements (LoanID, CreateUser, LoanBalance, Sett' +
      'lementInterest, AdditionalCharges, DepositBalance, SettlementAmo' +
      'unt, ExpiryDate, FutureTransactions, SentMethod, SentAddress)'#13#10'V' +
      'ALUES'#13#10'(:LoanID, :UserID, :LoanBalance, :SettlementInterest, :Ad' +
      'ditionalCharges, :DepositBalance, :SettlementAmount, :ExpiryDate' +
      ', :FutureTransactions, :SentMethod, :SentAddress)'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'LoanBalance'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'SettlementInterest'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'AdditionalCharges'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'DepositBalance'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'SettlementAmount'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'ExpiryDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FutureTransactions'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'SentMethod'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'SentAddress'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 80
        Value = Null
      end>
    Left = 232
    Top = 16
  end
  object ADODataSet1: TADODataSet
    CommandText = 
      'SELECT RefNo aS LoanRef, LD.LoanID'#13#10'FROM lsLoanDetail LD'#13#10'LEFT J' +
      'OIN lsSettlements ST ON LD.LoanID = ST.LoanID'#13#10'WHERE LD.LoanID =' +
      ' 18212'#13#10'AND (ExpiryDate <= CONVERT(VARCHAR(10),GETDATE(),120)) O' +
      'R (LoanBalance <> LoanBal)'
    Parameters = <>
    Left = 232
    Top = 72
  end
  object qrySettlementsExist: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CAST(COUNT(*) AS BIT) AS SettlementsExist'
      'FROM lsSettlements'
      'WHERE LoanID = :LoanID'
      'AND ExpiryDate >= CONVERT(VARCHAR(10),GETDATE(),120)')
    Left = 128
    Top = 80
  end
  object cmdRunCycleFees: TADOCommand
    CommandText = 'EXEC lsCreateCycleFeeBatch :CycleDate, :UserID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'CycleDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 32
    Top = 16
  end
  object qryLoanStatus: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Status, dbo.FGetLoanstatusName(Status) AS Description'
      'FROM lsLoanDetail'
      'WHERE LoanID = :LoanID')
    Left = 32
    Top = 72
  end
  object cmdCreateSettlementBatch: TADOCommand
    CommandText = 'LNS_CreateSettlementBatch;1'
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
        Name = '@SettlementID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@BatchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 128
    Top = 144
  end
  object cdsTransactions: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 16
    object cdsTransactionsEffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object cdsTransactionsAmount: TBCDField
      FieldName = 'Amount'
      currency = True
    end
    object cdsTransactionsRate: TBCDField
      FieldName = 'Rate'
    end
    object cdsTransactionsInsurance: TBCDField
      FieldName = 'Insurance'
      currency = True
    end
    object cdsTransactionsInterest: TBCDField
      FieldName = 'Interest'
      currency = True
    end
    object cdsTransactionsTotalInterest: TBCDField
      FieldName = 'TotalInterest'
      currency = True
    end
    object cdsTransactionsBalance: TBCDField
      FieldName = 'Balance'
      currency = True
    end
    object cdsTransactionsType: TStringField
      FieldName = 'Type'
    end
    object cdsTransactionsDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
  end
  object dtsTransactions: TDataSource
    DataSet = cdsTransactions
    Left = 328
    Top = 32
  end
  object cdsSummary: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 88
    object StringField2: TStringField
      FieldName = 'Description'
      Size = 30
    end
    object BCDField1: TBCDField
      FieldName = 'Amount'
      currency = True
    end
  end
  object dtsSummary: TDataSource
    DataSet = cdsSummary
    Left = 328
    Top = 104
  end
  object cmdSettleLoan: TADOCommand
    CommandText = 
      'UPDATE LD SET'#13#10#9'Status = 50, '#13#10#9'UpdateUser = :UserID, '#13#10#9'UpdateD' +
      'ate = GETDATE(),'#13#10#9'ArrearsBucket = 0, '#13#10#9'ArrearsAmt = 0, '#13#10#9'Arre' +
      'arsNo = 0,  '#13#10#9'AmountDue = 0,   '#13#10#9'NoOfPay = NoOfPay + 1, '#13#10#9'Las' +
      'tDPay = GETDATE(), '#13#10#9'LastAmtPay = :Amount'#13#10'FROM lsLoanDetail LD' +
      #13#10'WHERE LoanID = :LoanID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'UserID'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'Amount'
        DataType = ftBCD
        Size = -1
        Value = Null
      end
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 232
    Top = 136
  end
end
