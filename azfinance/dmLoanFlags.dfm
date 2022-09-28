object dtmLoanFlags: TdtmLoanFlags
  OldCreateOrder = False
  Left = 368
  Top = 250
  Height = 272
  Width = 371
  object dsFlags: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT FlagCode, Description, '#39'['#39' + FlagCode + '#39'] '#39' + Descriptio' +
      'n AS Flag'#13#10'FROM lsFlags'#13#10'WHERE Category = :Category'#13#10'ORDER BY Fl' +
      'agCode '
    Parameters = <
      item
        Name = 'Category'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    Left = 184
    Top = 16
  end
  object dsGetCategory: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10'CASE '#13#10'WHEN LD.Status = 40 AND PA.Status = 110017003 TH' +
      'EN '#39'Admin'#39#13#10'WHEN LD.Status = 45 AND ISNULL(HOProcessed,0) = 1 TH' +
      'EN '#39'Legal'#39#13#10'ELSE '#39'Credit Control'#39' END AS Category'#13#10'FROM lsLoanDe' +
      'tail LD'#13#10'LEFT JOIN lsEntPsnAdd PA ON LD.EntityID = PA.EntityID'#13#10 +
      'LEFT JOIN Legal LG ON LD.LoanID = LG.LoanID'#13#10'WHERe LD.LoanID = :' +
      'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 256
    Top = 24
  end
  object dsFlagHistory: TADODataSet
    Active = True
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsFlagHistoryAfterOpen
    CommandText = 
      'SELECT RecordID, LoanID, CreateDate, CreateUser, FH.FlagCode, De' +
      'scription'#13#10'FROM lsFlagHistory FH'#13#10'LEFT JOIN lsFlags FG ON FH.Fla' +
      'gCode = FG.FlagCode'#13#10'WHERE LoanID = :LoanID'#13#10'ORDER BY RecordID D' +
      'ESC'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 16
  end
  object dtsFlagHistory: TDataSource
    DataSet = dsFlagHistory
    Left = 40
    Top = 32
  end
  object dsCurrentFlag: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT TOP 1 FH.FlagCode, Description, '#39'['#39' + FH.FlagCode + '#39'] '#39' ' +
      '+ Description AS Flag'#13#10'FROM lsFlagHistory FH'#13#10'LEFT JOIN lsFlags ' +
      'FL ON FH.FlagCode = FL.FlagCode'#13#10'WHERE LoanID = :LoanID'#13#10'ORDER B' +
      'Y RecordID DESC'
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
    Top = 16
  end
  object cmdInsertFlag: TADOCommand
    CommandText = 
      'INSERT INTO lsFlagHistory VALUES (:LoanID, GETDATE(), :UserID, :' +
      'FlagCode)'
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
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FlagCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 40
    Top = 104
  end
end
