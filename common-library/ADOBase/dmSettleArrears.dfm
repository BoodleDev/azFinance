object dtmSettleArrears: TdtmSettleArrears
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 319
  Top = 249
  Height = 234
  Width = 564
  object dsInterestTrans: TADODataSet
    Connection = dbSettleArrears
    CursorType = ctStatic
    CommandText = 
      'SELECT EffectDate, CAST(BH.TransCode AS varchar(5)) + '#39' - '#39' + De' +
      'scription AS Description, '#13#10'RefNo, Amount'#13#10'FROM lsBatchhistory B' +
      'H'#13#10'LEFT JOIN TransSetup TS ON BH.TransCode = TS.TransCode'#13#10'WHERE' +
      ' LoanID = :prLoanID'#13#10'AND BH.TransType = 3'#13#10'ORDER BY EffectDate'
    Parameters = <
      item
        Name = 'prLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 24
  end
  object dsChargesTrans: TADODataSet
    Connection = dbSettleArrears
    CursorType = ctStatic
    CommandText = 
      'SELECT EffectDate, CAST(BH.TransCode AS varchar(5)) + '#39' - '#39' + De' +
      'scription AS Description, '#13#10'RefNo, AmtPost AS Amount'#13#10'FROM lsBat' +
      'chhistory BH'#13#10'LEFT JOIN TransSetup TS ON BH.TransCode = TS.Trans' +
      'Code'#13#10'WHERE LoanID = :prLoanID'#13#10'AND BH.TransType IN (1,2)'#13#10'ORDER' +
      ' BY EffectDate'
    Parameters = <
      item
        Name = 'prLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 96
  end
  object dsInterestSum: TADODataSet
    Connection = dbSettleArrears
    CursorType = ctStatic
    CommandText = 
      'SELECT SUM(Amount)'#13#10'FROM lsBatchhistory'#13#10'WHERE LoanID = :prLoanI' +
      'D'#13#10'AND TransType = 3'
    Parameters = <
      item
        Name = 'prLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 24
  end
  object dsChargesSum: TADODataSet
    Connection = dbSettleArrears
    CursorType = ctStatic
    CommandText = 
      'SELECT SUM(AmtPost)'#13#10'FROM lsBatchhistory'#13#10'WHERE LoanID = :prLoan' +
      'ID'#13#10'AND TransType IN (1,2)'
    Parameters = <
      item
        Name = 'prLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 96
  end
  object dsLastIntDate: TADODataSet
    Connection = dbSettleArrears
    CursorType = ctStatic
    CommandText = 
      'SELECT MAX(EffectDate)'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = :prL' +
      'oanID'#13#10'AND TransCode = 1401'
    Parameters = <
      item
        Name = 'prLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 240
    Top = 24
  end
  object dsContractInt: TADODataSet
    Connection = dbSettleArrears
    CursorType = ctStatic
    CommandText = 
      'SELECT ISNULL(SUM(Interest),0)'#13#10'FROM lsLoanCntr'#13#10'WHERE LoanID = ' +
      ':prLoanID'#13#10'AND YMKey < CONVERT(varchar(6), :prDate,112)'
    Parameters = <
      item
        Name = 'prLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'prDate'
        Attributes = [paSigned]
        DataType = ftDateTime
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 240
    Top = 96
  end
  object dsSumInterest: TADODataSet
    Connection = dbSettleArrears
    CommandText = 
      'SELECT SUM(AmtPost)'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = :prLoan' +
      'ID'#13#10'AND Effectdate <= :prToDate'#13#10'AND TransType IN (4,13,14)'
    Parameters = <
      item
        Name = 'prLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'prToDate'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    Left = 328
    Top = 24
  end
  object dsSumArrears: TADODataSet
    Connection = dbSettleArrears
    CursorType = ctStatic
    CommandText = 
      'SELECT SUM(AmtPost)'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = :prLoan' +
      'ID'#13#10'AND Effectdate <= :prToDate'#13#10'AND TransType = 3'
    Parameters = <
      item
        Name = 'prLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'prToDate'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    Left = 400
    Top = 24
  end
  object dsContractMonth: TADODataSet
    Connection = dbSettleArrears
    CursorType = ctStatic
    CommandText = 
      'SELECT AmtToFin + SUM(Interest) + SUM(PayAmt) AS Balance, LC.Loa' +
      'nID, FirstInsDate, AccType, MthIns, IntRate'#13#10'FROM lsLoanCntr LC'#13 +
      #10'LEFT JOIN lsLoanDetail LD ON LC.LoanID = LD.LoanID'#13#10'LEFT JOIN l' +
      'sLoanTypes LT ON LD.LoanType = LT.LoanType'#13#10'WHERE LC.LoanID = :p' +
      'rLoanID'#13#10'AND YMKey < CONVERT(varchar(6), :prDate,112)'#13#10'GROUP BY ' +
      'LC.LoanID, AmtToFin, FirstInsDate, AccType, MthIns, IntRate'
    Parameters = <
      item
        Name = 'prLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'prDate'
        Attributes = [paSigned]
        DataType = ftDateTime
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 320
    Top = 96
  end
  object dsInterestMth: TADODataSet
    Connection = dbSettleArrears
    CursorType = ctStatic
    CommandText = 
      'SELECT Interest'#13#10'FROM lsLoanCntr'#13#10'WHERE LoanID = :prLoanID'#13#10'AND ' +
      'YMKey = CONVERT(varchar(6), :prDate,112)'
    Parameters = <
      item
        Name = 'prLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'prDate'
        Attributes = [paSigned]
        DataType = ftDateTime
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 400
    Top = 96
  end
  object dbSettleArrears: TADOConnection
    LoginPrompt = False
    AfterConnect = dbSettleArrearsAfterConnect
    AfterDisconnect = dbSettleArrearsAfterDisconnect
    Left = 480
    Top = 24
  end
  object dsArrearsAmount: TADODataSet
    Connection = dbSettleArrears
    CommandText = 'SELECT ArrearsAmt'#13#10'FROM lsLoanDetail'#13#10'WHERE LoanID = :LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 480
    Top = 96
  end
end
