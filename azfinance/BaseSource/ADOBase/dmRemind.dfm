object dtmRemind: TdtmRemind
  OldCreateOrder = False
  Left = 117
  Top = 146
  Height = 220
  Width = 400
  object spCntRE: TADOStoredProc
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    ProcedureName = 'GetNtsRemindCnt;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@AppID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 32
    Top = 80
  end
  object cmdSnoozeN: TADOCommand
    CommandText = 
      'update Notes set RemindMe = :NewDT'#13#10'where EntityID=:EntityID and' +
      ' NoteNo=:NoteNo and AppID=:AppID'#13#10
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'NewDT'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NoteNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AppID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 120
    Top = 80
  end
  object qryRemind: TADOStoredProc
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryRemindBeforeOpen
    ProcedureName = 'GetNtsRemind;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@AppID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 32
    Top = 16
  end
  object dtsRemind: TDataSource
    DataSet = qryRemind
    Left = 32
    Top = 32
  end
  object qryNote: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select TheNote from Notes'#13#10'where EntityID=:EntityID and NoteNo=:' +
      'NoteNo and AppID=:AppID'
    DataSource = dtsRemind
    MasterFields = 'EntityID;NoteNo;AppID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'NoteNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'AppID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 120
    Top = 16
  end
  object dtsNote: TDataSource
    DataSet = qryNote
    Left = 120
    Top = 28
  end
  object cmdDismiss: TADOCommand
    CommandText = 
      'update Notes set Status=0'#13#10'where EntityID=:EntityID and NoteNo=:' +
      'NoteNo and AppID=:AppID'#13#10
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NoteNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AppID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 120
    Top = 136
  end
end
