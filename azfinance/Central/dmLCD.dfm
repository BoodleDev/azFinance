object dtmLCD: TdtmLCD
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 715
  Top = 485
  Height = 332
  Width = 483
  object cdsContract: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 146
    Top = 48
    object cdsContractLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object cdsContractType: TIntegerField
      FieldName = 'Type'
    end
    object cdsContractPayNo: TIntegerField
      FieldName = 'PayNo'
    end
    object cdsContractEffectDate: TDateField
      FieldName = 'EffectDate'
    end
    object cdsContractAmount: TCurrencyField
      FieldName = 'Amount'
    end
    object cdsContractInterest: TCurrencyField
      FieldName = 'Interest'
    end
    object cdsContractBalance: TCurrencyField
      FieldName = 'Balance'
    end
    object cdsContractNOD: TIntegerField
      DisplayLabel = 'No of days'
      FieldName = 'NOD'
    end
    object cdsContractAmtToAdd: TCurrencyField
      FieldName = 'AmtToAdd'
    end
    object cdsContractIntRate: TFloatField
      FieldName = 'IntRate'
    end
    object cdsContractIntME: TCurrencyField
      FieldName = 'IntME'
    end
  end
  object dtsContract: TDataSource
    DataSet = cdsContract
    Left = 146
    Top = 36
  end
  object qryStruc: TADODataSet
    LockType = ltReadOnly
    CommandText = 
      'select LoanID, EffectDate, Type, Amount, TypeCnt '#13#10'from lsLDStru' +
      'c'#13#10'where LoanID=:LoanID'
    DataSource = dtsLDS
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 245
    Top = 119
  end
  object qryLDS: TADODataSet
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT LoanID, LoanType, LTaccT, LoanPeriod, AmtToFin, ResidualA' +
      'mt, MthIns, StartDate, FirstInsDate, PayIns, FeeToInsTot,'#13#10'ISNUL' +
      'L(CycleEndDay, DATEPART(DAY, FirstInsDate)) AS CycleEndDay'#13#10'FROM' +
      ' lsLoanDetail'#13#10'WHERE LoanID = :Lid'
    Parameters = <
      item
        Name = 'Lid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 48
  end
  object qryRates: TADODataSet
    LockType = ltReadOnly
    CommandText = 
      'select EffectDate, IntRate'#13#10'from lsLoanTRate where LoanType = :L' +
      'oanType'
    DataSource = dtsLDS
    Parameters = <
      item
        Name = 'LoanType'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 344
    Top = 119
  end
  object dtsLDS: TDataSource
    DataSet = qryLDS
    Left = 48
    Top = 36
  end
  object dsLoanContract: TADODataSet
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'SELECT RecordID, LoanID, RevisionNo, TransactionDate, Transactio' +
      'nType, RTRIM(TransTypeCode) AS TransTypeCode, Description, '#13#10'Deb' +
      'it, Credit, Amount, Balance, Rate, Interest'#13#10'FROM ufn_LoanContra' +
      'ct(:LoanID, :RevisionNo)'
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
        Name = 'RevisionNo'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 245
    Top = 48
    object dsLoanContractRecordID: TIntegerField
      FieldName = 'RecordID'
    end
    object dsLoanContractLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object dsLoanContractRevisionNo: TIntegerField
      FieldName = 'RevisionNo'
    end
    object dsLoanContractTransactionDate: TDateTimeField
      FieldName = 'TransactionDate'
    end
    object dsLoanContractTransactionType: TStringField
      FieldName = 'TransactionType'
      Size = 50
    end
    object dsLoanContractTransTypeCode: TStringField
      FieldName = 'TransTypeCode'
      ReadOnly = True
      Size = 10
    end
    object dsLoanContractDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object dsLoanContractDebit: TBCDField
      FieldName = 'Debit'
      currency = True
      Precision = 19
    end
    object dsLoanContractCredit: TBCDField
      FieldName = 'Credit'
      currency = True
      Precision = 19
    end
    object dsLoanContractAmount: TBCDField
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object dsLoanContractBalance: TBCDField
      FieldName = 'Balance'
      currency = True
      Precision = 19
    end
    object dsLoanContractRate: TBCDField
      FieldName = 'Rate'
      DisplayFormat = '#00.00%'
      Precision = 6
      Size = 3
    end
    object dsLoanContractInterest: TBCDField
      FieldName = 'Interest'
      currency = True
      Precision = 19
    end
  end
  object dtsLoanContract: TDataSource
    DataSet = dsLoanContract
    Left = 245
    Top = 36
  end
  object dsContractRevisions: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT RevisionNo, EffectiveDate, CreateDate, CreateUser'#13#10'FROM l' +
      'sLoanContractRevision'#13#10'WHERE LoanID = :LoanID'#13#10'ORDER BY Revision' +
      'No'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 344
    Top = 48
  end
  object dtsContractRevisions: TDataSource
    DataSet = dsContractRevisions
    Left = 344
    Top = 36
  end
  object ADODataSet1: TADODataSet
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'DECLARE @LoanID INT, @Balance MONEY'#13#10#13#10'SELECT @LoanID = :LoanID,' +
      ' @Balance = 0'#13#10#13#10'SELECT RecordID, LoanID, TransactionDate,'#13#10'CASE' +
      ' TransactionType'#13#10'WHEN '#39'D'#39' THEN '#39'Loan Disbursement'#39#13#10'WHEN '#39'P'#39' TH' +
      'EN '#39'Instalment'#39#13#10'WHEN '#39'I'#39' THEN '#39'Interest'#39#13#10'WHEN '#39'FO'#39' THEN '#39'Once-' +
      'Off Fee'#39#13#10'WHEN '#39'FM'#39' THEN '#39'Monthly Fee'#39#13#10'END AS TransactionType, ' +
      'TransactionType AS TransTypeCode, Description, Amount, @Balance ' +
      'AS Balance'#13#10'INTO #lsLoanContract'#13#10'FROM lsLoanContract'#13#10'WHERE Loa' +
      'nID = @LoanID'#13#10'ORDER BY TransactionDate, CASE TransactionType WH' +
      'EN '#39'D'#39' THEN 1 WHEN '#39'FO'#39' THEN 2 ELSE 3 END'#13#10#13#10'UPDATE #lsLoanContr' +
      'act SET @Balance = @Balance + Amount, Balance = @Balance'#13#10'WHERE ' +
      'LoanID = @LoanID'#13#10#13#10'SELECT RecordID, LoanID, TransactionDate, Tr' +
      'ansactionType, RTRIM(TransTypeCode) AS TransTypeCode, Descriptio' +
      'n, '#13#10'CASE WHEN Amount >= 0 THEN Amount ELSE NULL END AS DebitAmo' +
      'unt, '#13#10'CASE WHEN Amount < 0 THEN Amount ELSE NULL END AS CreditA' +
      'mount, '#13#10'Amount, Balance'#13#10'FROM #lsLoanContract'#13#10'WHERE LoanID = @' +
      'LoanID'#13#10#13#10'DROP TABLE #lsLoanContract'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 119
  end
  object cmdConvertContract: TADOCommand
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SELECT @LoanID = :LoanID'#13#10#13#10'INSERT INTO l' +
      'sLoanContractRevision'#13#10'SELECT LoanID, 0, StartDate, GETDATE(), '#39 +
      'Daniel'#39#13#10'FROM lsLoanDetail'#13#10'WHERE LoanID = @LoanID'#13#10#13#10#13#10'INSERT I' +
      'NTO lsLoanContract (LoanID, TransactionDate, TransactionType, De' +
      'scription, Amount, RevisionNo)'#13#10'SELECT LoanID, TransDate, TransT' +
      'ype, Description, Amount, RevisionNo'#13#10'FROM'#13#10'(--ADD INTEREST TO C' +
      'ONTRACT'#13#10'SELECT LC.LoanID, DATEADD(DAY,-1,DATEADD(MONTH,1,CAST(L' +
      'EFT(YMKey,4) + '#39'-'#39' + RIGHT(YMKey,2) + '#39'-01'#39' AS DATETIME))) AS Tr' +
      'ansDate, '#13#10#39'I'#39' AS TransType, '#39#39' AS Description, Interest AS Amou' +
      'nt, 0 AS RevisionNo'#13#10'FROM lsLoanCntr LC'#13#10'LEFT JOIN lsLoanDetail ' +
      'LD ON LC.LoanID = LD.LoanID'#13#10'WHERE LC.LoanID = @LoanID'#13#10#13#10'UNION'#13 +
      #10#13#10'--ADD MONTHLY INSTALMENT TO CONTRACT'#13#10'SELECT LC.LoanID, CAST(' +
      'LEFT(YMKey,4) + '#39'-'#39' + RIGHT(YMKey,2) + '#39'-'#39' + CAST(dbo.MIN(dbo.Da' +
      'ysInMonth('#13#10'LEFT(YMKey,4) + '#39'-'#39' + RIGHT(YMKey,2) + '#39'-01'#39'),CycleE' +
      'ndDay) AS VARCHAR(2)) AS DATETIME), '#39'P'#39', '#39#39', CASE WHEN PayAmt = ' +
      '0 THEN 0 ELSE (MthIns + FeeToInsTot) * -1 END, 0'#13#10'FROM lsLoanCnt' +
      'r LC'#13#10'LEFT JOIN lsLoanDetail LD ON LC.LoanID = LD.LoanID'#13#10'WHERE ' +
      'LC.LoanID = @LoanID'#13#10#13#10'UNION'#13#10#13#10'--ADD LOAN DISBURSEMENT TO CONTR' +
      'ACT'#13#10'SELECT LoanID, StartDate, '#39'D'#39', '#39#39', LoanCapital, 0'#13#10'FROM lsL' +
      'oanDetail'#13#10'WHERE LoanID = @LoanID'#13#10#13#10'UNION'#13#10#13#10'SELECT LD.LoanID, ' +
      'LD.StartDate, '#39'FO'#39', Description,'#13#10'CASE FS.FeeID'#13#10'WHEN 1 THEN Fee' +
      '1'#13#10'WHEN 2 THEN Fee2'#13#10'WHEN 3 THEN Fee3'#13#10'WHEN 4 THEN Fee4'#13#10'WHEN 5 ' +
      'THEN Fee5'#13#10'WHEN 6 THEN Fee6'#13#10'WHEN 7 THEN Fee7'#13#10'END, 0'#13#10'FROM lsLo' +
      'anDetail LD'#13#10'LEFT JOIN '#13#10' (SELECT LoanType, FeeID, MAX(EffectDat' +
      'e) AS EffectDate'#13#10' FROM lsLoanTFee'#13#10' GROUP BY LoanType, FeeID) L' +
      'F ON LD.LoanType = LF.LoanType'#13#10'LEFT JOIN CodeTable CT ON '#39'10010' +
      '000'#39' + CAST(FeeID AS VARCHAR(2)) = TypeKey'#13#10'LEFT JOIN lsFeeSetup' +
      ' FS ON LF.FeeID = FS.FeeID'#13#10'WHERE LoanID = @LoanID'#13#10'AND ISNULL(T' +
      'ransCode,0) > 0'#13#10#13#10'UNION'#13#10#13#10#13#10'SELECT LD.LoanID, CAST(LEFT(YMKey,' +
      '4) + '#39'-'#39' + RIGHT(YMKey,2) + '#39'-'#39' + CAST(dbo.MIN(dbo.DaysInMonth('#13 +
      #10'LEFT(YMKey,4) + '#39'-'#39' + RIGHT(YMKey,2) + '#39'-01'#39'), LD.CycleEndDay) ' +
      'AS VARCHAR(2)) AS DATETIME), '#39'FM'#39', Description,'#13#10'CASE LF.FeeID'#13#10 +
      'WHEN 1 THEN Fee1'#13#10'WHEN 2 THEN Fee2'#13#10'WHEN 3 THEN Fee3'#13#10'WHEN 4 THE' +
      'N Fee4'#13#10'WHEN 5 THEN Fee5'#13#10'WHEN 6 THEN Fee6'#13#10'WHEN 7 THEN Fee7'#13#10'EN' +
      'D, 0'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN '#13#10' (SELECT LoanType, FeeID' +
      ', MAX(EffectDate) AS EffectDate'#13#10' FROM lsLoanTFee'#13#10' GROUP BY Loa' +
      'nType, FeeID) LF ON LD.LoanType = LF.LoanType'#13#10'LEFT JOIN CodeTab' +
      'le CT ON '#39'10010000'#39' + CAST(FeeID AS VARCHAR(2)) = TypeKey'#13#10'LEFT ' +
      'JOIN lsFeeSetup FS ON LF.FeeID = FS.FeeID'#13#10'LEFT JOIN lsLoanCntr ' +
      'CR ON LD.LoanID = CR.LoanID'#13#10'WHERE LD.LoanID = @LoanID'#13#10'AND ISNU' +
      'LL(TransCode,0) = 0'#13#10'AND PayAmt < 0'#13#10')aa'#13#10#13#10'ORDER BY TransDate, ' +
      'CASE TransType WHEN '#39'D'#39' THEN 1 WHEN '#39'FO'#39' THEN 2 WHEN '#39'P'#39' THEN 3 ' +
      'WHEN '#39'FM'#39' THEN 4 ELSE 5 END '#13#10
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 299
    Top = 192
  end
  object cmdNewContract: TADOCommand
    CommandText = 
      'DECLARE @LoanID INT, @EndDate DATETIME'#13#10#13#10'SELECT @LoanID = LoanI' +
      'D, @EndDate = dbo.EndOfMonth(DATEADD(MONTH, LoanPeriod-1, FirstI' +
      'nsDate))'#13#10'FROM lsLoanDetail'#13#10'WHERE LoanID = :LoanID'#13#10#13#10'DELETE FR' +
      'OM lsLoanContract WHERE LoanID = @LoanID'#13#10'DELETE FROM lsLoanCont' +
      'ractRevision WHERE LoanID = @LoanID'#13#10#13#10'INSERT INTO lsLoanContrac' +
      'tRevision'#13#10'SELECT LoanID, 0, StartDate, GETDATE(), '#39'System'#39#13#10'FRO' +
      'M lsLoanDetail'#13#10'WHERE LoanID = @LoanID'#13#10#13#10'INSERT INTO lsLoanCont' +
      'ract (LoanID, TransactionDate, TransactionType, Description, Amo' +
      'unt, RevisionNo)'#13#10'SELECT LoanID, TransDate, TransType, Descripti' +
      'on, Amount, RevisionNo'#13#10'FROM'#13#10'('#13#10'--ADD INTEREST TO CONTRACT'#13#10'SEL' +
      'ECT LoanID, MonthEndDate AS TransDate, '#39'I'#39' AS TransType, '#39#39' AS D' +
      'escription, 0 AS Amount, 0 AS RevisionNo'#13#10'FROM lsLoanDetail'#13#10'LEF' +
      'T JOIN lsMonthEnd ON MonthEndDate BETWEEN StartDate AND @EndDate' +
      #13#10'WHERE LoanID = @LoanID'#13#10#13#10'UNION'#13#10#13#10'--ADD MONTHLY INSTALMENT TO' +
      ' CONTRACT'#13#10'SELECT LoanID, dbo.dMIN(MonthEndDate,DATEADD(DAY, Cyc' +
      'leEndDay - DATEPART(DAY, MonthEndDate), MonthEndDate)), '#39'P'#39', '#39#39',' +
      ' PayIns * -1, 0'#13#10'FROM lsLoanDetail'#13#10'LEFT JOIN lsMonthEnd ON Mont' +
      'hEndDate BETWEEN FirstInsDate AND @EndDate'#13#10'WHERE LoanID = @Loan' +
      'ID'#13#10#13#10'UNION'#13#10#13#10'--ADD LOAN DISBURSEMENT TO CONTRACT'#13#10'SELECT LoanI' +
      'D, StartDate, '#39'D'#39', '#39#39', LoanCapital, 0'#13#10'FROM lsLoanDetail'#13#10'WHERE ' +
      'LoanID = @LoanID'#13#10#13#10'UNION'#13#10#13#10'SELECT LD.LoanID, StartDate, '#39'FO'#39', ' +
      'FeeName, Amount, 0'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN lsLoanFee LF' +
      ' ON LD.LoanID = LF.LoanID'#13#10'LEFT JOIN lsLoanTypeFee TF ON LF.FeeI' +
      'D = TF.FeeID'#13#10'WHERE LD.LoanID = @LoanID'#13#10'AND FeeTypeID IN (1,2) ' +
      '-- FINANCED FEES'#13#10#13#10'UNION'#13#10#13#10'SELECT LD.LoanID, StartDate, '#39'FFM'#39',' +
      ' FeeName, Amount, 0'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN lsLoanFee L' +
      'F ON LD.LoanID = LF.LoanID'#13#10'LEFT JOIN lsLoanTypeFee TF ON LF.Fee' +
      'ID = TF.FeeID'#13#10'WHERE LD.LoanID = @LoanID'#13#10'AND FeeTypeID IN (3) -' +
      '- FINANCED FEES'#13#10#13#10'UNION'#13#10#13#10'SELECT LD.LoanID, dbo.dMIN(MonthEndD' +
      'ate,DATEADD(DAY, CycleEndDay - DATEPART(DAY, MonthEndDate), Mont' +
      'hEndDate)), '#39'FM'#39', FeeName, Amount, 0'#13#10'FROM lsLoanDetail LD'#13#10'LEFT' +
      ' JOIN lsLoanFee LF ON LD.LoanID = LF.LoanID'#13#10'LEFT JOIN lsLoanTyp' +
      'eFee TF ON LF.FeeID = TF.FeeID'#13#10'LEFT JOIN lsMonthEnd ME ON Month' +
      'EndDate BETWEEN FirstInsDate AND @EndDate'#13#10'WHERE LD.LoanID = @Lo' +
      'anID'#13#10'AND FeeTypeID = 6 --MONTHLY FEES'#13#10#13#10'UNION'#13#10#13#10#13#10'SELECT LD.L' +
      'oanID, MonthEndDate AS TransDate, '#39'FB'#39' AS TransType, FeeName, 0 ' +
      'AS Amount, 0 AS RevisionNo'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN lsLo' +
      'anFee LF ON LD.LoanID = LF.LoanID'#13#10'LEFT JOIN lsLoanTypeFee TF ON' +
      ' LF.FeeID = TF.FeeID'#13#10'LEFT JOIN lsMonthEnd ON MonthEndDate BETWE' +
      'EN StartDate AND @EndDate'#13#10'WHERE LD.LoanID = @LoanID'#13#10'AND FeeTyp' +
      'eID = 11 --MONTHLY CALC FEE ON OUTSTANDING BALANCE'#13#10')aa'#13#10#13#10'ORDER' +
      ' BY TransDate, CASE TransType WHEN '#39'D'#39' THEN 1 WHEN '#39'FO'#39' THEN 2 W' +
      'HEN '#39'P'#39' THEN 3 WHEN '#39'FM'#39' THEN 4 ELSE 5 END'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 99
    Top = 192
  end
  object cmdUpdateInterest: TADOCommand
    CommandText = 
      'SET NOCOUNT ON'#13#10#13#10'DECLARE @LoanID INT, @ContractDate DATETIME, @' +
      'RevisionNo INT, @Balance MONEY'#13#10#13#10'SELECT @LoanID = :LoanID'#13#10#13#10'SE' +
      'LECT @RevisionNo = MAX(RevisionNo), @ContractDate = EffectiveDat' +
      'e'#13#10'FROM lsLoanContractRevision'#13#10'WHERE LoanID = @LoanId'#13#10'GROUP BY' +
      ' LoanID, EffectiveDate'#13#10#13#10'SELECT  @Balance = ISNULL(SUM(Amount),' +
      '0)'#13#10'FROM lsLoanContract'#13#10'WHERE LoanID = @LoanID'#13#10'AND Transaction' +
      'Date <= @ContractDate - 1'#13#10#13#10'DECLARE  @Date DATETIME, @LastDay I' +
      'NT, @LastDate DATETIME, @IntRate DECIMAL(15,12), @Amount MONEY,'#13 +
      #10'@Interest MONEY, @LastBalance MONEY, @TotalInterest MONEY, @Tot' +
      'alFees MONEY, @StartDate DATETIME, @TransType VARCHAR(10)'#13#10#13#10#9'IF' +
      ' OBJECT_ID('#39'tempdb..#ContractRevision'#39') IS NOT NULL'#13#10#9#9'DROP TABL' +
      'E #ContractRevision'#13#10#13#10#9'SELECT RecordID, LC.LoanID, TransactionD' +
      'ate, LC.TransactionType, '#13#10#9'CASE WHEN LC.TransactionType = '#39'I'#39' T' +
      'HEN 0 ELSE Amount END AS Amount, '#13#10#9'CASE WHEN MonthEndDate IS NU' +
      'LL OR LC.TransactionType <> '#39'I'#39' THEN 0 ELSE 1 END AS IsMonthEnd,' +
      #13#10#9'(SELECT TOP 1 InterestRate'#13#10#9'FROM lsLoanRate'#13#10#9'WHERE LoanID =' +
      ' LC.LoanID'#13#10#9'AND EffectiveDate <= TransactionDate'#13#10#9'ORDER BY Eff' +
      'ectiveDate DESC) AS InterestRate, CAST(0 AS MONEY) AS Balance, C' +
      'AST(0 AS MONEY) AS Interest'#13#10#9'INTO #ContractRevision'#13#10#9'FROM lsLo' +
      'anContract LC'#13#10#9'LEFT JOIN lsContractTransType TT ON LC.Transacti' +
      'onType = TT.TransactionType'#13#10#9'LEFT JOIN lsLoanContractRevision L' +
      'R ON LC.LoanID = LR.LoanID AND LR.RevisionNo = @RevisionNo'#13#10#9'LEF' +
      'T JOIN lsMonthEnd ME ON TransactionDate = ME.MonthEndDate'#13#10#9'WHER' +
      'E LC.LoanID = @LoanID'#13#10#9'AND TransactionDate >= @ContractDate'#13#10#9'A' +
      'ND (LC.RevisionNo = LR.RevisionNo'#13#10#9'OR (LC.RevisionNo < LR.Revis' +
      'ionNo '#13#10#9'AND TransactionDate <= LR.EffectiveDate))'#13#10#9'ORDER BY Tr' +
      'ansactionDate, OrderNo'#13#10#13#10#9'UPDATE #ContractRevision SET @Balance' +
      ' = @Balance + Amount, Balance = @Balance'#13#10#13#10'DECLARE IntCursor CU' +
      'RSOR FOR'#13#10#9'SELECT LoanID, TransactionDate, TransactionType, Amou' +
      'nt, IsMonthEnd, InterestRate/100/365, Balance'#13#10#9'FROM #ContractRe' +
      'vision'#13#10'OPEN IntCursor'#13#10#13#10'FETCH NEXT FROM IntCursor'#13#10#9'INTO @Loan' +
      'ID, @Date, @TransType, @Amount, @LastDay, @IntRate, @Balance'#13#10#13#10 +
      #9'SELECT  @LastDate = @Date, @Interest = 0, @TotalInterest = 0, @' +
      'TotalFees = 0, @LastBalance = @Balance'#13#10#13#10'WHILE @@FETCH_STATUS =' +
      ' 0'#13#10'BEGIN'#13#10#13#10#9'UPDATE #ContractRevision SET Interest = (DATEDIFF(' +
      'DAY,@LastDate,@Date) * @IntRate * @LastBalance) WHERE Transactio' +
      'nDate = @Date'#13#10#9#13#10#9'SET @Interest = @Interest + (DATEDIFF(DAY,@La' +
      'stDate,@Date) * @IntRate * (@LastBalance + @TotalInterest + @Tot' +
      'alFees));'#13#10#9#13#10#9'IF @LastDay = 1'#13#10#9#9'IF @Date <> @ContractDate'#13#10#9#9'B' +
      'EGIN'#13#10#9#9#9'UPDATE #ContractRevision SET Amount = @Interest WHERE T' +
      'ransactionType = '#39'I'#39' AND TransactionDate = @Date'#13#10#9#9#9#13#10#9#9#9'SELECT' +
      ' @TotalInterest = @TotalInterest + @Interest'#13#10#9#13#10#9#9#9'SET @Interes' +
      't = 0'#13#10#9#9'END'#13#10#13#10#9'IF @TransType = '#39'FB'#39#13#10#9'BEGIN'#13#10#9#9'UPDATE #Contrac' +
      'tRevision SET Amount = (@LastBalance + @TotalInterest + @TotalFe' +
      'es) * 0.0055'#13#10#9#9'WHERE TransactionType = @TransType AND Transacti' +
      'onDate = @Date'#13#10#9#9'SELECT @TotalFees = @TotalFees + ((@LastBalanc' +
      'e + @TotalInterest + @TotalFees) * 0.0055)'#13#10#9'END'#13#10#13#10#9#13#10#9'SET @Las' +
      'tDate = @Date'#9#13#10#9'SET @LastBalance = @Balance'#13#10#13#10#9'FETCH NEXT FROM' +
      ' IntCursor'#13#10#9#9'INTO @LoanID, @Date, @TransType, @Amount, @LastDay' +
      ', @IntRate, @Balance'#13#10#13#10'END '#13#10#13#10'CLOSE IntCursor'#13#10'DEALLOCATE IntC' +
      'ursor'#13#10#13#10'UPDATE LC SET Amount = CR.Amount'#13#10'FROM lsLoanContract L' +
      'C'#13#10'LEFT JOIN #ContractRevision CR ON LC.RecordID = CR.RecordID'#13#10 +
      'LEFT JOIN lsLoanContractRevision RC ON LC.LoanID = RC.LoanID AND' +
      ' @RevisionNo = RC.RevisionNo'#13#10'WHERE CR.TransactionType IN ('#39'I'#39', ' +
      #39'FB'#39')'#13#10'AND LC.TransactionDate >= RC.EffectiveDate'#13#10
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 195
    Top = 192
  end
  object dsLoanContractOLD: TADODataSet
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'DECLARE @LoanID INT, @Balance MONEY, @RevisionNo INT'#13#10#13#10'SELECT @' +
      'LoanID = :LoanID, @Balance = 0, @RevisionNo = :RevisionNo'#13#10#13#10'DEC' +
      'LARE @tblContract TABLE ('#13#10#9'RecordID INT,'#13#10#9'LoanID INT,'#13#10#9'Revisi' +
      'onNo INT,'#13#10#9'TransactionDate DATETIME,'#13#10#9'TransactionType VARCHAR(' +
      '50),'#13#10#9'TransTypeCode VARCHAR(10),'#13#10#9'Description VARCHAR(50),'#13#10#9'A' +
      'mount MONEY,'#13#10#9'Balance MONEY)'#13#10#13#10'INSERT INTO @tblContract'#13#10'SELEC' +
      'T RecordID, LC.LoanID, LC.RevisionNo, TransactionDate, TT.Descri' +
      'ption AS TransactionType, '#13#10'LC.TransactionType AS TransTypeCode,' +
      ' LC.Description, Amount, @Balance AS Balance'#13#10'FROM lsLoanContrac' +
      't LC '#13#10'LEFT JOIN lsLoanContractRevision CR ON CR.LoanID = LC.Loa' +
      'nID '#13#10#9'AND CR.RevisionNo = LC.RevisionNo + 1'#13#10#9'AND CR.RevisionNo' +
      ' <= @RevisionNo'#13#10'LEFT JOIN lsContractTransType TT ON LC.Transact' +
      'ionType = TT.TransactionType'#13#10'WHERE LC.LoanID = @LoanID'#13#10'AND Tra' +
      'nsactionDate <= ISNULL(EffectiveDate, TransactionDate)'#13#10'AND Lc.R' +
      'evisionNo <= @RevisionNo'#13#10'ORDER BY TransactionDate, OrderNo'#13#10#13#10'U' +
      'PDATE @tblContract SET @Balance = @Balance + Amount, Balance = @' +
      'Balance'#13#10'WHERE LoanID = @LoanID'#13#10#13#10'SELECT RecordID, LoanID, Revi' +
      'sionNo, TransactionDate, TransactionType, RTRIM(TransTypeCode) A' +
      'S TransTypeCode, Description, '#13#10'CASE WHEN Amount >= 0 THEN Amoun' +
      't ELSE NULL END AS DebitAmount, '#13#10'CASE WHEN Amount < 0 THEN Amou' +
      'nt ELSE NULL END AS CreditAmount, '#13#10'Amount, Balance'#13#10'FROM @tblCo' +
      'ntract'#13#10'WHERE LoanID = @LoanID'
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
        Name = 'RevisionNo'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 146
    Top = 119
  end
end
