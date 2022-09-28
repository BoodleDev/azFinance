object dtmEntity: TdtmEntity
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 780
  Top = 441
  Height = 327
  Width = 586
  object qryEntity: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforePost = qryEntityBeforePost
    CommandText = 
      'select EntityID, EntType, EntCode, Status, DefAdr, DocAdr, DelAd' +
      'r,'#13#10'  Category, SendSMS,SendEmail,'#13#10'  RegNo, RefFld1, RefFld2, T' +
      'itle, Name, Name2, TelNo1, TelNo2, TelNo3, '#13#10'  FaxNo, UserID, Da' +
      'teChange, UserAdd, DateAdded, Email, WebSite'#13#10'from Entitydata'#13#10'w' +
      'here EntityID = :EntID'#13#10
    Parameters = <
      item
        Name = 'EntID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 24
    Top = 16
  end
  object dtsEntity: TDataSource
    DataSet = qryEntity
    Left = 24
    Top = 32
  end
  object qryCodeStrc: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select TypeID, CodeTmpl, DefVals, StartVal, TblName, FldName'#13#10'fr' +
      'om CodeGen'
    Parameters = <>
    Left = 160
    Top = 16
  end
  object qryAddress: TADODataSet
    Connection = dtmMain.dbData
    MarshalOptions = moMarshalModifiedOnly
    AfterInsert = qryAddressAfterInsert
    BeforePost = AllBeforePost
    CommandText = 
      'select EntityID,TypeID, AddressType, Address1, Address2, Address' +
      '3, Address4, AddressCode, UserID'#13#10'from Address'#13#10'where EntityID=:' +
      'EntityID and EntType= :inType'
    Parameters = <
      item
        Name = 'EntityID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'inType'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 232
    Top = 16
  end
  object dtsAddress: TDataSource
    DataSet = qryAddress
    Left = 232
    Top = 32
  end
  object qryToUse: TADOQuery
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'update Address set UserID='#39'Admin'#39)
    Left = 96
    Top = 16
  end
  object qryEntCode: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    MarshalOptions = moMarshalModifiedOnly
    CommandText = 
      'select TypeKey, GroupKey, Description'#13#10'from Codetable'#13#10'where Gro' +
      'upKey = :inGrp'
    Parameters = <
      item
        Name = 'inGrp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 304
    Top = 16
  end
  object dtsEntCode: TDataSource
    DataSet = qryEntCode
    Left = 304
    Top = 32
  end
  object dsCompanyContacts: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT ContactID, EntityID, Contact, Department, TelNo, FaxNo, E' +
      'mail'#13#10'FROM lsEntCpyContacts'#13#10'WHERE EntityID = :EntityID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 408
    Top = 24
  end
  object dtsCompanyContacts: TDataSource
    DataSet = dsCompanyContacts
    Left = 408
    Top = 40
  end
end
