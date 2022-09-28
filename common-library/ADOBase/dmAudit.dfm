object dtmAudit: TdtmAudit
  OldCreateOrder = False
  Left = 173
  Top = 158
  Height = 304
  Width = 520
  object qryAuditMn: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'SELECT RecID, ParentTbl, AuditTbl, DataTbl, AuditDesc, ParentFld' +
      ', ChildFld, Type'#13#10'FROM AuditMain'#13#10'ORDER BY AuditDesc'
    Parameters = <>
    Left = 24
    Top = 16
  end
  object qryAuditDtl: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT AuditID, FldNo, FldName, DisplayN, Status '#13#10'FROM AuditTbl' +
      'Det'#13#10'WHERE AuditID = :RecID'#13#10'AND Status = 1'
    DataSource = dtsAuditMn
    MasterFields = 'RecID'
    Parameters = <
      item
        Name = 'RecID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 3
      end>
    Left = 96
    Top = 16
  end
  object dtsAuditMn: TDataSource
    DataSet = qryAuditMn
    Left = 24
    Top = 32
  end
  object qryCurrData: TADODataSet
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 240
    Top = 16
  end
  object dtsCurrData: TDataSource
    DataSet = qryCurrData
    Left = 240
    Top = 32
  end
  object qryAuditData: TADODataSet
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 24
    Top = 88
  end
  object dtsAuditData: TDataSource
    DataSet = qryAuditData
    Left = 24
    Top = 104
  end
  object cdsAudit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAudit'
    Left = 160
    Top = 88
  end
  object dspAudit: TDataSetProvider
    DataSet = qryAuditData
    Constraints = True
    Left = 88
    Top = 88
  end
  object dtsAudit: TDataSource
    DataSet = cdsAudit
    Left = 160
    Top = 104
  end
  object qryAdtKeys: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'SELECT ParentFld, ChildFld'#13#10'FROM AuditKeys'#13#10'WHERE AuditID = :Rec' +
      'ID'
    DataSource = dtsAuditMn
    Parameters = <
      item
        Name = 'RecID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 168
    Top = 16
  end
  object qryEntList: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    AfterScroll = qryEntListAfterScroll
    Parameters = <>
    Left = 24
    Top = 152
  end
  object dtsEntList: TDataSource
    DataSet = qryEntList
    Left = 24
    Top = 168
  end
end
