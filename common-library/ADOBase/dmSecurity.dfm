object dtmSecurity: TdtmSecurity
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 296
  Top = 134
  Height = 466
  Width = 696
  object qrySecurity: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'select AppID, Form, UserGroup, Control'#13#10'from Security'#13#10'where Use' +
      'rGroup = :UserGroup'#13#10'and Form = :Form'#13#10'and AppID = :AppID'
    DataSource = dtsUserGroups
    Parameters = <
      item
        Name = 'UserGroup'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Form'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'AppID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 16
  end
  object dtsSecurity: TDataSource
    DataSet = qrySecurity
    Left = 32
    Top = 32
  end
  object qryUserGroups: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'select TypeKey, Description'#13#10'from CodeTable'#13#10'where Groupkey = 90' +
      '000'
    Parameters = <>
    Left = 128
    Top = 16
  end
  object dtsUserGroups: TDataSource
    DataSet = qryUserGroups
    Left = 128
    Top = 32
  end
  object cdsControls: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'Caption'
    Params = <>
    ProviderName = 'dspSecurity'
    StoreDefs = True
    Left = 32
    Top = 104
    object cdsControlsCaption: TStringField
      FieldName = 'Caption'
    end
    object cdsControlsControl: TStringField
      FieldName = 'Control'
    end
    object cdsControlsType: TStringField
      FieldName = 'Type'
      Visible = False
      Size = 10
    end
  end
  object dtsControls: TDataSource
    DataSet = cdsControls
    Left = 32
    Top = 120
  end
  object cmdDeleteAll: TADOCommand
    CommandText = 
      'Delete from Security'#13#10'where UserGroup = :UserGroup'#13#10'and Form = :' +
      'Form'#13#10'and AppID = :AppID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'UserGroup'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Form'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'AppID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 128
    Top = 120
  end
  object qryUserGroup: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select UsrGrp'#13#10'from SecurityUAG'#13#10'where UserID = :UserID'#13#10'and App' +
      'ID = :AppID'
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
        Name = 'AppID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 216
    Top = 16
  end
end
