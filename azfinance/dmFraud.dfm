object dtmFraud: TdtmFraud
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 369
  Top = 170
  Height = 307
  Width = 532
  object dsEnquiries: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT FraudID, LoanID, CreateDate, CreateUser, IDNumber, FirstN' +
      'ame, SecondName, Surname,'#13#10#9'EmployerName, EmployerTradingName, E' +
      'mployerTel, BankAccountNo, HomeTel, WorkTel, Cell,'#13#10#9'Passed,'#13#10#9'C' +
      'ASE Passed'#13#10#9#9'WHEN 1 THEN '#39'Accept'#39#13#10#9#9'WHEN 0 THEN '#39'Reject'#39#13#10#9'END' +
      ' AS Result'#13#10'FROM FPS_FraudEnquiry'#13#10'WHERE LoanID = :LoanID'#13#10'ORDER' +
      ' BY CreateDate DESC'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 16
  end
  object dtsEnquiries: TDataSource
    DataSet = dsEnquiries
    Left = 48
    Top = 152
  end
  object qryReportURL: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Value'
      'FROM Config'
      'WHERE Name = '#39'FPS_ReportURL'#39)
    Left = 144
    Top = 16
  end
  object cmdDoEnquiry: TADOCommand
    CommandText = 'EXEC dbo.FPS_DoFraudEnquiry :LoanID, :UserID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    Left = 40
    Top = 96
  end
  object dsFraudBureau: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'BH.TransNo, BH.EnqType, BH.EnqDate, BS.Status, BH.Crea' +
      'teUser,'#13#10#9'BH.LoanID, BH.ResultType, BH.Result, FS.Passed, BS.Suc' +
      'cess, FS.FraudScoreID,'#13#10#9'CASE'#13#10#9#9'WHEN FS.Passed = 1 THEN '#39'Accept' +
      #39#13#10#9#9'WHEN FS.Passed = 0 THEN '#39'Reject'#39#13#10#9'END AS PassedDescription' +
      ','#13#10#9'SU.Username AS OverrideUser, FS.OverrideDate'#13#10'FROM BureauHis' +
      'tory BH'#13#10'LEFT JOIN BureauStatus BS ON BH.Status = BS.StatusCode'#13 +
      #10'LEFT JOIN BUR_FraudScore FS ON BH.TransNo = FS.TransNo'#13#10'LEFT JO' +
      'IN SEC_User SU ON FS.OverrideUserID = SU.UserID'#13#10'WHERE BH.LoanID' +
      ' = :LoanID'#13#10#9'AND EnqType = -8'#13#10'ORDER BY BH.EnqDate DESC'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 72
    object dsFraudBureauTransNo: TAutoIncField
      FieldName = 'TransNo'
      ReadOnly = True
    end
    object dsFraudBureauEnqType: TIntegerField
      FieldName = 'EnqType'
    end
    object dsFraudBureauEnqDate: TDateTimeField
      FieldName = 'EnqDate'
    end
    object dsFraudBureauStatus: TStringField
      FieldName = 'Status'
      Size = 50
    end
    object dsFraudBureauCreateUser: TStringField
      FieldName = 'CreateUser'
      Size = 10
    end
    object dsFraudBureauLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object dsFraudBureauResultType: TStringField
      FieldName = 'ResultType'
      Size = 5
    end
    object dsFraudBureauResult: TMemoField
      FieldName = 'Result'
      BlobType = ftMemo
    end
    object dsFraudBureauPassed: TBooleanField
      FieldName = 'Passed'
    end
    object dsFraudBureauSuccess: TBooleanField
      FieldName = 'Success'
    end
    object dsFraudBureauFraudScoreID: TAutoIncField
      FieldName = 'FraudScoreID'
      ReadOnly = True
    end
    object dsFraudBureauOverrideUser: TStringField
      FieldName = 'OverrideUser'
      Size = 10
    end
    object dsFraudBureauPassedDescription: TStringField
      FieldName = 'PassedDescription'
      ReadOnly = True
      Size = 6
    end
    object dsFraudBureauOverrideDate: TDateTimeField
      FieldName = 'OverrideDate'
    end
  end
  object dtsFraudBureau: TDataSource
    DataSet = dsFraudBureau
    Left = 232
    Top = 72
  end
  object dsAuthentication: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'FA.FraudAuthenticationID, FA.EntityID, FA.AccountID, F' +
      'A.CreateUserID, SU.Username AS CreateUser, '#13#10#9'FA.QuestionCount, ' +
      'FA.Completed, FA.Authenticated, FA.CompleteDate, FA.PassPercent,' +
      ' FA.ResultPercent, '#13#10#9'FA.CellNo, FA.BankAccountNo, FA.Reference,' +
      ' FA.CreateDate,FA.Enabled,FA.Bureau,DU.Username AS DisableUser, ' +
      'FA.DisableDate, '#13#10#9'CASE Authenticated'#13#10#9#9'WHEN 0 THEN '#39'Reject'#39#13#10#9 +
      #9'WHEN 1 THEN '#39'Accept'#39#13#10#9'END AS Result'#13#10'FROM ENT_FraudAuthenticat' +
      'ion FA'#13#10'LEFT JOIN SEC_User SU ON FA.CreateUserID = SU.UserID'#13#10'LE' +
      'FT JOIN SEC_User DU ON FA.DisableUserID = DU.UserID'#13#10'WHERE Accou' +
      'ntID = :LoanID'#13#10'ORDER BY FA.CreateDate DESC'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 152
    object dsAuthenticationFraudAuthenticationID: TAutoIncField
      FieldName = 'FraudAuthenticationID'
      ReadOnly = True
    end
    object dsAuthenticationEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object dsAuthenticationAccountID: TIntegerField
      FieldName = 'AccountID'
    end
    object dsAuthenticationCreateUserID: TIntegerField
      FieldName = 'CreateUserID'
    end
    object dsAuthenticationCreateUser: TStringField
      FieldName = 'CreateUser'
      Size = 10
    end
    object dsAuthenticationQuestionCount: TIntegerField
      FieldName = 'QuestionCount'
    end
    object dsAuthenticationCompleted: TBooleanField
      FieldName = 'Completed'
    end
    object dsAuthenticationAuthenticated: TBooleanField
      FieldName = 'Authenticated'
    end
    object dsAuthenticationCompleteDate: TDateTimeField
      FieldName = 'CompleteDate'
    end
    object dsAuthenticationPassPercent: TBCDField
      FieldName = 'PassPercent'
      Precision = 10
      Size = 2
    end
    object dsAuthenticationResultPercent: TBCDField
      FieldName = 'ResultPercent'
      Precision = 10
      Size = 2
    end
    object dsAuthenticationCellNo: TStringField
      FieldName = 'CellNo'
      Size = 11
    end
    object dsAuthenticationBankAccountNo: TStringField
      FieldName = 'BankAccountNo'
      Size = 15
    end
    object dsAuthenticationReference: TStringField
      FieldName = 'Reference'
    end
    object dsAuthenticationCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object dsAuthenticationEnabled: TBooleanField
      FieldName = 'Enabled'
    end
    object dsAuthenticationBureau: TStringField
      FieldName = 'Bureau'
      Size = 5
    end
    object dsAuthenticationDisableDate: TDateTimeField
      FieldName = 'DisableDate'
    end
    object dsAuthenticationResult: TStringField
      FieldName = 'Result'
      ReadOnly = True
      Size = 6
    end
    object dsAuthenticationDisableUser: TStringField
      FieldName = 'DisableUser'
      Size = 10
    end
  end
  object dtsAuthentication: TDataSource
    DataSet = dsAuthentication
    Left = 232
    Top = 144
  end
  object cmdUpdateFraudBureau: TADOCommand
    CommandText = 
      'UPDATE BUR_FraudScore '#13#10'SET '#13#10'  Passed = 1, '#13#10'  OverrideUserID =' +
      ' :UserID, '#13#10'  OverrideDate = GETDATE() '#13#10'WHERE '#13#10'  FraudScoreID ' +
      '= :FraudScoreID;'
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
        Name = 'FraudScoreID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 344
    Top = 72
  end
  object cmdUpdateAuthentication: TADOCommand
    CommandText = 
      'UPDATE ENT_FraudAuthentication '#13#10'SET '#13#10'  DisableUserID = :UserID' +
      ', '#13#10'  DisableDate = GETDATE(), '#13#10'  Enabled = 0 '#13#10'WHERE '#13#10'  Fraud' +
      'AuthenticationID = :FraudAuthenticationID '
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
        Name = 'FraudAuthenticationID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 344
    Top = 144
  end
end
