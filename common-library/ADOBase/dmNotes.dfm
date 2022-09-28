object dtmNotes: TdtmNotes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 208
  Top = 175
  Height = 285
  Width = 504
  object qryNotes: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforeOpen = qryNotesBeforeOpen
    AfterInsert = qryNotesAfterInsert
    AfterEdit = qryNotesAfterEdit
    OnCalcFields = qryNotesCalcFields
    CommandText = 
      'SELECT NoteID, NT.EntityID, NoteNo, AppID, NT.Status, NoteDate, ' +
      'DueDate, '#13#10'RemindMe, ReInterval, NoteCat, RefNo, NT.UserID, User' +
      'To, NoteType, NoteName, '#13#10'TheNote, SubID ,NTAction, Urgent, ED.E' +
      'ntCode, ED.Name, ED.Name2,'#13#10'ED.TelNo1, ED.TelNo2, ED.TelNo3,'#13#10'EM' +
      'P.Name AS Employer,  BRA.Name AS Branch,'#13#10'NT.UpdateUser, NT.Upda' +
      'teDate'#13#10'FROM Notes NT'#13#10'LEFT JOIN EntityData ED ON NT.EntityID = ' +
      'ED.EntityID '#13#10'LEFT JOIN lsEntPsnAdd PA ON ED.EntityID = PA.Entit' +
      'yID'#13#10'LEFT JOIN EntityData EMP ON PA.EmpID = EMP.EntityID'#13#10'LEFT J' +
      'OIN EntityData BRA ON PA.BranchID = BRA.EntityID'#13#10'where AppID =:' +
      'AppID and NT.EntityID =:EntityID and SubID =:SubID'
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
      FieldName = 'RefNo'
      Size = 30
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
      Size = 500
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
    object qryNotesEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object qryNotesName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryNotesName2: TStringField
      FieldName = 'Name2'
      Size = 50
    end
    object qryNotesTelNo1: TStringField
      FieldName = 'TelNo1'
    end
    object qryNotesTelNo2: TStringField
      FieldName = 'TelNo2'
    end
    object qryNotesTelNo3: TStringField
      FieldName = 'TelNo3'
    end
    object qryNotesEmployer: TStringField
      FieldName = 'Employer'
      ReadOnly = True
      Size = 100
    end
    object qryNotesBranch: TStringField
      FieldName = 'Branch'
      ReadOnly = True
      Size = 100
    end
    object qryNotesUpdateUser: TStringField
      FieldName = 'UpdateUser'
      Size = 10
    end
    object qryNotesUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
    end
    object qryNotesUpdateDetail: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateDetail'
      Calculated = True
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
    object qryAttachRecID: TAutoIncField
      FieldName = 'RecID'
      ReadOnly = True
    end
    object qryAttachAppID: TIntegerField
      FieldName = 'AppID'
    end
    object qryAttachEntID: TIntegerField
      FieldName = 'EntID'
    end
    object qryAttachMasterID: TIntegerField
      FieldName = 'MasterID'
    end
    object qryAttachTypeID: TIntegerField
      FieldName = 'TypeID'
    end
    object qryAttachDocType: TIntegerField
      FieldName = 'DocType'
    end
    object qryAttachDocName: TStringField
      FieldName = 'DocName'
      Size = 25
    end
    object qryAttachDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object qryAttachHyperlink: TStringField
      FieldName = 'Hyperlink'
      Size = 100
    end
    object qryAttachRefNo: TStringField
      FieldName = 'RefNo'
      Size = 10
    end
    object qryAttachDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
    object qryAttachFileName: TStringField
      FieldName = 'FileName'
      FixedChar = True
      Size = 30
    end
    object qryAttachUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qryAttachCategory: TStringField
      FieldKind = fkLookup
      FieldName = 'Category'
      LookupDataSet = qryLUDocType
      LookupKeyFields = 'TypeKey'
      LookupResultField = 'Description'
      KeyFields = 'DocType'
      LookupCache = True
      Lookup = True
    end
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
