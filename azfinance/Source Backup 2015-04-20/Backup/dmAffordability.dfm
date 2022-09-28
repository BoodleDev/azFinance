object dtmAffordability: TdtmAffordability
  OldCreateOrder = False
  Left = 250
  Top = 197
  Height = 365
  Width = 635
  object dsCategories: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'CT.CategoryID, CT.Description AS Category, SC.Category' +
      'ID AS SubcategoryID, SC.Description AS Subcategory,'#13#10#9'SC.Type, S' +
      'UM(ISNULL(IT.Amount,0)) AS Total, ISNULL(ItemID,0) AS ItemID'#13#10'FR' +
      'OM afCategories SC'#13#10'LEFT JOIN afCategories CT ON SC.ParentID = C' +
      'T.CategoryID'#13#10'LEFT JOIN lsLoanDetail LD ON LD.LoanID = :LoanID'#13#10 +
      'LEFT JOIN afItems IT ON SC.CategoryID = IT.CategoryID '#13#10#9'AND LD.' +
      'LoanID = IT.LoanID'#13#10'WHERE SC.ParentID > 0'#13#10#9'AND SC.Enabled = 1'#13#10 +
      #9'AND (SC.HostID = LD.HostID OR SC.HostID IS NULL)'#13#10'GROUP BY '#13#10#9'C' +
      'T.CategoryID, CT.Description, SC.CategoryID, SC.Description, '#13#10#9 +
      'CT.SortNo, SC.SortNo, SC.Type, ItemID'#13#10'ORDER BY CT.SortNo, SC.So' +
      'rtNo'#13#10
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 136
    Top = 32
  end
  object dtsCategories: TDataSource
    DataSet = dsCategories
    Left = 136
    Top = 48
  end
  object cmdInsertItem: TADOCommand
    CommandText = 
      'INSERT INTO afItems (LoanID, CategoryID, Amount, Description)'#13#10'V' +
      'ALUES (:LoanID, :CategoryID, :Amount, :Description)'#13#10#13#10'SELECT :I' +
      'temID = SCOPE_IDENTITY()'
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
        Name = 'CategoryID'
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
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'Description'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'ItemID'
        DataType = ftString
        Direction = pdReturnValue
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    Left = 232
    Top = 32
  end
  object cmdUpdateItem: TADOCommand
    CommandText = 
      'UPDATE afItems '#13#10'SET Amount = :Amount, Description = :Descriptio' +
      'n'#13#10'WHERE ItemID = :ItemID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'Amount'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'Description'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'ItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 328
    Top = 32
  end
  object cmdDeleteItem: TADOCommand
    CommandText = 'DELETE FROM afItems'#13#10'WHERE ItemID = :ItemID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'ItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 408
    Top = 32
  end
  object cmdGross: TADOCommand
    CommandText = 'EXEC afGross2 :LoanID, 0, :MaxInstal OUTPUT'
    Connection = dtmMain.dbData
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
        Name = 'MaxInstal'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 40
    Top = 112
  end
  object cmdDebtRatio: TADOCommand
    CommandText = 'EXEC afDebtRatio2 :LoanID, 0, :MaxInstal OUTPUT'
    Connection = dtmMain.dbData
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
        Name = 'MaxInstal'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object cmdInstalPercent: TADOCommand
    CommandText = 'EXEC afInstalPercent2 :LoanID, 0, :MaxInstal OUTPUT'
    Connection = dtmMain.dbData
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
        Name = 'MaxInstal'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 40
    Top = 176
  end
  object cmdIncome: TADOCommand
    CommandText = 'EXEC afNetIncome2 :LoanID, :Amount OUTPUT'
    Connection = dtmMain.dbData
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
        Name = 'Amount'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 136
    Top = 176
  end
  object cmdExpenses: TADOCommand
    CommandText = 'EXEC afExpenses2 :LoanID, :Amount OUTPUT'
    Connection = dtmMain.dbData
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
        Name = 'Amount'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 40
    Top = 240
  end
  object cmdLiabilities: TADOCommand
    CommandText = 'EXEC afLiabilities2 :LoanID, :Amount OUTPUT'
    Connection = dtmMain.dbData
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
        Name = 'Amount'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 136
    Top = 240
  end
  object cmdTotalDebt: TADOCommand
    CommandText = 'EXEC afOtherLoans2 :LoanID, :TotalDebt OUTPUT'
    Connection = dtmMain.dbData
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
        Name = 'TotalDebt'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 232
    Top = 96
  end
  object dsSubItems: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    OnNewRecord = dsSubItemsNewRecord
    CommandText = 
      'SELECT SubItemID, Description, Amount, LoanID, CategoryID'#13#10'FROM ' +
      'afSubItems'#13#10'WHERE LoanID = :LoanID'#13#10'AND CategoryID = :CategoryID'
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
        Name = 'CategoryID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 232
    Top = 168
  end
  object dtsSubItems: TDataSource
    DataSet = dsSubItems
    Left = 232
    Top = 184
  end
  object cmdNetIncome: TADOCommand
    CommandText = 
      'DECLARE @Amount MONEY'#13#10#13#10'SELECT @Amount = ISNULL(AVG(Amount),0)'#13 +
      #10'FROM afSubItems'#13#10'WHERE LoanID = :LoanID'#13#10'AND CategoryID = :Cate' +
      'goryID'#13#10#13#10'SELECT :Amount = @Amount'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CategoryID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Amount'
        DataType = ftBCD
        Direction = pdReturnValue
        Size = -1
        Value = Null
      end>
    Left = 328
    Top = 104
  end
  object dsDebt: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsDebtAfterOpen
    BeforeClose = dsDebtBeforeClose
    BeforeEdit = dsDebtBeforeEdit
    OnNewRecord = dsDebtNewRecord
    CommandText = 
      'SELECT AccountID, Subscriber, AccountNo, Source, BA.Status, Open' +
      'Date, Instalment, LoanID, AutoDisabled,'#13#10'CurrentBalance, SettleA' +
      'mount, Period, LastPayDate, Enabled, DisableUser, DisableDate,'#13#10 +
      'BA.CreateUser, BA.CreateDate, DoSettle'#13#10'FROM BureauAccounts BA'#13#10 +
      'WHERE LoanID = :LoanID'#13#10'AND Enabled = 1'#13#10'ORDER BY Source, Subscr' +
      'iber, AccountNo, OpenDate'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 328
    Top = 176
  end
  object dtsDebt: TDataSource
    DataSet = dsDebt
    Left = 328
    Top = 192
  end
  object dsLoanCalc: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LN.LoanID, '#13#10'GrossSurplus, CASE WHEN GrossSurplus < DebtR' +
      'atio AND GrossSurplus < Instalpercent THEN 1 ELSE 0 END AS Gross' +
      'Flagshow,'#13#10'DebtRatio, CASE WHEN DebtRatio <= GrossSurplus AND De' +
      'btRatio <= Instalpercent THEN 1 ELSE 0 END AS DebtFlagShow,'#13#10'Ins' +
      'talPercent, CASE WHEN InstalPercent < GrossSurplus AND InstalPer' +
      'cent < DebtRatio THEN 1 ELSE 0 END AS InstalFlagShow'#13#10'FROM afLoa' +
      'ns LN'#13#10'LEFT JOIN lsLoanDetail LD ON LN.LoanID = LD.LoanID'#13#10'WHERE' +
      ' LN.LoanID = :LoanID'#13#10'AND (Status >= 30 OR Status IN (10,15,18,2' +
      '0))'#13#10
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 424
    Top = 96
  end
  object cmdSetUpdate: TADOCommand
    CommandText = 
      'UPDATE afLoans '#13#10'SET UpdateDate = GETDATE(), UpdateUserID = :Use' +
      'rID'#13#10'WHERE LoanID = :LoanID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 424
    Top = 176
  end
end
