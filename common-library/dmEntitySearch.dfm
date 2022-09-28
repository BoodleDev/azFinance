object dtmEntitySearch: TdtmEntitySearch
  OldCreateOrder = False
  Left = 422
  Top = 146
  Height = 303
  Width = 332
  object cnSearch: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 24
  end
  object dsSearchAll: TADODataSet
    Connection = cnSearch
    CursorType = ctStatic
    CommandText = 
      'SELECT EntityID, EntCode, Name, Name2, RegNo, TelNo1, TelNo2, Te' +
      'lNo3'#13#10'FROM EntityData'#13#10'WHERE Name LIKE :FirstName'#13#10'AND Name2 LIK' +
      'E :LastName'#13#10'AND RegNo LIKE :IDNo'#13#10'AND EntType = 1'
    Parameters = <
      item
        Name = 'FirstName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'LastName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'IDNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    Left = 32
    Top = 88
  end
  object dsSearch: TADODataSet
    Connection = cnSearch
    CursorType = ctStatic
    CommandText = 
      'SELECT EntityID, EntCode, Name, Name2, RegNo, TelNo1, TelNo2, Te' +
      'lNo3'#13#10'FROM EntityData'#13#10'WHERE (Name LIKE :FirstName'#13#10'OR Name2 LIK' +
      'E :LastName'#13#10'OR RegNo LIKE :IDNo)'#13#10'AND EntType = 1'
    Parameters = <
      item
        Name = 'FirstName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'LastName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'IDNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    Left = 32
    Top = 152
  end
  object dtsSearch: TDataSource
    DataSet = dsSearch
    Left = 32
    Top = 168
  end
  object dtsSearchAll: TDataSource
    DataSet = dsSearchAll
    Left = 32
    Top = 104
  end
end
