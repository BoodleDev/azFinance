object dtmDocumentViewer: TdtmDocumentViewer
  OldCreateOrder = False
  Left = 440
  Top = 356
  Height = 336
  Width = 488
  object dsPages: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT PageID, OrderID'#13#10'FROM dtPages'#13#10'WHERE DocumentID = :Docume' +
      'ntID'#13#10'ORDER BY OrderID'
    Parameters = <
      item
        Name = 'DocumentID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 24
  end
  object dsDocuments: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT DocumentID, IDNumber, DC.DocType, Rejected,'#13#10'DT.Descripti' +
      'on + '#13#10'CASE '#13#10'WHEN Authorised = 1 THEN '#39' (Authorised) '#39#13#10'ELSE '#39#39 +
      ' END AS Description, LoanID, Pages, Authorised,'#13#10'CreateDate, Cre' +
      'ateUser, ISNULL(RD.Description + CHAR(13) + CHAR(10),'#39#39') + ISNUL' +
      'L(Notes,'#39#39') AS Rejection,'#13#10'RD.Description AS Reason, Notes, NewF' +
      'older, DeleteDate, DeleteUser'#13#10'FROM dtDocs DC'#13#10'LEFT JOIN dtDocum' +
      'entTypes DT ON DC.DocType = DT.DocType'#13#10'LEFT JOIN dtRejections R' +
      'J ON DC.RejectID = RJ.RejectID AND Rejected = 1'#13#10'LEFT JOIN CodeT' +
      'able RD ON RJ.Reason = RD.TypeKey'#13#10'WHERE LoanID = :LoanID'#13#10'AND D' +
      'eleteDate IS NULL'#13#10'ORDER BY Description'#13#10
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 112
    Top = 24
  end
  object dsDocPath: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @DocPath VARCHAR(100), @LoanID INT'#13#10#13#10'SELECT @LoanID = L' +
      'oanID'#13#10'FROM dtDocs'#13#10'WHERE DocumentID = :DocumentID'#13#10#13#10'EXEC bsLoa' +
      'nDocPath @LoanID, @DocPath OUTPUT'#13#10#13#10'SELECT @DocPath'
    Parameters = <
      item
        Name = 'DocumentID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 184
    Top = 24
  end
end
