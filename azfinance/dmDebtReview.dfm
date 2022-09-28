object dtmDebtReview: TdtmDebtReview
  OldCreateOrder = False
  Left = 395
  Top = 269
  Height = 239
  Width = 360
  object dsAccount: TADODataSet
    Active = True
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'DebtReviewID, AccountID, CreateDate, CreateUserID, Cre' +
      'ateUser, ApplicationDate, ApproveRejectDate,'#13#10#9'Approved, CancelD' +
      'ate, CancelledBy, Excluded, CreateUser171, CreateDate171, Create' +
      'User172, CreateDate172,'#13#10#9'CreateUser174, CreateDate174'#13#10'FROM'#13#10#9'(' +
      'SELECT '#13#10#9#9'DR.DebtReviewID, DR.AccountID, DR.CreateDate, DR.Crea' +
      'teUserID, ST.UserID AS CreateUser,'#13#10#9#9'DR.ApplicationDate, DR.App' +
      'roveRejectDate, DR.Approved, DR.CancelDate, DR.CancelledBy, DR.E' +
      'xcluded,'#13#10#9#9'RANK() OVER (PARTITION BY DR.AccountID ORDER BY D1.C' +
      'reateDate DESC) AS Rank171, '#13#10#9#9'D1.CreateUser AS CreateUser171, ' +
      'D1.CreateDate AS CreateDate171,'#13#10#9#9'RANK() OVER (PARTITION BY DR.' +
      'AccountID ORDER BY D2.CreateDate DESC) AS Rank172, '#13#10#9#9'D2.Create' +
      'User AS CreateUser172, D2.CreateDate AS CreateDate172,'#13#10#9#9'RANK()' +
      ' OVER (PARTITION BY DR.AccountID ORDER BY D4.CreateDate DESC) AS' +
      ' Rank174, '#13#10#9#9'D4.CreateUser AS CreateUser174, D4.CreateDate AS C' +
      'reateDate174'#13#10#9'FROM DCC_DebtReview DR'#13#10#9'LEFT JOIN SecurityTbl ST' +
      ' ON DR.CreateUserID = ST.UserKey'#13#10#9'LEFT JOIN dtDocs D1 ON DR.Acc' +
      'ountID = D1.LoanID'#13#10#9#9'AND D1.DocType = '#39'DR171'#39#13#10#9'LEFT JOIN dtDoc' +
      's D2 ON DR.AccountID = D2.LoanID'#13#10#9#9'AND D2.DocType = '#39'DR172'#39#13#10#9'L' +
      'EFT JOIN dtDocs D4 ON DR.AccountID = D4.LoanID'#13#10#9#9'AND D4.DocType' +
      ' = '#39'DR174'#39#13#10#9'WHERE DR.AccountID = :AccountID'#13#10#9')DR'#13#10'WHERE '#13#10#9'Ran' +
      'k171 = 1'#13#10#9'AND Rank172 = 1'#13#10#9'AND Rank174 =1'
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 24
  end
  object dtsAccount: TDataSource
    DataSet = dsAccount
    Left = 32
    Top = 40
  end
  object cmdInsert: TADOCommand
    CommandText = 
      'INSERT INTO DCC_DebtReview (AccountID, CreateUserID) VALUES (:Ac' +
      'countID, :UserID)'#13#10#13#10'SELECT :DebtReviewID = SCOPE_IDENTITY()'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'DebtReviewID'
        Attributes = [paSigned]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 128
    Top = 24
  end
  object cmdUpdate: TADOCommand
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 128
    Top = 80
  end
end
