object dtmAffordCalc: TdtmAffordCalc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 308
  Top = 201
  Height = 351
  Width = 579
  object qryCalcIncome: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterEdit = qryCalcIncomeAfterPost
    AfterPost = qryCalcIncomeAfterPost
    CommandText = 
      'select EntID, CalcType, Amount '#13#10'from lsCalcTrans'#13#10'where EntID =' +
      ':EntityID and'#13#10' CalcType between 100129001 and 100129999'#13#10
    DataSource = dtsEntDetail
    MasterFields = 'EntityID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 24
    object qryCalcIncomeEntID: TIntegerField
      FieldName = 'EntID'
      LookupCache = True
      Visible = False
    end
    object qryCalcIncomeCalcType: TIntegerField
      FieldName = 'CalcType'
      LookupCache = True
      Visible = False
    end
    object qryCalcIncomeLUCalcType: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 48
      FieldKind = fkLookup
      FieldName = 'LUCalcType'
      LookupDataSet = qryIncomeLUDesc
      LookupKeyFields = 'IDVal'
      LookupResultField = 'Description'
      KeyFields = 'CalcType'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qryCalcIncomeAmount: TBCDField
      DisplayWidth = 24
      FieldName = 'Amount'
      LookupCache = True
      currency = True
      Precision = 19
    end
  end
  object qryEntDetail: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforePost = qryEntDetailBeforePost
    CommandText = 
      'select EntityID, MthGross, NetSal, MinHomeAmt'#13#10'from lsEntPsnAdd'#13 +
      #10'where EntityID =:EntityID'#13#10
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 272
    Top = 24
    object qryEntDetailEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object qryEntDetailMthGross: TBCDField
      FieldName = 'MthGross'
      currency = True
      Precision = 19
    end
    object qryEntDetailNetSal: TBCDField
      FieldName = 'NetSal'
      currency = True
      Precision = 19
    end
    object qryEntDetailMinHomeAmt: TBCDField
      FieldName = 'MinHomeAmt'
      currency = True
      Precision = 19
    end
  end
  object dtsCalcIncome: TDataSource
    DataSet = qryCalcIncome
    Left = 40
    Top = 40
  end
  object dtsEntDetail: TDataSource
    DataSet = qryEntDetail
    Left = 272
    Top = 40
  end
  object qryCalcExpense: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterEdit = qryCalcExpenseAfterPost
    AfterPost = qryCalcExpenseAfterPost
    CommandText = 
      'select EntID, CalcType, Amount '#13#10'from lsCalcTrans'#13#10'where EntID =' +
      ':EntityID and'#13#10'  CalcType between 100128001 and 100128999'
    DataSource = dtsEntDetail
    MasterFields = 'EntityID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 152
    Top = 24
    object qryCalcExpenseEntID: TIntegerField
      FieldName = 'EntID'
      LookupCache = True
      Visible = False
    end
    object qryCalcExpenseCalcType: TIntegerField
      FieldName = 'CalcType'
      LookupCache = True
      Visible = False
    end
    object qryCalcExpenseLUCalcType: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 48
      FieldKind = fkLookup
      FieldName = 'LUCalcType'
      LookupDataSet = qryExpenseLUDesc
      LookupKeyFields = 'IDVal'
      LookupResultField = 'Description'
      KeyFields = 'CalcType'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qryCalcExpenseAmount: TBCDField
      DisplayWidth = 11
      FieldName = 'Amount'
      LookupCache = True
      currency = True
      Precision = 19
    end
  end
  object dtsCalcExpense: TDataSource
    DataSet = qryCalcExpense
    Left = 152
    Top = 40
  end
  object qryIncomeLU: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select distinct(C.TypeKey) As IDVal, Description'#13#10'from CodeTable' +
      ' C'#13#10'where C.groupkey = 100129 and NotUse = 0'#13#10'and C.TypeKey not ' +
      'in (select CalcType '#13#10'                    from lsCalcTrans'#13#10'    ' +
      '                where EntID = :EntityID)'#13#10'order by Description'
    DataSource = dtmMain.dtsEntDet
    Parameters = <
      item
        Name = 'EntityID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 40
    Top = 92
    object qryIncomeLUIDVal: TIntegerField
      FieldName = 'IDVal'
      Visible = False
    end
    object qryIncomeLUDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object qryExpenseLU: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select distinct(C.TypeKey) As IDVal, Description'#13#10'from CodeTable' +
      ' C'#13#10'where C.groupkey = 100128 and NotUse = 0'#13#10'and C.TypeKey not ' +
      'in (select CalcType '#13#10'                    from lsCalcTrans'#13#10'    ' +
      '                where EntID = :EntityID)'#13#10'order by Description'
    DataSource = dtmMain.dtsEntDet
    Parameters = <
      item
        Name = 'EntityID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 152
    Top = 92
    object qryExpenseLUIDVal: TIntegerField
      FieldName = 'IDVal'
      Visible = False
    end
    object qryExpenseLUDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object dtsIncomeLU: TDataSource
    DataSet = qryIncomeLU
    Left = 40
    Top = 108
  end
  object dtsExpenseLU: TDataSource
    DataSet = qryExpenseLU
    Left = 152
    Top = 108
  end
  object qryIncomeSum: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select SUM(Amount) As TotInc'#13#10'from lsCalcTrans'#13#10'where EntID =:En' +
      'tityID and '#13#10'  CalcType between 100129001 and 100129999'#13#10
    DataSource = dtsEntDetail
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 156
    object qryIncomeSumTotInc: TBCDField
      FieldName = 'TotInc'
      currency = True
      Precision = 19
    end
  end
  object qryExpenseSum: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select SUM(Amount) As TotExp '#13#10'from lsCalcTrans'#13#10'where EntID =:E' +
      'ntityID and '#13#10'  CalcType between 100128001 and 100128999'#13#10
    DataSource = dtsEntDetail
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 152
    Top = 156
    object qryExpenseSumTotExp: TBCDField
      FieldName = 'TotExp'
      currency = True
      Precision = 19
    end
  end
  object dtsIncomeSum: TDataSource
    DataSet = qryIncomeSum
    Left = 40
    Top = 172
  end
  object dtsExpenseSum: TDataSource
    DataSet = qryExpenseSum
    Left = 152
    Top = 172
  end
  object qryIncomeLUDesc: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select distinct(C.TypeKey) As IDVal, Description'#13#10'from CodeTable' +
      ' C'#13#10'where C.groupkey = 100129 and NotUse = 0'#13#10'order by Descripti' +
      'on'
    Parameters = <>
    Left = 272
    Top = 100
    object IntegerField1: TIntegerField
      FieldName = 'IDVal'
      Visible = False
    end
    object StringField1: TStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object dtsIncomeLUDesc: TDataSource
    DataSet = qryIncomeLUDesc
    Left = 272
    Top = 116
  end
  object qryExpenseLUDesc: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select distinct(C.TypeKey) As IDVal, Description'#13#10'from CodeTable' +
      ' C'#13#10'where C.groupkey = 100128 and NotUse = 0'#13#10'order by Descripti' +
      'on'
    Parameters = <>
    Left = 272
    Top = 164
    object IntegerField2: TIntegerField
      FieldName = 'IDVal'
      Visible = False
    end
    object StringField2: TStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object dtsExpenseLUDesc: TDataSource
    DataSet = qryExpenseLUDesc
    Left = 272
    Top = 180
  end
end
