object dtmAffordability: TdtmAffordability
  OldCreateOrder = False
  Left = 413
  Top = 371
  Height = 580
  Width = 1157
  object dsCategories: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @LoanID INT;'#13#10'SET @LoanID = :LoanID'#13#10'SELECT '#13#10#9'CT.Catego' +
      'ryID, CT.Description AS Category, SC.CategoryID AS SubcategoryID' +
      ', SC.Description AS Subcategory,'#13#10#9'SC.Type, SUM(ISNULL(IT.Amount' +
      ',0)) AS Total, ISNULL(IT.ItemID,0) AS ItemID'#13#10#9'FROM afCategories' +
      ' SC'#13#10#9'LEFT JOIN afCategories CT ON SC.ParentID = CT.CategoryID'#13#10 +
      #9'LEFT JOIN lsLoanDetail LD ON LD.LoanID = @LoanID'#13#10#9'LEFT JOIN '#13#10 +
      #9'('#13#10#9#9'SELECT AI.ItemID, AI.LoanID, AI.CategoryID, AI.Amount,'#13#10#9#9 +
      #9'ROW_NUMBER() OVER (PARTITION BY AI.LoanID, AI.CategoryID ORDER ' +
      'BY AI.ItemID DESC) RowNumber'#13#10#9#9#9'FROM afItems AI'#13#10#9#9'WHERE AI.Loa' +
      'nID = @LoanID AND AI.PartyType = '#39'A'#39#13#10#9') IT ON SC.CategoryID = I' +
      'T.CategoryID '#13#10#9#9'AND LD.LoanID = IT.LoanID '#13#10#9#9'AND IT.RowNumber ' +
      '= 1'#13#10'WHERE SC.ParentID IN (24,25,47)'#13#10#9'AND SC.CategoryID IN (27,' +
      '28,45,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,46,48)'#9#9#9#9 +
      #9#9' '#13#10#9'AND (SC.HostID = LD.HostID OR SC.HostID IS NULL)'#13#10'GROUP BY' +
      ' '#13#10#9'CT.CategoryID, CT.Description, SC.CategoryID, SC.Description' +
      ', '#13#10#9'CT.SortNo, SC.SortNo, SC.Type, ItemID'#13#10'ORDER BY CT.SortNo, ' +
      'SC.SortNo'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 47
    Top = 21
    object dsCategoriesCategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object dsCategoriesCategory: TStringField
      FieldName = 'Category'
      Size = 30
    end
    object dsCategoriesSubcategoryID: TIntegerField
      FieldName = 'SubcategoryID'
    end
    object dsCategoriesSubcategory: TStringField
      FieldName = 'Subcategory'
      Size = 30
    end
    object dsCategoriesType: TStringField
      FieldName = 'Type'
      FixedChar = True
      Size = 1
    end
    object dsCategoriesTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 19
    end
    object dsCategoriesItemID: TIntegerField
      FieldName = 'ItemID'
      ReadOnly = True
    end
  end
  object dtsCategories: TDataSource
    DataSet = dsCategories
    Left = 47
    Top = 36
  end
  object cmdInsertItem: TADOCommand
    CommandText = 
      'INSERT INTO afItems (LoanID, CategoryID, [Description], PartyTyp' +
      'e, Amount, ActionID, ActionUserID, ActionDate)'#13#10'VALUES (:LoanID,' +
      ' :CategoryID, :Description, :PartyType, :Amount, 1, :ActionUserI' +
      'D, GETDATE()) -- *** 1 = Added '#13#10#13#10'SELECT :ItemID = SCOPE_IDENTI' +
      'TY()'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CategoryID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Description'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'PartyType'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = -1
        Value = Null
      end
      item
        Name = 'Amount'
        Attributes = [paSigned]
        DataType = ftBCD
        Size = -1
        Value = Null
      end
      item
        Name = 'ActionUserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Direction = pdInputOutput
        Size = -1
        Value = Null
      end>
    Left = 319
    Top = 93
  end
  object cmdUpdateItem: TADOCommand
    CommandText = 
      'UPDATE AI'#13#10'SET'#13#10#9'Description = :Description,'#13#10#9'Amount = :Amount,' +
      #13#10#9'ActionID = 1, -- *** 2 = Edited '#13#10#9'ActionUserID = :ActionUser' +
      'ID,'#13#10#9'ActionDate = GETDATE()'#13#10#9'FROM afItems AI'#13#10'WHERE AI.ItemID ' +
      '= :ItemID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'Description'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Amount'
        Attributes = [paSigned]
        DataType = ftBCD
        Size = -1
        Value = Null
      end
      item
        Name = 'ActionUserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 459
    Top = 93
  end
  object cmdDeleteItem: TADOCommand
    CommandText = 
      'DECLARE @CategoryID INT = :CategoryID;'#13#10#13#10'DELETE SI'#13#10#9'FROM afSub' +
      'Items SI'#13#10#9'INNER JOIN afItems AI ON SI.ItemID = AI.ItemID'#13#10'WHERE' +
      ' AI.CategoryID = @CategoryID;'#13#10#13#10'DELETE AI'#13#10#9'FROM afItems AI'#13#10'WH' +
      'ERE AI.CategoryID = @CategoryID;'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'CategoryID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 738
    Top = 145
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
    Left = 179
    Top = 93
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
    Left = 47
    Top = 93
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
    Left = 47
    Top = 145
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
    Left = 179
    Top = 145
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
    Left = 319
    Top = 145
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
    Left = 598
    Top = 145
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
    Left = 459
    Top = 145
  end
  object dsSubItems: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    OnNewRecord = dsSubItemsNewRecord
    CommandText = 
      'DECLARE @LoanID INT = :LoanID;'#13#10'DECLARE @CategoryID INT = :Categ' +
      'oryID;'#13#10#13#10'SELECT :ItemID = IT.ItemID, :Category = CT.Description' +
      #13#10#9'FROM '#13#10#9'('#13#10#9#9'SELECT AI.ItemID, AI.LoanID, AI.CategoryID, AI.P' +
      'artyType'#13#10#9#9#9'FROM afItems AI'#13#10#9#9'WHERE AI.LoanID = @LoanID'#13#10#9#9#9'AN' +
      'D AI.CategoryID = @CategoryID'#13#10#9#9#9'AND AI.PartyType = '#39'A'#39#13#10#9') AS ' +
      'IT'#13#10#9'INNER JOIN afCategories CT ON IT.CategoryID = CT.CategoryID' +
      #13#10#9'LEFT JOIN afSubItems SI ON IT.ItemID = SI.ItemID'#13#10#13#10'SELECT '#13#10 +
      #9'SI.SubItemID, SI.Description, SI.Amount, IT.LoanID, IT.Category' +
      'ID, IT.PartyType, '#13#10#9'SI.ItemID, SI.ActionID, SI.ActionUserID, SI' +
      '.ActionDate'#13#10#9'FROM '#13#10#9'('#13#10#9#9'SELECT AI.ItemID, AI.LoanID, AI.Categ' +
      'oryID, AI.PartyType'#13#10#9#9#9'FROM afItems AI'#13#10#9#9'WHERE AI.LoanID = @Lo' +
      'anID'#13#10#9#9#9'AND AI.CategoryID = @CategoryID'#13#10#9#9#9'AND AI.PartyType = ' +
      #39'A'#39#13#10#9') AS IT'#13#10#9'LEFT JOIN afSubItems SI ON IT.ItemID = SI.ItemID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CategoryID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ItemID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Category'
        Attributes = [paSigned, paNullable]
        DataType = ftString
        Direction = pdOutput
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    Left = 179
    Top = 21
    object dsSubItemsSubItemID: TAutoIncField
      FieldName = 'SubItemID'
      ReadOnly = True
    end
    object dsSubItemsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object dsSubItemsAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object dsSubItemsItemID: TAutoIncField
      FieldName = 'ItemID'
    end
    object dsSubItemsLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object dsSubItemsCategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object dsSubItemsPartyType: TStringField
      FieldName = 'PartyType'
      Size = 1
    end
    object dsSubItemsActionID: TIntegerField
      FieldName = 'ActionID'
    end
    object dsSubItemsActionUserID: TIntegerField
      FieldName = 'ActionUserID'
    end
    object dsSubItemsActionDate: TDateTimeField
      FieldName = 'ActionDate'
    end
  end
  object dtsSubItems: TDataSource
    DataSet = dsSubItems
    Left = 179
    Top = 36
  end
  object cmdNetIncome: TADOCommand
    CommandText = 
      'DECLARE @Amount MONEY'#13#10#13#10'SELECT @Amount = ISNULL(AVG(SI.Amount),' +
      '0)'#13#10#9'FROM afSubItems SI'#13#10#9'INNER JOIN afItems AI ON SI.ItemID = A' +
      'I.ItemID'#13#10'WHERE AI.LoanID = :LoanID'#9#13#10#9'AND CategoryID = :Categor' +
      'yID'#13#10#9'AND AI.PartyType = '#39'A'#39';'#13#10#13#10'SELECT :Amount = @Amount'
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
        Direction = pdReturnValue
        Size = -1
        Value = Null
      end>
    Left = 598
    Top = 93
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
    Left = 1041
    Top = 21
  end
  object dtsDebt: TDataSource
    DataSet = dsDebt
    Left = 1041
    Top = 36
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
    Left = 47
    Top = 199
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
    Left = 738
    Top = 93
  end
  object dsDebtObligation: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @LoanID INT = :LoanID;'#13#10#13#10'IF OBJECT_ID('#39'tempdb..#DebtObl' +
      'igation'#39') IS NOT NULL'#13#10#9'DROP TABLE #DebtObligation'#13#10'IF OBJECT_ID' +
      '('#39'tempdb..#Processed'#39') IS NOT NULL'#13#10#9'DROP TABLE #Processed'#13#10#9#13#10#13 +
      #10'SELECT AI.ItemID, AI.LoanID, SI.SubItemID, '#13#10#9'CT.CategoryID, CT' +
      '.[Description] AS Category, '#13#10#9'CT.ParentID, CT.HostID, CT.AllowS' +
      'ubItem, CT.SubItemType, CT.AllowDuplicate, CT.SortNo,'#13#10#9'AI.Party' +
      'Type, '#13#10#9'CASE (CT.AllowSubItem)'#13#10#9#9'WHEN 1 THEN SI.ActionID'#13#10#9#9'EL' +
      'SE AI.ActionID'#13#10#9'END AS ActionID,'#13#10#9'CASE (CT.AllowSubItem)'#13#10#9#9'WH' +
      'EN 1 THEN SI.Amount'#13#10#9#9'ELSE AI.Amount'#13#10#9'END AS Amount,'#13#10#9'CASE (C' +
      'T.AllowSubItem)'#13#10#9#9'WHEN 1 THEN SI.ApplicationAmount'#13#10#9#9'ELSE AI.A' +
      'pplicationAmount'#13#10#9'END AS ApplicationAmount,'#13#10#9'CASE (CT.AllowSub' +
      'Item)'#13#10#9#9'WHEN 1 THEN '#13#10#9#9#9'CASE '#13#10#9#9#9#9'WHEN (SI.ActionID != 3 AND ' +
      'ISNULL(SI.Amount, 0) != 0) THEN 1 ELSE 0 END'#13#10#9#9'ELSE '#13#10#9#9#9'CASE '#13 +
      #10#9#9#9#9'WHEN (AI.ActionID != 3 AND ISNULL(AI.Amount, 0) != 0) THEN ' +
      '1 ELSE 0 END'#13#10#9'END AS IsProcessed'#13#10#9#9#9#9#13#10'INTO #DebtObligation'#13#10#13 +
      #10#9'FROM afCategories CT'#13#10#9'LEFT JOIN lsLoanDetail LD ON LD.LoanID ' +
      '= @LoanID'#13#10#9'INNER JOIN afItems AI ON CT.CategoryID = AI.Category' +
      'ID'#13#10#9#9'AND LD.LoanID = AI.LoanID'#13#10#9'LEFT JOIN afSubItems SI ON AI.' +
      'ItemID = SI.ItemID'#13#10#9#9'AND CT.AllowSubItem = 1'#13#10#9#9#9#9#9#9#9#13#10'WHERE LD' +
      '.LoanID = @LoanID'#13#10#9'AND CT.[Type] IN ('#39'L'#39') -- *** I = Income, E ' +
      '= Expense, L =Liability '#13#10#9'AND CT.[Enabled] = 1 '#13#10#9'AND CT.Parent' +
      'ID > 0'#13#10#9'AND (CT.HostID = LD.HostID OR CT.HostID IS NULL) -- ***' +
      ' NULL = Represent a category that shows on all hosts'#9#13#10#13#10#13#10'SELEC' +
      'T AF.CategoryID, AF.Category,'#9#13#10#9'CASE(AF.SubItemType)'#13#10#9#9'WHEN '#39'(' +
      'AVG)'#39' THEN AVG(AP.Amount)'#13#10#9#9'WHEN '#39'(SUM)'#39' THEN SUM(AP.Amount)'#13#10#9 +
      #9'WHEN '#39'(MAX)'#39' THEN MAX(AP.Amount)'#13#10#9#9'WHEN '#39'(MIN)'#39' THEN MIN(AP.Am' +
      'ount)'#13#10#9#9'WHEN '#39'(COUNT)'#39' THEN COUNT(AP.Amount)'#13#10#9'END AS Applicant' +
      'Amount,'#13#10#9'CASE(AF.SubItemType) '#13#10#9#9'WHEN '#39'(AVG)'#39' THEN AVG(SP.Amou' +
      'nt)'#13#10#9#9'WHEN '#39'(SUM)'#39' THEN SUM(SP.Amount)'#13#10#9#9'WHEN '#39'(MAX)'#39' THEN MAX' +
      '(SP.Amount)'#13#10#9#9'WHEN '#39'(MIN)'#39' THEN MIN(SP.Amount)'#13#10#9#9'WHEN '#39'(COUNT)' +
      #39' THEN COUNT(SP.Amount)'#13#10#9'END AS SpouseAmount'#13#10#9#13#10'INTO #Processe' +
      'd'#13#10#13#10#9'FROM'#13#10#9'('#13#10#9#9'SELECT DISTINCT LoanID, CategoryID, Category, ' +
      'SubItemType, '#13#10#9#9#9'IsProcessed, PartyType'#9#9#9' '#9#13#10#9#9#9'FROM #DebtObli' +
      'gation'#13#10#9#9'WHERE IsProcessed = 1'#13#10#9') AS AF'#13#10#9#13#10#9'LEFT JOIN #DebtOb' +
      'ligation AP ON AF.LoanID = AP.LoanID -- *** AP = Applicant Proce' +
      'ssed'#13#10#9#9'AND AF.CategoryID = AP.CategoryID'#13#10#9#9'AND AF.PartyType = ' +
      'AP.PartyType'#9#13#10#9#9'AND AF.PartyType = '#39'A'#39#9#9#13#10#9#9'AND AF.IsProcessed ' +
      '= AP.IsProcessed'#13#10#9#9'AND AF.IsProcessed = 1'#9#13#10#13#10#9'LEFT JOIN #DebtO' +
      'bligation SP ON AF.LoanID = SP.LoanID -- *** SP = Spouce Process' +
      'ed'#13#10#9#9'AND AF.CategoryID = SP.CategoryID'#9#13#10#9#9'AND AF.PartyType = S' +
      'P.PartyType'#13#10#9#9'AND AF.PartyType = '#39'S'#39#9#9#13#10#9#9'AND AF.IsProcessed = ' +
      'SP.IsProcessed'#13#10#9#9'AND AF.IsProcessed = 1'#9#13#10#9#9' '#13#10'GROUP BY AF.Cate' +
      'goryID, AF.Category, AF.SubItemType'#13#10#13#10#13#10#13#10'SELECT'#13#10#9'AF.LoanID, A' +
      'F.CategoryID AS CategoryID, AF.Category, AF.AllowSubItem, AF.All' +
      'owDuplicate,'#13#10#9'PR.ApplicantAmount, PR.SpouseAmount'#9#13#10#9'FROM '#13#10#9'('#13 +
      #10#9#9'SELECT DISTINCT LoanID, CategoryID, Category, ParentID, HostI' +
      'D, AllowSubItem, SubItemType, AllowDuplicate, SortNo'#13#10#9#9#9'FROM #D' +
      'ebtObligation'#13#10#9#9'WHERE IsProcessed = 1'#13#10#9') AS AF'#13#10#9'INNER JOIN af' +
      'Categories CT ON AF.ParentID = CT.CategoryID -- *** Parent'#13#10#9#13#10#9 +
      'LEFT JOIN #Processed PR ON AF.CategoryID = PR.CategoryID'#13#10#9' '#13#10'OR' +
      'DER BY CT.SortNo, AF.SortNo'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 598
    Top = 21
    object dsDebtObligationLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object dsDebtObligationCategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object dsDebtObligationCategory: TStringField
      FieldName = 'Category'
      Size = 30
    end
    object dsDebtObligationAllowSubItem: TBooleanField
      FieldName = 'AllowSubItem'
    end
    object dsDebtObligationApplicantAmount: TBCDField
      FieldName = 'ApplicantAmount'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsDebtObligationSpouseAmount: TBCDField
      FieldName = 'SpouseAmount'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsDebtObligationAllowDuplicate: TBooleanField
      FieldName = 'AllowDuplicate'
    end
  end
  object dtsDebtObligation: TDataSource
    DataSet = dsDebtObligation
    Left = 598
    Top = 36
  end
  object dsExpense: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @LoanID INT = :LoanID;'#13#10#13#10'IF OBJECT_ID('#39'tempdb..#Expense' +
      #39') IS NOT NULL'#13#10#9'DROP TABLE #Expense'#13#10'IF OBJECT_ID('#39'tempdb..#Pro' +
      'cessed'#39') IS NOT NULL'#13#10#9'DROP TABLE #Processed'#13#10'IF OBJECT_ID('#39'temp' +
      'db..#Application'#39') IS NOT NULL'#13#10#9'DROP TABLE #Application'#13#10#9#13#10#13#10'S' +
      'ELECT AI.ItemID, AI.LoanID, SI.SubItemID, '#13#10#9'CT.CategoryID, CT.[' +
      'Description] AS Category, '#13#10#9'CT.ParentID, CT.HostID, CT.AllowSub' +
      'Item, CT.SubItemType, CT.AllowDuplicate, CT.SortNo,'#13#10#9'AI.PartyTy' +
      'pe, '#13#10#9'CASE (CT.AllowSubItem)'#13#10#9#9'WHEN 1 THEN SI.ActionID'#13#10#9#9'ELSE' +
      ' AI.ActionID'#13#10#9'END AS ActionID,'#13#10#9'CASE (CT.AllowSubItem)'#13#10#9#9'WHEN' +
      ' 1 THEN SI.Amount'#13#10#9#9'ELSE AI.Amount'#13#10#9'END AS Amount,'#13#10#9'CASE (CT.' +
      'AllowSubItem)'#13#10#9#9'WHEN 1 THEN SI.ApplicationAmount'#13#10#9#9'ELSE AI.App' +
      'licationAmount'#13#10#9'END AS ApplicationAmount,'#13#10#9'CASE (CT.AllowSubIt' +
      'em)'#13#10#9#9'WHEN 1 THEN '#13#10#9#9#9'CASE '#13#10#9#9#9#9'WHEN (SI.ActionID != 3 AND IS' +
      'NULL(SI.Amount, 0) != 0) THEN 1 ELSE 0 END'#13#10#9#9'ELSE '#13#10#9#9#9'CASE '#13#10#9 +
      #9#9#9'WHEN (AI.ActionID != 3 AND ISNULL(AI.Amount, 0) != 0) THEN 1 ' +
      'ELSE 0 END'#13#10#9'END AS IsProcessed,'#13#10#9'CASE (CT.AllowSubItem)'#13#10#9#9'WHE' +
      'N 1 THEN '#13#10#9#9#9'CASE '#13#10#9#9#9#9'WHEN (ISNULL(SI.ApplicationAmount, 0) !' +
      '= 0) THEN 1 ELSE 0 END'#13#10#9#9'ELSE '#13#10#9#9#9'CASE '#13#10#9#9#9#9'WHEN (ISNULL(AI.A' +
      'pplicationAmount, 0) != 0) THEN 1 ELSE 0 END'#13#10#9'END AS IsApplicat' +
      'ion'#13#10#9#9#9#9#13#10'INTO #Expense'#13#10#13#10#9'FROM afCategories CT'#13#10#9'LEFT JOIN ls' +
      'LoanDetail LD ON LD.LoanID = @LoanID'#13#10#9'INNER JOIN afItems AI ON ' +
      'CT.CategoryID = AI.CategoryID'#13#10#9#9'AND LD.LoanID = AI.LoanID'#13#10#9'LEF' +
      'T JOIN afSubItems SI ON AI.ItemID = SI.ItemID'#13#10#9#9'AND CT.AllowSub' +
      'Item = 1'#13#10#9#9#9#9#9#9#9#13#10'WHERE LD.LoanID = @LoanID'#13#10#9'AND CT.[Type] IN ' +
      '('#39'E'#39') -- *** I = Income, E = Expense, L =Liability '#13#10#9'AND CT.[En' +
      'abled] = 1 '#13#10#9'AND CT.ParentID > 0'#13#10#9'AND (CT.HostID = LD.HostID O' +
      'R CT.HostID IS NULL) -- *** NULL = Represent a category that sho' +
      'ws on all hosts'#9#13#10#13#10#13#10'SELECT AF.CategoryID, AF.Category,'#9#13#10#9'CASE' +
      '(AF.SubItemType)'#13#10#9#9'WHEN '#39'(AVG)'#39' THEN AVG(AP.Amount)'#13#10#9#9'WHEN '#39'(S' +
      'UM)'#39' THEN SUM(AP.Amount)'#13#10#9#9'WHEN '#39'(MAX)'#39' THEN MAX(AP.Amount)'#13#10#9#9 +
      'WHEN '#39'(MIN)'#39' THEN MIN(AP.Amount)'#13#10#9#9'WHEN '#39'(COUNT)'#39' THEN COUNT(AP' +
      '.Amount)'#13#10#9'END AS ApplicantAmount,'#13#10#9'CASE(AF.SubItemType) '#13#10#9#9'WH' +
      'EN '#39'(AVG)'#39' THEN AVG(SP.Amount)'#13#10#9#9'WHEN '#39'(SUM)'#39' THEN SUM(SP.Amoun' +
      't)'#13#10#9#9'WHEN '#39'(MAX)'#39' THEN MAX(SP.Amount)'#13#10#9#9'WHEN '#39'(MIN)'#39' THEN MIN(' +
      'SP.Amount)'#13#10#9#9'WHEN '#39'(COUNT)'#39' THEN COUNT(SP.Amount)'#13#10#9'END AS Spou' +
      'seAmount'#13#10#9#13#10'INTO #Processed'#13#10#13#10#9'FROM'#13#10#9'('#13#10#9#9'SELECT DISTINCT Loa' +
      'nID, CategoryID, Category, SubItemType, '#13#10#9#9#9'IsProcessed, PartyT' +
      'ype'#9#9#9' '#9#13#10#9#9#9'FROM #Expense'#13#10#9#9'WHERE IsProcessed = 1'#13#10#9') AS AF'#13#10#9 +
      #13#10#9'LEFT JOIN #Expense AP ON AF.LoanID = AP.LoanID -- *** AP = Ap' +
      'plicant Processed'#13#10#9#9'AND AF.CategoryID = AP.CategoryID'#13#10#9#9'AND AF' +
      '.PartyType = AP.PartyType'#9#13#10#9#9'AND AF.PartyType = '#39'A'#39#9#9#13#10#9#9'AND AF' +
      '.IsProcessed = AP.IsProcessed'#13#10#9#9'AND AF.IsProcessed = 1'#9#13#10#13#10#9'LEF' +
      'T JOIN #Expense SP ON AF.LoanID = SP.LoanID -- *** SP = Spouce P' +
      'rocessed'#13#10#9#9'AND AF.CategoryID = SP.CategoryID'#9#13#10#9#9'AND AF.PartyTy' +
      'pe = SP.PartyType'#13#10#9#9'AND AF.PartyType = '#39'S'#39#9#9#13#10#9#9'AND AF.IsProces' +
      'sed = SP.IsProcessed'#13#10#9#9'AND AF.IsProcessed = 1'#9#13#10#9#9' '#13#10'GROUP BY A' +
      'F.CategoryID, AF.Category, AF.SubItemType '#13#10#13#10#13#10'SELECT AF.Catego' +
      'ryID, AF.Category, '#13#10#9'CASE(AF.SubItemType)'#13#10#9#9'WHEN '#39'(AVG)'#39' THEN ' +
      'AVG(AA.ApplicationAmount)'#13#10#9#9'WHEN '#39'(SUM)'#39' THEN SUM(AA.Applicatio' +
      'nAmount)'#13#10#9#9'WHEN '#39'(MAX)'#39' THEN MAX(AA.ApplicationAmount)'#13#10#9#9'WHEN ' +
      #39'(MIN)'#39' THEN MIN(AA.ApplicationAmount)'#13#10#9#9'WHEN '#39'(COUNT)'#39' THEN CO' +
      'UNT(AA.ApplicationAmount)'#13#10#9'END AS ApplicantApplicationAmount,'#13#10 +
      #9'CASE(AF.SubItemType) '#13#10#9#9'WHEN '#39'(AVG)'#39' THEN AVG(SA.ApplicationAm' +
      'ount)'#13#10#9#9'WHEN '#39'(SUM)'#39' THEN SUM(SA.ApplicationAmount)'#13#10#9#9'WHEN '#39'(M' +
      'AX)'#39' THEN MAX(SA.ApplicationAmount)'#13#10#9#9'WHEN '#39'(MIN)'#39' THEN MIN(SA.' +
      'ApplicationAmount)'#13#10#9#9'WHEN '#39'(COUNT)'#39' THEN COUNT(SA.ApplicationAm' +
      'ount)'#13#10#9'END AS SpouseApplicationAmount'#9#9#13#10#9#9#13#10'INTO #Application'#13 +
      #10#9#9#9#13#10#9'FROM'#13#10#9'('#13#10#9#9'SELECT DISTINCT LoanID, CategoryID, Category,' +
      ' SubItemType, '#13#10#9#9#9'IsProcessed, PartyType, IsApplication'#9#9#9' '#9#13#10#9 +
      #9#9'FROM #Expense'#13#10#9#9'WHERE IsApplication = 1'#13#10#9') AS AF'#13#10#9#9#13#10#9'LEFT ' +
      'JOIN #Expense AA ON AF.LoanID = AA.LoanID -- *** AA = Applicant ' +
      'Application'#13#10#9#9'AND AF.CategoryID = AA.CategoryID'#9#13#10#9#9'AND AF.Part' +
      'yType = AA.PartyType'#13#10#9#9'AND AF.PartyType = '#39'A'#39#9#13#10#9#9'AND AF.IsAppl' +
      'ication = AA.IsApplication'#9#13#10#9#9'AND AF.IsApplication = 1'#9#13#10#9#9'AND ' +
      'AF.IsProcessed = AA.IsProcessed'#9#13#10#9#9#13#10#9'LEFT JOIN #Expense SA ON ' +
      'AF.LoanID = SA.LoanID -- *** SA = Spouse Application'#13#10#9#9'AND AF.C' +
      'ategoryID = SA.CategoryID'#9#13#10#9#9'AND AF.PartyType = SA.PartyType'#13#10#9 +
      #9'AND AF.PartyType = '#39'S'#39#9#9#13#10#9#9'AND AF.IsApplication = SA.IsApplica' +
      'tion'#13#10#9#9'AND AF.IsApplication = 1'#13#10#9#9'AND AF.IsProcessed = SA.IsPr' +
      'ocessed'#9#9#13#10#9#9#13#10'GROUP BY AF.CategoryID, AF.Category, AF.SubItemTy' +
      'pe '#13#10#13#10#13#10#13#10'SELECT'#13#10#9'AF.LoanID, AF.CategoryID AS CategoryID, AF.C' +
      'ategory, AF.AllowSubItem, AF.AllowDuplicate,'#13#10#9'PR.ApplicantAmoun' +
      't, AP.ApplicantApplicationAmount, PR.SpouseAmount, AP.SpouseAppl' +
      'icationAmount'#9#13#10#9'FROM '#13#10#9'('#13#10#9#9'SELECT DISTINCT LoanID, CategoryID' +
      ', Category, ParentID, HostID, AllowSubItem, SubItemType, AllowDu' +
      'plicate, SortNo'#13#10#9#9#9'FROM #Expense'#13#10#9#9'WHERE (IsProcessed = 1 OR I' +
      'sApplication = 1)'#13#10#9') AS AF'#13#10#9'INNER JOIN afCategories CT ON AF.P' +
      'arentID = CT.CategoryID -- *** Parent'#13#10#9#13#10#9'LEFT JOIN #Processed ' +
      'PR ON AF.CategoryID = PR.CategoryID'#13#10#9'LEFT JOIN #Application AP ' +
      'ON AF.CategoryID = AP.CategoryID'#13#10#9' '#13#10'ORDER BY CT.SortNo, AF.Sor' +
      'tNo'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 459
    Top = 21
    object dsExpenseLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object dsExpenseCategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object dsExpenseCategory: TStringField
      FieldName = 'Category'
      Size = 30
    end
    object dsExpenseAllowSubItem: TBooleanField
      FieldName = 'AllowSubItem'
    end
    object dsExpenseApplicantAmount: TBCDField
      FieldName = 'ApplicantAmount'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsExpenseApplicantApplicationAmount: TBCDField
      FieldName = 'ApplicantApplicationAmount'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsExpenseSpouseAmount: TBCDField
      FieldName = 'SpouseAmount'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsExpenseSpouseApplicationAmount: TBCDField
      FieldName = 'SpouseApplicationAmount'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsExpenseAllowDuplicate: TBooleanField
      FieldName = 'AllowDuplicate'
    end
  end
  object dtsExpense: TDataSource
    DataSet = dsExpense
    Left = 459
    Top = 36
  end
  object cmdSaveSubItem: TADOCommand
    CommandText = 
      'DECLARE @SubItemID INT = :SubItemID;'#13#10'DECLARE @ItemID INT = :Ite' +
      'mID;'#13#10'DECLARE @LoanID INT = :LoanID;'#13#10'DECLARE @SourceID INT = :S' +
      'ourceID;'#13#10'DECLARE @CategoryID INT = :CategoryID;'#13#10'DECLARE @Categ' +
      'ory NVARCHAR(50) = :Category;'#13#10'DECLARE @PartyType NVARCHAR(1) = ' +
      ':PartyType;'#13#10'DECLARE @Description NVARCHAR(50) = :Description;'#13#10 +
      'DECLARE @Amount MONEY = :Amount;'#13#10'DECLARE @ActionID INT = :Actio' +
      'nID;'#13#10'DECLARE @ActionUserID INT = :ActionUserID;'#13#10'DECLARE @Allow' +
      'Duplicate BIT = :AllowDuplicate;'#13#10#13#10'IF (@Amount <= 0 AND @Action' +
      'ID IN (1, 2)) -- *** 1 = Added, 2 = Edited'#13#10#9'SET @ActionID = 3; ' +
      '-- *** 3 = Disabled'#13#10#13#10'MERGE afItems AI'#13#10'USING'#13#10#9'('#13#10#9#9'VALUES (@I' +
      'temID, @LoanID, @SourceID, @CategoryID, @Category, @PartyType, '#39 +
      '0.0'#39', 1, @ActionUserID) -- *** 1 = Added'#13#10#9') AS AF (ItemID, Loan' +
      'ID, SourceID, CategoryID, [Description], PartyType, Amount, Acti' +
      'onID, ActionUserID)'#13#10'ON AI.ItemID = ISNULL(AF.ItemID, 0)'#13#10#9'OR'#13#10#9 +
      'AI.LoanID = AF.LoanID '#13#10#9'AND AI.CategoryID = AF.CategoryID '#13#10#9'AN' +
      'D '#13#10#9'('#13#10#9#9'AI.[Description] = AF.[Description] AND @AllowDuplicat' +
      'e = 1 '#13#10#9#9'OR '#13#10#9#9'@AllowDuplicate = 0'#13#10#9')'#13#10#9'AND AI.PartyType = AF' +
      '.PartyType'#9#13#10'WHEN NOT MATCHED'#13#10#9'THEN'#9#9'        '#13#10#9#9'INSERT (LoanID' +
      ', SourceID, CategoryID, PartyType, [Description], Amount, Action' +
      'ID, ActionUserID, ActionDate)'#13#10#9#9'VALUES (AF.LoanID, AF.SourceID,' +
      ' AF.CategoryID, AF.PartyType, AF.[Description], AF.Amount, AF.Ac' +
      'tionID, AF.ActionUserID, GETDATE());'#13#10#13#10'IF ISNULL(@ItemID, 0) = ' +
      '0 '#13#10'BEGIN'#13#10#9'SELECT @ItemID = AI.ItemID'#13#10#9#9'FROM afItems AI'#13#10#9'WHER' +
      'E AI.LoanID = @LoanID '#13#10#9#9'AND AI.CategoryID = @CategoryID '#13#10#9#9'AN' +
      'D '#13#10#9#9'('#13#10#9#9#9'AI.[Description] = @Category AND @AllowDuplicate = 1' +
      ' '#13#10#9#9#9'OR '#13#10#9#9#9'@AllowDuplicate = 0'#13#10#9#9')'#9#9#13#10#9#9'AND AI.PartyType = @' +
      'PartyType;'#13#10'END;'#13#10#13#10'MERGE afSubItems SI'#13#10'USING'#13#10#9'('#13#10#9#9'VALUES (@S' +
      'ubItemID, @ItemID, @SourceID, @Description, @Amount, @ActionID, ' +
      '@ActionUserID)'#13#10#9') AS AF (SubItemID, ItemID, SourceID, [Descript' +
      'ion], Amount, ActionID, ActionUserID)'#13#10'ON SI.SubItemID = ISNULL(' +
      'AF.SubItemID, 0) '#13#10'WHEN MATCHED'#13#10#9'THEN'#13#10#9#9'UPDATE '#13#10#9#9'SET '#13#10#9#9#9'SI' +
      '.SourceID = AF.SourceID,'#13#10#9#9#9'SI.[Description] = ISNULL(AF.[Descr' +
      'iption], SI.[Description]),'#13#10#9#9#9'SI.Amount = ISNULL(AF.Amount, SI' +
      '.Amount), '#13#10#9#9#9'SI.ActionID = AF.ActionID, '#13#10#9#9#9'SI.ActionUserID =' +
      ' AF.ActionUserID,'#13#10#9#9#9'SI.ActionDate = GETDATE()'#13#10'WHEN NOT MATCHE' +
      'D'#13#10#9'THEN'#13#10#9#9'INSERT (ItemID, SourceID, [Description], Amount, Act' +
      'ionID, ActionUserID, ActionDate)'#13#10#9#9'VALUES (AF.ItemID, AF.Source' +
      'ID, AF.[Description], AF.Amount, AF.ActionID, AF.ActionUserID, G' +
      'ETDATE());'#13#10#9#9#13#10#13#10'DECLARE @AggregateAmount MONEY;'#13#10#13#10'SELECT @Agg' +
      'regateAmount = '#13#10#9'CASE(CT.SubItemType)'#13#10#9#9'WHEN '#39'(AVG)'#39' THEN AVG(' +
      'SI.Amount)'#13#10#9#9'WHEN '#39'(SUM)'#39' THEN SUM(SI.Amount)'#13#10#9#9'WHEN '#39'(MAX)'#39' T' +
      'HEN MAX(SI.Amount)'#13#10#9#9'WHEN '#39'(MIN)'#39' THEN MIN(SI.Amount)'#13#10#9#9'WHEN '#39 +
      '(COUNT)'#39' THEN COUNT(SI.Amount)'#13#10#9'END'#13#10#9#13#10#9'FROM afItems AI'#13#10#9'INNE' +
      'R JOIN afSubItems SI ON AI.ItemID = SI.ItemID'#13#10#9'INNER JOIN afCat' +
      'egories CT ON AI.CategoryID = CT.CategoryID'#13#10'WHERE AI.ItemID = @' +
      'ItemID'#13#10#9'AND SI.ActionID != 3 -- *** 3 = Disabled'#13#10'GROUP BY AI.L' +
      'oanID, CT.CategoryID, AI.[Description], AI.PartyType, CT.SubItem' +
      'Type;'#13#10#13#10'UPDATE AI'#13#10'SET'#9#13#10#9'[Description] = @Category, '#13#10#9'Amount ' +
      '= ISNULL(@AggregateAmount, 0),'#13#10#9'ActionID = '#13#10#9'CASE '#13#10#9#9'WHEN ISN' +
      'ULL(@AggregateAmount, 0) <= 0 THEN 3 -- *** 3 = Disabled'#13#10#9#9'ELSE' +
      ' 2 -- *** 2 = Edited'#13#10#9'END,'#13#10#9'ActionUserID = @ActionUserID,'#13#10#9'Ac' +
      'tionDate = GETDATE()'#13#10#9'FROM afItems AI'#13#10'WHERE AI.ItemID = @ItemI' +
      'D;'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'SubItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SourceID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CategoryID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Category'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'PartyType'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'Description'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
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
        Name = 'ActionID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ActionUserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'AllowDuplicate'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 878
    Top = 93
  end
  object cmdAggregateAmount: TADOCommand
    CommandText = 
      'DECLARE @AggregateAmount MONEY'#13#10#13#10'SELECT @AggregateAmount = '#13#10#9'C' +
      'ASE(ct.SubItemType)'#13#10#9#9'WHEN '#39'(AVG)'#39' THEN AVG(SI.Amount)'#13#10#9#9'WHEN ' +
      #39'(SUM)'#39' THEN SUM(SI.Amount)'#13#10#9#9'WHEN '#39'(MAX )'#39' THEN MAX(SI.Amount)' +
      #13#10#9#9'WHEN '#39'(MIN)'#39' THEN MIN(SI.Amount)'#13#10#9#9'WHEN '#39'(COUNT )'#39' THEN COU' +
      'NT(SI.Amount)'#13#10#9'END'#13#10#9#13#10#9'FROM afSubItems SI'#13#10#9'INNER JOIN afItems' +
      ' AI ON SI.ItemID = AI.ItemID'#13#10#9'INNER JOIN afCategories ct ON AI.' +
      'CategoryID = ct.CategoryID'#13#10'WHERE SI.ActionID != 3 -- *** 3 = Di' +
      'sabled'#13#10#9'AND AI.LoanID = :LoanID'#13#10#9'AND AI.CategoryID = :Category' +
      'ID'#13#10#9'AND AI.[Description] = :Category'#13#10#9'AND AI.PartyType = :Part' +
      'yType'#13#10'GROUP BY AI.LoanID, CT.CategoryID, AI.[Description], AI.P' +
      'artyType, CT.SubItemType'#13#10'SELECT :AggregateAmount = ISNULL(@Aggr' +
      'egateAmount, 0)'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CategoryID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Category'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'PartyType'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'AggregateAmount'
        Attributes = [paSigned]
        DataType = ftBCD
        Direction = pdReturnValue
        Size = -1
        Value = Null
      end>
    Left = 1041
    Top = 145
  end
  object dsIncome: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'DECLARE @LoanID INT = :LoanID'#13#10#13#10'IF OBJECT_ID('#39'tempdb..#Income'#39')' +
      ' IS NOT NULL'#13#10#9'DROP TABLE #Income'#13#10#13#10'SELECT SI.SubItemID, AI.Loa' +
      'nID,'#13#10#9'CT.CategoryID, CT.[Description] AS Category, '#13#10#9'CT.Parent' +
      'ID, CT.HostID, CT.AllowSubItem, CT.SubItemType, CT.AllowDuplicat' +
      'e, CT.SortNo,'#13#10#9'AI.PartyType,  '#13#10#9'CASE (CT.AllowSubItem)'#13#10#9#9'WHEN' +
      ' 1 THEN SI.ActionID'#13#10#9#9'ELSE AI.ActionID'#13#10#9'END AS ActionID,'#13#10#9'CAS' +
      'E (CT.AllowSubItem)'#13#10#9#9'WHEN 1 THEN SI.Amount'#13#10#9#9'ELSE AI.Amount'#13#10 +
      #9'END AS Amount,'#13#10#9'CASE (CT.AllowSubItem)'#13#10#9#9'WHEN 1 THEN SI.Appli' +
      'cationAmount'#13#10#9#9'ELSE AI.ApplicationAmount'#13#10#9'END AS ApplicationAm' +
      'ount'#9#13#10#9#13#10'INTO #Income'#13#10#13#10#9'FROM afCategories CT'#13#10#9'INNER JOIN afI' +
      'tems AI ON CT.CategoryID = AI.CategoryID'#13#10#9#9'AND AI.LoanID = @Loa' +
      'nID'#13#10#9#9'AND (AI.ActionID != 3 OR ISNULL(AI.ApplicationAmount, 0) ' +
      '!= 0) -- *** 3 = Disabled'#13#10#9'LEFT JOIN afSubItems SI ON AI.ItemID' +
      ' = SI.ItemID'#13#10#9#9'AND CT.AllowSubItem = 1'#9#9#9#9#9#9#9#13#10'WHERE CT.[Type] ' +
      'IN ('#39'I'#39') -- *** I = Income, E = Expense, L =Liability '#13#10#9'AND CT.' +
      'ParentID > 0'#13#10#9'AND CT.Enabled = 1'#13#10#13#10'IF OBJECT_ID('#39'tempdb..#Inco' +
      'me2'#39') IS NOT NULL'#13#10#9'DROP TABLE #Income2'#13#10#13#10'SELECT AF.LoanID, AF.' +
      'CategoryID, AF.PartyType, AF.ApplicationAmount,'#13#10#9'ROW_NUMBER() O' +
      'VER (PARTITION BY AF.LoanID, AF.CategoryID, AF.PartyType'#13#10#9#9'ORDE' +
      'R BY AF.SubItemID ASC) AS MonthlyIncome'#13#10'INTO #Income2'#9#9#13#10#9'FROM ' +
      '#Income AF'#13#10'WHERE AF.ApplicationAmount IS NOT NULL'#13#10#13#10'SELECT'#13#10#9'L' +
      'D.LoanID, AF.CategoryID AS CategoryID, AF.Category, AF.AllowSubI' +
      'tem, AF.AllowDuplicate,'#13#10#9#13#10#9'CASE(AF.SubItemType)'#13#10#9#9'WHEN '#39'(AVG)' +
      #39' THEN AVG(AI.Amount)'#13#10#9#9'WHEN '#39'(SUM)'#39' THEN SUM(AI.Amount)'#13#10#9#9'WHE' +
      'N '#39'(MAX)'#39' THEN MAX(AI.Amount)'#13#10#9#9'WHEN '#39'(MIN)'#39' THEN MIN(AI.Amount' +
      ')'#13#10#9#9'WHEN '#39'(COUNT)'#39' THEN COUNT(AI.Amount)'#13#10#9'END AS ApplicantAmou' +
      'nt,'#13#10#9'AC.ApplicationAmount AS ApplicantCurrent, AP.ApplicationAm' +
      'ount AS ApplicantPrevious,'#13#10#9#13#10#9'CASE(AF.SubItemType) '#13#10#9#9'WHEN '#39'(' +
      'AVG)'#39' THEN AVG(SI.Amount)'#13#10#9#9'WHEN '#39'(SUM)'#39' THEN SUM(SI.Amount)'#13#10#9 +
      #9'WHEN '#39'(MAX)'#39' THEN MAX(SI.Amount)'#13#10#9#9'WHEN '#39'(MIN)'#39' THEN MIN(SI.Am' +
      'ount)'#13#10#9#9'WHEN '#39'(COUNT)'#39' THEN COUNT(SI.Amount)'#13#10#9'END AS SpouseAmo' +
      'unt,'#9#13#10#9'SC.ApplicationAmount AS SpouseCurrent, SP.ApplicationAmo' +
      'unt AS SpousePrevious'#13#10#9#13#10#9'FROM lsLoanDetail LD '#13#10#9'INNER JOIN'#13#10#9 +
      '('#13#10#9#9'SELECT DISTINCT PartyType, LoanID, CategoryID, Category, Pa' +
      'rentID, HostID, AllowSubItem, SubItemType, AllowDuplicate, SortN' +
      'o '#9#13#10#9#9'FROM #Income'#13#10#9') AS AF ON LD.LoanID = AF.LoanID'#13#10#9'INNER J' +
      'OIN afCategories PR ON AF.ParentID = PR.CategoryID -- *** Parent' +
      #13#10#9#13#10#9'LEFT JOIN #Income AI ON AF.LoanID = AI.LoanID'#13#10#9#9'AND AF.Ca' +
      'tegoryID = AI.CategoryID'#13#10#9#9'AND AF.PartyType = AI.PartyType'#9#9#13#10#9 +
      #9'AND AI.PartyType = '#39'A'#39#13#10#9#9'AND AI.ActionID != 3 -- *** 3 = Disab' +
      'led'#9#13#10#9'LEFT JOIN #Income2 AS AC ON AF.LoanID = AC.LoanID'#13#10#9#9'AND ' +
      'AF.CategoryID = AC.CategoryID'#9#9#13#10#9#9'AND AC.PartyType = '#39'A'#39#13#10#9#9'AND' +
      ' AC.MonthlyIncome = 1'#13#10#9'LEFT JOIN #Income2 AS AP ON AF.LoanID = ' +
      'AP.LoanID'#13#10#9#9'AND AF.CategoryID = AP.CategoryID'#13#10#9#9'AND AP.PartyTy' +
      'pe = '#39'A'#39#13#10#9#9'AND AP.MonthlyIncome = 2'#13#10#9#9#13#10#9'LEFT JOIN #Income SI ' +
      'ON AF.LoanID = SI.LoanID'#13#10#9#9'AND AF.CategoryID = SI.CategoryID'#13#10#9 +
      #9'AND AF.PartyType = SI.PartyType'#13#10#9#9'AND SI.PartyType = '#39'S'#39#13#10#9#9'AN' +
      'D SI.ActionID != 3 -- *** 3 = Disabled'#13#10#9'LEFT JOIN #Income2 SC O' +
      'N AF.LoanID = SC.LoanID'#13#10#9#9'AND AF.CategoryID = SC.CategoryID'#13#10#9#9 +
      'AND SC.PartyType = '#39'S'#39#13#10#9#9'AND SC.MonthlyIncome = 1'#13#10#9'LEFT JOIN #' +
      'Income2 SP ON AF.LoanID = SP.LoanID'#13#10#9#9'AND AF.CategoryID = SP.Ca' +
      'tegoryID'#13#10#9#9'AND SP.PartyType = '#39'S'#39#13#10#9#9'AND SP.MonthlyIncome = 2'#13#10 +
      #13#10'WHERE LD.LoanID = @LoanID'#13#10#9'AND (AF.HostID = LD.HostID OR AF.H' +
      'ostID IS NULL) -- *** NULL = Represent a category that shows on ' +
      'all hosts'#9#13#10'GROUP BY LD.LoanID, PR.SortNo, '#13#10#9'AF.CategoryID, AF.' +
      'Category, AF.AllowSubItem, AF.SubItemType, AF.AllowDuplicate, AF' +
      '.SortNo,'#13#10#9'AC.ApplicationAmount, AP.ApplicationAmount,'#13#10#9'SC.Appl' +
      'icationAmount, SP.ApplicationAmount '#13#10'ORDER BY PR.SortNo, AF.Sor' +
      'tNo'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 319
    Top = 21
    object dsIncomeLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object dsIncomeCategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object dsIncomeCategory: TStringField
      FieldName = 'Category'
      Size = 30
    end
    object dsIncomeAllowSubItem: TBooleanField
      FieldName = 'AllowSubItem'
    end
    object dsIncomeApplicantAmount: TBCDField
      FieldName = 'ApplicantAmount'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsIncomeApplicantCurrent: TBCDField
      FieldName = 'ApplicantCurrent'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsIncomeApplicantPrevious: TBCDField
      FieldName = 'ApplicantPrevious'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsIncomeSpouseAmount: TBCDField
      FieldName = 'SpouseAmount'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsIncomeSpouseCurrent: TBCDField
      FieldName = 'SpouseCurrent'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsIncomeSpousePrevious: TBCDField
      FieldName = 'SpousePrevious'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsIncomeAllowDuplicate: TBooleanField
      FieldName = 'AllowDuplicate'
    end
  end
  object dtsIncome: TDataSource
    DataSet = dsIncome
    Left = 319
    Top = 36
  end
  object dsSubItemSpouse: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT AF.SubItemID, AF.ItemID, AF.SourceID, AF.[Source],'#13#10#9'AF.[' +
      'CategoryDescription],'#13#10#9'AF.[Category], AF.[Description], AF.Amou' +
      'nt, AF.ApplicationAmount, '#13#10#9'AF.[Action], AF.[ActionUser], AF.[A' +
      'ctionUserDepartment], AF.ActionDate'#13#10#9'FROM'#13#10#9'('#13#10#9'SELECT SI.SubIt' +
      'emID, AI.ItemID, SR.SourceID, SR.[Description] AS [Source],'#13#10#9#9'A' +
      'I.[Description] +'#39' - '#39'+ SI.[Description] AS [CategoryDescription' +
      '],'#13#10#9#9'AI.[Description] AS [Category], SI.[Description], SI.Amoun' +
      't, SI.ApplicationAmount, '#13#10#9#9'SI.ActionID, UA.[Description] AS [A' +
      'ction], ST.UserID AS [ActionUser], '#13#10#9#9'CASE (DP.DepartmentID)'#13#10#9 +
      #9#9'WHEN 2 THEN '#39'Authorisations'#39' --- *** 2 = Credit Vetting'#13#10#9#9#9'EL' +
      'SE DP.Name'#13#10#9#9'END AS [ActionUserDepartment], SI.ActionDate,'#13#10#9#9'R' +
      'ANK()OVER(PARTITION BY SI.ActionUserID ORDER BY US.EffectiveDate' +
      ' DESC, US.CreateDate DESC) AS RowNo'#13#10#9#9#13#10#9#9'FROM afItems AI '#13#10#9#9'I' +
      'NNER JOIN afSubItems SI ON AI.ItemID = SI.ItemID'#13#10#9#9'INNER JOIN a' +
      'fSource SR ON SI.SourceID = SR.SourceID'#13#10#9#9'LEFT JOIN SYS_UserAct' +
      'ion UA ON SI.ActionID = UA.UserActionID'#13#10#9#9#13#10#9#9#13#10#9#9'LEFT JOIN SEC' +
      '_UserSubDepartment US ON SI.ActionUserID = US.UserID'#13#10#9#9#9'AND US.' +
      'EffectiveDate < SI.ActionDate'#13#10#9#9'LEFT JOIN SEC_SubDepartment SD ' +
      'ON US.SubDepartmentID = SD.SubDepartmentID'#13#10#9#9'LEFT JOIN SEC_Depa' +
      'rtment DP ON SD.DepartmentID = DP.DepartmentID'#9#9#13#10#9#9'LEFT JOIN Se' +
      'curitytbl ST ON SI.ActionUserID = ST.UserKey'#9#13#10#13#10#9'WHERE AI.LoanI' +
      'D = :LoanID'#13#10#9#9'AND AI.CategoryID = :CategoryID'#13#10#9#9'AND AI.PartyTy' +
      'pe = '#39'S'#39#13#10#9') AF'#13#10'WHERE AF.RowNo = 1'#13#10'ORDER BY AF.ActionID, AF.Ca' +
      'tegory ASC'
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
    Left = 878
    Top = 21
    object dsSubItemSpouseSubItemID: TAutoIncField
      FieldName = 'SubItemID'
      ReadOnly = True
    end
    object dsSubItemSpouseItemID: TAutoIncField
      FieldName = 'ItemID'
      ReadOnly = True
    end
    object dsSubItemSpouseSourceID: TIntegerField
      FieldName = 'SourceID'
    end
    object dsSubItemSpouseSource: TStringField
      FieldName = 'Source'
      Size = 30
    end
    object dsSubItemSpouseCategoryDescription: TStringField
      FieldName = 'CategoryDescription'
      ReadOnly = True
      Size = 133
    end
    object dsSubItemSpouseCategory: TStringField
      FieldName = 'Category'
      Size = 30
    end
    object dsSubItemSpouseDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object dsSubItemSpouseAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object dsSubItemSpouseApplicationAmount: TBCDField
      FieldName = 'ApplicationAmount'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsSubItemSpouseAction: TStringField
      FieldName = 'Action'
      Size = 10
    end
    object dsSubItemSpouseActionUser: TStringField
      FieldName = 'ActionUser'
      Size = 10
    end
    object dsSubItemSpouseActionUserDepartment: TStringField
      FieldName = 'ActionUserDepartment'
      Size = 50
    end
    object dsSubItemSpouseActionDate: TDateTimeField
      FieldName = 'ActionDate'
    end
  end
  object dtsSubItemSpouse: TDataSource
    DataSet = dsSubItemSpouse
    Left = 878
    Top = 36
  end
  object dsSubItemApplicant: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT AF.SubItemID, AF.ItemID, AF.SourceID, AF.[Source],'#13#10#9'AF.[' +
      'CategoryDescription],'#13#10#9'AF.[Category], AF.[Description], AF.Amou' +
      'nt, AF.ApplicationAmount, '#13#10#9'AF.[Action], AF.[ActionUser], AF.[A' +
      'ctionUserDepartment], AF.ActionDate'#13#10#9'FROM'#13#10#9'('#13#10#9'SELECT SI.SubIt' +
      'emID, AI.ItemID, SR.SourceID, SR.[Description] AS [Source],'#13#10#9#9'A' +
      'I.[Description] +'#39' - '#39'+ SI.[Description] AS [CategoryDescription' +
      '],'#13#10#9#9'AI.[Description] AS [Category], SI.[Description], SI.Amoun' +
      't, SI.ApplicationAmount, '#13#10#9#9'SI.ActionID, UA.[Description] AS [A' +
      'ction], ST.UserID AS [ActionUser], '#13#10#9#9'CASE (DP.DepartmentID)'#13#10#9 +
      #9#9'WHEN 2 THEN '#39'Authorisations'#39' --- *** 2 = Credit Vetting'#13#10#9#9#9'EL' +
      'SE DP.Name'#13#10#9#9'END AS [ActionUserDepartment], SI.ActionDate,'#13#10#9#9'R' +
      'ANK()OVER(PARTITION BY SI.ActionUserID ORDER BY US.EffectiveDate' +
      ' DESC, US.CreateDate DESC) AS RowNo'#13#10#9#9#13#10#9#9'FROM afItems AI'#13#10#9#9'IN' +
      'NER JOIN afSubItems SI ON AI.ItemID = SI.ItemID'#13#10#9#9'INNER JOIN af' +
      'Source SR ON SI.SourceID = SR.SourceID '#13#10#9#9'LEFT JOIN SYS_UserAct' +
      'ion UA ON SI.ActionID = UA.UserActionID'#13#10#9#9#13#10#9#9#13#10#9#9'LEFT JOIN SEC' +
      '_UserSubDepartment US ON SI.ActionUserID = US.UserID'#13#10#9#9#9'AND US.' +
      'EffectiveDate < SI.ActionDate'#13#10#9#9'LEFT JOIN SEC_SubDepartment SD ' +
      'ON US.SubDepartmentID = SD.SubDepartmentID'#13#10#9#9'LEFT JOIN SEC_Depa' +
      'rtment DP ON SD.DepartmentID = DP.DepartmentID'#9#9#13#10#9#9'LEFT JOIN Se' +
      'curitytbl ST ON SI.ActionUserID = ST.UserKey'#9#13#10#13#10#9'WHERE AI.LoanI' +
      'D = :LoanID'#13#10#9#9'AND AI.CategoryID = :CategoryID'#13#10#9#9'AND AI.PartyTy' +
      'pe = '#39'A'#39#13#10#9') AF'#13#10'WHERE AF.RowNo = 1'#13#10'ORDER BY AF.ActionID, AF.Ca' +
      'tegory ASC'
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
    Left = 738
    Top = 21
    object dsSubItemApplicantSubItemID: TAutoIncField
      FieldName = 'SubItemID'
      ReadOnly = True
    end
    object dsSubItemApplicantItemID: TAutoIncField
      FieldName = 'ItemID'
      ReadOnly = True
    end
    object dsSubItemApplicantSourceID: TIntegerField
      FieldName = 'SourceID'
    end
    object dsSubItemApplicantSource: TStringField
      FieldName = 'Source'
      Size = 30
    end
    object dsSubItemApplicantCategoryDescription: TStringField
      FieldName = 'CategoryDescription'
      ReadOnly = True
      Size = 133
    end
    object dsSubItemApplicantCategory: TStringField
      FieldName = 'Category'
      Size = 30
    end
    object dsSubItemApplicantDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object dsSubItemApplicantAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object dsSubItemApplicantApplicationAmount: TBCDField
      FieldName = 'ApplicationAmount'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object dsSubItemApplicantAction: TStringField
      FieldName = 'Action'
      Size = 10
    end
    object dsSubItemApplicantActionUser: TStringField
      FieldName = 'ActionUser'
      Size = 10
    end
    object dsSubItemApplicantActionUserDepartment: TStringField
      FieldName = 'ActionUserDepartment'
      Size = 50
    end
    object dsSubItemApplicantActionDate: TDateTimeField
      FieldName = 'ActionDate'
    end
  end
  object dtsSubItemApplicant: TDataSource
    DataSet = dsSubItemApplicant
    Left = 738
    Top = 36
  end
  object dsAfLoan: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'AL.LoanID, AL.TotalExpenses, AL.TotalIncome, AL.TotalD' +
      'ebt, '#13#10#9'AL.ApplicantExpenses, AL.ApplicantIncome, AL.ApplicantDe' +
      'bt, '#13#10#9'AL.SpouseExpenses, AL.SpouseIncome, AL.SpouseDebt, AL.Ver' +
      'sion'#13#10#13#10#9'FROM afLoans AL'#13#10'WHERE AL.LoanID = :LoanID'#13#10
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 598
    Top = 199
  end
  object dsTypeCategory: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT CT.CategoryID, CT.[Description], CT.AllowSubItem, CT.Allo' +
      'wDuplicate'#13#10#9'FROM afCategories CT'#13#10#9'LEFT JOIN lsLoanDetail LD ON' +
      ' LD.LoanID = :LoanID'#13#10'WHERE CT.Enabled = 1'#13#10#9'AND CT.Type = :Cate' +
      'goryType'#13#10#9'AND CT.ParentID > 0'#13#10#9'AND (CT.HostID = LD.HostID OR C' +
      'T.HostID IS NULL) -- *** NULL = Represent a category that shows ' +
      'on all hosts'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CategoryType'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    Left = 738
    Top = 199
    object dsTypeCategoryCategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object dsTypeCategoryDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
    object dsTypeCategoryAllowSubItem: TBooleanField
      FieldName = 'AllowSubItem'
    end
    object dsTypeCategoryAllowDuplicate: TBooleanField
      FieldName = 'AllowDuplicate'
    end
  end
  object dsExcludeCategory: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT DISTINCT AI.CategoryID'#13#10#9'FROM afItems AI'#13#10#9'LEFT JOIN afCa' +
      'tegories CT ON AI.CategoryID = CT.CategoryID'#13#10'WHERE AI.LoanID = ' +
      ':LoanID'#13#10#9'AND '#13#10#9'('#13#10#9#9'AI.ActionID != 3 AND ISNULL(AI.Amount, 0) ' +
      '!= 0 -- *** 3 = Disabled'#13#10#9#9'OR '#13#10#9#9'ISNULL(AI.ApplicationAmount, ' +
      '0) != 0 -- *** 3 = Disabled'#13#10#9')'#13#10#9'AND CT.Enabled = 1'#13#10#9'AND CT.Ty' +
      'pe = :CategoryType'#13#10#9'AND CT.ParentID > 0'#13#10#9'AND CT.AllowDuplicate' +
      ' = 0'
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
        Name = 'CategoryType'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    Left = 179
    Top = 199
    object dsExcludeCategoryCategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
  end
  object cmdDeleteSubItem: TADOCommand
    CommandText = 
      'DECLARE @SubItemID INT = :SubItemID; '#13#10'DECLARE @ItemID INT;'#13#10'DEC' +
      'LARE @AggregateAmount MONEY;'#13#10#13#10'SELECT @ItemID = SI.ItemID '#13#10#9'FR' +
      'OM afSubItems SI'#13#10'WHERE SI.SubItemID = @SubItemID;'#13#10#9#13#10#13#10'DELETE ' +
      'FROM afSubItems'#13#10'WHERE SubItemID = @SubItemID;'#13#10#13#10'SELECT @Aggreg' +
      'ateAmount = '#13#10#9'CASE(ct.SubItemType)'#13#10#9#9'WHEN '#39'(AVG)'#39' THEN AVG(SI.' +
      'Amount)'#13#10#9#9'WHEN '#39'(SUM)'#39' THEN SUM(SI.Amount)'#13#10#9#9'WHEN '#39'(MAX)'#39' THEN' +
      ' MAX(SI.Amount)'#13#10#9#9'WHEN '#39'(MIN)'#39' THEN MIN(SI.Amount)'#13#10#9#9'WHEN '#39'(CO' +
      'UNT)'#39' THEN COUNT(SI.Amount)'#13#10#9'END'#13#10#9#13#10#9'FROM afItems AI'#13#10#9'INNER J' +
      'OIN afSubItems SI ON AI.ItemID = SI.ItemID'#13#10#9'INNER JOIN afCatego' +
      'ries CT ON AI.CategoryID = CT.CategoryID'#13#10'WHERE AI.ItemID = @Ite' +
      'mID'#13#10#9'AND SI.ActionID != 3 -- *** 3 = Disabled'#13#10'GROUP BY AI.Loan' +
      'ID, CT.CategoryID, AI.[Description], AI.PartyType, CT.SubItemTyp' +
      'e;'#13#10#13#10'UPDATE AI'#13#10'SET '#13#10#9'Amount = ISNULL(@AggregateAmount, 0)'#13#10#9'F' +
      'ROM afItems AI'#13#10'WHERE AI.ItemID = @ItemID'#13#10#9'AND AI.Amount != ISN' +
      'ULL(@AggregateAmount, 0);'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'SubItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 878
    Top = 145
  end
  object dsSource: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 'SELECT SR.SourceID, SR.[Description]'#13#10#9'FROM afSource SR'
    Parameters = <>
    Left = 319
    Top = 199
    object dsSourceSourceID: TIntegerField
      FieldName = 'SourceID'
    end
    object dsSourceDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
  end
  object dsCategorySourceAction: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @LoanID INT = :LoanID;'#13#10'DECLARE @CategoryID INT = :Categ' +
      'oryID;'#13#10#13#10'SELECT'#13#10#9'AI.SourceID AS ApplicantSourceID, AI.[Source]' +
      ' AS [ApplicantSource], '#13#10#9'AI.[Action] AS [ApplicantAction], AI.A' +
      'ctionDate AS ApplicantActionDate, '#13#10#9'AI.[ActionUserDepartment] A' +
      'S ApplicantActionUserDepartment, AI.ActionUser AS ApplicantActio' +
      'nUser, '#13#10#9'SI.SourceID AS SpouseSourceID, SI.[Source] AS [SpouseS' +
      'ource], '#13#10#9'SI.[Action] AS [SpouseAction], SI.ActionDate AS Spous' +
      'eActionDate, '#13#10#9'SI.[ActionUserDepartment] AS SpouseActionUserDep' +
      'artment, SI.ActionUser AS SpouseActionUser'#13#10#9#13#10#9'FROM afCategorie' +
      's CT'#13#10#9'LEFT JOIN '#13#10#9'('#13#10#9#9'SELECT IT.CategoryID,'#13#10#9#9#9'SR.SourceID, ' +
      'SR.[Description] AS [Source],'#13#10#9#9#9'UA.[Description] AS [Action], ' +
      'IT.ActionDate, '#13#10#9#9#9'CASE (DP.DepartmentID)'#13#10#9#9#9#9'WHEN 2 THEN '#39'Aut' +
      'horisations'#39' --- *** 2 = Credit Vetting'#13#10#9#9#9#9'ELSE DP.Name'#13#10#9#9#9'EN' +
      'D AS [ActionUserDepartment], ST.UserID AS ActionUser,'#13#10#9#9#9'RANK()' +
      'OVER(PARTITION BY IT.ActionUserID ORDER BY US.EffectiveDate DESC' +
      ', US.CreateDate DESC) AS RowNo'#13#10#9#9#9#9#9#13#10#9#9#9'FROM afItems IT'#13#10#9#9#9'IN' +
      'NER JOIN SYS_UserAction UA ON IT.ActionID = UA.UserActionID'#13#10#9#9#9 +
      'INNER JOIN afSource SR ON IT.SourceID = SR.SourceID'#13#10#13#10#9#9#9'LEFT J' +
      'OIN SEC_UserSubDepartment US ON IT.ActionUserID = US.UserID'#13#10#9#9#9 +
      #9'AND US.EffectiveDate < IT.ActionDate'#13#10#9#9#9'LEFT JOIN SEC_SubDepar' +
      'tment SD ON US.SubDepartmentID = SD.SubDepartmentID'#13#10#9#9#9'LEFT JOI' +
      'N SEC_Department DP ON SD.DepartmentID = DP.DepartmentID'#9#9#13#10#9#9#9'L' +
      'EFT JOIN Securitytbl ST ON IT.ActionUserID = ST.UserKey'#13#10#9#9#9#13#10#9#9 +
      'WHERE IT.LoanID = @LoanID'#13#10#9#9#9'AND IT.CategoryID = @CategoryID'#13#10#9 +
      #9#9'AND IT.PartyType = '#39'A'#39#13#10#9') AI ON CT.CategoryID = AI.CategoryID' +
      #13#10#9#9'AND AI.RowNo = 1'#13#10#9'LEFT JOIN '#13#10#9'('#13#10#9#9'SELECT IT.CategoryID,'#13#10 +
      #9#9#9'SR.SourceID, SR.[Description] AS [Source],'#13#10#9#9#9'UA.[Descriptio' +
      'n] AS [Action], IT.ActionDate, '#13#10#9#9#9'CASE (DP.DepartmentID)'#13#10#9#9#9#9 +
      'WHEN 2 THEN '#39'Authorisations'#39' --- *** 2 = Credit Vetting'#13#10#9#9#9#9'ELS' +
      'E DP.Name'#13#10#9#9#9'END AS [ActionUserDepartment], ST.UserID AS Action' +
      'User,'#13#10#9#9#9'RANK()OVER(PARTITION BY IT.ActionUserID ORDER BY US.Ef' +
      'fectiveDate DESC, US.CreateDate DESC) AS RowNo'#13#10#9#9#9#13#10#9#9#9'FROM afI' +
      'tems IT'#13#10#9#9#9'INNER JOIN SYS_UserAction UA ON IT.ActionID = UA.Use' +
      'rActionID'#13#10#9#9#9'INNER JOIN afSource SR ON IT.SourceID = SR.SourceI' +
      'D'#13#10#13#10#9#9#9'LEFT JOIN SEC_UserSubDepartment US ON IT.ActionUserID = ' +
      'US.UserID'#13#10#9#9#9#9'AND US.EffectiveDate < IT.ActionDate'#13#10#9#9#9'LEFT JOI' +
      'N SEC_SubDepartment SD ON US.SubDepartmentID = SD.SubDepartmentI' +
      'D'#13#10#9#9#9'LEFT JOIN SEC_Department DP ON SD.DepartmentID = DP.Depart' +
      'mentID'#9#9#13#10#9#9#9'LEFT JOIN Securitytbl ST ON IT.ActionUserID = ST.Us' +
      'erKey'#13#10#9#9#9#13#10#9#9'WHERE IT.LoanID = @LoanID'#13#10#9#9#9'AND IT.CategoryID = ' +
      '@CategoryID'#13#10#9#9#9'AND IT.PartyType = '#39'S'#39#13#10#9') SI ON CT.CategoryID =' +
      ' SI.CategoryID'#13#10#9#9'AND SI.RowNo = 1'#9#13#10#9#13#10'WHERE CT.CategoryID = @C' +
      'ategoryID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CategoryID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 459
    Top = 199
    object dsCategorySourceActionApplicantSourceID: TIntegerField
      FieldName = 'ApplicantSourceID'
    end
    object dsCategorySourceActionApplicantSource: TStringField
      FieldName = 'ApplicantSource'
      Size = 30
    end
    object dsCategorySourceActionApplicantAction: TStringField
      FieldName = 'ApplicantAction'
      Size = 10
    end
    object dsCategorySourceActionApplicantActionUser: TStringField
      FieldName = 'ApplicantActionUser'
      Size = 10
    end
    object dsCategorySourceActionApplicantActionDate: TDateTimeField
      FieldName = 'ApplicantActionDate'
    end
    object dsCategorySourceActionSpouseSourceID: TIntegerField
      FieldName = 'SpouseSourceID'
    end
    object dsCategorySourceActionSpouseSource: TStringField
      FieldName = 'SpouseSource'
      Size = 30
    end
    object dsCategorySourceActionSpouseAction: TStringField
      FieldName = 'SpouseAction'
      Size = 10
    end
    object dsCategorySourceActionSpouseActionUser: TStringField
      FieldName = 'SpouseActionUser'
      Size = 10
    end
    object dsCategorySourceActionSpouseActionDate: TDateTimeField
      FieldName = 'SpouseActionDate'
    end
    object dsCategorySourceActionApplicantActionUserDepartment: TStringField
      FieldName = 'ApplicantActionUserDepartment'
      ReadOnly = True
      Size = 50
    end
    object dsCategorySourceActionSpouseActionUserDepartment: TStringField
      FieldName = 'SpouseActionUserDepartment'
      ReadOnly = True
      Size = 50
    end
  end
  object cmdSaveItem: TADOCommand
    CommandText = 
      'DECLARE @LoanID INT = :LoanID;'#13#10'DECLARE @SourceID INT = :SourceI' +
      'D;'#13#10'DECLARE @CategoryID INT = :CategoryID;'#13#10'DECLARE @PartyType N' +
      'VARCHAR(1) = :PartyType;'#13#10'DECLARE @Category NVARCHAR(50) = :Cate' +
      'gory;'#13#10'DECLARE @Amount MONEY = :Amount;'#13#10'DECLARE @ActionID INT =' +
      ' :ActionID;'#13#10'DECLARE @ActionUserID INT = :ActionUserID;'#13#10#13#10'IF (@' +
      'Amount <= 0 AND @ActionID IN (1, 2)) -- *** 1 = Added, 2 = Edite' +
      'd'#13#10#9'SET @ActionID = 3; -- *** 3 = Disabled'#13#10#13#10'MERGE afItems AI'#13#10 +
      'USING'#13#10#9'('#13#10#9#9'VALUES (@LoanID, @SourceID, @CategoryID, @Category,' +
      ' @PartyType, @Amount, @ActionID, @ActionUserID)'#13#10#9') AS AF (LoanI' +
      'D, SourceID, CategoryID, [Description], PartyType, Amount, Actio' +
      'nID, ActionUserID)'#13#10'ON AI.LoanID = AF.LoanID AND AI.CategoryID =' +
      ' AF.CategoryID AND AI.PartyType = AF.PartyType'#13#10'WHEN MATCHED'#13#10#9'T' +
      'HEN '#13#10#9#9'UPDATE '#13#10#9#9'SET'#13#10#9#9#9'AI.SourceID = AF.SourceID,'#13#10#9#9#9'AI.[De' +
      'scription] = AF.[Description],'#13#10#9#9#9'AI.Amount = AF.Amount,'#13#10#9#9#9'AI' +
      '.ActionID = AF.ActionID,'#13#10#9#9#9'AI.ActionUserID = AF.ActionUserID,'#13 +
      #10#9#9#9'AI.ActionDate = GETDATE()'#13#10'WHEN NOT MATCHED'#13#10#9'THEN'#9#9'        ' +
      #13#10#9#9'INSERT (LoanID, SourceID, CategoryID, PartyType, [Descriptio' +
      'n], Amount, ActionID, ActionUserID, ActionDate)'#13#10#9#9'VALUES (AF.Lo' +
      'anID, AF.SourceID, AF.CategoryID, AF.PartyType, AF.[Description]' +
      ', AF.Amount, AF.ActionID, AF.ActionUserID, GETDATE());'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SourceID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CategoryID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PartyType'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'Category'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
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
        Name = 'ActionID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ActionUserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 1041
    Top = 93
  end
end
