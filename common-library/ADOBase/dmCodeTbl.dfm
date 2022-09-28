object dtmCodeTbl: TdtmCodeTbl
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 249
  Top = 180
  Height = 312
  Width = 400
  object qryTypeTbl: TADODataSet
    CursorType = ctStatic
    LockType = ltReadOnly
    MarshalOptions = moMarshalModifiedOnly
    CommandText = 
      'select GroupID,TypeID,TypeGrp,TypeDesc '#13#10'from TypeTable'#13#10'where G' +
      'roupID='#39'CTL'#39' and TypeGrp in'#13#10' (select TypeID from TypeGroup'#13#10'   ' +
      ' where GroupID=1 and AppID=:AppID)'
    Parameters = <
      item
        Name = 'AppID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 24
    Top = 16
  end
  object qryCodeTbl: TADODataSet
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    CommandText = 
      'select TypeKey, GroupKey, Description, NotUse, UserID, DateAdded' +
      #13#10'from Codetable'#13#10'where GroupKey = :TypeGrp'#13#10'order by Descriptio' +
      'n'
    MasterFields = 'TypeGrp'
    Parameters = <
      item
        Name = 'TypeGrp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 24
    Top = 104
  end
  object qryNewCode: TADODataSet
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select max(TypeKey)'#13#10'from Codetable'#13#10'where GroupKey = :TypeGrp'
    DataSource = dtsTypeTbl
    MasterFields = 'TypeGrp'
    Parameters = <
      item
        Name = 'TypeGrp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 24
    Top = 160
  end
  object dtsTypeTbl: TDataSource
    DataSet = qryTypeTbl
    Left = 24
    Top = 40
  end
end
