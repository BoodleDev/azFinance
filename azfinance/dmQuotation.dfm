object dtmQuotation: TdtmQuotation
  OldCreateOrder = False
  Left = 203
  Top = 182
  Height = 363
  Width = 671
  object cmdEndWaiting: TADOCommand
    CommandText = 
      'UPDATE wfProcessHistory SET EndDate = GETDATE()'#13#10'WHERE LoanID = ' +
      ':LoanID'#13#10'AND ProcessID = -100'#13#10'AND EndDate IS NULL'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 16
  end
  object cmdAssignProcess: TADOCommand
    CommandText = 'EXEC wfAssignProcess :LoanID, :ProcessID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ProcessID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 48
    Top = 80
  end
  object qryCallRecords: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'QuotationID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT AttachmentID, Title, Filename, QU.CallReference'
      'FROM afQuotations QU'
      
        'INNER JOIN ccAttachments AH ON QU.CallReference = AH.CallReferen' +
        'ce AND AttachmentType = '#39'Voice'#39
      'WHERE QuotationID = :QuotationID'
      'ORDER BY AttachmentID')
    Left = 168
    Top = 8
  end
end
