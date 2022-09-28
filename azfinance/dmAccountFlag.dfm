object dtmAccountFlag: TdtmAccountFlag
  OldCreateOrder = False
  Left = 63
  Top = 247
  Height = 281
  Width = 474
  object dsFlags: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT DISTINCT FL.FlagID, '#13#10#9'CASE(FL.IsSystem)'#13#10#9#9'WHEN 1 THEN F' +
      'L.Description + '#39' (System)'#39#13#10#9#9'ELSE FL.Description'#13#10#9'END AS [Des' +
      'cription],'#13#10#9'CAST(CASE'#13#10#9#9'WHEN AC.FlagID IS NULL THEN 1'#13#10#9#9'ELSE ' +
      '0'#13#10#9'END AS BIT) AS Available,'#13#10#9'FL.IsSystem'#13#10'FROM DCC_Flag FL'#13#10'L' +
      'EFT JOIN DCC_AccountFlag AC ON FL.FlagID = AC.FlagID'#13#10#9'AND AC.Ac' +
      'countID = :AccountID'#13#10#9'AND AC.[Enabled] = 1'#13#10'ORDER BY FL.IsSyste' +
      'm ASC, 2'
    Parameters = <
      item
        Name = 'AccountID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 40
    Top = 16
  end
  object cmdDisableFlag: TADOCommand
    CommandText = 
      'UPDATE UA'#13#10'SET Enabled = 0, DisableDate = GETDATE(), DisableUser' +
      'ID = :UserID '#13#10#9'FROM DCC_AccountFlag UA -- *** User Account Flag' +
      #13#10#9'INNER JOIN DCC_Flag UF ON UA.FlagID = UF.FlagID -- *** User F' +
      'lag'#13#10#9#9'AND UF.IsSystem = 0'#13#10'WHERE UA.AccountID = :AccountID'#13#10#9'AN' +
      'D UA.FlagID = :FlagID'#13#10#9'AND UA.Enabled = 1'#13#10#9'AND UF.FlagID NOT I' +
      'N (SELECT CM.UserFlagID -- *** Make sure we don'#39'nt disable the u' +
      'ser flag that is in a map with current system flag'#13#10#9#9#9'FROM CLS_' +
      'StatusClassMap CM'#13#10#9#9#9'INNER JOIN DCC_Flag SF ON CM.SystemFlagID ' +
      '= SF.FlagID -- *** System Flag'#13#10#9#9#9#9'AND SF.IsSystem = 1 AND CM.U' +
      'serFlagID = UF.FlagID'#13#10#9#9#9'INNER JOIN DCC_AccountFlag SA ON UA.Ac' +
      'countID = SA.AccountID -- *** System Account Flag'#13#10#9#9#9#9'AND SF.Fl' +
      'agID = SA.FlagID'#13#10#9#9#9#9'AND SA.Enabled = 1)'
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
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FlagID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 120
    Top = 16
  end
  object cmdEnableFlag: TADOCommand
    CommandText = 
      'UPDATE UA'#13#10'SET Enabled = 1'#13#10#9'FROM DCC_AccountFlag UA -- *** User' +
      ' Account Flag'#13#10'WHERE UA.AccountID = :AccountID'#13#10#9'AND UA.FlagID =' +
      ' :FlagID'#13#10#9'AND UA.Enabled = 0'#13#10#9'AND UA.DeleteDate IS NULL'#13#10#13#10'SEL' +
      'ECT :RowCount = @@ROWCOUNT'
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
        Name = 'FlagID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'RowCount'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 208
    Top = 16
  end
  object cmdAddFlag: TADOCommand
    CommandText = 
      'DECLARE @AccountID INT, @FlagID INT'#13#10#13#10'SELECT @AccountID = :Acco' +
      'untID, @FlagID = :FlagID'#13#10#13#10'INSERT INTO DCC_AccountFlag '#13#10#9'(Acco' +
      'untID, FlagID, SubFlagID, CreateDate, CreateUserID, Enabled)'#13#10'SE' +
      'LECT '#13#10#9'@AccountID, @FlagID, :SubFlagID, GETDATE(), :UserID, 1'#13#10 +
      'WHERE NOT EXISTS (SELECT AccountFlagID'#13#10#9#9#9'FROM DCC_AccountFlag'#13 +
      #10#9#9'WHERE AccountID = @AccountID'#13#10#9#9#9'AND FlagID = @FlagID'#13#10#9#9#9'AND' +
      ' Enabled = 1)'#13#10#9#13#10'SELECT :AccountFlagID = ISNULL(@@IDENTITY, 0)'
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
        Name = 'FlagID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SubFlagID'
        DataType = ftInteger
        Size = -1
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
        Name = 'AccountFlagID'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
        Value = Null
      end>
    Left = 288
    Top = 16
  end
  object dsCurrentFlags: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'AF.AccountFlagID, AF.AccountID, AF.FlagID, '#13#10#9'CASE(FL.' +
      'IsSystem)'#13#10#9#9'WHEN 1 THEN FL.Description + '#39' (System)'#39#13#10#9#9'ELSE FL' +
      '.Description'#13#10#9'END AS FlagDescription,'#13#10#9'AF.CreateDate, AF.Creat' +
      'eUserID, CU.UserID AS CreateUser, AF.Enabled'#13#10'FROM DCC_AccountFl' +
      'ag AF'#13#10'LEFT JOIN DCC_Flag FL ON AF.FlagID = FL.FlagID'#13#10'LEFT JOIN' +
      ' SecurityTbl CU ON AF.CreateUserID = CU.UserKey'#13#10'WHERE AccountID' +
      ' = :AccountID'#13#10#9'AND AF.[Enabled] = 1'#13#10#9'AND AF.DeleteDate IS NULL' +
      #13#10'ORDER BY FL.IsSystem ASC, 4'
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 80
  end
  object dtsCurrentFlags: TDataSource
    DataSet = dsCurrentFlags
    Left = 40
    Top = 96
  end
  object dsHistoryFlags: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'AF.AccountFlagID, AF.AccountID, AF.FlagID, '#13#10#9'CASE(FL.' +
      'IsSystem)'#13#10#9#9'WHEN 1 THEN FL.Description + '#39' (System)'#39#13#10#9#9'ELSE FL' +
      '.Description'#13#10#9'END AS FlagDescription,'#13#10#9'AF.CreateDate, AF.Creat' +
      'eUserID, CU.UserID AS CreateUser, AF.Enabled,'#13#10#9'AF.DisableDate, ' +
      'AF.DisableUserID, DU.UserID AS DisableUser'#13#10'FROM DCC_AccountFlag' +
      ' AF'#13#10'LEFT JOIN DCC_Flag FL ON AF.FlagID = FL.FlagID'#13#10'LEFT JOIN S' +
      'ecurityTbl CU ON AF.CreateUserID = CU.UserKey'#13#10'LEFT JOIN Securit' +
      'yTbl DU ON AF.DisableUserID = DU.UserKey'#13#10'WHERE AccountID = :Acc' +
      'ountID'#13#10#9'AND AF.[Enabled] = 0'#13#10#9'AND AF.DeleteDate IS NULL'#13#10'ORDER' +
      ' BY FL.IsSystem ASC, 4'
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 120
    Top = 72
  end
  object dtsHistroyFlags: TDataSource
    DataSet = dsHistoryFlags
    Left = 120
    Top = 88
  end
  object cmdDeleteFlag: TADOCommand
    CommandText = 
      'UPDATE UA'#13#10'SET DeleteDate = GETDATE(), DeleteUserID = :UserID'#13#10#9 +
      'FROM DCC_AccountFlag UA -- *** User Account Flag'#13#10'WHERE UA.Accou' +
      'ntFlagID = :AccountFlagID'
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
        Name = 'AccountFlagID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 208
    Top = 72
  end
  object dsSubFlags: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT SubFlagID, FlagID, Description'#13#10'FROM DCC_SubFlag'#13#10'ORDER B' +
      'Y Description'
    DataSource = dtsFlags
    Parameters = <>
    Left = 40
    Top = 152
  end
  object dtsSubFlags: TDataSource
    DataSet = dsSubFlags
    Left = 40
    Top = 168
  end
  object dtsFlags: TDataSource
    DataSet = dsFlags
    Left = 40
    Top = 32
  end
end
