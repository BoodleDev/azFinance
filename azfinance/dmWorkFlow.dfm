object dtmWorkFlow: TdtmWorkFlow
  OldCreateOrder = False
  Left = 422
  Top = 93
  Height = 386
  Width = 707
  object dsProcessLoans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsProcessLoansAfterOpen
    CommandText = 
      'DECLARE @ProcessID INT'#13#10#13#10'SELECT @ProcessID = :ProcessID'#13#10#13#10'SELE' +
      'CT RecordID, LD.LoanID, Refno, ED.RegNo, ED.Name AS FirstName, E' +
      'D.Name2 AS LastName,'#13#10'CASE WHEN AG.EntType = 1 THEN AG.Name + '#39' ' +
      #39' + AG.Name2'#13#10'ELSE AG.Name2 END AS Agent, PH.ProcessID, PR.Descr' +
      'iption AS Process,'#13#10'PH.StartDate, PH.EndDate, LD.Status, '#13#10'dbo.F' +
      'GetLoanStatusName(LD.Status) AS LoanStatus,'#13#10'ProcessUser'#13#10'FROM l' +
      'sLoanDetail LD'#13#10'LEFT JOIN EntityData ED ON LD.EntityID = ED.Enti' +
      'tyID'#13#10'LEFT JOIN EntityData AG ON LD.LOID = AG.EntityID'#13#10'LEFT JOI' +
      'N wfProcessHistory PH ON ProcessRecID = RecordID'#13#10'LEFT JOIN wfPr' +
      'ocesses PR ON PH.ProcessID = PR.ProcessID'#13#10'WHERE RecordID > 0'#13#10'A' +
      'ND CASE WHEN @ProcessID = 0 THEN 0 ELSE PH.ProcessID END'#13#10'= @Pro' +
      'cessID '#13#10'AND PH.EndDate IS NULL'
    Parameters = <
      item
        Name = 'ProcessID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 32
    Top = 80
  end
  object dtsProcessLoans: TDataSource
    DataSet = dsProcessLoans
    Left = 32
    Top = 96
  end
  object cmdAssignProcess: TADOCommand
    CommandText = 'wfAssignProcess;1'
    CommandType = cmdStoredProc
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LoanID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ProcessID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NewProcess'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 136
    Top = 24
  end
  object dsProcessHistory: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsProcessLoansAfterOpen
    CommandText = 
      'SELECT StartDate, EndDate, Description, '#13#10'ISNULL(CompleteUser,Pr' +
      'ocessUser) + '#13#10'CASE WHEN ISNULL(ProcessUser,'#39#39') = '#39#39' OR ISNULL(C' +
      'ompleteUser,'#39#39') = '#39#39' THEN '#39#39' ELSE '#39' ('#39' + ProcessUser + '#39')'#39' END A' +
      'S ProcessUser'#13#10'FROM wfProcessHistory PH'#13#10'LEFT JOIN wfProcesses P' +
      'R ON PH.ProcessID = PR.ProcessID'#13#10'WHERE LoanID = :LoanID'#13#10'ORDER ' +
      'BY RecordID'
    DataSource = dtsProcessLoans
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 128
    Top = 80
  end
  object dtsProcessHistory: TDataSource
    DataSet = dsProcessHistory
    Left = 128
    Top = 96
  end
  object dsWaitingAction: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsProcessLoansAfterOpen
    AfterScroll = dsWaitingActionAfterScroll
    CommandText = 
      'SELECT RecordID, LD.LoanID, Refno, ED.RegNo, ED.Name AS FirstNam' +
      'e, ED.Name2 AS LastName,'#13#10'CASE WHEN AG.EntType = 1 THEN AG.Name ' +
      '+ '#39' '#39' + AG.Name2'#13#10'ELSE AG.Name2 END AS Agent, PH.ProcessID, PR.D' +
      'escription AS Process,'#13#10'PH.StartDate, PH.EndDate, LD.Status, '#13#10'd' +
      'bo.FGetLoanStatusName(LD.Status) AS LoanStatus,'#13#10'ProcessUser'#13#10'FR' +
      'OM lsLoanDetail LD'#13#10'LEFT JOIN EntityData ED ON LD.EntityID = ED.' +
      'EntityID'#13#10'LEFT JOIN EntityData AG ON LD.LOID = AG.EntityID'#13#10'LEFT' +
      ' JOIN wfProcessHistory PH ON ProcessRecID = RecordID'#13#10'LEFT JOIN ' +
      'wfProcesses PR ON PH.ProcessID = PR.ProcessID'#13#10'WHERE RecordID > ' +
      '0'#13#10'AND PH.EndDate IS NOT NULL'
    Parameters = <>
    Left = 240
    Top = 24
  end
  object dtsWaitingAction: TDataSource
    DataSet = dsWaitingAction
    Left = 240
    Top = 40
  end
  object dsActions: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Filtered = True
    LockType = ltBatchOptimistic
    CommandText = 
      #9'DECLARE @LoanID INT, @NextProcess INT'#13#10#13#10#9'CREATE TABLE #ActionL' +
      'oans'#13#10#9#9'('#13#10#9#9'ActionID INT IDENTITY,'#13#10#9#9'LoanID INT NOT NULL,'#13#10#9#9'W' +
      'aiting VARCHAR(1000)'#13#10#9#9')'#13#10#13#10#9'DECLARE ActionCursor CURSOR FOR'#13#10#9 +
      #9'SELECT LD.LoanID'#13#10#9#9'FROM lsLoanDetail LD'#13#10#9#9'LEFT JOIN wfProcess' +
      'History PH ON ProcessRecID = RecordID'#13#10#9#9'WHERE RecordID > 0'#13#10#9#9'A' +
      'ND PH.EndDate IS NOT NULL'#13#10#13#10#9'OPEN ActionCursor'#13#10#13#10#9'FETCH NEXT F' +
      'ROM ActionCursor INTO'#13#10#9#9'@LoanID'#13#10#13#10#9'WHILE @@FETCH_STATUS = 0 '#13#10 +
      #9'BEGIN'#13#10#13#10#9#9'EXEC wfGetNextLoanProcess @LoanID, @NextProcess OUTP' +
      'UT'#13#10#13#10#9#9'INSERT INTO #ActionLoans'#9#9#13#10#9#9'SELECT @LoanID, Descriptio' +
      'n'#13#10#9#9'FROM wfWorkFlow(@LoanID) WF'#13#10#9#9'RIGHT JOIN wfProcessFields P' +
      'F ON PF.FieldName = WF.FieldName  COLLATE SQL_Latin1_General_CP1' +
      '_CI_AS'#13#10#9#9'WHERE ProcessID = @NextProcess'#13#10#9#9'AND PF.FieldValue <>' +
      ' WF.FieldValue  COLLATE SQL_Latin1_General_CP1_CI_AS'#13#10#9#9#13#10#9#9'FETC' +
      'H NEXT FROM ActionCursor INTO'#13#10#9#9#9'@LoanID'#13#10#9'END'#13#10#13#10#9'CLOSE Action' +
      'Cursor'#13#10#9'DEALLOCATE ActionCursor'#13#10#13#10#9'SELECT ActionID, LoanID, Wa' +
      'iting'#13#10#9'FROM #ActionLoans'#13#10#9'ORDER BY LoanID, Waiting'#13#10#13#10'DROP TAB' +
      'LE #ActionLoans'
    Parameters = <>
    Left = 240
    Top = 96
  end
  object dtsActions: TDataSource
    DataSet = dsActions
    Left = 240
    Top = 112
  end
  object dsMarkComplete: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 'EXEC WFL_ValidateProcess :LoanID, :ProcessID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ProcessID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 152
  end
  object cmdCompleteWork: TADOCommand
    CommandText = 
      'UPDATE wfProcessHistory'#13#10'SET EndDate = GETDATE(), CompleteUser =' +
      ' :UserID'#13#10'WHERE RecordID = :RecordID'#13#10'AND EndDate IS NULL'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'RecordID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 136
    Top = 152
  end
  object dsImport: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LD.LoanID, RefNo, dbo.FGetLoanStatusName(Status) AS LoanS' +
      'tatus,'#13#10'Description AS CurrentProcess'#13#10'FROM lsLoanDetail LD'#13#10'LEF' +
      'T JOIN wfProcessHistory PH ON LD.ProcessRecID = RecordID'#13#10'LEFT J' +
      'OIN wfProcesses PR ON PH.ProcessID = PR.ProcessID'#13#10'WHERE Status ' +
      '< 30'#13#10'ORDER BY RefNo'
    Parameters = <>
    Left = 240
    Top = 176
    object dsImportLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
      Visible = False
    end
    object dsImportRefNo: TStringField
      DisplayLabel = 'Loan Ref.'
      FieldName = 'RefNo'
      Size = 15
    end
    object dsImportLoanStatus: TStringField
      DisplayLabel = 'Loan Status'
      FieldName = 'LoanStatus'
      ReadOnly = True
    end
    object dsImportCurrentProcess: TStringField
      DisplayLabel = 'Current Process'
      FieldName = 'CurrentProcess'
      Size = 50
    end
  end
  object dsDocReceiving: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT IncomingID, Pages, Filename, '#13#10'CASE Indexed'#13#10'WHEN 0 THEN ' +
      #39'No'#39#13#10'ELSE '#39'Yes'#39' END AS Indexed, IncomingUser, IncomingDate'#13#10'FRO' +
      'M dtIncoming IC'#13#10'ORDER BY IncomingID DESC'
    Parameters = <>
    Left = 368
    Top = 24
  end
  object dtsDocReceiving: TDataSource
    DataSet = dsDocReceiving
    Left = 368
    Top = 40
  end
  object dsPages: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT PageID, DT.Description AS Document, '#39'Page '#39' + CAST(OrderI' +
      'D AS VARCHAR(10)) AS PageNo, LD.RefNo AS LoanRef,'#13#10'IDNumber, DC.' +
      'CreateDate, Rejected, '#13#10'CASE WHEN Duplicated = 1'#13#10'THEN '#39'Replaced' +
      ' By Duplicate Copy'#39#13#10'ELSE CT.Description'#13#10'END AS Reason, Notes'#13#10 +
      'FROM dtPages PG'#13#10'LEFT JOIN dtDocs DC ON PG.DocumentID = DC.Docum' +
      'entID'#13#10'LEFT JOIN dtDocumentTypes DT ON DC.DocType = DT.DocType'#13#10 +
      'LEFT JOIN dtRejections RJ ON DC.RejectID = RJ.RejectID'#13#10'LEFT JOI' +
      'N CodeTable CT ON Reason = TypeKey'#13#10'LEFT JOIN lsLoanDetail LD ON' +
      ' DC.LoanID = LD.LoanID'#13#10'WHERE IncomingID = :IncomingID'
    DataSource = dtsDocReceiving
    Parameters = <
      item
        Name = 'IncomingID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 368
    Top = 96
  end
  object dtsPages: TDataSource
    DataSet = dsPages
    Left = 368
    Top = 112
  end
  object dsActivitySummary: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @Date DATETIME'#13#10#13#10'SELECT @Date = CAST(CONVERT(VARCHAR(10' +
      '),:QueryDate,120) AS DATETIME)'#13#10#13#10'SELECT ProcessID, Description,' +
      ' @Date AS AtDate,'#13#10'(SELECT COUNT(*)'#13#10'FROM wfProcessHistory'#13#10'WHER' +
      'E ProcessID = PR.ProcessID'#13#10'AND CONVERT(VARCHAR(10),StartDate,12' +
      '0) < @Date'#13#10'AND CONVERT(VARCHAR(10),ISNULL(EndDate,@Date),120) >' +
      '= @Date) AS DayStart,'#13#10'(SELECT COUNT(*)'#13#10'FROM wfProcessHistory'#13#10 +
      'WHERE ProcessID = PR.ProcessID'#13#10'AND CONVERT(VARCHAR(10),StartDat' +
      'e,120) = @Date) AS New,'#13#10'(SELECT COUNT(*)'#13#10'FROM wfProcessHistory' +
      #13#10'WHERE ProcessID = PR.ProcessID'#13#10'AND CONVERT(VARCHAR(10),EndDat' +
      'e,120) = @Date) AS Completed,'#13#10'(SELECT COUNT(*)'#13#10'FROM wfProcessH' +
      'istory'#13#10'WHERE ProcessID = PR.ProcessID'#13#10'AND CONVERT(VARCHAR(10),' +
      'StartDate,120) <= @Date'#13#10'AND CONVERT(VARCHAR(10),ISNULL(EndDate,' +
      '@Date + 1),120) > @Date) AS DayEnd'#13#10'FROM wfProcesses PR'#13#10'ORDER B' +
      'Y ProcessOrder'
    Parameters = <
      item
        Name = 'QueryDate'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    Left = 40
    Top = 240
  end
  object dtsActivitySummary: TDataSource
    DataSet = dsActivitySummary
    Left = 40
    Top = 256
  end
  object dsUsers: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT ProcessUser, LoggedOn, CurrentProcess, COUNT(PR.ProcessID' +
      ') AS Processes'#13#10'FROM'#13#10#9'(SELECT ISNULL(NULLIF(CAST(ProcessUser AS' +
      ' VARCHAR(20)),'#39#39'), '#39'Not Assigned'#39') AS ProcessUser, '#13#10#9'ISNULL(Log' +
      'gedOn, 0) AS LoggedOn, COUNT(PH.RecordID) AS CurrentProcess'#13#10#9'FR' +
      'OM wfProcessHistory PH'#13#10#9'LEFT JOIN SecurityTbl ST ON PH.ProcessU' +
      'ser = ST.UserID'#13#10#9'WHERE EndDate IS NULL'#13#10#9'GROUP BY ProcessUser, ' +
      'LoggedOn'#13#10#9#13#10#9'UNION'#13#10#9#13#10#9'SELECT ST.UserID, 0, 0'#13#10#9'FROM SecurityT' +
      'bl ST'#13#10#9'LEFT JOIN UserGroups UG ON ST.UserID = UG.UserID'#13#10#9'LEFT ' +
      'JOIN SecurityGroups SG ON UG.UserGroup = GroupID'#13#10#9'WHERE Status ' +
      '= 0'#13#10#9'AND AppID = 100'#13#10#9'AND ST.UserID NOT IN'#13#10#9'(SELECT DISTINCT ' +
      'ProcessUser'#13#10#9'FROM wfProcessHistory'#13#10#9'WHERE EndDate IS NULL))PU'#13 +
      #10'LEFT JOIN wfProcessUsers PR ON ProcessUser = UserID'#13#10'GROUP BY P' +
      'rocessUser, LoggedOn, CurrentProcess'#13#10'ORDER BY ProcessUser'#13#10
    Parameters = <>
    Left = 360
    Top = 192
  end
  object dtsUsers: TDataSource
    DataSet = dsUsers
    Left = 360
    Top = 208
  end
  object dsUserProcess: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT Description AS Process, COUNT(PH.RecordID) AS Processes'#13#10 +
      'FROM wfProcessUsers PU'#13#10'LEFT JOIN wfProcesses PR ON PU.ProcessID' +
      ' = PR.ProcessID'#13#10'LEFT JOIN wfProcessHistory PH ON PR.ProcessID =' +
      ' PH.ProcessID AND PH.EndDate IS NULL'#13#10'WHERE PU.UserID = :UserID'#13 +
      #10'GROUP BY Description'#13#10'ORDER BY Description'#13#10
    DataSource = dtsUsers
    Parameters = <
      item
        Name = 'UserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 440
    Top = 192
  end
  object dtsUserProcess: TDataSource
    DataSet = dsUserProcess
    Left = 440
    Top = 208
  end
  object dsProcessUsers: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT PU.UserID, Name, Surname, '#13#10'CASE WHEN LoggedOn = 1 THEN '#39 +
      'Yes'#39' ELSE '#39'No'#39' END AS LoggedOn'#13#10'FROM wfProcessUsers PU'#13#10'LEFT JOI' +
      'N SecurityTbl ST ON PU.UserID = ST.UserID'#13#10'WHERE ProcessID = :Pr' +
      'ocessID'#13#10'AND PU.UserID <> :UserID'#13#10'ORDER BY PU.UserID'
    Parameters = <
      item
        Name = 'ProcessID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 240
    Top = 248
  end
  object dtsProcessUsers: TDataSource
    DataSet = dsProcessUsers
    Left = 240
    Top = 264
  end
  object cmdUpdateLastWorked: TADOCommand
    CommandText = 
      'UPDATE WFL_Account SET LastWorkedDate = GETDATE(), LastWorkedUse' +
      'rID = :UserID'#13#10'WHERE AccountID = :AccountID'#13#10'AND WorkflowID = :W' +
      'orkflowID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'WorkflowID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 360
    Top = 272
  end
  object dsRedirectProcess: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT PR.ProcessID, PR.Description'#13#10'FROM WFL_ProcessRedirectCon' +
      'trol RD'#13#10'LEFT JOIN WFL_Process PR ON RD.RedirectProcessID = PR.P' +
      'rocessID'#13#10'WHERE RD.ProcessID = :ProcessID'#13#10#9'AND RD.Enabled = 1'#13#10 +
      #9'AND PR.Enabled = 1'#13#10'ORDER BY PR.Description'
    Parameters = <
      item
        Name = 'ProcessID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 472
    Top = 40
  end
  object dtsRedirectProcess: TDataSource
    DataSet = dsRedirectProcess
    Left = 472
    Top = 56
  end
  object cmdMoveProcess: TADOCommand
    CommandText = 'EXEC dbo.WFL_AssignProcess :AccountID, :ProcessID, 1, NULL'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ProcessID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 136
    Top = 208
  end
  object dsRequests: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsRequestsAfterOpen
    CommandText = 
      'SELECT '#13#10#9'RQ.RequestID, RQ.RequestTypeID, RT.Description AS Requ' +
      'estType,'#13#10#9'RQ.RequestPriorityID, RP.Description AS RequestPriori' +
      'ty,'#13#10#9'RQ.RequestNotified, RQ.AccountID, LD.RefNo AS AccountNo, R' +
      'Q.CreateUserID, '#13#10#9'CU.Username AS CreateUser, RQ.CreateDate,'#13#10#9'R' +
      'Q.ProcessUserID, PU.Username AS ProcessUser, RQ.ProcessDate, '#13#10#9 +
      'RQ.ProcessTypeID, PT.Description AS ProcessType, RQ.ProcessNotif' +
      'ied, RQ.ProcessHistoryID,'#13#10#9'PR.Description AS CurrentProcess, PH' +
      '.ProcessUser AS CurrentUser,'#13#10#9'CAST(CASE'#13#10#9#9#9'WHEN ProcessDate IS' +
      ' NULL THEN 0'#13#10#9#9#9'ELSE 1'#13#10#9#9'END AS BIT) AS Processed'#13#10'FROM WFL_Re' +
      'quest RQ'#13#10'LEFT JOIN lsLoanDetail LD ON RQ.AccountID = LD.LoanID'#13 +
      #10'LEFT JOIN WFL_RequestType RT ON RQ.RequestTypeID = RT.RequestTy' +
      'peID'#13#10'LEFT JOIN WFL_RequestPriority RP ON RQ.RequestPriorityID =' +
      ' RP.RequestPriorityID'#13#10'LEFT JOIN SEC_User CU ON RQ.CreateUserID ' +
      '= CU.UserID'#13#10'LEFT JOIN SEC_User PU ON RQ.ProcessUserID = PU.User' +
      'ID'#13#10'LEFT JOIN WFL_ProcessType PT ON RQ.ProcessTypeID = PT.Proces' +
      'sTypeID'#13#10'LEFT JOIN WFL_Account AC ON RQ.AccountID = AC.AccountID' +
      #13#10#9'AND AC.WorkflowID = 1--*** NEW APPLICATIONS'#13#10'LEFT JOIN wfProc' +
      'essHistory PH ON AC.ProcessHistoryID = PH.RecordID'#13#10'LEFT JOIN WF' +
      'L_Process PR ON PH.ProcessID = PR.ProcessID'#13#10'WHERE RQ.CreateUser' +
      'ID = :UserID'#13#10#9'AND (ProcessDate IS NULL OR ProcessNotified = 0)'#13 +
      #10#9'AND ISNULL(RQ.ProcessTypeID, 0) <> 3 --*** Cancelled'#13#10'ORDER BY' +
      ' '#13#10#9'CASE RQ.ProcessTypeID'#13#10#9#9'WHEN 2 THEN RQ.ProcessDate'#13#10#9#9'ELSE ' +
      'RQ.CreateDate '#13#10#9'END DESC'
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 504
    Top = 128
  end
  object dtsRequests: TDataSource
    DataSet = dsRequests
    Left = 504
    Top = 141
  end
  object cmdAddRequest: TADOCommand
    CommandText = 
      'EXEC dbo.WFL_AddRequest'#13#10#9':AccountID,'#13#10#9':RequestTypeID,'#13#10#9':UserI' +
      'D,'#13#10#9':Note'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'RequestTypeID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Note'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = Null
      end>
    Left = 464
    Top = 288
  end
  object dsRequestTypes: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT RequestTypeID, Description'#13#10'FROM WFL_RequestType'#13#10'WHERE R' +
      'equestTypeID <> 1 --*** ASSIGN LEADS'#13#10'ORDER BY Description'
    Parameters = <>
    Left = 528
    Top = 208
  end
  object dtsRequestTypes: TDataSource
    DataSet = dsRequestTypes
    Left = 528
    Top = 224
  end
  object dsAccountDetails: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT TOP 1 LD.Status, PH.ProcessID AS LastProcessID'#13#10'FROM lsLo' +
      'anDetail LD'#13#10'LEFT JOIN (wfProcessHistory PH '#13#10#9'LEFT JOIN WFL_Pro' +
      'cess PR ON PH.ProcessID = PR.ProcessID) ON LD.LoanID = PH.LoanID' +
      #13#10#9#9'AND PR.WorkflowID = 1'#13#10#9#9'AND PH.EndDate IS NOT NULL'#13#10'WHERE L' +
      'D.LoanID = :AccountID'#13#10'ORDER BY PH.EndDate DESC'
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 584
    Top = 40
  end
end
