object dtmSecFrm: TdtmSecFrm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 274
  Top = 210
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
  object qryLoadForm: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT SF.FormCode'#13#10'FROM UserGroups UG'#13#10'LEFT JOIN UserForms UF O' +
      'n UG.UserGroup = UF.UserGroup'#13#10'LEFT JOIN SecurityForms SF ON UF.' +
      'FormCode = SF.FormCode'#13#10'WHERE UserID = :prUserID'#13#10'AND Form = :pr' +
      'Form'#13#10'AND AppID = :prAppID'#13#10'AND Enabled = 1'
    Parameters = <
      item
        Name = 'prUserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'prForm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'prAppID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 136
    Top = 88
  end
  object qrySecurityForm: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT Control'#13#10'FROM UserGroups UG'#13#10'LEFT JOIN UserControls UC ON' +
      ' UG.UserGroup = UC.UserGroup'#13#10'LEFT JOIN SecurityForms SF ON UC.F' +
      'ormCode = SF.FormCode'#13#10'WHERE UserID = :prUserID'#13#10'AND Form = :prF' +
      'orm'#13#10'AND AppID = :prAppID'#13#10'AND Enabled = 0'#13#10#13#10'/*SELECT Control'#13#10 +
      'FROM UserGroups UG'#13#10'LEFT JOIN UserForms UF On UG.UserGroup = UF.' +
      'UserGroup'#13#10'LEFT JOIN SecurityForms SF ON UF.FormCode = SF.FormCo' +
      'de'#13#10'LEFT JOIN UserControls UC ON SF.FormCode = UC.FormCode'#13#10'WHER' +
      'E UserID = prUserID'#13#10'AND Form = prForm'#13#10'AND AppID = prAppID'#13#10'AND' +
      ' UC.Enabled = 0*/'
    Parameters = <
      item
        Name = 'prUserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'prForm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'prAppID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 136
    Top = 152
  end
end
