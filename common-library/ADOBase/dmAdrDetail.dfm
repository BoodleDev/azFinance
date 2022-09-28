object dtmAdrDetail: TdtmAdrDetail
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 245
  Top = 115
  Height = 246
  Width = 400
  object qryAddress: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforePost = qryAddressBeforePost
    CommandText = 
      'SELECT EntityID, TypeID, AddressType, Address1, Address2, Addres' +
      's3, Address4,  AddressCode, Province, UserID'#13#10'FROM Address'#13#10'WHER' +
      'E EntityID = :EntID'#13#10'AND TypeID = :TypeID'#13#10
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
  object qryProvince: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 'SELECT TypeKey, Description'#13#10'FROM vwCTProvince'
    Parameters = <>
    Left = 128
    Top = 80
  end
  object dtsProvince: TDataSource
    DataSet = qryProvince
    Left = 128
    Top = 96
  end
end
