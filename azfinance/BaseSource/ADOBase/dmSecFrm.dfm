object dtmSecFrm: TdtmSecFrm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 195
  Top = 149
  Height = 288
  Width = 420
  object qrySecFrm: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    BeforeOpen = qrySecFrmBeforeOpen
    CommandText = 
      'select AppID, UserGrp, FrmID, ObjID, ObjE, ObjV'#13#10'from Securityfr' +
      'm'#13#10'where AppID=:AppID and UserGrp= :UserGrp'#13#10' and FrmID=:FrmID'
    Parameters = <
      item
        Name = 'AppID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserGrp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FrmID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 16
  end
  object qryLoadFrm: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    BeforeOpen = qrySecFrmBeforeOpen
    CommandText = 
      'select ObjE'#13#10'from Securityfrm'#13#10'where AppID=:AppID and UserGrp= :' +
      'UserGrp and FrmID=:FrmID '#13#10'  and ObjID in (-1,-2)'
    Parameters = <
      item
        Name = 'AppID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserGrp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FrmID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 74
  end
  object qryLoadRep: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select ObjE'#13#10'from Securityfrm'#13#10'where AppID=:AppID and UserGrp= :' +
      'UserGrp and FrmID=:FrmID '#13#10'  and ObjID=-2'
    Parameters = <
      item
        Name = 'AppID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserGrp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FrmID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 136
  end
  object qrySecBld: TADODataSet
    Connection = dtmMain.dbData
    MarshalOptions = moMarshalModifiedOnly
    CommandText = 
      'select AppID, FrmID, ObjID,  UseObj, ObjName, ObjDesc'#13#10'from GTFr' +
      'mObj'#13#10'where AppID=:AppID and FrmID=:FrmID'
    Parameters = <
      item
        Name = 'AppID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FrmID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 136
    Top = 16
  end
end
