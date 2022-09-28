object dtmCodeTblGrp: TdtmCodeTblGrp
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 185
  Top = 135
  Height = 375
  Width = 552
  object qryCodeGrp: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select CTL.Description as CodeDesc, CTG.TypeKey, CTG.DateAdded, ' +
      '  CTG.UserID '#13#10'from CodeTblGrp CTG left join CodeTable CTL on  C' +
      'TG.TypeKey=CTL.TypeKey'#13#10'where Grpkey =:GrpKey'
    Parameters = <
      item
        Name = 'GrpKey'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 16
  end
  object dtsCodeGrp: TDataSource
    DataSet = qryCodeGrp
    Left = 40
    Top = 32
  end
  object qryCodesLU: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select TypeKey As IDVal, Description '#13#10'from CodeTable'#13#10'where Not' +
      'Use = 0 and GroupKey =:IDVal'
    DataSource = dtsSubGrpKey
    IndexFieldNames = 'IDVal'
    MasterFields = 'IDVal'
    Parameters = <
      item
        Name = 'IDVal'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 208
    Top = 160
    object qryCodesLUIDVal: TIntegerField
      FieldName = 'IDVal'
      Visible = False
    end
    object qryCodesLUDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object dtsCodesLU: TDataSource
    DataSet = qryCodesLU
    Left = 208
    Top = 176
  end
  object qryGrpKey: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select TypeGrp As IDVal, TypeDesc'#13#10'from TypeTable '#13#10'where TypeGr' +
      'p in'#13#10'  (select TypeID from TypeGroup where AppID = :AppID'#13#10' and' +
      ' GroupID=3)'#13#10
    Parameters = <
      item
        Name = 'AppID'
        Size = -1
        Value = Null
      end>
    Left = 40
    Top = 88
    object IntegerField1: TIntegerField
      FieldName = 'IDVal'
      Visible = False
    end
    object StringField1: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 50
      FieldName = 'TypeDesc'
      Size = 40
    end
  end
  object dtsGrpKey: TDataSource
    DataSet = qryGrpKey
    Left = 40
    Top = 104
  end
  object qryToUse: TADOQuery
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    Parameters = <>
    Left = 40
    Top = 160
  end
  object qrySubGrpKey: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select TypeGrp As IDVal, TypeDesc'#13#10'from TypeTable '#13#10'where TypeGr' +
      'p in'#13#10'  (select TypeID from TypeGroup where AppID = :AppID'#13#10' and' +
      ' GroupID=3)'#13#10
    Parameters = <
      item
        Name = 'AppID'
        Size = -1
        Value = Null
      end>
    Left = 136
    Top = 160
    object IntegerField2: TIntegerField
      FieldName = 'IDVal'
      Visible = False
    end
    object StringField2: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 50
      FieldName = 'TypeDesc'
      Size = 40
    end
  end
  object dtsSubGrpKey: TDataSource
    DataSet = qrySubGrpKey
    Left = 136
    Top = 176
  end
  object qryGrpCodesLU: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select TypeKey As IDVal, Description '#13#10'from CodeTable'#13#10'where Not' +
      'Use = 0 and GroupKey =:IDVal'
    DataSource = dtsGrpKey
    IndexFieldNames = 'IDVal'
    MasterFields = 'IDVal'
    Parameters = <
      item
        Name = 'IDVal'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 128
    Top = 88
    object IntegerField3: TIntegerField
      FieldName = 'IDVal'
      Visible = False
    end
    object StringField3: TStringField
      FieldName = 'Description'
      Size = 50
    end
  end
end
