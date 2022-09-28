object dtmEntCode: TdtmEntCode
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 678
  Top = 262
  Height = 391
  Width = 686
  object qryMaritialStats: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT  TypeKey, Description, Description AS OrderID'#13#10'FROM CodeT' +
      'able '#13#10'WHERE GroupKey=110011 '#13#10'AND NotUse=0'#13#10#13#10'UNION'#13#10#13#10'SELECT 0' +
      ', '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 128
    Top = 8
  end
  object qryNationality: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble '#13#10'WHERE GroupKey=110012 '#13#10'AND NotUse=0'#13#10#13#10'UNION'#13#10#13#10'SELECT 0,' +
      ' '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 32
    Top = 8
  end
  object qryEmployment: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble '#13#10'WHERE GroupKey=110010 '#13#10'AND NotUse=0'#13#10#13#10'UNION'#13#10#13#10'SELECT 0,' +
      ' '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 32
    Top = 88
  end
  object qryOccupation: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID '#13#10'FROM CodeT' +
      'able '#13#10'WHERE GroupKey=110014 '#13#10'AND NotUse=0'#13#10#13#10'UNION'#13#10#13#10'SELECT 0' +
      ', '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 128
    Top = 88
  end
  object qryRelation: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble '#13#10'WHERE GroupKey=110001 '#13#10'AND NotUse=0'#13#10#13#10'UNION'#13#10#13#10'SELECT 0,' +
      ' '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 216
    Top = 88
  end
  object qryPersonInd: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble '#13#10'WHERE GroupKey = 100103 '#13#10'AND NotUse=0'#13#10#13#10'UNION'#13#10#13#10'SELECT ' +
      '0, '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 216
    Top = 8
  end
  object dtsEmployment: TDataSource
    DataSet = qryEmployment
    Left = 32
    Top = 113
  end
  object dtsNationality: TDataSource
    DataSet = qryNationality
    Left = 32
    Top = 32
  end
  object dtsMaritialStats: TDataSource
    DataSet = qryMaritialStats
    Left = 128
    Top = 32
  end
  object dtsOccupation: TDataSource
    DataSet = qryOccupation
    Left = 128
    Top = 113
  end
  object dtsPersonInd: TDataSource
    DataSet = qryPersonInd
    Left = 216
    Top = 32
  end
  object dtsRelation: TDataSource
    DataSet = qryRelation
    Left = 216
    Top = 113
  end
  object qryUnion: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey, Description, Description AS OrderID'#13#10'FROM CodeTa' +
      'ble '#13#10'WHERE GroupKey=110027 '#13#10'AND NotUse=0'#13#10#13#10'UNION'#13#10#13#10'SELECT 0,' +
      ' '#39'<NONE>'#39', '#39'AAA'#39#13#10#13#10'ORDER BY OrderID'
    Parameters = <>
    Left = 32
    Top = 176
  end
  object dtsUnion: TDataSource
    DataSet = qryUnion
    Left = 32
    Top = 200
  end
  object dsConfirmationSource: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT TypeKey, Description'#13#10'FROM CodeTable'#13#10'WHERE GroupKey = 10' +
      '0147'#13#10'ORDER BY Description'
    Parameters = <>
    Left = 128
    Top = 176
  end
  object dtsConfirmationSource: TDataSource
    DataSet = dsConfirmationSource
    Left = 128
    Top = 192
  end
end
