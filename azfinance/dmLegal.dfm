object dtmLegal: TdtmLegal
  OldCreateOrder = False
  Left = 484
  Top = 255
  Height = 537
  Width = 613
  object dsMagistrates: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT TypeKey, Description'#13#10'FROM CodeTable'#13#10'WHERE GroupKey = 10' +
      '0137'#13#10'AND NotUse = 0'
    Parameters = <>
    Left = 56
    Top = 24
  end
  object dtsMagistrates: TDataSource
    DataSet = dsMagistrates
    Left = 56
    Top = 40
  end
  object dsLegalFees: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LL.LoanID, LD.EntityID, ED.EntCode, JDAmount, JDDate, JDI' +
      'nstalment, LF.FeeID, Description, FeeType, TransCode, CaseNumber' +
      ','#13#10'CASE FeeType'#13#10'WHEN '#39'Fixed'#39' THEN LF.Fee'#13#10'WHEN '#39'Percent'#39' THEN L' +
      'F.Fee/100 * JDAmount'#13#10'WHEN '#39'Group'#39' THEN LG.Fee'#13#10'END AS FeeAmount' +
      #13#10'FROM Legal LL'#13#10'LEFT JOIN lsLoanDetail LD ON LL.LoanID = LD.Loa' +
      'nID'#13#10'LEFT JOIN EntityData ED ON LD.EntityID = ED.EntityID'#13#10'LEFT ' +
      'JOIN LegalFees LF ON LL.LoanID = LL.LoanID'#13#10'LEFT JOIN LegalFeeGr' +
      'oups LG ON LF.FeeID = LG.FeeID AND FeeType = '#39'Group'#39#13#10'AND Minimu' +
      'm <= JDAmount AND Maximum >= JDAmount'#13#10'WHERE LL.LoanID = :LoanID'
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
    Left = 160
    Top = 32
  end
  object dsFeeCheck: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT COUNT(*)'#13#10'FROM LegalFees LF'#13#10'LEFT JOIN TransSetup TS ON L' +
      'F.TransCode = TS.TransCode'#13#10'WHERE TS.TransCode IS NULL'
    Parameters = <>
    Left = 256
    Top = 32
  end
  object qrySummary: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT SUM(Pending) AS Pending, SUM(HandedOver) AS HandedOver, '
      'SUM(Judgement) AS Judgement, SUM(Reversed) AS Reversed,'
      
        'SUM(Pending) + SUM(HandedOver) + SUM(Judgement) + SUM(Reversed) ' +
        'AS Total'
      'FROM'
      '(SELECT '
      
        'CASE WHEN (HOProcessed IS NULL OR HOProcessed = 0) AND Status = ' +
        '45 THEN 1 ELSE 0 END AS Pending,'
      
        'CASE WHEN HOProcessed = 1 AND JDProcessed <> 1 THEN 1 ELSE 0 END' +
        ' AS HandedOver,'
      'CASE JDProcessed WHEN 1 THEN 1 ELSE 0 END AS Judgement,'
      'CASE Status WHEN 45 THEN 0 ELSE 1 END AS Reversed'
      'FROM Legal LG'
      'LEFT JOIN lsLoanDetail LD ON LG.LoanID = LD.LoanID)Legal')
    Left = 160
    Top = 96
  end
  object dsApplication: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'DR.LegalApplicationID, DR.LegalApplicationTypeID, DR.A' +
      'ccountID, DR.CreateDate, DR.CreateUserID, ST.UserID AS CreateUse' +
      'r,'#13#10#9'DR.ApplicationDate, DR.ApproveRejectDate, DR.Approved, DR.C' +
      'ancelDate, DR.CancelledBy, DR.Excluded,'#13#10#9'DR.ApplicationDocument' +
      'ID, DR.ApproveRejectDocumentID, DR.CancelDocumentID,'#13#10#9'D1.Create' +
      'User AS CreateUser171, D1.CreateDate AS CreateDate171,'#13#10#9'D2.Crea' +
      'teUser AS CreateUser172, D2.CreateDate AS CreateDate172,'#13#10#9'D4.Cr' +
      'eateUser AS CreateUser174, D4.CreateDate AS CreateDate174,'#13#10#9'ND.' +
      'CreateUser AS CreateUserNotice, ND.CreateDate AS CreateDateNotic' +
      'e,'#13#10#9'TD.CreateUser AS CreateUserTermination, TD.CreateDate AS Cr' +
      'eateDateTermination,'#13#10#9'DR.NoticeDate, DR.TerminationDate, DR.Not' +
      'iceDocumentID, DR.TerminationDocumentID, '#13#10#9'DR.TerminationTypeID' +
      ', TT.Description AS TerminationType, DR.CancellationTypeID, CT.D' +
      'escription AS CancellationType'#13#10'FROM DCC_LegalApplication DR'#13#10'LE' +
      'FT JOIN SecurityTbl ST ON DR.CreateUserID = ST.UserKey'#13#10'LEFT JOI' +
      'N dtDocs D1 ON DR.AccountID = D1.LoanID'#13#10#9'AND DR.ApplicationDocu' +
      'mentID = D1.DocumentID'#13#10'LEFT JOIN dtDocs D2 ON DR.AccountID = D2' +
      '.LoanID'#13#10#9'AND DR.ApproveRejectDocumentID = D2.DocumentID'#13#10'LEFT J' +
      'OIN dtDocs D4 ON DR.AccountID = D4.LoanID'#13#10#9'AND DR.CancelDocumen' +
      'tID = D4.DocumentID'#13#10'LEFT JOIN dtDocs ND ON DR.AccountID = ND.Lo' +
      'anID'#13#10#9'AND DR.NoticeDocumentID = ND.DocumentID'#13#10'LEFT JOIN dtDocs' +
      ' TD ON DR.AccountID = TD.LoanID'#13#10#9'AND DR.TerminationDocumentID =' +
      ' TD.DocumentID'#13#10'LEFT JOIN DCC_LegalApplicationTerminationType TT' +
      ' ON DR.TerminationTypeID = TT.TerminationTypeID'#13#10'LEFT JOIN DCC_L' +
      'egalApplicationCancellationType CT ON DR.CancellationTypeID = CT' +
      '.CancellationTypeID'#13#10'WHERE DR.AccountID = :AccountID'#13#10#9'AND DR.Le' +
      'galApplicationTypeID = :ApplicationTypeID'
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ApplicationTypeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 256
    Top = 96
  end
  object dtsApplication: TDataSource
    DataSet = dsApplication
    Left = 256
    Top = 112
  end
  object cmdInsert: TADOCommand
    CommandText = 
      'INSERT INTO DCC_LegalApplication (AccountID, CreateUserID, Legal' +
      'ApplicationTypeID) VALUES (:AccountID, :UserID, :ApplicationType' +
      'ID)'#13#10#13#10'SELECT :ApplicationID = SCOPE_IDENTITY()'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ApplicationTypeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ApplicationID'
        Attributes = [paSigned]
        DataType = ftInteger
        Direction = pdOutput
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 352
    Top = 96
  end
  object cmdUpdate: TADOCommand
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 352
    Top = 152
  end
  object dsDocuments: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT DC.DocumentID, DC.DocType AS DocumentType, DT.Description' +
      ', DC.LoanID, DC.Pages, DC.CreateDate, DC.CreateUser'#13#10'FROM dtDocs' +
      ' DC'#13#10'LEFT JOIN dtDocumentTypes DT ON DC.DocType = DT.DocType'#13#10'LE' +
      'FT JOIN DCC_LegalApplication LA ON DC.LoanID = LA.AccountID'#13#10#9'AN' +
      'D'#13#10#9#9'CASE '#13#10#9#9#9'WHEN DC.DocType IN ('#39'DR171'#39', '#39'ADAPP'#39') THEN LA.App' +
      'licationDocumentID'#13#10#9#9#9'WHEN DC.DocType IN ('#39'DR172'#39', '#39'ADM'#39') THEN ' +
      'LA.ApproveRejectDocumentID'#13#10#9#9#9'WHEN DC.DocType IN ('#39'DR174'#39', '#39'RES' +
      'CO'#39') THEN LA.CancelDocumentID'#13#10#9#9'END = DC.DocumentID'#13#10'WHERE '#13#10#9'D' +
      'C.LoanID = :AccountID'#13#10#9'AND LA.LegalApplicationID IS NULL'#13#10#9'AND ' +
      'DC.DocType IN ('#39'DR171'#39', '#39'DR172'#39', '#39'DR174'#39', '#39'ADAPP'#39', '#39'ADM'#39', '#39'RESCO' +
      #39')'#13#10#9'AND DC.DocType = :DocumentType'
    DataSource = dtsApplication
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'DocumentType'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    Left = 64
    Top = 160
    object dsDocumentsDocumentID: TAutoIncField
      FieldName = 'DocumentID'
      ReadOnly = True
      Visible = False
    end
    object dsDocumentsCreateDate: TDateTimeField
      DisplayLabel = 'Create Date'
      DisplayWidth = 20
      FieldName = 'CreateDate'
    end
    object dsDocumentsCreateUser: TStringField
      DisplayLabel = 'Created By'
      DisplayWidth = 12
      FieldName = 'CreateUser'
      Size = 10
    end
    object dsDocumentsPages: TWordField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'Pages'
    end
    object dsDocumentsDescription: TStringField
      DisplayWidth = 30
      FieldName = 'Description'
      Size = 50
    end
    object dsDocumentsDocumentType: TStringField
      FieldName = 'DocumentType'
      Visible = False
      Size = 5
    end
    object dsDocumentsLoanID: TIntegerField
      FieldName = 'LoanID'
      Visible = False
    end
  end
  object dsCancellationType: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT CancellationTypeID, LegalApplicationTypeID, Description'#13#10 +
      'FROM DCC_LegalApplicationCancellationType'#13#10'WHERE LegalApplicatio' +
      'nTypeID = :LegalApplicationTypeID'#13#10'ORDER BY Description'
    DataSource = dtsApplication
    Parameters = <
      item
        Name = 'LegalApplicationTypeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 224
  end
  object dtsCancellationType: TDataSource
    DataSet = dsCancellationType
    Left = 56
    Top = 240
  end
  object dsTerminationType: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT TerminationTypeID, Description'#13#10'FROM DCC_LegalApplication' +
      'TerminationType'#13#10'ORDER BY Description'
    Parameters = <>
    Left = 176
    Top = 224
  end
  object dtsTerminationType: TDataSource
    DataSet = dsTerminationType
    Left = 176
    Top = 240
  end
end
