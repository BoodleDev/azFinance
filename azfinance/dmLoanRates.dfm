object dtmLoanRates: TdtmLoanRates
  OldCreateOrder = False
  Top = 246
  Height = 282
  Width = 439
  object dsRateHistory: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsRateHistoryAfterOpen
    OnNewRecord = dsRateHistoryNewRecord
    CommandText = 
      'SELECT LoanID, EffectiveDate, InterestRate, CreateUser, CreateDa' +
      'te,'#13#10'CASE WHEN EffectiveDate <= MonthEndDate THEN 1 ELSE 0 END A' +
      'S Status, Cancelled'#13#10'FROM lsLoanRate LR'#13#10'LEFT JOIN lsMonthEnd ME' +
      ' ON CurrentMonth = 1'#13#10'WHERE LoanID = :LoanID'#13#10'ORDER BY Effective' +
      'Date DESC'
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
    Top = 16
  end
  object dtsRateHistory: TDataSource
    DataSet = dsRateHistory
    Left = 32
    Top = 32
  end
  object dsLoanContract: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'DECLARE @LoanID INT, @Balance MONEY, @RevisionNo INT'#13#10#13#10'SELECT @' +
      'RevisionNo = MAX(RevisionNo), @LoanID = MAX(LoanID), @Balance = ' +
      '0'#13#10'FROM lsLoanContractRevision'#13#10'WHERE LoanID = :LoanID'#13#10#13#10'DECLAR' +
      'E @tblContract TABLE ('#13#10#9'RecordID INT,'#13#10#9'LoanID INT,'#13#10#9'RevisionN' +
      'o INT,'#13#10#9'TransactionDate DATETIME,'#13#10#9'TransactionType VARCHAR(50)' +
      ','#13#10#9'TransTypeCode VARCHAR(10),'#13#10#9'Description VARCHAR(50),'#13#10#9'Amou' +
      'nt MONEY,'#13#10#9'Balance MONEY)'#13#10#13#10'INSERT INTO @tblContract'#13#10'SELECT R' +
      'ecordID, LC.LoanID, LC.RevisionNo, TransactionDate, TT.Descripti' +
      'on AS TransactionType, '#13#10'LC.TransactionType AS TransTypeCode, LC' +
      '.Description, Amount, @Balance AS Balance'#13#10'FROM lsLoanContract L' +
      'C '#13#10'LEFT JOIN lsLoanContractRevision CR ON CR.LoanID = LC.LoanID' +
      ' '#13#10#9'AND CR.RevisionNo = LC.RevisionNo + 1'#13#10#9'AND CR.RevisionNo <=' +
      ' @RevisionNo'#13#10'LEFT JOIN lsContractTransType TT ON LC.Transaction' +
      'Type = TT.TransactionType'#13#10'WHERE LC.LoanID = @LoanID'#13#10'AND Transa' +
      'ctionDate <= ISNULL(EffectiveDate, TransactionDate)'#13#10'AND Lc.Revi' +
      'sionNo <= @RevisionNo'#13#10'ORDER BY TransactionDate, OrderNo'#13#10#13#10'UPDA' +
      'TE @tblContract SET @Balance = @Balance + Amount, Balance = @Bal' +
      'ance'#13#10'WHERE LoanID = @LoanID'#13#10#13#10'SELECT RecordID, LoanID, Revisio' +
      'nNo, TransactionDate, TransactionType, RTRIM(TransTypeCode) AS T' +
      'ransTypeCode, Description, '#13#10'CASE WHEN Amount >= 0 THEN Amount E' +
      'LSE NULL END AS DebitAmount, '#13#10'CASE WHEN Amount < 0 THEN Amount ' +
      'ELSE NULL END AS CreditAmount, '#13#10'Amount, Balance,'#13#10'(SELECT TOP 1' +
      ' InterestRate'#13#10'FROM lsLoanRate'#13#10'WHERE LoanID = CT.LoanID '#13#10'AND E' +
      'ffectiveDate <= TransactionDate'#13#10'ORDER BY TransactionDate DESC) ' +
      'AS InterestRate'#13#10'FROM @tblContract CT'#13#10'WHERE LoanID = @LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Left = 168
    Top = 16
  end
  object dtsLoanContract: TDataSource
    DataSet = dsLoanContract
    Left = 168
    Top = 32
  end
  object dsLoan: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT MthIns, PayIns, CycleEndDay'#13#10'FROM lsLoanDetail'#13#10'WHERE Loa' +
      'nID = :LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 280
    Top = 24
  end
  object cmdAddTransactions: TADOCommand
    CommandText = 
      'DECLARE @LoanID INT, @ContractDate DATETIME, @TransDate DATETIME' +
      ', @EndDate DATETIME, @Periods INT, @Instalment MONEY, @RevisionN' +
      'o INT, @Balance MONEY'#13#10#13#10'SELECT @LoanID = :LoanID, @Periods = :P' +
      'eriods, @TransDate = :TransDate, @EndDate = DATEADD(Month, @Peri' +
      'ods - 1, @TransDate)'#13#10#13#10'SELECT @RevisionNo = MAX(RevisionNo), @I' +
      'nstalment = PayIns, @ContractDate = EffectiveDate'#13#10'FROM lsLoanCo' +
      'ntractRevision LC'#13#10'LEFT JOIN lsLoanDetail LD ON LC.LoanID = LD.L' +
      'oanID'#13#10'WHERE LC.LoanID = @LoanID'#13#10'GROUP BY LC.LoanID, PayIns, Ef' +
      'fectiveDate'#13#10#13#10'/*DELETE'#13#10'FROM lsLoanContract'#13#10'WHERE LoanID = @Lo' +
      'anID'#13#10'AND RevisionNo = @RevisionNo'#13#10'AND TransactionType <> '#39'NR'#39' ' +
      '--NEW INTEREST RATE*/'#13#10#13#10'INSERT INTO lsLoanContract (LoanID, Tra' +
      'nsactionDate, TransactionType, Description, Amount, RevisionNo)'#13 +
      #10'--ADD MONTHLY INSTALMENT TO CONTRACT'#13#10'SELECT LoanID, TransDate,' +
      ' TransType, CT.Description, Amount, RevisionNo'#13#10'FROM'#13#10'('#13#10'SELECT ' +
      'LoanID, dbo.dMIN(MonthEndDate,DATEADD(DAY, CycleEndDay - DATEPAR' +
      'T(DAY, MonthEndDate), MonthEndDate)) AS  TransDate, '#13#10#39'P'#39' AS Tra' +
      'nsType, '#39#39' AS Description, PayIns * -1 AS Amount, @RevisionNo AS' +
      ' RevisionNo'#13#10'FROM lsLoanDetail'#13#10'LEFT JOIN lsMonthEnd ON MonthEnd' +
      'Date BETWEEN @TransDate AND @EndDate'#13#10'WHERE LoanID = @LoanID'#13#10#13#10 +
      'UNION'#13#10#13#10'SELECT LD.LoanID, dbo.dMIN(MonthEndDate,DATEADD(DAY, Cy' +
      'cleEndDay - DATEPART(DAY, MonthEndDate), MonthEndDate)), '#13#10#39'FM'#39',' +
      ' FeeName, Amount, @RevisionNo'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN l' +
      'sLoanFee LF ON LD.LoanID = LF.LoanID'#13#10'LEFT JOIN lsLoanTypeFee TF' +
      ' ON LF.FeeID = TF.FeeID'#13#10'LEFT JOIN lsMonthEnd ME ON MonthEndDate' +
      ' BETWEEN @TransDate AND @EndDate'#13#10'WHERE LD.LoanID = @LoanID'#13#10'AND' +
      ' FeeTypeID = 6 --MONTHLY FEES'#13#10#13#10'UNION'#13#10#13#10'SELECT LD.LoanID, Mont' +
      'hEndDate AS TransDate, '#39'FB'#39' AS TransType, FeeName, 0 AS Amount, ' +
      '@RevisionNo'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN lsLoanFee LF ON LD.' +
      'LoanID = LF.LoanID'#13#10'LEFT JOIN lsLoanTypeFee TF ON LF.FeeID = TF.' +
      'FeeID'#13#10'LEFT JOIN lsMonthEnd ON MonthEndDate BETWEEN @TransDate A' +
      'ND @EndDate'#13#10'WHERE LD.LoanID = @LoanID'#13#10'AND FeeTypeID = 11 --MON' +
      'THLY CALC FEE ON OUTSTANDING BALANCE'#13#10#13#10'UNION'#13#10#13#10'--ADD MONTHLY I' +
      'NTEREST AT ZERO RAND TO CALCULATE FURTHER'#13#10'SELECT @LoanID, Month' +
      'EndDate, '#39'I'#39', '#39#39', 0, @RevisionNo'#13#10'FROM lsMonthEnd'#13#10'WHERE CONVERT' +
      '(VARCHAR(7),MonthEndDate,120) BETWEEN CONVERT(VARCHAR(7),@Contra' +
      'ctDate,120) AND CONVERT(VARCHAR(7),@EndDate,120)'#13#10')CT'#13#10'LEFT JOIN' +
      ' lsContractTransType TT ON CT.TransType = TT.TransactionType'#13#10'OR' +
      'DER BY TransDate, TT.OrderNo'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Periods'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'TransDate'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    Left = 40
    Top = 120
  end
  object dsContractInterest: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'DECLARE @LoanID INT, @ContractDate DATETIME, @RevisionNo INT, @B' +
      'alance MONEY'#13#10#13#10'SELECT @LoanID = :LoanID'#13#10#13#10'SELECT @RevisionNo =' +
      ' MAX(RevisionNo), @ContractDate = EffectiveDate, @Balance = 0'#13#10'F' +
      'ROM lsLoanContractRevision'#13#10'WHERE LoanID = @LoanId'#13#10'GROUP BY Loa' +
      'nID, EffectiveDate'#13#10#13#10'/*SELECT  @Balance = SUM(Amount)'#13#10'FROM lsL' +
      'oanContract'#13#10'WHERE LoanID = @LoanID'#13#10'AND TransactionDate <= @Con' +
      'tractDate*/'#13#10#13#10'DECLARE @tblContract TABLE ('#13#10#9'RecordID INT,'#13#10#9'Lo' +
      'anID INT, '#13#10#9'TransDate DATETIME,'#13#10#9'TransType VARCHAR(10),'#13#10#9'Amou' +
      'nt MONEY,'#13#10#9'IsMonthEnd BIT,'#13#10#9'IntRate DECIMAL(15,2),'#13#10#9'Balance M' +
      'ONEY,'#13#10#9'Interest MONEY)'#13#10#13#10#13#10'DECLARE  @RecordID INT, @Date DATET' +
      'IME, @LastDay INT, @LastDate DATETIME, @IntRate DECIMAL(15,12), ' +
      '@Amount MONEY,'#13#10'@Interest MONEY, @TotalInterest MONEY, @TransTyp' +
      'e VARCHAR(10), @LastRate FLOAT'#13#10#13#10#9'INSERT INTO @tblContract'#9#13#10#9'S' +
      'ELECT RecordID, LC.LoanID, TransactionDate, LC.TransactionType, ' +
      #13#10#9'CASE WHEN LC.TransactionType = '#39'I'#39' THEN 0 ELSE Amount END AS ' +
      'Amount, '#13#10#9'CASE WHEN LC.TransactionType = '#39'I'#39' THEN 1 ELSE 0 END ' +
      'AS IsMonthEnd,'#13#10#9'(SELECT TOP 1 InterestRate'#13#10#9'FROM lsLoanRate'#13#10#9 +
      'WHERE LoanID = LC.LoanID'#13#10#9'AND EffectiveDate <= TransactionDate'#13 +
      #10#9'ORDER BY EffectiveDate DESC) AS InterestRate, CAST(0 AS MONEY)' +
      ' AS Balance, CAST(0 AS MONEY) AS Interest'#13#10#9'FROM lsLoanContract ' +
      'LC '#13#10#9'LEFT JOIN lsLoanContractRevision CR ON CR.LoanID = LC.Loan' +
      'ID '#13#10#9#9'AND CR.RevisionNo = LC.RevisionNo + 1'#13#10#9#9'AND CR.RevisionN' +
      'o <= @RevisionNo'#13#10#9'LEFT JOIN lsContractTransType TT ON LC.Transa' +
      'ctionType = TT.TransactionType'#13#10#9'WHERE LC.LoanID = @LoanID'#13#10#9'AND' +
      ' TransactionDate <= ISNULL(EffectiveDate, TransactionDate)'#13#10#9'AND' +
      ' Lc.RevisionNo <= @RevisionNo'#13#10#9'ORDER BY TransactionDate, OrderN' +
      'o'#13#10#13#10#9'UPDATE @tblContract SET @Balance = @Balance + Amount, Bala' +
      'nce = @Balance'#13#10#13#10'DECLARE IntCursor CURSOR FOR'#13#10#9'SELECT RecordID' +
      ', LoanID, TransDate, Amount, IsMonthEnd, IntRate/100/365, TransT' +
      'ype'#13#10#9'FROM @tblContract'#13#10'OPEN IntCursor'#13#10#13#10'FETCH NEXT FROM IntCu' +
      'rsor'#13#10#9'INTO @RecordID, @LoanID, @Date, @Amount, @LastDay, @IntRa' +
      'te, @TransType'#13#10#13#10#9'SELECT TOP 1 @LastDate = @Date, @Interest = 0' +
      ', @TotalInterest = 0, @Balance = 0, '#13#10#9'@LastRate = @IntRate'#13#10#9'FR' +
      'OM @tblContract'#13#10#13#10'WHILE @@FETCH_STATUS = 0'#13#10'BEGIN'#9#13#10#9'SET @Inter' +
      'est = @Interest + (DATEDIFF(DAY,@LastDate,@Date) * @LastRate * (' +
      '@Balance /*+ @TotalInterest*/));'#13#10#13#10#9'SELECT @LastRate = @IntRate' +
      #13#10#13#10#9'--IF @LastDay = 1'#13#10#9#9'IF @TransType = '#39'I'#39#13#10#9#9'BEGIN'#13#10#9#9#9'--IF ' +
      '@Date > @ContractDate'#13#10#9#9#9'--BEGIN'#13#10#9#9#9#9'UPDATE @tblContract '#13#10#9#9#9 +
      #9'SET Amount = @Interest '#13#10#9#9#9#9'WHERE TransType = '#39'I'#39' '#13#10#9#9#9#9'AND Tr' +
      'ansDate = @Date'#13#10#9#9#9#9#13#10#9#9#9#9'SELECT @TotalInterest = @TotalInteres' +
      't + @Interest, @Amount = @Amount + @Interest'#13#10#9#9#13#10#9#9#9#9'SET @Inter' +
      'est = 0'#13#10#9#9#9'--END'#13#10#9#9'END'#13#10#9#9'ELSE IF @TransType = '#39'FB'#39#13#10#9#9'BEGIN'#13#10 +
      #9#9#9'UPDATE @tblContract'#13#10#9#9#9'SET Amount = @Balance * 0.0055'#13#10#9#9#9'WH' +
      'ERE TransType = '#39'FB'#39#13#10#9#9#9'AND TransDate = @Date'#13#10#13#10#9#9#9'SET @Amount' +
      ' = (@Balance * 0.0055)'#13#10#9#9'END'#13#10#9#13#10#9'SET @LastDate = @Date'#13#10#13#10'SET ' +
      '@Balance = @Balance + @Amount'#13#10#13#10'UPDATE @tblContract'#13#10'SET Balanc' +
      'e = @Balance'#13#10'WHERE RecordID = @RecordID'#13#10#13#10#9'FETCH NEXT FROM Int' +
      'Cursor'#13#10#9#9'INTO @RecordID, @LoanID, @Date, @Amount, @LastDay, @In' +
      'tRate, @TransType'#13#10#13#10'END '#13#10#13#10'CLOSE IntCursor'#13#10'DEALLOCATE IntCurs' +
      'or'#13#10#13#10#13#10'UPDATE LC SET Amount = CR.Amount'#13#10'FROM lsLoanContract LC' +
      #13#10'LEFT JOIN @tblContract CR ON LC.RecordID = CR.RecordID'#13#10'LEFT J' +
      'OIN lsLoanContractRevision RC ON LC.LoanID = RC.LoanID AND @Revi' +
      'sionNo = RC.RevisionNo'#13#10'WHERE CR.TransType IN ('#39'I'#39', '#39'FB'#39')'#13#10'AND L' +
      'C.TransactionDate > RC.EffectiveDate'#13#10'AND LC.RevisionNo = @Revis' +
      'ionNo'#13#10#13#10'SELECT *'#13#10'FROM @tblContract'#13#10
    Parameters = <
      item
        Name = 'LoanID'
        Size = -1
        Value = Null
      end>
    Left = 160
    Top = 112
  end
  object cmdUpdateAmount: TADOCommand
    CommandText = 
      'UPDATE lsLoanContract SET Amount = :Amount'#13#10'WHERE RecordID = :Re' +
      'cordID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'Amount'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'RecordID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 280
    Top = 104
  end
  object cmdAddRevision: TADOCommand
    CommandText = 
      'DECLARE @LoanID INT, @RevisionNo INT'#13#10#13#10'SELECT @LoanID = :LoanID' +
      #13#10#13#10'SELECT @RevisionNo = MAX(RevisionNo) + 1'#13#10'FROM lsLoanContrac' +
      'tRevision'#13#10'WHERE LoanID = @LoanID '#13#10#13#10'INSERT INTO lsLoanContract' +
      'Revision'#13#10'SELECT TOP 1 LoanID, @RevisionNo, EffectiveDate, GETDA' +
      'TE(), :UserID'#13#10'FROM lsLoanRate'#13#10'WHERE LoanID = @LoanID'#13#10'ORDER BY' +
      ' EffectiveDate DESC'#13#10#13#10'INSERT INTO lsLoanContract (LoanID, Trans' +
      'actionDate, TransactionType, Description, Amount, RevisionNo)'#13#10'S' +
      'ELECT TOP 1 CR.LoanID, CR.EffectiveDate, '#39'NR'#39', CAST(InterestRate' +
      ' AS VARCHAR(10)) + '#39'%'#39', 0, RevisionNo'#13#10'FROM lsLoanContractRevisi' +
      'on CR'#13#10'LEFT JOIN lsLoanRate LR ON CR.LoanID = LR.LoanID AND CR.E' +
      'ffectiveDate = LR.EffectiveDate'#13#10'WHERE RevisionNo = @RevisionNo'#13 +
      #10'AND CR.LoanID = @LoanID'#13#10'ORDER BY LR.CreateDate DESC'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'UserID'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 40
    Top = 184
  end
end
