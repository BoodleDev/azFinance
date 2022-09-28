object dtmNtsRE: TdtmNtsRE
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 248
  Top = 215
  Height = 200
  Width = 400
  object qryGetNotes: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'select PSN.EntCode, NTS.NoteNo, NTS.RemindMe,'#13#10'  NTS.RefNo, NTS.' +
      'NoteDate, NTS.UserID, NTS.TheNote,'#13#10'  NTS.DueDate,NTS.Status,PSN' +
      '.TelNo1, PSN.TelNo2, PSN.TelNo3'#13#10'from Notes NTS left join Entity' +
      'Data PSN on '#13#10'  NTS.EntityID=PSN.EntityID and NTS.AppID=100'#13#10'whe' +
      're NTS.Status=1 '#13#10
    Parameters = <>
    Left = 32
    Top = 16
  end
  object qryToUse: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    Parameters = <>
    Left = 120
    Top = 16
  end
  object dtsGetNotes: TDataSource
    DataSet = qryGetNotes
    Left = 32
    Top = 32
  end
end
