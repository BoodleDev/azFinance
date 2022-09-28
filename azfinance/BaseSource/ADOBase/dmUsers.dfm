object dtmUsers: TdtmUsers
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 192
  Top = 129
  Height = 375
  Width = 544
  object qryLUUsrGrp: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select TypeKey, Description '#13#10'from CodeTable'#13#10'where GroupKey = 9' +
      '0000 and NotUse = 0'
    Parameters = <>
    Left = 32
    Top = 16
  end
  object qryUsrLst: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select stl.UserID,stl.Surname,stl.Name, uag.AppID, uag.UsrGrp '#13#10 +
      'from Securitytbl stl left join SecurityUAG uag'#13#10' on stl.UserID=u' +
      'ag.UserID'#13#10'order by stl.Surname'
    Parameters = <>
    Left = 144
    Top = 16
    object qryUsrLstSurname: TStringField
      DisplayWidth = 20
      FieldName = 'Surname'
      Size = 25
    end
    object qryUsrLstName: TStringField
      DisplayWidth = 20
      FieldName = 'Name'
      Size = 25
    end
    object qryUsrLstUserID: TStringField
      DisplayWidth = 12
      FieldName = 'UserID'
      Size = 10
    end
    object qryUsrLstLUApp: TStringField
      DisplayLabel = 'Application'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'LUApp'
      LookupDataSet = qryLUApps
      LookupKeyFields = 'AppId'
      LookupResultField = 'Application'
      KeyFields = 'AppID'
      Lookup = True
    end
    object qryUsrLstAppID: TIntegerField
      FieldName = 'AppID'
      Visible = False
    end
    object qryUsrLstUsrGrp: TIntegerField
      FieldName = 'UsrGrp'
      Visible = False
    end
    object qryUsrLstLUGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LUGroup'
      LookupDataSet = qryLUUsrGrp
      LookupKeyFields = 'TypeKey'
      LookupResultField = 'Description'
      KeyFields = 'UsrGrp'
      Visible = False
      Lookup = True
    end
  end
  object dtsUsrLst: TDataSource
    DataSet = qryUsrLst
    Left = 144
    Top = 32
  end
  object qryLUApps: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select AppId, Application '#13#10'from GTApps'
    Parameters = <>
    Left = 32
    Top = 72
  end
  object qryToUse: TADOQuery
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    Parameters = <>
    Left = 136
    Top = 104
  end
  object qryLUusers: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryLUusersBeforeOpen
    CommandText = 
      'select Surname,Name,UserID'#13#10'from SecurityTbl'#13#10'where UserID not i' +
      'n (select distinct UserID from SecurityUAG'#13#10' where AppID=:AppID)' +
      #13#10'order by Surname'
    Parameters = <
      item
        Name = 'AppID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 32
    Top = 128
  end
end
