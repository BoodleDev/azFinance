object dtmLoanStatus: TdtmLoanStatus
  OldCreateOrder = False
  Left = 322
  Top = 200
  Height = 239
  Width = 364
  object qryLegalStatus: TADOQuery
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
      
        'SELECT CAST(CASE WHEN HOProcessed IS NULL THEN 0 ELSE 1 END AS b' +
        'it) AS HandedOver,'
      
        'CAST(CASE WHEN JDProcessed = 1 THEN 1 ELSE 0 END AS bit) AS Judg' +
        'ement'
      'FROM Legal'
      'WHERE LoanID = :LoanID')
    Left = 32
    Top = 20
  end
  object qryIsBadDebt: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT COUNT(*)'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = :LoanID '#13#10'A' +
      'ND TransType = 24'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 128
    Top = 24
  end
  object cmdReviewLastStatus: TADOCommand
    CommandText = 
      'DECLARE @LastStatus INT'#13#10#13#10'SET @LastStatus = 0'#13#10#13#10'SELECT TOP 1 @' +
      'LastStatus = LoanStatus'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN lsDDLoa' +
      'nStatus LS ON LD.LoanID = LS.LoanID'#13#10'WHERE Status = 5'#13#10'AND LD.Lo' +
      'anID = :LoanID'#13#10'AND LoanStatus <> 5'#13#10'ORDER BY DDID DESC'#13#10#13#10'SELEC' +
      'T :LastStatus = @LastStatus'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'LastStatus'
        DataType = ftInteger
        Direction = pdReturnValue
        Size = -1
        Value = Null
      end>
    Left = 224
    Top = 16
  end
end
