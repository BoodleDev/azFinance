object dtmSecurity: TdtmSecurity
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 159
  Top = 129
  Height = 466
  Width = 696
  object qrySecurity: TADODataSet
    Connection = dbSecurity
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
    Left = 40
    Top = 80
  end
  object dtsSecurity: TDataSource
    DataSet = qrySecurity
    Left = 40
    Top = 96
  end
  object qryUserGroups: TADODataSet
    Connection = dbSecurity
    CursorType = ctStatic
    CommandText = 
      'select TypeKey, Description'#13#10'from CodeTable'#13#10'where Groupkey = 90' +
      '000'
    Parameters = <>
    Left = 296
    Top = 40
  end
  object dtsUserGroups: TDataSource
    DataSet = qryUserGroups
    Left = 296
    Top = 56
  end
  object dbSecurity: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=gt&9;Persist Security Info=True;Use' +
      'r ID=sa;Initial Catalog=GTDataNew;Data Source=Cindy01;Use Proced' +
      'ure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstati' +
      'on ID=DANIEL;Use Encryption for Data=False;Tag with column colla' +
      'tion when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 8
  end
  object cdsControls: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'Caption;Control'
    Params = <>
    ProviderName = 'dspSecurity'
    StoreDefs = True
    Left = 40
    Top = 168
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
    Left = 40
    Top = 184
  end
  object cmdDeleteAll: TADOCommand
    CommandText = 
      'Delete from Security'#13#10'where UserGroup = :UserGroup'#13#10'and Form = :' +
      'Form'#13#10'and AppID = :AppID'
    Connection = dbSecurity
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
    Left = 184
    Top = 160
  end
  object qryUserGroup: TADODataSet
    Connection = dbSecurity
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
    Left = 312
    Top = 200
  end
end
