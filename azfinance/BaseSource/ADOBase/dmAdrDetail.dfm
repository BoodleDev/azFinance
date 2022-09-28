object dtmAdrDetail: TdtmAdrDetail
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 244
  Top = 114
  Height = 246
  Width = 400
  object qryAddress: TADODataSet
    Connection = dtmMain.dbData
    MarshalOptions = moMarshalModifiedOnly
    BeforePost = qryAddressBeforePost
    CommandText = 
      'select EntityID, TypeID, AddressType, '#13#10'  Address1, Address2, Ad' +
      'dress3, Address4, AddressCode, UserID'#13#10'from Address'#13#10'where Entit' +
      'yID=:EntID and TypeID=:TypeID'#13#10
    Parameters = <
      item
        Name = 'EntID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TypeID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    Left = 32
    Top = 8
  end
  object qryAdrLU: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select RecID as IDVal, SuburbName, TownName, PostCode '#13#10'from LUP' +
      'ostCode'
    Parameters = <>
    Left = 128
    Top = 16
    object qryAdrLUIDVal: TAutoIncField
      FieldName = 'IDVal'
      ReadOnly = True
      Visible = False
    end
    object qryAdrLUSuburbName: TStringField
      DisplayLabel = 'Suburb name'
      FieldName = 'SuburbName'
      Size = 35
    end
    object qryAdrLUTownName: TStringField
      DisplayLabel = 'Town name'
      FieldName = 'TownName'
    end
    object qryAdrLUPostCode: TStringField
      DisplayLabel = 'Postal code'
      FieldName = 'PostCode'
      FixedChar = True
      Size = 4
    end
  end
  object dtsAddress: TDataSource
    DataSet = qryAddress
    Left = 32
    Top = 32
  end
end
