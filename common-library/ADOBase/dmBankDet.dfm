object dtmBankDet: TdtmBankDet
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 442
  Top = 150
  Height = 375
  Width = 544
  object qryBanks: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select distinct(BankName) as BankName'
      'from LUBank'
      'order by BankName')
    Left = 120
    Top = 8
  end
  object dtsBanks: TDataSource
    DataSet = qryBanks
    OnDataChange = dtsBanksDataChange
    Left = 120
    Top = 32
  end
  object qryBranchN: TADOQuery
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'BankName'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'ISNULL(UB.RecID,LB.RecID) AS IDVal, '
      'ISNULL(UB.BranchCode, LB.BranchCode) AS BranchCode, '
      'ISNULL(UB.BranchName, LB.BranchName) AS BranchName'
      'FROM LUBank LB'
      'LEFT JOIN Banks BK ON LB.BankName = BK.BankName'
      'LEFT JOIN LUBank UB ON UniversalCode = UB.BranchCode'
      'WHERE LB.BankName = :BankName'
      'ORDER BY ISNULL(UB.BranchName, LB.BranchName)'
      ''
      '/*select RecID as IDVal, BranchCode, BranchName'
      'from LUBank'
      'where BankName = BankName'
      'order by BranchName */')
    Left = 120
    Top = 88
    object qryBranchNIDVal: TIntegerField
      FieldName = 'IDVal'
      ReadOnly = True
      Visible = False
    end
    object qryBranchNBranchCode: TStringField
      DisplayLabel = 'Branch code'
      DisplayWidth = 10
      FieldName = 'BranchCode'
      Size = 6
    end
    object qryBranchNBranchName: TStringField
      DisplayLabel = 'Branch name'
      DisplayWidth = 50
      FieldName = 'BranchName'
      Size = 35
    end
  end
  object qryBranchC: TADOQuery
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    DataSource = dtsBanks
    Parameters = <
      item
        Name = 'BankName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      'ISNULL(UB.RecID,LB.RecID) AS RecID, '
      'ISNULL(UB.BranchCode, LB.BranchCode) AS BranchCode, '
      'ISNULL(UB.BranchName, LB.BranchName) AS BranchName'
      'FROM LUBank LB'
      'LEFT JOIN Banks BK ON LB.BankName = BK.BankName'
      'LEFT JOIN LUBank UB ON UniversalCode = UB.BranchCode'
      'WHERE LB.BankName = :BankName'
      'ORDER BY ISNULL(UB.BranchName, LB.BranchName)')
    Left = 120
    Top = 152
  end
  object qryBankDet: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforePost = qryBankDetBeforePost
    OnCalcFields = qryBankDetCalcFields
    Parameters = <
      item
        Name = 'EntID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TypeID'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT EntityID, TypeID, BrecID, BName, BBranch, '
      'BBCode, AccNo, AccName, AccType, DateOpen, UserID, Active'
      'FROM Bankdetails'
      'WHERE EntityID=:EntID '
      'AND TypeID=:TypeID'
      'AND Active = 1')
    Left = 40
    Top = 8
    object qryBankDetEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object qryBankDetTypeID: TSmallintField
      FieldName = 'TypeID'
    end
    object qryBankDetBrecID: TIntegerField
      FieldName = 'BrecID'
    end
    object qryBankDetBName: TStringField
      FieldName = 'BName'
      Size = 35
    end
    object qryBankDetBBranch: TStringField
      FieldName = 'BBranch'
      Size = 35
    end
    object qryBankDetBBCode: TStringField
      FieldName = 'BBCode'
      Size = 6
    end
    object qryBankDetAccNo: TStringField
      FieldName = 'AccNo'
      Size = 15
    end
    object qryBankDetAccName: TStringField
      FieldName = 'AccName'
      Size = 40
    end
    object qryBankDetAccType: TSmallintField
      FieldName = 'AccType'
    end
    object qryBankDetDateOpen: TDateTimeField
      FieldName = 'DateOpen'
    end
    object qryBankDetUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qryBankDetsAccType: TStringField
      FieldKind = fkCalculated
      FieldName = 'sAccType'
      Size = 30
      Calculated = True
    end
    object qryBankDetBranch: TStringField
      FieldKind = fkCalculated
      FieldName = 'Branch'
      Size = 50
      Calculated = True
    end
    object qryBankDetActive: TWordField
      FieldName = 'Active'
    end
  end
  object dtsBankDet: TDataSource
    DataSet = qryBankDet
    Left = 40
    Top = 24
  end
  object dtsBranchN: TDataSource
    DataSet = qryBranchN
    Left = 120
    Top = 104
  end
  object dtsBranchC: TDataSource
    DataSet = qryBranchC
    Left = 120
    Top = 168
  end
  object dsBranchCode: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 'SELECT BranchCode'#13#10'FROM LUBank'#13#10'WHERE RecID = :BRecID'
    DataSource = dtsBankDet
    Parameters = <
      item
        Name = 'BRecID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 248
    Top = 88
  end
  object dsBankCDV: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT Weighting, FudgeFactor, Modulus, ISNULL(ExceptCode,'#39' '#39') A' +
      'S ExceptCode'#13#10'FROM BankCDV BC'#13#10'RIGHT JOIN Banks BK ON BK.BankNo ' +
      '= BC.BankNo'#13#10'WHERE BK.BankName = :BankName'#13#10'AND AccountType = :A' +
      'ccType'
    Parameters = <
      item
        Name = 'BankName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'AccType'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    Left = 248
    Top = 24
  end
  object qryBankInactive: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforePost = qryBankInactiveBeforePost
    OnCalcFields = qryBankDetCalcFields
    Parameters = <
      item
        Name = 'EntID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TypeID'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT EntityID, TypeID, BrecID, BName, BBranch, '
      'BBCode, AccNo, AccName, AccType, DateOpen, UserID, Active'
      'FROM Bankdetails'
      'WHERE EntityID=:EntID '
      'AND TypeID=:TypeID'
      'AND Active = 0')
    Left = 40
    Top = 88
    object IntegerField1: TIntegerField
      FieldName = 'EntityID'
    end
    object SmallintField1: TSmallintField
      FieldName = 'TypeID'
    end
    object IntegerField2: TIntegerField
      FieldName = 'BrecID'
    end
    object StringField1: TStringField
      FieldName = 'BName'
      Size = 35
    end
    object StringField2: TStringField
      FieldName = 'BBranch'
      Size = 35
    end
    object StringField3: TStringField
      FieldName = 'BBCode'
      Size = 6
    end
    object StringField4: TStringField
      FieldName = 'AccNo'
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'AccName'
      Size = 40
    end
    object SmallintField2: TSmallintField
      FieldName = 'AccType'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DateOpen'
    end
    object StringField6: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object StringField7: TStringField
      FieldKind = fkCalculated
      FieldName = 'sAccType'
      Size = 30
      Calculated = True
    end
    object StringField8: TStringField
      FieldKind = fkCalculated
      FieldName = 'Branch'
      Size = 50
      Calculated = True
    end
    object qryBankInactiveActive: TWordField
      FieldName = 'Active'
    end
  end
  object dtsBankInactive: TDataSource
    DataSet = qryBankInactive
    Left = 40
    Top = 104
  end
  object cmdCopyToActive: TADOCommand
    CommandText = 
      'UPDATE CB SET '#13#10#9'BMasterID = NB.BMasterID,'#13#10#9'BrecID = NB.BrecID,' +
      #13#10#9'BName = NB.BName,'#13#10#9'BBranch = NB.BBranch,'#13#10#9'BBCode = NB.BBCod' +
      'e,'#13#10#9'AccNo = NB.AccNo,'#13#10#9'AccName = NB.AccName,'#13#10#9'AccType = NB.Ac' +
      'cType,'#13#10#9'UserID = NB.UserID'#13#10'FROM BankDetails NB'#13#10'LEFT JOIN Bank' +
      'Details CB ON NB.EntityID = CB.EntityID AND CB.Active = 1'#13#10'WHERE' +
      ' NB.EntityID = :EntityID'#13#10'AND NB.Active = 0'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'EntityID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 256
    Top = 152
  end
end
