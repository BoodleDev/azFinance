object dtmTransSetup: TdtmTransSetup
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 197
  Top = 133
  Height = 334
  Width = 400
  object qryTMaster: TADODataSet
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    CommandText = 
      'select TransType, AppID,TransDescription,DC,ShowContra,ShowVAT'#13#10 +
      'from TransApp'#13#10'where TransType in (select TypeID from TypeGroup'#13 +
      #10'    where GroupID=2 and AppID=:AppID)'
    Parameters = <
      item
        Name = 'AppID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 64
    Top = 24
  end
  object dtsTMaster: TDataSource
    DataSet = qryTMaster
    Left = 64
    Top = 40
  end
  object qryTCodes: TADODataSet
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    CommandText = 
      'select TransCode,TransType,AppID,Description,DefaultVal,GLAccNo,' +
      #13#10'  ContraAccNo, VatCode, DC, NotUse, UserID, DateAdded'#13#10'from Tr' +
      'ansSetup'#13#10'where TransType=:TransType '
    DataSource = dtsTMaster
    MasterFields = 'TransType'
    Parameters = <
      item
        Name = 'TransType'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end>
    Left = 64
    Top = 104
  end
  object qryNewCode: TADODataSet
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select max(TransCode) from TransSetup where TransType=:TransType'
    DataSource = dtsTMaster
    Parameters = <
      item
        Name = 'TransType'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    Left = 64
    Top = 168
  end
end
