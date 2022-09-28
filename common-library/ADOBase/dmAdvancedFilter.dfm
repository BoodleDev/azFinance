object dtmAdvancedFilter: TdtmAdvancedFilter
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1079
  Top = 438
  Height = 387
  Width = 601
  object dbData: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    AfterConnect = dbDataAfterConnect
    AfterDisconnect = dbDataAfterDisconnect
    Left = 32
    Top = 16
  end
  object dsExecute: TADODataSet
    Connection = dbData
    CursorType = ctStatic
    AfterOpen = dsExecuteAfterOpen
    CommandText = 'EXEC SP_EXECUTESQL N:Filter'
    Parameters = <
      item
        Name = 'Filter'
        DataType = ftWideString
        Size = 19
        Value = Null
      end>
    Left = 152
    Top = 256
  end
  object dtsExecute: TDataSource
    DataSet = dsExecute
    Left = 152
    Top = 272
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
    Left = 227
    Top = 16
  end
  object dsLookup: TADODataSet
    Connection = dbData
    Parameters = <>
    Left = 520
    Top = 16
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
    Left = 324
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
    Left = 210
    Top = 96
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
    Left = 284
    Top = 256
  end
  object dtsAdminFilter: TDataSource
    DataSet = dsAdminFilter
    Left = 284
    Top = 272
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
    Left = 416
    Top = 256
  end
  object dtsAdminFields: TDataSource
    DataSet = dsAdminFields
    Left = 416
    Top = 272
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
    Left = 129
    Top = 16
  end
  object dsDefinitions: TADODataSet
    Connection = dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT DefinitionID, DefinitionName, Description, CreateUser, Fi' +
      'lterID, Condition'#13#10'FROM FilterSysDefinition'#13#10'WHERE FilterID = :F' +
      'ilterID'#13#10'AND CreateUser = :UserID'#13#10'ORDER BY DefinitionName'
    Parameters = <
      item
        Name = 'FilterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 422
    Top = 16
  end
  object cmdAddDefintionFilter: TADOCommand
    CommandText = 
      'INSERT INTO FilterSysDefinitionFilter (DefinitionID, FieldName, ' +
      'Condition,  FilterValue, GroupID, GroupType) VALUES (:Definition' +
      'ID, :FieldName, :Condition, :FilterValue, :GroupID, :GroupType)'
    Connection = dbData
    Parameters = <
      item
        Name = 'DefinitionID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FieldName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Condition'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'FilterValue'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 500
        Value = Null
      end
      item
        Name = 'GroupID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'GroupType'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 80
    Top = 96
  end
  object cmdClearDefinition: TADOCommand
    CommandText = 
      'DECLARE @DefinitionID INT'#13#10#13#10'SELECT @DefinitionID = :DefinitionI' +
      'D'#13#10#13#10'DELETE FROM FilterSysDefinitionFilter WHERE DefinitionID = ' +
      '@DefinitionID'#13#10'DELETE FROM FilterSysDefinitionField WHERE Defini' +
      'tionID = @DefinitionID'
    Connection = dbData
    Parameters = <
      item
        Name = 'DefinitionID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 472
    Top = 96
  end
  object cmdAddDefintionField: TADOCommand
    CommandText = 
      'INSERT INTO FilterSysDefinitionField (DefinitionID, FieldName) V' +
      'ALUES (:DefinitionID, :FieldName)'
    Connection = dbData
    Parameters = <
      item
        Name = 'DefinitionID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FieldName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    Left = 341
    Top = 96
  end
  object qryDefinitionFilter: TADOQuery
    Connection = dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DefinitionID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DefinitionID, FieldName, Condition, FilterValue, GroupID,' +
        ' GroupType'
      'FROM FilterSysDefinitionFilter'
      'WHERE DefinitionID = :DefinitionID')
    Left = 152
    Top = 168
  end
  object qryDefinitionField: TADOQuery
    Connection = dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DefinitionID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DefinitionID, FieldName'
      'FROM FilterSysDefinitionField'
      'WHERE DefinitionID = :DefinitionID')
    Left = 280
    Top = 176
  end
  object qryCommand: TADOQuery
    Connection = dbData
    Parameters = <
      item
        Name = 'Filter'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'FilterID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT REPLACE(SQLCommand,'#39'@FILTER@'#39',:Filter)'
      'FROM FilterSys'
      'WHERE FilterID = :FilterID')
    Left = 416
    Top = 168
  end
end
