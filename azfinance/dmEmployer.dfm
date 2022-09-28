object dtmEmployer: TdtmEmployer
  OldCreateOrder = False
  Left = 411
  Top = 273
  Height = 353
  Width = 594
  object dsSearch: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'EXEC dbo.ENT_SearchCompany :Keywords, :RegistrationNo, '#39'10000100' +
      '1'#39
    Parameters = <
      item
        Name = 'Keywords'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'RegistrationNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    Left = 40
    Top = 16
    object dsSearchEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object dsSearchCompanyCode: TStringField
      FieldName = 'CompanyCode'
      Size = 10
    end
    object dsSearchRegNo: TStringField
      FieldName = 'RegistrationNo'
      Size = 15
    end
    object dsSearchFullname: TStringField
      FieldName = 'Fullname'
      Size = 100
    end
    object dsSearchWordsMatched: TIntegerField
      FieldName = 'WordsMatched'
      ReadOnly = True
    end
    object dsSearchCompanyName: TStringField
      FieldName = 'CompanyName'
      Size = 80
    end
    object dsSearchTradingName: TStringField
      FieldName = 'TradingName'
      Size = 80
    end
  end
  object dtsSearch: TDataSource
    DataSet = dsSearch
    Left = 40
    Top = 32
  end
  object dsClient: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT ED.EntityID, ED.RefFld1 AS EmployeeNo, PA.EmpID, Employme' +
      'nt AS EmploymentType, EmpDate, Occupation, PA.PayDay, PA.PayFreq' +
      #13#10'FROM EntityData ED'#13#10'LEFT JOIN lsEntPsnAdd PA ON ED.EntityID = ' +
      'PA.EntityID'#13#10'WHERE ED.EntityID = :EntityID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 16
  end
  object dtsClient: TDataSource
    DataSet = dsClient
    Left = 144
    Top = 32
  end
  object dsEmploymentConfirmation: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT ConfirmationID, EC.EntityID, CreateUser, EC.CreateDate, C' +
      'ontactName, ContactNo, Position, Department, '#13#10'Note, EmployerID,' +
      ' EmployerName, TradingName, RegistrationNo'#13#10'FROM ent_EmploymentC' +
      'onfirmation EC'#13#10'WHERE EC.EntityID = :EntityID'#13#10'ORDER BY EC.Creat' +
      'eDate DESC'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 264
    Top = 16
  end
  object dtsEmploymentConfirmation: TDataSource
    DataSet = dsEmploymentConfirmation
    Left = 264
    Top = 32
  end
  object dsEmployer: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT EmployerID, EmployerCode, EmployerName, TradingName, Regi' +
      'strationNo'#13#10'FROM vw_ENT_Employer'#13#10'WHERE EmployerID = :EmployerID'
    Parameters = <
      item
        Name = 'EmployerID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 104
  end
  object dtsEmployer: TDataSource
    DataSet = dsEmployer
    Left = 40
    Top = 120
  end
  object dsClientAccounts: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LD.LoanID, LD.RefNo AS AccountNo, LS.LoanStatus, LD.Statu' +
      's'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN lsLoanStatus LS ON LD.Status ' +
      '= LS.StatusID'#13#10'WHERE EntityID = :ClientID'#13#10'ORDER BY RefNo'
    Parameters = <
      item
        Name = 'ClientID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 104
  end
  object dtsClientLoans: TDataSource
    DataSet = dsClientAccounts
    Left = 144
    Top = 120
  end
end
