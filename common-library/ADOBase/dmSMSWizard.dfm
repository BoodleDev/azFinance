object dtmSMSWizard: TdtmSMSWizard
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 297
  Top = 188
  Height = 351
  Width = 627
  object cnSMS: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 88
    Top = 32
  end
  object dsCategories: TADODataSet
    Connection = cnSMS
    CursorType = ctStatic
    CommandText = 
      'SELECT SC.CategoryID, TC.Description'#13#10'FROM SEC_RoleSMSCategory S' +
      'C'#13#10'LEFT JOIN SMS_TemplateCategory TC ON SC.CategoryID = TC.Categ' +
      'oryID'#13#10'WHERE RoleID = :RoleID'#13#10
    Parameters = <
      item
        Name = 'RoleID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 184
    Top = 32
  end
  object dsTemplates: TADODataSet
    Connection = cnSMS
    CursorType = ctStatic
    CommandText = 
      'SELECT TemplateID, [Message] AS Template, IsDynamic'#13#10'FROM SMS_Te' +
      'mplate'#13#10'WHERE CategoryID = :CategoryID'#13#10'AND IsActive = 1'
    DataSource = dtsCategories
    Parameters = <
      item
        Name = 'CategoryID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 184
    Top = 120
  end
  object dtsCategories: TDataSource
    DataSet = dsCategories
    Left = 184
    Top = 48
  end
  object dtsTemplates: TDataSource
    DataSet = dsTemplates
    Left = 184
    Top = 136
  end
  object dsEntity: TADODataSet
    Connection = cnSMS
    CommandText = 
      'SELECT EntityID, EntCode, Name, Name2, TelNo3'#13#10'FROM EntityData'#13#10 +
      'WHERE EntityID = :EntityID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 320
    Top = 40
  end
  object qryLoans: TADOQuery
    Connection = cnSMS
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT RefNo AS LoanRef, LoanID'
      'FROM lsLoanDetail'
      'WHERE EntityID = :EntityID'
      'ORDER BY RefNo')
    Left = 320
    Top = 136
  end
  object qryLoadTemplate: TADOQuery
    Connection = cnSMS
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TemplateID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'EXEC SMSLoadTemplate :TemplateID, :LoanID')
    Left = 424
    Top = 136
  end
  object cmdAddSMS: TADOCommand
    CommandText = 
      'INSERT INTO SMS_MessageOut (CreateDate, CreateUserID, LoanID, En' +
      'tityID, CellNo, Message, PriorityID, TemplateID)'#13#10'SELECT GETDATE' +
      '(), UserKey, :LoanID, :EntityID, :CellNo, :Message, 2, NULLIF(:T' +
      'emplateID, 0)'#13#10'FROM SecurityTbl'#13#10'WHERE UserID = :UserID'#13#10
    Connection = cnSMS
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EntityID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CellNo'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'Message'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'TemplateID'
        Size = -1
        Value = Null
      end
      item
        Name = 'UserID'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 184
    Top = 208
  end
end
