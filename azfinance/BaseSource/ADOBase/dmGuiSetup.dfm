object dtmGuiSetup: TdtmGuiSetup
  OldCreateOrder = False
  Left = 153
  Top = 210
  Height = 285
  Width = 558
  object dspGuiSetup: TDataSetProvider
    DataSet = qryGuiSetup
    Constraints = True
    Left = 96
    Top = 8
  end
  object cdsGuiSetup: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ControlCaption'
    Params = <>
    ProviderName = 'dspGuiSetup'
    BeforePost = cdsGuiSetupBeforePost
    Left = 32
    Top = 8
    object cdsGuiSetupAppID: TIntegerField
      FieldName = 'AppID'
    end
    object cdsGuiSetupFormName: TStringField
      FieldName = 'FormName'
    end
    object cdsGuiSetupControlName: TStringField
      FieldName = 'ControlName'
    end
    object cdsGuiSetupControlCaption: TStringField
      FieldName = 'ControlCaption'
      Size = 50
    end
    object cdsGuiSetupControlType: TStringField
      FieldName = 'ControlType'
    end
    object cdsGuiSetupStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object cmdUpdate: TADOCommand
    CommandText = 'update GUI set ControlCaption = :ControlCaption'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'ControlCaption'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    Left = 192
    Top = 8
  end
  object cmdInsert: TADOCommand
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 192
    Top = 56
  end
  object qryGuiSetup: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'AppID'
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
      end>
    SQL.Strings = (
      'Select ControlName, ControlCaption'
      'from GUI'
      'where AppID = :AppID'
      'and FormName = :Form')
    Left = 32
    Top = 72
  end
  object dtsGuiSetup: TDataSource
    DataSet = cdsGuiSetup
    Left = 32
    Top = 88
  end
  object qryCRUD: TADOQuery
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 128
    Top = 128
  end
  object cmdCreateGUI: TADOCommand
    CommandText = 
      'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
      'dbo].[GUI]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'#13#10'drop t' +
      'able [dbo].[GUI]'#13#10#13#10'CREATE TABLE [dbo].[GUI] ('#13#10#9'[AppID] [int] N' +
      'OT NULL ,'#13#10#9'[FormName] [varchar] (20) COLLATE SQL_Latin1_General' +
      '_CP1_CI_AS NOT NULL ,'#13#10#9'[ControlName] [varchar] (20) COLLATE SQL' +
      '_Latin1_General_CP1_CI_AS NOT NULL ,'#13#10#9'[ControlCaption] [varchar' +
      '] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,'#13#10#9'[Contro' +
      'lType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT N' +
      'ULL '#13#10') ON [PRIMARY]'#13#10#13#10#13#10'ALTER TABLE [dbo].[GUI] WITH NOCHECK A' +
      'DD '#13#10#9'CONSTRAINT [PK_GUI] PRIMARY KEY  CLUSTERED '#13#10#9'('#13#10#9#9'[AppID]' +
      ','#13#10#9#9'[FormName],'#13#10#9#9'[ControlName]'#13#10#9')  ON [PRIMARY] '
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 264
    Top = 112
  end
end
