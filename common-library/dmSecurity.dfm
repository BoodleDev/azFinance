object dtmSecurity: TdtmSecurity
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 435
  Top = 239
  Height = 135
  Width = 222
  object dsRole: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT UR.RoleID, RL.Description'#13#10'FROM SEC_UserRole UR'#13#10'LEFT JOI' +
      'N SEC_Role RL ON UR.RoleID = RL.RoleID'#13#10'WHERE UserID = :UserID'#13#10 +
      'AND ApplicationID = 100'
    Parameters = <
      item
        Name = 'UserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 48
    Top = 24
  end
  object dsAccess: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT RT.RightID, RT.GroupID, RT.Description, ISNULL(RR.Access,' +
      ' 0) AS Access'#13#10'FROM SEC_RightGroup RG'#13#10'LEFT JOIN SEC_Right RT ON' +
      ' RG.GroupID = RT.GroupID'#13#10'LEFT JOIN SEC_RoleRight RR ON RT.Right' +
      'ID = RR.RightID'#13#10'WHERE ApplicationID = 100'#13#10'AND RR.RoleID = :Rol' +
      'eID'#13#10'AND RT.RightID = :RightID'
    Parameters = <
      item
        Name = 'RoleID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'RightID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 128
    Top = 24
  end
end
