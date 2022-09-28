object dtmNotes: TdtmNotes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 192
  Top = 133
  Height = 285
  Width = 504
  object qryNotes: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforeOpen = qryNotesBeforeOpen
    AfterInsert = qryNotesAfterInsert
    CommandText = 
      'select NoteID, EntityID, NoteNo, AppID, Status, NoteDate, DueDat' +
      'e, RemindMe, ReInterval, NoteCat, RefNo, UserID, UserTo, NoteTyp' +
      'e, NoteName, TheNote, SubID ,NTAction, Urgent'#13#10'from Notes'#13#10'where' +
      ' AppID =:AppID and EntityID =:EntityID and SubID =:SubID'#13#10
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
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SubID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 24
    object qryNotesNoteID: TAutoIncField
      FieldName = 'NoteID'
      ReadOnly = True
    end
    object qryNotesEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object qryNotesNoteNo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Note no'
      FieldName = 'NoteNo'
    end
    object qryNotesAppID: TIntegerField
      FieldName = 'AppID'
    end
    object qryNotesStatus: TWordField
      FieldName = 'Status'
    end
    object qryNotesNoteDate: TDateTimeField
      DisplayLabel = 'Note date'
      DisplayWidth = 11
      FieldName = 'NoteDate'
    end
    object qryNotesDueDate: TDateTimeField
      DisplayLabel = 'Due date'
      DisplayWidth = 11
      FieldName = 'DueDate'
    end
    object qryNotesRemindMe: TDateTimeField
      FieldName = 'RemindMe'
    end
    object qryNotesReInterval: TWordField
      FieldName = 'ReInterval'
    end
    object qryNotesNoteCat: TIntegerField
      DisplayLabel = 'Note category'
      FieldName = 'NoteCat'
    end
    object qryNotesRefNo: TStringField
      DisplayLabel = 'Ref no'
      FieldName = 'RefNo'
      Size = 10
    end
    object qryNotesUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qryNotesUserTo: TStringField
      FieldName = 'UserTo'
      Size = 10
    end
    object qryNotesNoteType: TIntegerField
      FieldName = 'NoteType'
    end
    object qryNotesNoteName: TStringField
      DisplayLabel = 'Note name'
      FieldName = 'NoteName'
      Size = 30
    end
    object qryNotesTheNote: TStringField
      FieldName = 'TheNote'
      Size = 250
    end
    object qryNotesSubID: TIntegerField
      FieldName = 'SubID'
    end
    object qryNotesNTAction: TWordField
      FieldName = 'NTAction'
    end
    object qryNotesUrgent: TBooleanField
      FieldName = 'Urgent'
    end
  end
  object dtsNotes: TDataSource
    DataSet = qryNotes
    Left = 32
    Top = 40
  end
  object qryLUNote: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select TypeKey, Description '#13#10'from CodeTable'#13#10'where Groupkey = 1' +
      '10004 and Notuse = 0'
    Parameters = <>
    Left = 120
    Top = 16
  end
  object dtsLUNote: TDataSource
    DataSet = qryLUNote
    Left = 120
    Top = 32
  end
  object qryAttach: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforeOpen = qryAttachBeforeOpen
    AfterInsert = qryAttachAfterInsert
    CommandText = 
      'select RecID, AppID, EntID, MasterID, TypeID, DocType, DocName, ' +
      'Description, Hyperlink, RefNo, DateAdded, FileName, UserID '#13#10'fro' +
      'm Attachments'#13#10'where TypeID = 2 and AppID =:AppID and EntID =:En' +
      'tityID and MasterID =:NoteID'
    DataSource = dtsNotes
    MasterFields = 'AppID;EntityID;NoteID'
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
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NoteID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 96
  end
  object dtsAttach: TDataSource
    DataSet = qryAttach
    Left = 32
    Top = 112
  end
  object qryLUDocType: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select TypeKey, Description '#13#10'from CodeTable'#13#10'where Groupkey = 1' +
      '10005 and notuse = 0'
    Parameters = <>
    Left = 120
    Top = 96
  end
  object dtsLUDocType: TDataSource
    DataSet = qryLUDocType
    Left = 120
    Top = 112
  end
  object qryToUse: TADOQuery
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    Parameters = <>
    Left = 208
    Top = 32
  end
  object qryGeneral: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 'select ValStr,ValInt from General where RecID = 30'
    Parameters = <>
    Left = 208
    Top = 96
  end
end
