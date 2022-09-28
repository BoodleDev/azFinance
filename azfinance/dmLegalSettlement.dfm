object dtmLegalSettlement: TdtmLegalSettlement
  OldCreateOrder = False
  Left = 287
  Top = 233
  Height = 219
  Width = 397
  object dbLegal: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 24
  end
  object dsLoan: TADODataSet
    Connection = dbLegal
    CursorType = ctStatic
    CommandText = 
      'SELECT HODate, JDDate, JDAmount, dbo.FGetCapBalDate(LG.LoanID, G' +
      'ETDATE()) AS LoanBalance, '#13#10'SUM(AmtPost) AS LegalFees, Value AS ' +
      'Rate, LD.RefNo AS LoanRef'#13#10'FROM Legal LG'#13#10'LEFT JOIN lsBatchHisto' +
      'ry BH ON LG.LoanID = BH.LoanID AND TransType IN (28,29)'#13#10'LEFT JO' +
      'IN Config CF ON Name = '#39'LG_Rate'#39#13#10'LEFT JOIN lsLoanDetail LD ON L' +
      'G.LoanID = LD.LoanID'#13#10'WHERE LG.LoanID = :LoanID'#13#10'GROUP BY LG.Loa' +
      'nID, HODate, JDDate, JDAmount, Value, LD.RefNo'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 112
    Top = 24
  end
  object dsSettle: TADODataSet
    Connection = dbLegal
    CommandText = 
      'DECLARE @LoanID INT, @Date DATETIME, @Balance MONEY, @LastDay IN' +
      'T, @LastDate DATETIME, @IntRate DECIMAL(15,12), '#13#10'@Interest MONE' +
      'Y, @LastBalance MONEY, @LastLoanID INT, @TotalInterest MONEY, @S' +
      'ettleLoanID INT, @SettleDate DATETIME'#13#10#13#10'SELECT @IntRate = 15.5/' +
      '100/365, @SettleLoanID = :LoanID, @SettleDate = :SettleDate'#13#10#13#10'D' +
      'ECLARE HOIntCursor CURSOR FOR'#13#10#13#10#9'SELECT LH.LoanID, ValueDate, d' +
      'bo.FGetCapBalDate(LH.LoanID, ValueDate) AS Balance, LastDay--, J' +
      'DDate'#13#10#9'FROM ('#13#10#9#9'SELECT LG.LoanID, ValueDate, 0 AS LastDay'#13#10#9#9'F' +
      'ROM Legal LG'#13#10#9#9'LEFT JOIN lsBatchHistory BH ON LG.LoanID = BH.Lo' +
      'anID AND BH.ValueDate > HODate'#13#10#9#9'WHERE HOProcessed = 1'#13#10#9#9'AND T' +
      'ransType not in (3,5,6,7,8,9,10,19,20)'#13#10#9#9'AND ValueDate >= HODat' +
      'e'#13#10#9#9'AND AmtPost <> 0'#13#10#9#13#10#9#9'UNION'#13#10#9#13#10#9#9'SELECT LG.LoanID, MonthE' +
      'ndDate, 1'#13#10#9#9'FROM lsMonthEnd ME, Legal LG'#13#10#9#9'WHERE MonthEndDate ' +
      '>= LG.HODate'#13#10#9#9'AND HOProcessed = 1'#13#10#13#10#9#9'UNION'#13#10#9#9#13#10#9#9'SELECT @Se' +
      'ttleLoanID, @SettleDate, 0'#13#10#9')LH'#13#10#9'LEFT JOIN Legal LG ON LH.Loan' +
      'ID = LG.LoanID'#13#10#9'WHERE ValueDate BETWEEN JDDate AND @SettleDate'#13 +
      #10#9'AND LH.LoanID = @SettleLoanID'#13#10#9'ORDER BY LH.LoanID, ValueDate'#13 +
      #10#9#9#13#10#13#10'OPEN HOIntCursor'#13#10#13#10'FETCH NEXT FROM HOIntCursor'#13#10#9'INTO @L' +
      'oanID, @Date, @Balance, @LastDay'#13#10#13#10#9'SELECT  @LastDate = @Date, ' +
      '@Interest = 0, @LastBalance = 0, @LastLoanID = 0'#13#10#13#10'WHILE @@FETC' +
      'H_STATUS = 0'#13#10'BEGIN'#13#10#9'IF @LastLoanID <> @LoanID'#13#10#9'BEGIN'#13#10#9#9'IF @L' +
      'astLoanID > 0'#13#10#9#9#9'SELECT @LastLoanID AS LoanID, @TotalInterest A' +
      'S TotalInterest'#13#10#13#10#9#9'SET @LastBalance = @Balance'#13#10#9#9'SET @LastDat' +
      'e = @Date'#13#10#9#9'SET @TotalInterest = 0'#13#10#9'END'#13#10#13#10#9'SET @Interest = @I' +
      'nterest + (DATEDIFF(DAY,@LastDate,@Date) * @IntRate * (@LastBala' +
      'nce + @TotalInterest));'#13#10#9'--SELECT @LAstBalance'#13#10#13#10#9'IF @LastDay ' +
      '= 1'#13#10#9'BEGIN'#13#10#9#9'IF @Interest >= 0.01'#13#10#9#9'BEGIN'#13#10#9#9#9'/*INSERT INTO l' +
      'sBatchTrans '#13#10#9#9#9'SELECT 4725, '#39'B000004725'#39', LoanID, LD.EntityID,' +
      ' ED.EntCode, 1407, 14, 0,'#13#10#9#9#9'0, 0, '#39'2007-01-31'#39', '#39'2006-12-31'#39', ' +
      '@Date, GETDATE(), @Interest, 0, '#39'Daniel'#39', '#39#39','#39#39',0'#13#10#9#9#9'FROM lsLoa' +
      'nDetail LD'#13#10#9#9#9'LEFT JOIN EntityData ED ON LD.EntityID = ED.Entit' +
      'yID'#13#10#9#9#9'WHERE LoanID = @LoanID */'#13#10#13#10#9#9#9'--SELECT @LoanID, CASE W' +
      'HEN @Interest <= 0 THEN 0 ELSE @Interest END, @Date'#13#10#9#9#13#10#9#9#9'SET ' +
      '@TotalInterest = @TotalInterest + @Interest'#13#10#9#9'END'#13#10#13#10#9#9'SET @Int' +
      'erest = 0'#13#10#9'END'#13#10#9#13#10#9'SET @LastDate = @Date'#9#13#10#9'SET @LastBalance =' +
      ' @Balance'#13#10#9'SET @LastLoanID = @LoanID'#13#10#13#10#9'FETCH NEXT FROM HOIntC' +
      'ursor'#13#10#9#9'INTO @LoanID, @Date, @Balance, @LastDay'#13#10#13#10'END '#13#10#13#10'CLOS' +
      'E HOIntCursor'#13#10'DEALLOCATE HOIntCursor'#13#10#13#10'SET @TotalInterest = @T' +
      'otalInterest + @Interest'#13#10#13#10'SELECT @LastLoanID AS LoanID, @Total' +
      'Interest AS TotalInterest'#13#10
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
    Left = 176
    Top = 24
  end
end
