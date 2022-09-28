object dtmLoanCLU: TdtmLoanCLU
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 491
  Top = 186
  Height = 394
  Width = 585
  object qryLUSecT: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble'#13#10'WHERE Groupkey = 100120 '#13#10'AND NotUse = 0'#13#10#13#10'UNION'#13#10#13#10'SELECT' +
      ' 0, '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 115
    Top = 80
  end
  object dtsLUSecT: TDataSource
    DataSet = qryLUSecT
    Left = 115
    Top = 96
  end
  object qryLUAssets: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble'#13#10'WHERE GroupKey = 100124 '#13#10'AND NotUse=0'#13#10#13#10'UNION'#13#10#13#10'SELECT 0' +
      ', '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 197
    Top = 80
  end
  object dtsLUAssets: TDataSource
    DataSet = qryLUAssets
    Left = 197
    Top = 96
  end
  object qryLUAuthority: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble'#13#10'WHERE GroupKey = 100110 '#13#10'AND NotUse=0'#13#10#13#10'UNION'#13#10#13#10'SELECT 0' +
      ', '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 32
    Top = 80
  end
  object dtsLUAuthority: TDataSource
    DataSet = qryLUAuthority
    Left = 32
    Top = 96
  end
  object qryLoanInd2: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble'#13#10'WHERE Groupkey = 100132 '#13#10'AND NotUse = 0'#13#10#13#10'UNION'#13#10#13#10'SELECT' +
      ' 0, '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 280
    Top = 8
  end
  object dtsLoanInd2: TDataSource
    DataSet = qryLoanInd2
    Left = 280
    Top = 24
  end
  object qryLUActInd: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble'#13#10'WHERE Groupkey = 100126 AND NotUse = 0'#13#10#13#10'UNION'#13#10#13#10'SELECT 0' +
      ', '#39'<NONE>'#39', '#39'AAA'#39' AS OrderID'#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 197
    Top = 8
  end
  object dtsLUActInd: TDataSource
    DataSet = qryLUActInd
    Left = 197
    Top = 24
  end
  object qryLoanInd: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT CTG.TypeKey, CTL.Description, CTL.Description AS OrderID'#13 +
      #10'FROM CodeTblGrp CTG '#13#10'LEFT JOIN CodeTable CTL ON CTG.TypeKey=CT' +
      'L.TypeKey'#13#10'WHERE Grpkey =:GrpKey '#13#10'AND  CTL.NotUse = 0'#13#10#13#10'UNION'#13 +
      #10#13#10'SELECT 0, '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <
      item
        Name = 'GrpKey'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 115
    Top = 8
  end
  object qryLoanUse: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble '#13#10'WHERE GroupKey=100102 '#13#10'AND NotUse=0'#13#10#13#10'UNION'#13#10#13#10'SELECT 0,' +
      ' '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 32
    Top = 8
  end
  object dtsLoanInd: TDataSource
    DataSet = qryLoanInd
    Left = 115
    Top = 24
  end
  object dtsLoanUse: TDataSource
    DataSet = qryLoanUse
    Left = 32
    Top = 24
  end
  object qryLUIndustry: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble'#13#10'WHERE Groupkey = 100107 '#13#10'AND NotUse = 0'#13#10#13#10'UNION'#13#10#13#10'SELECT' +
      ' 0, '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 272
    Top = 208
  end
  object dtsLUIndustry: TDataSource
    DataSet = qryLUIndustry
    Left = 272
    Top = 232
  end
  object qryLURegion: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble'#13#10'WHERE Groupkey = 100117 '#13#10'AND NotUse = 0'#13#10#13#10'UNION'#13#10#13#10'SELECT' +
      ' 0, '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 197
    Top = 208
  end
  object dtsLURegion: TDataSource
    DataSet = qryLURegion
    Left = 197
    Top = 232
  end
end
