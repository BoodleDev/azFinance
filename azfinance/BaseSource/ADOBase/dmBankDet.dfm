object dtmBankDet: TdtmBankDet
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 194
  Top = 133
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select RecID as IDVal, BranchCode, BranchName'
      'from LUBank'
      'where BankName = :BankName'
      'order by BranchName')
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
      'select RecID, BranchCode, BranchName'
      'from LUBank'
      'where BankName = :BankName'
      'order by BranchCode')
    Left = 120
    Top = 152
  end
  object qryBankDet: TADOQuery
    Connection = dtmMain.dbData
    MarshalOptions = moMarshalModifiedOnly
    BeforePost = qryBankDetBeforePost
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
      'SELECT EntityID, TypeID, BrecID, BName, BBranch, BBCode, '
      '  AccNo, AccName, AccType, UserID'
      'FROM Bankdetails'
      'where EntityID=:EntID and TypeID=:TypeID')
    Left = 40
    Top = 8
  end
  object dtsBankDet: TDataSource
    DataSet = qryBankDet
    Left = 40
    Top = 32
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
end
