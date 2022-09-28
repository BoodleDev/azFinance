object dtmAttach: TdtmAttach
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 192
  Top = 133
  Height = 375
  Width = 544
  object qryAttach: TADODataSet
    Connection = dtmMain.dbData
    AfterInsert = qryAttachAfterInsert
    CommandText = 
      'select RecID, AppID, MasterID, TypeID, DocType, Description, Hyp' +
      'erlink, RefNo, DateAdded, FileName, UserID '#13#10'from Attachments'
    Parameters = <>
    Left = 24
    Top = 16
  end
  object dtsAttach: TDataSource
    DataSet = qryAttach
    Left = 24
    Top = 32
  end
  object qryDocTypes: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select TypeKey, Description '#13#10'from CodeTable'#13#10'where Groupkey = 1' +
      '10005 and notuse = 0'
    Parameters = <>
    Left = 144
    Top = 16
  end
  object dtsDocTypes: TDataSource
    DataSet = qryDocTypes
    Left = 144
    Top = 32
  end
  object qryEntity: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select  EntityID as MasterID, Name As MasterName'#13#10'from EntityDat' +
      'a'
    Parameters = <>
    Left = 24
    Top = 104
  end
  object qryNotes: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select ENN.NoteNo As MasterID, (ETD.Name + '#39' - '#39' +  ENN.NoteName' +
      ') As MasterName'#13#10'from EntNotes ENN inner join EntityData ETD'#13#10'on' +
      ' ENN.EntityID = ETD.EntityID'#13#10'where ENN.NoteName is not null'
    Parameters = <>
    Left = 144
    Top = 104
  end
  object dtsEntity: TDataSource
    DataSet = qryEntity
    Left = 24
    Top = 120
  end
  object dtsNotes: TDataSource
    DataSet = qryNotes
    Left = 144
    Top = 120
  end
  object qryLoans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select LSD.LoanID as MasterID, (ETD.Name + '#39' - Loan '#39' + CAST(LSD' +
      '.LoanID as varchar)) As MasterName'#13#10'from lsLoanDetail LSD inner ' +
      'join EntityData ETD'#13#10'on LSD.EntityID = ETD.EntityID'
    Parameters = <>
    Left = 24
    Top = 192
  end
  object dtsLoans: TDataSource
    DataSet = qryLoans
    Left = 24
    Top = 208
  end
  object qryProjects: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select PrjID As MasterID, PrjName As MasterName'#13#10'from bfBusfin'
    Parameters = <>
    Left = 144
    Top = 192
  end
  object dtsProjects: TDataSource
    DataSet = qryProjects
    Left = 144
    Top = 208
  end
end
