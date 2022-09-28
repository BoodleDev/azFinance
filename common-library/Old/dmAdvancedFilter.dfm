object dtmAdvancedFilter: TdtmAdvancedFilter
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 410
  Top = 231
  Height = 298
  Width = 478
  object dbData: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    AfterConnect = dbDataAfterConnect
    AfterDisconnect = dbDataAfterDisconnect
    Left = 56
    Top = 24
  end
  object dsExecute: TADODataSet
    Connection = dbData
    CursorType = ctStatic
    AfterOpen = dsExecuteAfterOpen
    CommandText = 
      'DECLARE @SQLCommand NVARCHAR(4000)'#13#10#13#10'SELECT @SQLCommand = REPLA' +
      'CE(SQLCommand,'#39'@FILTER@'#39',:Filter)'#13#10'FROM FilterSys'#13#10'WHERE FilterI' +
      'D = :FilterID'#13#10#13#10'EXEC SP_EXECUTESQL @SQLCommand'
    Parameters = <
      item
        Name = 'Filter'
        DataType = ftWideString
        Size = 19
        Value = Null
      end
      item
        Name = 'FilterID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 96
    Top = 88
  end
  object dtsExecute: TDataSource
    DataSet = dsExecute
    Left = 96
    Top = 104
  end
  object dsFields: TADODataSet
    Connection = dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT FieldNo, FieldName, FieldCaption, FieldType, Lookup, Look' +
      'upValues'#13#10'FROM FilterSysFields FF'#13#10'WHERE FF.FilterID = :FilterID' +
      #13#10'ORDER BY FieldCaption'
    Parameters = <
      item
        Name = 'FilterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 184
    Top = 16
  end
  object dsLookup: TADODataSet
    Connection = dbData
    Parameters = <>
    Left = 176
    Top = 80
  end
  object dsFilterUser: TADODataSet
    Connection = dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT FilterBy, Condition, Value'#13#10'FROM FilterUserLog'#13#10'WHERE Use' +
      'rID = :UserID'#13#10'AND FilterID = :FilterID'
    Parameters = <
      item
        Name = 'UserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'FilterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 264
    Top = 16
  end
  object cmdRemoveFilterUser: TADOCommand
    CommandText = 
      'DELETE'#13#10'FROM FilterUserLog'#13#10'WHERE UserID = :UserID'#13#10'AND FilterID' +
      ' = :FilterID'
    Connection = dbData
    Parameters = <
      item
        Name = 'UserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'FilterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 264
    Top = 72
  end
  object dsAdminFilter: TADODataSet
    Connection = dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT FilterID, Description, SQLCommand'#13#10'FROM FilterSys'#13#10'WHERE ' +
      'FilterID = :FilterID'
    Parameters = <
      item
        Name = 'FilterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 264
    Top = 136
  end
  object dtsAdminFilter: TDataSource
    DataSet = dsAdminFilter
    Left = 264
    Top = 152
  end
  object dsAdminFields: TADODataSet
    Connection = dbData
    CursorType = ctStatic
    OnNewRecord = dsAdminFieldsNewRecord
    CommandText = 
      'SELECT FieldNo, FilterID, FieldName, FieldCaption, FieldType, Lo' +
      'okup, LookupValues'#13#10'fROM FilterSysFields'#13#10'WHERE FilterID = :Filt' +
      'erID'
    DataSource = dtsAdminFilter
    MasterFields = 'FilterID'
    Parameters = <
      item
        Name = 'FilterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 352
    Top = 136
  end
  object dtsAdminFields: TDataSource
    DataSet = dsAdminFields
    Left = 352
    Top = 152
  end
  object dsFilterCaption: TADODataSet
    Connection = dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT FS.Description'#13#10'FROM FilterSys FS'#13#10'WHERE FS.FilterID = :F' +
      'ilterID'
    Parameters = <
      item
        Name = 'FilterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 168
    Top = 152
  end
end
