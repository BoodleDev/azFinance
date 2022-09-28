object dtmPayouts: TdtmPayouts
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 1125
  Top = 381
  Height = 357
  Width = 617
  object dsSettlements: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SET @LoanID = :LoanID'#13#10#13#10'CREATE TABLE #Te' +
      'mpSettle'#13#10#9'(LoanID INT DEFAULT 0,'#13#10#9'LoanBalance MONEY,'#13#10#9'Settlem' +
      'entInterest MONEY,'#13#10#9'FutureTrans MONEY,'#13#10#9'DepositBalance MONEY,'#13 +
      #10#9'AdditionalCharges MONEY)'#13#10#13#10'DECLARE SettleCursor CURSOR FOR'#13#10#9 +
      'SELECT OL.LoanID'#13#10#9'FROM lsLoanDetail LD'#13#10#9'RIGHT JOIN lsLoanDetai' +
      'l OL ON LD.EntityID = OL.EntityID AND OL.Status IN (30,60,65,68,' +
      '45) AND LD.LoanID <> OL.LoanID'#13#10#9'WHERE LD.LoanID = @LoanID'#13#10#9'AND' +
      ' OL.LoanID NOT IN'#13#10#9#9'(SELECT LD.LoanID'#13#10#9#9'FROM lsLoanDPay LP'#13#10#9#9 +
      'LEFT JOIN lsLoanDetail LD ON LP.RefNo = LD.LoanID'#13#10#9#9'WHERE Third' +
      'Type IN (1,2)'#13#10#9#9'AND LP.Enabled = 1'#13#10#9#9'AND LP.LoanID = @LoanID)'#13 +
      #10#9'ORDER BY OL.LoanID'#13#10#13#10#13#10#13#10'OPEN SettleCursor'#13#10#13#10'FETCH NEXT FROM' +
      ' SettleCursor'#13#10#9'INTO @LoanID'#13#10#13#10'WHILE @@FETCH_STATUS = 0'#13#10'BEGIN'#13 +
      #10#13#10#9'INSERT INTO #TempSettle (LoanBalance, SettlementInterest, Fu' +
      'tureTrans, DepositBalance, AdditionalCharges)'#13#10#9#9'EXEC lsGetSettl' +
      'ement @LoanID, :SettleDate'#13#10#13#10'UPDATE #TempSettle SET LoanID = @L' +
      'oanID WHERE LoanID = 0'#13#10#13#10#9'FETCH NEXT FROM SettleCursor'#13#10#9'INTO @' +
      'LoanID'#13#10'END'#13#10#13#10'CLOSE SettleCursor'#13#10'DEALLOCATE SettleCursor'#13#10#13#10#13#10 +
      'SELECT TS.LoanID, RefNo, dbo.FGetLoanStatusName(Status) AS LoanS' +
      'tatus, dbo.FGetLoanStatusColor(Status) AS StatusColor,'#13#10'Settleme' +
      'ntInterest, LoanBalance, FutureTrans, AdditionalCharges, PayIns,' +
      ' NoOfPay, LoanPeriod, '#13#10'DepositBalance, LoanBalance + Settlement' +
      'Interest + FutureTrans + AdditionalCharges- DepositBalance AS Se' +
      'ttlement'#13#10'FROM #TempSettle TS'#13#10'LEFT JOIN lsLoanDetail LD ON TS.L' +
      'oanID = LD.LoanID'#13#10#13#10'DROP TABLE #TempSettle'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SettleDate'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    Left = 40
    Top = 16
    object dsSettlementsLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object dsSettlementsRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object dsSettlementsLoanStatus: TStringField
      FieldName = 'LoanStatus'
      ReadOnly = True
    end
    object dsSettlementsStatusColor: TStringField
      FieldName = 'StatusColor'
      ReadOnly = True
    end
    object dsSettlementsSettlementInterest: TBCDField
      FieldName = 'SettlementInterest'
      currency = True
      Precision = 19
    end
    object dsSettlementsLoanBalance: TBCDField
      FieldName = 'LoanBalance'
      currency = True
      Precision = 19
    end
    object dsSettlementsFutureTrans: TBCDField
      FieldName = 'FutureTrans'
      currency = True
      Precision = 19
    end
    object dsSettlementsAdditionalCharges: TBCDField
      FieldName = 'AdditionalCharges'
      currency = True
      Precision = 19
    end
    object dsSettlementsPayIns: TBCDField
      FieldName = 'PayIns'
      currency = True
      Precision = 10
    end
    object dsSettlementsNoOfPay: TSmallintField
      FieldName = 'NoOfPay'
    end
    object dsSettlementsLoanPeriod: TSmallintField
      FieldName = 'LoanPeriod'
    end
    object dsSettlementsDepositBalance: TBCDField
      FieldName = 'DepositBalance'
      currency = True
      Precision = 19
    end
    object dsSettlementsSettlement: TBCDField
      FieldName = 'Settlement'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object dtsSettlements: TDataSource
    DataSet = dsSettlements
    Left = 40
    Top = 32
  end
  object cmdLoanSettle: TADOCommand
    CommandText = 
      'DECLARE @LoanID INT, @PayNo INT'#13#10#13#10'SET @LoanID = :LoanID'#13#10#13#10'SELE' +
      'CT @PayNo = ISNULL(MAX(PayNo) + 1,1)'#13#10'FROM lsLoanDPay'#13#10'WHERE Loa' +
      'nID = @LoanID'#13#10#13#10'INSERT INTO lsLoanDPay (LoanID, ThirdType, Amou' +
      'nt, Instalment, ExpiryDate, Name, ThirdRefNo, RefNo, CreateUser,' +
      ' PayNo)'#13#10'VALUES (@LoanID, :ThirdType, :Amount, :Instalment, :Exp' +
      'iryDate, :Name, :ThirdRefNo, :RefNo, :CreateUser, @PayNo)'
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
        Name = 'ThirdType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Amount'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 10
        Size = 8
        Value = Null
      end
      item
        Name = 'Instalment'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'ExpiryDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Name'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 35
        Value = Null
      end
      item
        Name = 'ThirdRefNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'RefNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CreateUser'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 128
    Top = 16
  end
  object dsArrears: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = dsArrearsAfterOpen
    CommandText = 
      'EXEC dbo.LNS_GetArrearsSettlementByClient :EntityID, :SettleDate' +
      ', :AccountID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SettleDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'AccountID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 96
    object dsArrearsLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object dsArrearsRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object dsArrearsLoanStatus: TStringField
      FieldName = 'LoanStatus'
      ReadOnly = True
    end
    object dsArrearsStatusColor: TStringField
      FieldName = 'StatusColor'
      ReadOnly = True
    end
    object dsArrearsLoanBal: TBCDField
      FieldName = 'LoanBal'
      Precision = 19
    end
    object dsArrearsPayIns: TBCDField
      FieldName = 'PayIns'
      Precision = 10
    end
    object dsArrearsNoOfPay: TSmallintField
      FieldName = 'NoOfPay'
    end
    object dsArrearsLoanPeriod: TSmallintField
      FieldName = 'LoanPeriod'
    end
    object dsArrearsEffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object dsArrearsArrearsAmount: TBCDField
      FieldName = 'ArrearsAmount'
      ReadOnly = True
      Precision = 19
    end
  end
  object dtsArrears: TDataSource
    DataSet = dsArrears
    Left = 112
    Top = 144
  end
  object qryBranchCode: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = dtsBanks
    Parameters = <
      item
        Name = 'BankName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'ISNULL(UB.RecID,LB.RecID) AS RecID, '
      'ISNULL(UB.BranchCode, LB.BranchCode) AS BranchCode, '
      'ISNULL(UB.BranchName, LB.BranchName) AS BranchName'
      'FROM LUBank LB'
      'LEFT JOIN Banks BK ON LB.BankName = BK.BankName'
      'LEFT JOIN LUBank UB ON UniversalCode = UB.BranchCode'
      'WHERE LB.BankName = :BankName'
      'ORDER BY ISNULL(UB.BranchName, LB.BranchName)')
    Left = 128
    Top = 96
  end
  object dtsBranchCode: TDataSource
    DataSet = qryBranchCode
    Left = 168
    Top = 72
  end
  object qryBranchName: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'BankName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'ISNULL(UB.RecID,LB.RecID) AS IDVal, '
      'ISNULL(UB.BranchCode, LB.BranchCode) AS BranchCode, '
      'ISNULL(UB.BranchName, LB.BranchName) AS BranchName'
      'FROM LUBank LB'
      'LEFT JOIN Banks BK ON LB.BankName = BK.BankName'
      'LEFT JOIN LUBank UB ON UniversalCode = UB.BranchCode'
      'WHERE LB.BankName = :BankName'
      'ORDER BY ISNULL(UB.BranchName, LB.BranchName)')
    Left = 224
    Top = 96
    object qryBranchNameIDVal: TIntegerField
      FieldName = 'IDVal'
      ReadOnly = True
      Visible = False
    end
    object qryBranchNameBranchCode: TStringField
      DisplayLabel = 'Branch code'
      DisplayWidth = 10
      FieldName = 'BranchCode'
      Size = 6
    end
    object qryBranchNameBranchName: TStringField
      DisplayLabel = 'Branch name'
      DisplayWidth = 50
      FieldName = 'BranchName'
      Size = 35
    end
  end
  object dtsBranchName: TDataSource
    DataSet = qryBranchName
    Left = 200
    Top = 168
  end
  object qryBanks: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select distinct(BankName) as BankName'
      'from LUBank'
      'order by BankName')
    Left = 224
    Top = 16
  end
  object dtsBanks: TDataSource
    DataSet = qryBanks
    OnDataChange = dtsBanksDataChange
    Left = 320
    Top = 96
  end
  object dsSettlePayouts: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'LoanID, RefNo, LoanStatus, StatusColor, LoanBal, PayIn' +
      's,'#13#10#9'NoOfPay, LoanPeriod, Reference, PaidPercent'#13#10'FROM'#13#10#9'(SELECT' +
      ' '#13#10#9#9'OL.LoanID, OL.RefNo, LS.LoanStatus, LS.StatusColor,'#13#10#9#9'OL.L' +
      'oanBal, OL.PayIns, OL.NoOfPay, OL.LoanPeriod,'#13#10#9#9'LD.RefNo AS Ref' +
      'erence,'#13#10#9#9'CAST(OL.NoOfPay AS DECIMAL(5,2))/OL.LoanPeriod * 100 ' +
      'AS PaidPercent'#13#10#9'FROM lsLoanDetail LD'#13#10#9'RIGHT JOIN lsLoanDetail ' +
      'OL ON LD.EntityID = OL.EntityID '#13#10#9#9'AND OL.Status IN (30,60,65,6' +
      '8,45)'#13#10#9'LEFT JOIN lsLoanStatus LS ON OL.Status = LS.StatusID'#13#10#9'L' +
      'EFT JOIN lsLoanDPay LP ON LD.LoanID = LP.LoanID'#13#10#9#9'AND OL.LoanID' +
      ' = LP.RefNo'#13#10#9#9'AND LP.ThirdType IN (1, 2, 4) -- *** Settlements ' +
      '& Arrears'#13#10#9#9'AND LP.Enabled = 1'#13#10#9'WHERE LD.LoanID = :LoanID'#13#10#9#9'A' +
      'ND LP.LoanID IS NULL'#13#10#9')SL'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 464
    Top = 24
    object AutoIncField1: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'LoanStatus'
      ReadOnly = True
    end
    object StringField3: TStringField
      FieldName = 'StatusColor'
      ReadOnly = True
    end
    object BCDField2: TBCDField
      FieldName = 'LoanBal'
      currency = True
      Precision = 19
    end
    object BCDField3: TBCDField
      FieldName = 'PayIns'
      currency = True
      Precision = 10
    end
    object SmallintField1: TSmallintField
      FieldName = 'NoOfPay'
    end
    object SmallintField2: TSmallintField
      FieldName = 'LoanPeriod'
    end
    object dsSettlePayoutsReference: TStringField
      FieldName = 'Reference'
      Size = 15
    end
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
    Left = 304
    Top = 24
  end
  object dsBeneficiary: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT ED.EntityID, ED.EntCode, Name2 AS Beneficiary, BName AS B' +
      'ankName, '#13#10'BBranch AS Branch, BBCode AS BranchCode, AccName AS A' +
      'ccountName, '#13#10'AccNo AS AccountNo, AccType AS AccountType'#13#10'FROM E' +
      'ntRelation ER'#13#10'LEFT JOIN EntityData ED ON ER.EntityID = ED.Entit' +
      'yID'#13#10'LEFT JOIN BankDetails BD ON ED.EntityID = BD.EntityID'#13#10'WHER' +
      'E Relation = 100001026'#13#10'AND LinkID = 0'#13#10'AND ER.Status = 0'
    Parameters = <>
    Left = 40
    Top = 176
    object dsBeneficiaryEntityID: TAutoIncField
      FieldName = 'EntityID'
      ReadOnly = True
      Visible = False
    end
    object dsBeneficiaryEntCode: TStringField
      FieldName = 'EntCode'
      Visible = False
      Size = 10
    end
    object dsBeneficiaryBeneficiary: TStringField
      FieldName = 'Beneficiary'
      Size = 80
    end
    object dsBeneficiaryBankName: TStringField
      FieldName = 'BankName'
      Visible = False
      Size = 35
    end
    object dsBeneficiaryBranch: TStringField
      FieldName = 'Branch'
      Visible = False
      Size = 35
    end
    object dsBeneficiaryBranchCode: TStringField
      FieldName = 'BranchCode'
      Visible = False
      Size = 6
    end
    object dsBeneficiaryAccountName: TStringField
      FieldName = 'AccountName'
      Visible = False
      Size = 40
    end
    object dsBeneficiaryAccountNo: TStringField
      FieldName = 'AccountNo'
      Visible = False
      Size = 15
    end
    object dsBeneficiaryAccountType: TSmallintField
      FieldName = 'AccountType'
      Visible = False
    end
  end
  object dsScoreOptions: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'SELECT LF.ProductID, LF.LoanType, LF.LoanCapital, LF.LoanPeriod,' +
      ' LF.FixInstal AS Instalment, CAST(LF.LoanCapital AS VARCHAR(10))' +
      ' AS sLoanCapital, CAST(LF.LoanPeriod AS VARCHAR(2)) AS sLoanPeri' +
      'od'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN lsLoanTypes LT ON LT.LTStatu' +
      's = 0 AND ((LD.loanType = '#39'BP1'#39' AND LT.LoanType = LD.LoanType) O' +
      'R 1=1)'#13#10'LEFT JOIN lsLoanTFix LF ON LT.LoanType = LF.LoanType'#13#10'LE' +
      'FT JOIN lsCpyLoanTypes CL ON LF.LoanType = CL.LoanType '#13#10#9'AND Li' +
      'nk3 = CL.EntityID '#13#10#9'AND LoanInd = 100132003'#13#10'WHERE LD.LoanID = ' +
      ':LoanID'#13#10'AND '#13#10#9'((LoanInd <> 100132003 AND Category <> 100101002' +
      ')'#13#10#9'OR'#13#10#9'Cl.EntityID IS NOT NULL)'#13#10'ORDER BY LF.LoanPeriod DESC, ' +
      'LF.LoanCapital DESC'#13#10
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 352
    Top = 144
    object dsScoreOptionsProductID: TAutoIncField
      FieldName = 'ProductID'
      ReadOnly = True
    end
    object dsScoreOptionsLoanType: TStringField
      FieldName = 'LoanType'
      Size = 3
    end
    object dsScoreOptionsLoanPeriod: TSmallintField
      FieldName = 'LoanPeriod'
    end
    object dsScoreOptionsLoanCapital: TBCDField
      FieldName = 'LoanCapital'
      currency = True
      Precision = 19
    end
    object dsScoreOptionsInstalment: TBCDField
      FieldName = 'Instalment'
      currency = True
      Precision = 19
    end
    object dsScoreOptionssLoanCapital: TStringField
      FieldName = 'sLoanCapital'
      ReadOnly = True
      Size = 10
    end
    object dsScoreOptionssLoanPeriod: TStringField
      FieldName = 'sLoanPeriod'
      ReadOnly = True
      Size = 2
    end
  end
  object dtsScoreOptions: TDataSource
    DataSet = dsScoreOptions
    Left = 352
    Top = 160
  end
  object cmdManualOption: TADOCommand
    CommandText = 
      'INSERT INTO afOffers '#13#10#9'(LoanID, Amount, Period, Instalment, Sta' +
      'tus, UpdateUser, UpdateDate, System, '#13#10#9'Visible, LoanType, Start' +
      'Date, InterestRate, Reason, IsLimited)'#13#10'SELECT  '#13#10#9':LoanID, Loan' +
      'Capital, LoanPeriod,  :Instalment, NULL, :UserID, GETDATE(), 0, ' +
      #13#10#9'1, LF.LoanType, CONVERT(VARCHAR(10),GETDATE(),120), -- @MaxIn' +
      'stal, '#13#10#9#9'(SELECT TOP 1 IntRate'#13#10#9#9'FROM lsLoanTRate'#13#10#9#9'WHERE Loa' +
      'nType = LF.LoanType'#13#10#9#9'AND EffectDate <= CONVERT(VARCHAR(120),GE' +
      'TDATE(),120)'#13#10#9#9'ORDER BY EffectDate DESC),'#13#10#9':Reason, 0'#13#10'FROM ls' +
      'LoanTFix LF'#13#10'INNER JOIN lsLoanTypes LT ON LF.LoanType = LT.LoanT' +
      'ype AND LTStatus = 0'#13#10'WHERE ProductID = :ProductID'#13#10#13#10'SELECT :Of' +
      'ferID = SCOPE_IDENTITY()'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Instalment'
        DataType = ftBCD
        Size = -1
        Value = Null
      end
      item
        Name = 'UserID'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'Reason'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ProductID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'OfferID'
        DataType = ftInteger
        Direction = pdReturnValue
        Size = -1
        Value = Null
      end>
    Left = 352
    Top = 224
  end
  object cmdOptionPayout: TADOCommand
    CommandText = 
      'INSERT INTO afOfferPayouts '#13#10#9'(PayoutID, OfferID)'#13#10'VALUES '#13#10#9'(:P' +
      'ayoutID, :OfferID)'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'PayoutID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'OfferID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 240
    Top = 224
  end
  object ADODataSet2: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsArrearsAfterOpen
    CommandText = 
      'DECLARE @SettleDate DATETIME'#13#10#13#10'SELECT @SettleDate = :SettleDate' +
      #13#10#13#10'SELECT OL.LoanID, OL.RefNo, LS.LoanStatus, LS.StatusColor, @' +
      'SettleDate AS SettleDate,'#13#10'dbo.ArrearsAmount(OL.LoanID, @SettleD' +
      'ate) AS ArrearsAmount,'#13#10'OL.LoanBal, OL.PayIns, OL.NoOfPay, OL.Lo' +
      'anPeriod'#13#10'FROM lsLoanDetail LD'#13#10'RIGHT JOIN lsLoanDetail OL ON LD' +
      '.EntityID = OL.EntityID AND OL.Status IN (30,60,65,68,45)'#13#10'LEFT ' +
      'JOIN lsLoanStatus LS ON OL.Status = LS.StatusID'#13#10'WHERE LD.LoanID' +
      ' = :LoanID'#13#10'AND OL.LoanID NOT IN'#13#10#9'(SELECT LD.LoanID'#13#10#9'FROM lsLo' +
      'anDPay LP'#13#10#9'LEFT JOIN lsLoanDetail LD ON LP.RefNo = LD.LoanID'#13#10#9 +
      'WHERE ThirdType IN (1,2)'#13#10#9'AND LP.Enabled = 1'#13#10#9'AND EntityID = :' +
      'EntityID)'#13#10'ORDER BY OL.LoanID'
    Parameters = <
      item
        Name = 'SettleDate'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EntityID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 128
    Top = 208
    object AutoIncField2: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object StringField4: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'LoanStatus'
      ReadOnly = True
    end
    object StringField6: TStringField
      FieldName = 'StatusColor'
      ReadOnly = True
    end
    object BCDField5: TBCDField
      FieldName = 'LoanBal'
      Precision = 19
    end
    object BCDField6: TBCDField
      FieldName = 'PayIns'
      Precision = 10
    end
    object SmallintField3: TSmallintField
      FieldName = 'NoOfPay'
    end
    object SmallintField4: TSmallintField
      FieldName = 'LoanPeriod'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'SettleDate'
      ReadOnly = True
    end
    object BCDField7: TBCDField
      FieldName = 'ArrearsAmount'
      ReadOnly = True
      Precision = 19
    end
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 128
    Top = 224
  end
  object cdsSettlePayouts: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSettlePayouts'
    Left = 464
    Top = 88
    object cdsSettlePayoutsLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object cdsSettlePayoutsRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object cdsSettlePayoutsLoanStatus: TStringField
      FieldName = 'LoanStatus'
    end
    object cdsSettlePayoutsStatusColor: TStringField
      FieldName = 'StatusColor'
    end
    object cdsSettlePayoutsLoanBal: TBCDField
      FieldName = 'LoanBal'
      currency = True
      Precision = 19
    end
    object cdsSettlePayoutsPayIns: TBCDField
      FieldName = 'PayIns'
      currency = True
      Precision = 10
    end
    object cdsSettlePayoutsNoOfPay: TSmallintField
      FieldName = 'NoOfPay'
    end
    object cdsSettlePayoutsLoanPeriod: TSmallintField
      FieldName = 'LoanPeriod'
    end
    object cdsSettlePayoutsReference: TStringField
      FieldName = 'Reference'
      Size = 15
    end
    object cdsSettlePayoutsSettlement: TBCDField
      FieldName = 'Settlement'
      currency = True
      Precision = 32
    end
  end
  object dtsSettlePayouts: TDataSource
    DataSet = cdsSettlePayouts
    Left = 472
    Top = 168
  end
end
