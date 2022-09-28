object dtmLS: TdtmLS
  OldCreateOrder = False
  Top = 218
  Height = 573
  Width = 847
  object qryEntLoan: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryEntLoanBeforeOpen
    OnCalcFields = qryEntLoanCalcFields
    CommandText = 
      'DECLARE'#13#10'  @Close as int,'#13#10'  @Cancel as int,'#13#10'  @Decline as int'#13 +
      #10#13#10'SET @Close = :prClose'#13#10'SET @Cancel = :prCancel'#13#10'SET @Decline ' +
      '= :prDecline ;'#13#10#13#10'WITH ClientLoan (LoanID, LoanNo) AS '#13#10'('#13#10#9'SELE' +
      'CT LD.LoanID, COUNT(OL.LoanID) + 1'#13#10#9'FROM lsLoanDetail LD'#13#10#9'LEFT' +
      ' JOIN lsLoanDetail OL ON LD.EntityID = OL.EntityID'#13#10#9#9'AND OL.Loa' +
      'nID < LD.LoanID'#13#10#9#9'AND OL.Status <> @Close '#13#10#9#9'AND OL.Status <> ' +
      '@Cancel'#13#10#9#9'AND OL.Status <> @Decline'#13#10#9'WHERE LD.EntityID = :Enti' +
      'tyID'#13#10#9'AND LD.Status <> @Close'#13#10#9'AND LD.Status <> @Cancel'#13#10#9'AND ' +
      'LD.Status <> @Decline'#13#10#9'GROUP BY LD.LoanID'#13#10'),'#13#10'cte_Flag AS '#13#10'('#13 +
      #10#9'SELECT '#13#10#9#9'AF.AccountID, FlagID, LA.CreateDate, DisableDate, E' +
      'nabled, LA.ApplicationDate, LA.Excluded,'#13#10#9#9'RANK() OVER (PARTITI' +
      'ON BY AF.AccountID, FlagID ORDER BY AF.CreateDate DESC, LA.Creat' +
      'eDate DESC) AS RankOrder'#13#10#9'FROM DCC_AccountFlag AF'#13#10#9'LEFT JOIN D' +
      'CC_LegalApplication LA ON AF.AccountID = LA.AccountID'#13#10#9#9'AND AF.' +
      'FlagID = LA.LegalApplicationTypeID'#13#10#9'WHERE DeleteDate IS NULL'#13#10#9 +
      'AND FlagID IN (1, 2) --// *** DEBT REVIEW, DEBT ADMINISTRATION'#13#10 +
      ')'#13#10#13#10'SELECT'#13#10#9'LD.LoanID, LD.EntityID, LD.EntCode, LD.LoanType, L' +
      'T.LoanTypeName, '#13#10#9'LT.LoanTypeName + '#39' ('#39' + LD.LoanType + '#39')'#39' AS' +
      ' LoanTypeDescription, LoanPeriod, LTAccT,'#13#10#9'AmtToFin, PayIns, In' +
      'tRate, TotInterest, TotSecAmt, StartDate, OpenDate, FirstInsDate' +
      ', EndDate, '#13#10#9'AccBal, LoanBal, AvlBal, LD.Status, LD.UserID, Arr' +
      'earsBucket, ArrearsAmt, NoOfPay, LastDPay, '#13#10#9'LastAmtPay, Extend' +
      'Prd, ArrearsSettle, CycleEndDay, Delinquency, RL.Description AS ' +
      'RiskBand,'#13#10#9'LD.RefNo, LoanCapital, LOID, FunderID, CL.LoanNo, TR' +
      '.DeductDate AS NextDeduction,'#13#10#9'SUM(CASE WHEN TransType IN (11,1' +
      '2) THEN AmtPost * -1 ELSE 0 END) AS PaymentsReceived,'#13#10#9'SUM(CASE' +
      ' WHEN TransType IN (13,14) THEN AmtPost ELSE 0 END) AS InterestA' +
      'ccrued,'#13#10#9'SUM(CASE WHEN TransType IN (17,18) THEN AmtPost ELSE 0' +
      ' END) AS ContractFees,'#13#10#9'SUM(CASE WHEN TransType IN (1,2) THEN A' +
      'mtPost ELSE 0 END) AS AddFeesLevied,'#13#10#9'SUM(CASE WHEN TransType I' +
      'N (28,29) THEN AmtPost ELSE 0 END) AS LegalFeesLevied, '#13#10#9'(SELEC' +
      'T TOP 1 InterestRate'#13#10#9'FROM lsLoanRate'#13#10#9'WHERE LoanID = LD.LoanI' +
      'D'#13#10#9'AND EffectiveDate <= GETDATE()'#13#10#9'ORDER BY EffectiveDate DESC' +
      ') AS CurrentRate, LD.IntRate AS OriginalRate, '#13#10#9'CASE'#13#10#9#9'WHEN FR' +
      '.FlagID IS NULL THEN NULL'#13#10#9#9'ELSE LR.Description '#13#10#9'END AS DebtR' +
      'eviewFlag, CAST(CONVERT(VARCHAR(10), FR.CreateDate, 120) AS DATE' +
      'TIME) AS DebtReviewDate,'#13#10#9'FR.Enabled AS DebtReviewEnabled, FR.A' +
      'pplicationDate AS DebtReviewApplicationDate, FR.Excluded AS Debt' +
      'ReviewExcluded,'#13#10#9'CASE'#13#10#9#9'WHEN '#13#10#9#9#9'FA.FlagID IS NULL THEN NULL'#13 +
      #10#9#9'ELSE LA.Description '#13#10#9'END AS AdminFlag, CAST(CONVERT(VARCHAR' +
      '(10), FA.CreateDate, 120) AS DATETIME) AS AdminDate,'#13#10#9'FA.Enable' +
      'd AS AdminEnabled, FA.ApplicationDate AS AdminApplicationDate, F' +
      'A.Excluded AS AdminExcluded, LD.HostID,'#13#10#9#39'B'#39' + CAST(LD.BookID A' +
      'S VARCHAR(2)) AS Book'#13#10'FROM ClientLoan CL'#13#10'LEFT JOIN lsLoanDetai' +
      'l LD ON CL.LoanID = LD.LoanID'#13#10'LEFT JOIN lsLoanTypes LT ON LD.Lo' +
      'anType = LT.LoanType'#13#10'LEFT JOIN DCC_Flag LR ON LR.FlagID = 1 --/' +
      '/*** DEBT REVIEW'#13#10'LEFT JOIN cte_Flag FR ON LD.LoanID = FR.Accoun' +
      'tID AND LR.FlagID = FR.FlagID AND FR.RankOrder = 1'#13#10'LEFT JOIN DC' +
      'C_Flag LA ON LA.FlagID = 2 --//*** DEBT ADMINISTRATION'#13#10'LEFT JOI' +
      'N cte_Flag FA ON LD.LoanID = FA.AccountID AND LA.FlagID = FA.Fla' +
      'gID AND FA.RankOrder = 1'#13#10'LEFT JOIN ieTransactions TR ON LD.Loan' +
      'ID = TR.LoanID AND DebitType = '#39'R'#39' AND InstalBatch IS NULL'#13#10'LEFT' +
      ' JOIN scRiskLevel RL ON ISNULL(LD.RiskLevelClient, LD.RiskLevelB' +
      'ureau) = RL.RiskLevel'#13#10'LEFT JOIN lsBatchHistory BH ON LD.LoanID ' +
      '= BH.LoanID'#13#10#9'AND BH.TransType IN (1, 2, 11, 12, 13, 14, 17, 18,' +
      ' 28, 29)'#13#10'GROUP BY '#13#10#9'LD.LoanID, LD.EntityID, LD.EntCode, LD.Loa' +
      'nType, LD.LTAccT, LD.LoanPeriod, LD.AmtToFin, LD.PayIns, LD.IntR' +
      'ate,'#13#10#9'LD.TotInterest, LD.TotSecAmt, LD.StartDate, LD.OpenDate, ' +
      'LD.FirstInsDate, LD.EndDate, LD.AccBal, LD.LoanBal,'#13#10#9'LD.AvlBal,' +
      ' LD.Status, LD.UserID, LD.ArrearsBucket, LD.ArrearsAmt, LD.NoOfP' +
      'ay, LD.LastDPay, LD.LastAmtPay, LD.ExtendPrd,'#13#10#9'LD.ArrearsSettle' +
      ', LD.CycleEndDay, LD.Delinquency, RL.Description, LD.RefNo, LD.L' +
      'oanCapital, LD.LOID, LD.FunderID,'#13#10#9'TR.DeductDate, CL.LoanNo, FR' +
      '.FlagID, LR.Description, FR.CreateDate, FR.Enabled, FR.Applicati' +
      'onDate, FR.Excluded,'#13#10#9'FA.FlagID, LA.Description, FA.CreateDate,' +
      ' FA.Enabled, FA.ApplicationDate, FA.Excluded, LT.LoanTypeName, L' +
      'D.HostID, LD.BookID'#13#10'ORDER BY LD.LoanID'
    DataSource = dtmMain.dtsEntID
    IndexFieldNames = 'EntityID'
    Parameters = <
      item
        Name = 'prClose'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'prCancel'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'prDecline'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EntityID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 56
    Top = 16
    object qryEntLoanLoanID: TIntegerField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object qryEntLoanEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object qryEntLoanEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object qryEntLoanLoanType: TStringField
      FieldName = 'LoanType'
      Size = 3
    end
    object qryEntLoanLoanPeriod: TSmallintField
      FieldName = 'LoanPeriod'
    end
    object qryEntLoanStrLoanPeriod: TStringField
      FieldKind = fkCalculated
      FieldName = 'StrLoanPeriod'
      Size = 30
      Calculated = True
    end
    object qryEntLoanAmtToFin: TBCDField
      FieldName = 'AmtToFin'
      currency = True
      Precision = 19
    end
    object qryEntLoanPayIns: TBCDField
      FieldName = 'PayIns'
      currency = True
      Precision = 10
    end
    object qryEntLoanIntRate: TBCDField
      FieldName = 'IntRate'
      Precision = 5
      Size = 2
    end
    object qryEntLoanTotInterest: TBCDField
      FieldName = 'TotInterest'
      currency = True
      Precision = 19
    end
    object qryEntLoanTotSecAmt: TBCDField
      FieldName = 'TotSecAmt'
      currency = True
      Precision = 19
    end
    object qryEntLoanStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object qryEntLoanFirstInsDate: TDateTimeField
      FieldName = 'FirstInsDate'
    end
    object qryEntLoanEndDate: TDateTimeField
      FieldName = 'EndDate'
    end
    object qryEntLoanAccBal: TBCDField
      FieldName = 'AccBal'
      currency = True
      Precision = 19
    end
    object qryEntLoanLoanBal: TBCDField
      FieldName = 'LoanBal'
      currency = True
      Precision = 19
    end
    object qryEntLoanAvlBal: TBCDField
      FieldName = 'AvlBal'
      currency = True
      Precision = 19
    end
    object qryEntLoanStatus: TSmallintField
      FieldName = 'Status'
    end
    object qryEntLoanUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object qryEntLoanArrearsAmt: TBCDField
      FieldName = 'ArrearsAmt'
      currency = True
      Precision = 10
    end
    object qryEntLoanNoOfPay: TSmallintField
      FieldName = 'NoOfPay'
    end
    object qryEntLoanLastDPay: TDateTimeField
      FieldName = 'LastDPay'
    end
    object qryEntLoanLastAmtPay: TBCDField
      FieldName = 'LastAmtPay'
      currency = True
      Precision = 10
    end
    object qryEntLoanExtendPrd: TSmallintField
      FieldName = 'ExtendPrd'
    end
    object qryEntLoanArrearsBucket: TBCDField
      FieldName = 'ArrearsBucket'
      Precision = 10
    end
    object qryEntLoanRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object qryEntLoanLoanCapital: TBCDField
      FieldName = 'LoanCapital'
      currency = True
      Precision = 19
    end
    object qryEntLoanLOID: TIntegerField
      FieldName = 'LOID'
    end
    object qryEntLoanFunderID: TIntegerField
      FieldName = 'FunderID'
    end
    object qryEntLoanLoanNo: TIntegerField
      FieldName = 'LoanNo'
      ReadOnly = True
    end
    object qryEntLoanRecord: TStringField
      FieldKind = fkCalculated
      FieldName = 'Record'
      Size = 10
      Calculated = True
    end
    object qryEntLoanArrearsSettle: TBCDField
      FieldName = 'ArrearsSettle'
      currency = True
      Precision = 19
    end
    object qryEntLoanCycleEndDay: TWordField
      FieldName = 'CycleEndDay'
    end
    object qryEntLoanNextDeduction: TDateTimeField
      FieldName = 'NextDeduction'
    end
    object qryEntLoanPaymentsReceived: TBCDField
      FieldName = 'PaymentsReceived'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryEntLoanInterestAccrued: TBCDField
      FieldName = 'InterestAccrued'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryEntLoanContractFees: TBCDField
      FieldName = 'ContractFees'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryEntLoanAddFeesLevied: TBCDField
      FieldName = 'AddFeesLevied'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryEntLoanLegalFeesLevied: TBCDField
      FieldName = 'LegalFeesLevied'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryEntLoanclPayments: TStringField
      FieldKind = fkCalculated
      FieldName = 'clPayments'
      Calculated = True
    end
    object qryEntLoanDelinquency: TIntegerField
      FieldName = 'Delinquency'
    end
    object qryEntLoanOpenDate: TDateTimeField
      FieldName = 'OpenDate'
    end
    object qryEntLoanRiskBand: TStringField
      FieldName = 'RiskBand'
    end
    object qryEntLoanCurrentRate: TBCDField
      FieldName = 'CurrentRate'
      ReadOnly = True
      Precision = 5
      Size = 2
    end
    object qryEntLoanOriginalRate: TBCDField
      FieldName = 'OriginalRate'
      Precision = 5
      Size = 2
    end
    object qryEntLoanStrRate: TStringField
      FieldKind = fkCalculated
      FieldName = 'StrRate'
      Size = 15
      Calculated = True
    end
    object qryEntLoanStrDelinquency: TStringField
      FieldKind = fkCalculated
      FieldName = 'StrDelinquency'
      Size = 3
      Calculated = True
    end
    object qryEntLoanLTAccT: TSmallintField
      FieldName = 'LTAccT'
    end
    object qryEntLoanFlag1: TStringField
      FieldKind = fkCalculated
      FieldName = 'Flag1'
      Size = 40
      Calculated = True
    end
    object qryEntLoanFlag2: TStringField
      FieldKind = fkCalculated
      FieldName = 'Flag2'
      Size = 40
      Calculated = True
    end
    object qryEntLoanFlagEnabled1: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'FlagEnabled1'
      Calculated = True
    end
    object qryEntLoanFlagEnabled2: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'FlagEnabled2'
      Calculated = True
    end
    object qryEntLoanDebtReviewFlag: TStringField
      FieldName = 'DebtReviewFlag'
      ReadOnly = True
      Size = 30
    end
    object qryEntLoanDebtReviewDate: TDateTimeField
      FieldName = 'DebtReviewDate'
      ReadOnly = True
    end
    object qryEntLoanDebtReviewEnabled: TBooleanField
      FieldName = 'DebtReviewEnabled'
    end
    object qryEntLoanAdminFlag: TStringField
      FieldName = 'AdminFlag'
      ReadOnly = True
      Size = 30
    end
    object qryEntLoanAdminDate: TDateTimeField
      FieldName = 'AdminDate'
      ReadOnly = True
    end
    object qryEntLoanAdminEnabled: TBooleanField
      FieldName = 'AdminEnabled'
    end
    object qryEntLoanDebtReviewApplicationDate: TDateTimeField
      FieldName = 'DebtReviewApplicationDate'
    end
    object qryEntLoanDebtReviewExcluded: TBooleanField
      FieldName = 'DebtReviewExcluded'
    end
    object qryEntLoanAdminApplicationDate: TDateTimeField
      FieldName = 'AdminApplicationDate'
    end
    object qryEntLoanAdminExcluded: TBooleanField
      FieldName = 'AdminExcluded'
    end
    object qryEntLoanLoanTypeName: TStringField
      FieldName = 'LoanTypeName'
    end
    object qryEntLoanLoanTypeDescription: TStringField
      FieldName = 'LoanTypeDescription'
      ReadOnly = True
      Size = 26
    end
    object qryEntLoanLastPaid: TStringField
      FieldKind = fkCalculated
      FieldName = 'LastPaid'
      Size = 30
      Calculated = True
    end
    object qryEntLoanHostID: TIntegerField
      FieldName = 'HostID'
    end
    object qryEntLoanBook: TStringField
      FieldName = 'Book'
      ReadOnly = True
      Size = 3
    end
  end
  object dtsEntLoan: TDataSource
    DataSet = qryEntLoan
    Left = 56
    Top = 32
  end
  object cdsAcc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LoanID'
    MasterFields = 'LoanID'
    MasterSource = dtsEntLoan
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspAcc'
    AfterOpen = cdsAccAfterOpen
    Left = 411
    Top = 383
    object cdsAccLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object cdsAccTransType: TSmallintField
      FieldName = 'TransType'
    end
    object cdsAccTransCode: TIntegerField
      FieldName = 'TransCode'
    end
    object cdsAccEffectDate: TDateTimeField
      DisplayLabel = 'Effect date'
      DisplayWidth = 10
      FieldName = 'EffectDate'
    end
    object cdsAccValueDate: TDateTimeField
      FieldName = 'ValueDate'
    end
    object cdsAccDebit: TBCDField
      DisplayWidth = 10
      FieldName = 'Debit'
      currency = True
      Precision = 19
    end
    object cdsAccCredit: TBCDField
      DisplayWidth = 10
      FieldName = 'Credit'
      currency = True
      Precision = 19
    end
    object cdsAccBal: TBCDField
      DisplayWidth = 10
      FieldName = 'Bal'
      currency = True
      Precision = 19
    end
    object cdsAccBatchNo: TStringField
      FieldName = 'BatchNo'
      Size = 10
    end
    object cdsAccUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object cdsAccRefNo: TStringField
      FieldName = 'RefNo'
      Size = 10
    end
    object cdsAccRefNo2: TStringField
      FieldName = 'RefNo2'
      Size = 10
    end
    object cdsAccTransDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'TransDesc'
      LookupDataSet = qryTransType
      LookupKeyFields = 'TransCode'
      LookupResultField = 'Description'
      KeyFields = 'TransCode'
      Size = 50
      Lookup = True
    end
  end
  object dtsAcc: TDataSource
    DataSet = cdsAcc
    Left = 411
    Top = 399
  end
  object dspAcc: TDataSetProvider
    DataSet = qryCA
    Constraints = False
    OnGetData = dspAccGetData
    Left = 536
    Top = 95
  end
  object qryTransType: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select TransCode, Description from Transsetup'#13#10'where AppID=100'
    Parameters = <>
    Left = 416
    Top = 95
  end
  object qryCA: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT LoanID, TransType, TransCode, ValueDate, EffectDate, '#13#10'Am' +
      'tPost AS Debit , AmtPost AS Credit, Amount AS Bal, BatchNo, User' +
      'ID, RefNo, RefNo2'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = :LoanID'#13#10 +
      'AND TransType NOT IN (4,7,8,9,10,13,14,19,20)'#13#10'ORDER BY EffectDa' +
      'te'
    DataSource = dtsEntLoan
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
    Left = 56
    Top = 95
  end
  object qryLA: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'DECLARE @LoanID INT = :LoanID'#13#10#13#10'SELECT '#13#10#9'LoanID, TransType, Tr' +
      'ansCode, ValueDate, EffectDate, '#13#10#9'AmtPost AS Debit , AmtPost AS' +
      ' Credit, Amount AS Bal, BatchNo, UserID, RefNo, RefNo2'#13#10'FROM lsB' +
      'atchHistory'#13#10'WHERE LoanID = @LoanID'#13#10#9'AND TransType NOT IN (3,5,' +
      '6,7,8,9,10,19,20)'#13#10'ORDER BY EffectDate'
    DataSource = dtsEntLoan
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
    Left = 176
    Top = 95
  end
  object qryDep: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select LoanID, TransType, TransCode, EffectDate, AmtPost as Debi' +
      't , AmtPost as   Credit, Amount as Bal, BatchNo, UserID, RefNo'#13#10 +
      'from lsBatchHistory'#13#10'where LoanID= :LoanID and TransType in (7,8' +
      ',9,10)'#13#10'order by EffectDate'
    DataSource = dtsEntLoan
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
    Left = 296
    Top = 95
  end
  object qryBulkState: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'lsGetBulkState;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 176
    Top = 160
  end
  object qryLT: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select LoanType, AccType, PrintMR from lsLoanTypes'#13#10'where LoanTy' +
      'pe= :LoanType'
    DataSource = dtsEntLoan
    IndexFieldNames = 'LoanType'
    MasterFields = 'LoanType'
    Parameters = <
      item
        Name = 'LoanType'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 408
    Top = 224
  end
  object qryPersonInd: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select TypeKey, GroupKey, Description '#13#10'from CodeTable'#13#10'where Gr' +
      'oupKey = 100103 and NotUse = 0 '
    Parameters = <>
    Left = 56
    Top = 232
  end
  object qryBulkAcc: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    CommandText = 
      'select LoanID, TransType, TransCode, EffectDate, AmtPost, BatchN' +
      'o, UserID, RefNo'#13#10'from lsBatchHistory'#13#10'where LoanID= :LoanID and' +
      ' TransType not in (4,7,8,9,10,13,14,19,20)'#13#10'order by EffectDate'
    DataSource = dtsBulkState
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 416
    Top = 160
    object qryBulkAccLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object qryBulkAccTransType: TSmallintField
      FieldName = 'TransType'
    end
    object qryBulkAccTransCode: TIntegerField
      FieldName = 'TransCode'
    end
    object qryBulkAccEffectDate: TDateTimeField
      FieldName = 'EffectDate'
    end
    object qryBulkAccAmtPost: TBCDField
      FieldName = 'AmtPost'
      Precision = 19
    end
    object qryBulkAccBatchNo: TStringField
      FieldName = 'BatchNo'
      FixedChar = True
      Size = 10
    end
    object qryBulkAccUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qryBulkAccRefNo: TStringField
      FieldName = 'RefNo'
      Size = 10
    end
    object qryBulkAccTransDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'TransDesc'
      LookupDataSet = qryTransType
      LookupKeyFields = 'TransCode'
      LookupResultField = 'Description'
      KeyFields = 'TransCode'
      Size = 25
      Lookup = True
    end
  end
  object qrySumBal: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select sum(AmtPost)'#13#10'from lsBatchHistory'#13#10'where LoanID= :LoanID ' +
      'and TransType not in (4,7,8,9,10,13,14,19,20)'#13#10'order by EffectDa' +
      'te'
    IndexFieldNames = 'LoanID'
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
    Left = 56
    Top = 160
  end
  object spLoanCons: TADOStoredProc
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'lsLoanConsView;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@EntID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 536
    Top = 376
    object spLoanConsStatus: TSmallintField
      FieldName = 'Status'
    end
    object spLoanConsLoanPrd: TIntegerField
      FieldName = 'LoanPrd'
    end
    object spLoanConsLoanCapital: TBCDField
      FieldName = 'LoanCapital'
      currency = True
      Precision = 19
    end
    object spLoanConsAmtToFin: TBCDField
      FieldName = 'AmtToFin'
      currency = True
      Precision = 19
    end
    object spLoanConsResidualAmt: TBCDField
      FieldName = 'ResidualAmt'
      currency = True
      Precision = 19
    end
    object spLoanConsMthIns: TBCDField
      FieldName = 'MthIns'
      currency = True
      Precision = 19
    end
    object spLoanConsPayIns: TBCDField
      FieldName = 'PayIns'
      currency = True
      Precision = 19
    end
    object spLoanConsTotInterest: TBCDField
      FieldName = 'TotInterest'
      currency = True
      Precision = 19
    end
    object spLoanConsCashDep: TBCDField
      FieldName = 'CashDep'
      currency = True
      Precision = 19
    end
    object spLoanConsTotSecAmt: TBCDField
      FieldName = 'TotSecAmt'
      currency = True
      Precision = 19
    end
    object spLoanConsAccBal: TBCDField
      FieldName = 'AccBal'
      currency = True
      Precision = 19
    end
    object spLoanConsLoanBal: TBCDField
      FieldName = 'LoanBal'
      currency = True
      Precision = 19
    end
    object spLoanConsAvLBal: TBCDField
      FieldName = 'AvLBal'
      currency = True
      Precision = 19
    end
    object spLoanConsDepositBal: TBCDField
      FieldName = 'DepositBal'
      currency = True
      Precision = 19
    end
    object spLoanConsArrearsAmt: TBCDField
      FieldName = 'ArrearsAmt'
      currency = True
      Precision = 19
    end
    object spLoanConsAmountDue: TBCDField
      FieldName = 'AmountDue'
      currency = True
      Precision = 19
    end
    object spLoanConsLastAmtPay: TBCDField
      FieldName = 'LastAmtPay'
      currency = True
      Precision = 19
    end
    object spLoanConsExtendPrd: TIntegerField
      FieldName = 'ExtendPrd'
    end
    object spLoanConsFeeToInsTot: TBCDField
      FieldName = 'FeeToInsTot'
      currency = True
      Precision = 19
    end
  end
  object dtsLoanCons: TDataSource
    DataSet = spLoanCons
    Left = 536
    Top = 392
  end
  object cdsBulkState: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspData'
    Left = 656
    Top = 296
  end
  object dspData: TDataSetProvider
    DataSet = qryBulkState
    Left = 296
    Top = 160
  end
  object dtsBulkState: TDataSource
    DataSet = cdsBulkState
    Left = 656
    Top = 308
  end
  object qryOpenBal: TADOQuery
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    Parameters = <>
    Left = 536
    Top = 160
  end
  object qryNetPay: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'select Sum(AmtPost)'#13#10'from lsBatchHistory'#13#10'where TransType in (11' +
      ',12)'#13#10'and LoanID = :LoanID'
    DataSource = dtsEntLoan
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 176
    Top = 232
  end
  object qryGetNotes: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select TheNote from notes where EntityID = :EntityID and NTActio' +
      'n = 1'
    DataSource = dtsAcc
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 656
    Top = 160
  end
  object qryClientLU: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'select distinct(ed.EntityID) as IdVal, ed.name, ed.name2--, ld.S' +
      'tatus, ld.PayIns, ld.EndDate, ld.AccBal'#13#10'from EntityData ed'#13#10'lef' +
      't join lsLoanDetail ld on ld.EntityID = ed.EntityID'#13#10'where ld.St' +
      'atus >= 30 and ld.Status not in (50,70)'#13#10'order by ed.Name'
    ParamCheck = False
    Parameters = <>
    Left = 56
    Top = 296
    object qryClientLUIdVal: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'EntityID'
      DisplayWidth = 8
      FieldName = 'IdVal'
    end
    object qryClientLUname: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 30
      FieldName = 'name'
      Size = 50
    end
    object qryClientLUname2: TStringField
      DisplayLabel = 'Surname'
      DisplayWidth = 30
      FieldName = 'name2'
      Size = 50
    end
  end
  object dtsClientLU: TDataSource
    DataSet = qryClientLU
    Left = 56
    Top = 308
  end
  object qryCalcCons: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'select ed.name, ed.name2, ld.loanID, ld.Status, ld.PayIns, ld.En' +
      'dDate, ld.AccBal, ed.EntityID, datediff(mm,getdate(),Enddate) as' +
      ' DateDif, FirstInsDate'#13#10'from EntityData ed'#13#10'left join lsLoanDeta' +
      'il ld on ld.EntityID = ed.EntityID'#13#10'where ed.EntityID = :EntID'#13#10 +
      'and ld.Status >= 30 and ld.Status not in (50,70)'
    Parameters = <
      item
        Name = 'EntID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 176
    Top = 296
    object qryCalcConsname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object qryCalcConsname2: TStringField
      FieldName = 'name2'
      Size = 50
    end
    object qryCalcConsloanID: TAutoIncField
      FieldName = 'loanID'
      ReadOnly = True
    end
    object qryCalcConsStatus: TSmallintField
      FieldName = 'Status'
    end
    object qryCalcConsPayIns: TBCDField
      FieldName = 'PayIns'
      Precision = 10
    end
    object qryCalcConsEndDate: TDateTimeField
      FieldName = 'EndDate'
    end
    object qryCalcConsAccBal: TBCDField
      FieldName = 'AccBal'
      Precision = 19
    end
    object qryCalcConsEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object qryCalcConsDateDif: TIntegerField
      FieldName = 'DateDif'
      ReadOnly = True
    end
    object qryCalcConsFirstInsDate: TDateTimeField
      FieldName = 'FirstInsDate'
    end
  end
  object dtsCalcCons: TDataSource
    DataSet = qryCalcCons
    Left = 176
    Top = 308
  end
  object qryClntPaid: TADODataSet
    Connection = dtmMain.dbData
    Filtered = True
    CommandText = 
      'select Sum(amtpost) as AmtPost'#13#10'from lsbatchhistory'#13#10'where trans' +
      'type in (11,12)'#13#10'and effectdate between :MBegin and :MEnd'#13#10'and l' +
      'oanid = :LID'#13#10
    Parameters = <
      item
        Name = 'MBegin'
        DataType = ftString
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'MEnd'
        DataType = ftString
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'LID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 296
    Top = 296
    object qryClntPaidAmtPost: TBCDField
      FieldName = 'AmtPost'
      ReadOnly = True
      Precision = 19
    end
  end
  object dtsClntPaid: TDataSource
    DataSet = qryClntPaid
    Left = 296
    Top = 308
  end
  object qryCalcMonths: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'select max(datediff(mm,getdate(), enddate)) as TotalMonths'#13#10'from' +
      ' lsloandetail'#13#10'where EntityID = :EntID'#13#10
    Parameters = <
      item
        Name = 'EntID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 536
    Top = 296
    object qryCalcMonthsTotalMonths: TIntegerField
      FieldName = 'TotalMonths'
      ReadOnly = True
    end
  end
  object dtsCalcMonths: TDataSource
    DataSet = qryCalcMonths
    Left = 536
    Top = 308
  end
  object qryContracts: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 296
    object qryContractsLoan1: TStringField
      FieldName = 'Loan1'
      Size = 60
    end
    object qryContractsLoan2: TStringField
      FieldName = 'Loan2'
      Size = 60
    end
    object qryContractsInsAmt: TCurrencyField
      FieldName = 'InsAmt'
    end
  end
  object dtsContracts: TDataSource
    DataSet = qryContracts
    Left = 416
    Top = 308
  end
  object qryLeastInsMonth: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'select min(FirstInsDate) as SmallestDate'#13#10'from lsloandetail'#13#10'whe' +
      're EntityID = :EntID'#13#10
    Parameters = <
      item
        Name = 'EntID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 296
    Top = 232
    object qryLeastInsMonthSmallestDate: TDateTimeField
      FieldName = 'SmallestDate'
      ReadOnly = True
    end
  end
  object qryStatusLoans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT COUNT(*)'#13#10'FROM lsLoanDetail'#13#10'WHERE Status = :prStatus'#13#10'an' +
      'd EntityID = :prEntityID'
    Parameters = <
      item
        Name = 'prStatus'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'prEntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 656
    Top = 95
  end
  object dsAgeRealTime: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = dsAgeRealTimeAfterOpen
    OnCalcFields = dsAgeRealTimeCalcFields
    CommandText = 'EXEC dbo.LNS_GetArrearsHistory :LoanID, :Date'
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
        Name = 'Date'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 57
    Top = 376
    object dsAgeRealTimeYMKey: TStringField
      FieldName = 'YMKey'
      Size = 7
    end
    object dsAgeRealTimeEffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object dsAgeRealTimeMonthEndDate: TDateTimeField
      FieldName = 'MonthEndDate'
    end
    object dsAgeRealTimeInstalmentDue: TBCDField
      FieldName = 'InstalmentDue'
      Precision = 19
    end
    object dsAgeRealTimeAmountPaid: TBCDField
      FieldName = 'AmountPaid'
      Precision = 19
    end
    object dsAgeRealTimeArrearsInterest: TBCDField
      FieldName = 'ArrearsInterest'
      currency = True
      Precision = 19
    end
    object dsAgeRealTimeTotalDue: TBCDField
      FieldName = 'TotalDue'
      Precision = 19
    end
    object dsAgeRealTimeDays0: TBCDField
      FieldName = 'Days0'
      Precision = 19
    end
    object dsAgeRealTimeDays1: TBCDField
      FieldName = 'Days1'
      Precision = 19
    end
    object dsAgeRealTimeDays2: TBCDField
      FieldName = 'Days2'
      Precision = 19
    end
    object dsAgeRealTimeDays3: TBCDField
      FieldName = 'Days3'
      Precision = 19
    end
    object dsAgeRealTimeDays4: TBCDField
      FieldName = 'Days4'
      Precision = 19
    end
    object dsAgeRealTimeDays5: TBCDField
      FieldName = 'Days5'
      Precision = 19
    end
    object dsAgeRealTimeDays6: TBCDField
      FieldName = 'Days6'
      Precision = 19
    end
    object dsAgeRealTimeDays7: TBCDField
      FieldName = 'Days7'
      Precision = 19
    end
    object dsAgeRealTimeDays8: TBCDField
      FieldName = 'Days8'
      Precision = 19
    end
    object dsAgeRealTimeDays9: TBCDField
      FieldName = 'Days9'
      Precision = 19
    end
    object dsAgeRealTimeDays10: TBCDField
      FieldName = 'Days10'
      Precision = 19
    end
    object dsAgeRealTimeDays11: TBCDField
      FieldName = 'Days11'
      Precision = 19
    end
    object dsAgeRealTimeDays12: TBCDField
      FieldName = 'Days12'
      Precision = 19
    end
    object dsAgeRealTimeDays210: TBCDField
      FieldKind = fkCalculated
      FieldName = 'Days210+'
      Calculated = True
    end
    object dsAgeRealTimeArrearsFeesActual: TBCDField
      FieldName = 'ArrearsFeesActual'
      currency = True
      Precision = 19
    end
    object dsAgeRealTimeArrearsFees: TBCDField
      FieldName = 'ArrearsFees'
      currency = True
      Precision = 19
    end
    object dsAgeRealTimeArrearsInterestActual: TBCDField
      FieldName = 'ArrearsInterestActual'
      currency = True
      Precision = 19
    end
    object dsAgeRealTimeInterestBucket: TBCDField
      FieldName = 'InterestBucket'
      currency = True
      Precision = 19
    end
    object dsAgeRealTimeFeeBucket: TBCDField
      FieldName = 'FeeBucket'
      currency = True
      Precision = 19
    end
    object dsAgeRealTimePayBucket: TBCDField
      DisplayWidth = 20
      FieldName = 'PayBucket'
      currency = True
      Precision = 19
    end
    object dsAgeRealTimeAdditionalFees: TBCDField
      FieldName = 'AdditionalFees'
      currency = True
      Precision = 19
    end
    object dsAgeRealTimeMonthStartDate: TDateTimeField
      FieldName = 'MonthStartDate'
    end
    object dsAgeRealTimeCD: TIntegerField
      FieldName = 'CD'
      ReadOnly = True
    end
    object dsAgeRealTimeCyclePeriod: TStringField
      FieldKind = fkCalculated
      FieldName = 'CyclePeriod'
      Size = 30
      Calculated = True
    end
    object dsAgeRealTimeInitialAmount0: TBCDField
      FieldName = 'InitialAmount0'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount1: TBCDField
      FieldName = 'InitialAmount1'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount2: TBCDField
      FieldName = 'InitialAmount2'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount3: TBCDField
      FieldName = 'InitialAmount3'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount4: TBCDField
      FieldName = 'InitialAmount4'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount5: TBCDField
      FieldName = 'InitialAmount5'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount6: TBCDField
      FieldName = 'InitialAmount6'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount7: TBCDField
      FieldName = 'InitialAmount7'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount8: TBCDField
      FieldName = 'InitialAmount8'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount9: TBCDField
      FieldName = 'InitialAmount9'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount10: TBCDField
      FieldName = 'InitialAmount10'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount11: TBCDField
      FieldName = 'InitialAmount11'
      Precision = 19
    end
    object dsAgeRealTimeInitialAmount12: TBCDField
      FieldName = 'InitialAmount12'
      Precision = 19
    end
  end
  object dtsAgeRealTime: TDataSource
    DataSet = dsAgeRealTime
    Left = 57
    Top = 392
  end
  object dsLoanSummary: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterScroll = dsLoanSummaryAfterScroll
    CommandText = 
      'DECLARE @EntityID INT'#13#10#13#10'SELECT @EntityID = :EntityID'#13#10#13#10'SELECT ' +
      'LD.LoanID, dbo.FGetLoanStatusName(LD.Status) AS LoanStatus, dbo.' +
      'FGetLoanStatusColor(Ld.Status) AS StatusColor,'#13#10' LD.RefNo AS Loa' +
      'nRef, LoanCapital, AmtToFin, TotInterest,'#13#10'Fee2 + ((Fee3 + Fee1 ' +
      '+ Fee7) * LoanPeriod) AS TotalFees, '#13#10'LoanCapital + TotInterest ' +
      '+ Fee2 + ((Fee3 + Fee1 + Fee7) * LoanPeriod) AS TotalLoan,'#13#10'CASE' +
      ' '#13#10'WHEN AccType IN (5,6) THEN PayIns * 4'#13#10'WHEN AccType IN (7,8) ' +
      'THEN PayIns * 2'#13#10'ELSE PayIns END AS Instalment,'#13#10'LoanPeriodM, CA' +
      'ST(IntRate AS VARCHAR(10)) + '#39'%'#39' AS IntRate, dbo.MonthDay(CycleE' +
      'ndDay) AS CycleEndDay, LD.LoanType, 0 AS OrderNo, StartDate'#13#10'FRO' +
      'M lsLoanDetail LD'#13#10'LEFT JOIN lsLoanTypes LT ON LD.LoanType = LT.' +
      'LoanType'#13#10'WHERE EntityID = @EntityID'#13#10'AND LD.Status >= 30'#13#10#13#10'UNI' +
      'ON'#13#10#13#10'SELECT 0, '#39#39', '#39#39', '#39#39', SUM(LoanCapital), SUM(AmtToFin), SUM' +
      '(TotInterest),'#13#10'SUM(Fee2 + ((Fee3 + Fee1 + Fee7) * LoanPeriod)),' +
      ' '#13#10'SUM(LoanCapital + TotInterest + Fee2 + ((Fee3 + Fee1 + Fee7) ' +
      '* LoanPeriod)),'#13#10'SUM('#13#10'CASE '#13#10'WHEN AccType IN (5,6) THEN PayIns ' +
      '* 4'#13#10'WHEN AccType IN (7,8) THEN PayIns * 2'#13#10'ELSE PayIns END),'#13#10'N' +
      'ULL, NULL, NULL, NULL, 1, 0'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN lsL' +
      'oanTypes LT ON LD.LoanType = LT.LoanType'#13#10'WHERE EntityID = @Enti' +
      'tyID'#13#10'AND LD.Status >= 30'#13#10#13#10'ORDER BY OrderNo, StartDate'
    Parameters = <
      item
        Name = 'EntityID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 532
    Top = 16
    object dsLoanSummaryLoanStatus: TStringField
      FieldName = 'LoanStatus'
      ReadOnly = True
    end
    object dsLoanSummaryStatusColor: TStringField
      FieldName = 'StatusColor'
      ReadOnly = True
    end
    object dsLoanSummaryLoanRef: TStringField
      FieldName = 'LoanRef'
      Size = 15
    end
    object dsLoanSummaryLoanCapital: TBCDField
      FieldName = 'LoanCapital'
      currency = True
      Precision = 19
    end
    object dsLoanSummaryAmtToFin: TBCDField
      FieldName = 'AmtToFin'
      currency = True
      Precision = 19
    end
    object dsLoanSummaryTotInterest: TBCDField
      FieldName = 'TotInterest'
      currency = True
      Precision = 19
    end
    object dsLoanSummaryTotalFees: TBCDField
      FieldName = 'TotalFees'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsLoanSummaryTotalLoan: TBCDField
      FieldName = 'TotalLoan'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsLoanSummaryInstalment: TBCDField
      FieldName = 'Instalment'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsLoanSummaryLoanPeriodM: TSmallintField
      FieldName = 'LoanPeriodM'
    end
    object dsLoanSummaryIntRate: TStringField
      FieldName = 'IntRate'
      ReadOnly = True
      Size = 11
    end
    object dsLoanSummaryCycleEndDay: TStringField
      FieldName = 'CycleEndDay'
      ReadOnly = True
      Size = 10
    end
    object dsLoanSummaryLoanType: TStringField
      FieldName = 'LoanType'
      Size = 3
    end
    object dsLoanSummaryOrderNo: TIntegerField
      FieldName = 'OrderNo'
      ReadOnly = True
    end
    object dsLoanSummaryStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object dsLoanSummaryLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
  end
  object dtsLoanSummary: TDataSource
    DataSet = dsLoanSummary
    Left = 532
    Top = 32
  end
  object dsAccountSummary: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterScroll = dsLoanSummaryAfterScroll
    CommandText = 
      'DECLARE @EntityID INT'#13#10#13#10'SELECT @EntityID = :EntityID'#13#10#13#10'SELECT ' +
      'LD.LoanID, dbo.FGetLoanStatusName(LD.Status) AS LoanStatus, dbo.' +
      'FGetLoanStatusColor(Ld.Status) AS StatusColor,'#13#10' LD.RefNo AS Loa' +
      'nRef,'#13#10'ISNULL((SELECT SUM(AmtPost)'#13#10'FROM lsBatchHistory'#13#10'WHERE L' +
      'oanID = LD.LoanID'#13#10'AND TransType IN (13,14)),0) AS Interest,'#13#10'IS' +
      'NULL((SELECT SUM(AmtPost)'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = L' +
      'D.LoanID'#13#10'AND TransType IN (17)),0) AS ContractFees,'#13#10'ISNULL((SE' +
      'LECT SUM(AmtPost)'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = LD.LoanID' +
      #13#10'AND TransType IN (28,29)),0) AS LegalFees,'#13#10'ISNULL((SELECT SUM' +
      '(AmtPost) * -1'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = LD.LoanID'#13#10'A' +
      'ND TransType IN (11,12)),0) AS Payments,'#13#10'ArrearsAmt, ISNULL(Tot' +
      'alDue,0) AS PaymentDue, LoanBal,'#13#10'ISNULL(Delinquency, 0) AS Deli' +
      'nquency, '#13#10'CASE '#13#10'WHEN LD.Status IN (30,60,65,68) THEN '#13#10#9'CASE W' +
      'HEN CONVERT(VARCHAR(8), GETDATE(),120) + CAST(CycleEndDay AS VAR' +
      'CHAR(2)) <= CONVERT(VARCHAR(10),GETDATE(),120) '#13#10#9#9'THEN DATEADD(' +
      'MONTH,1,CONVERT(VARCHAR(8), GETDATE(),120) + CAST(CycleEndDay AS' +
      ' VARCHAR(2))) '#13#10#9#9'ELSE CONVERT(VARCHAR(8), GETDATE(),120) + CAST' +
      '(dbo.MIN(CycleEndDay, dbo.DaysInMonth(GETDATE())) AS VARCHAR(2))' +
      ' END'#9#9#13#10'ELSE NULL END AS NextDueDate, 0 AS OrderNo, StartDate'#13#10'F' +
      'ROM lsLoanDetail LD'#13#10'LEFT JOIN lsLoanTypes LT ON LD.LoanType = L' +
      'T.LoanType'#13#10'LEFT JOIN lsArrearsAge AA ON LD.LoanID = AA.LoanID A' +
      'ND CurrentArrears = 1'#13#10'WHERE EntityID = @EntityID'#13#10'AND LD.Status' +
      ' >= 30'#13#10#13#10'UNION'#13#10#13#10'SELECT LoanID, LoanStatus, StatusColor, LoanR' +
      'ef,'#13#10'SUM(Interest), SUM(contractFees), SUM(LegalFees), SUM(Payme' +
      'nts),'#13#10'SUM(ArrearsAmt), SUM(PaymentDue), SUM(LoanBal), Delinquen' +
      'cy, NextDueDate, OrderNo, StartDate'#13#10'FROM'#13#10'('#13#10'SELECT 0 AS LoanID' +
      ', '#39#39' LoanStatus, '#39#39' AS StatusColor,'#39#39' AS LoanRef,'#13#10'ISNULL((SELEC' +
      'T SUM(AmtPost)'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = LD.LoanID'#13#10'A' +
      'ND TransType IN (13,14)),0) AS Interest,'#13#10'ISNULL((SELECT SUM(Amt' +
      'Post)'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = LD.LoanID'#13#10'AND TransT' +
      'ype IN (17)),0) AS ContractFees,'#13#10'ISNULL((SELECT SUM(AmtPost)'#13#10'F' +
      'ROM lsBatchHistory'#13#10'WHERE LoanID = LD.LoanID'#13#10'AND TransType IN (' +
      '28,29)),0) AS LegalFees,'#13#10'ISNULL((SELECT SUM(AmtPost) * -1'#13#10'FROM' +
      ' lsBatchHistory'#13#10'WHERE LoanID = LD.LoanID'#13#10'AND TransType IN (11,' +
      '12)),0) AS Payments,'#13#10'ArrearsAmt, ISNULL(TotalDue,0) AS PaymentD' +
      'ue, LoanBal,'#13#10'ISNULL(Delinquency, 0) AS Delinquency, NULL AS Nex' +
      'tDueDate, 1 AS OrderNo, NULL AS StartDate'#13#10'FROM lsLoanDetail LD'#13 +
      #10'LEFT JOIN lsLoanTypes LT ON LD.LoanType = LT.LoanType'#13#10'LEFT JOI' +
      'N lsArrearsAge AA ON LD.LoanID = AA.LoanID AND CurrentArrears = ' +
      '1'#13#10'WHERE EntityID = @EntityID'#13#10'AND LD.Status >= 30)aa'#13#10'GROUP BY ' +
      'LoanID, LoanStatus, StatusColor, LoanRef, Delinquency, NextDueDa' +
      'te, OrderNo, StartDate'#13#10'ORDER BY OrderNo, StartDate'
    Parameters = <
      item
        Name = 'EntityID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 656
    Top = 16
    object dsAccountSummaryLoanStatus: TStringField
      FieldName = 'LoanStatus'
      ReadOnly = True
    end
    object dsAccountSummaryStatusColor: TStringField
      FieldName = 'StatusColor'
      ReadOnly = True
    end
    object dsAccountSummaryLoanRef: TStringField
      FieldName = 'LoanRef'
      Size = 15
    end
    object dsAccountSummaryInterest: TBCDField
      FieldName = 'Interest'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsAccountSummaryContractFees: TBCDField
      FieldName = 'ContractFees'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsAccountSummaryLegalFees: TBCDField
      FieldName = 'LegalFees'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsAccountSummaryPayments: TBCDField
      FieldName = 'Payments'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsAccountSummaryArrearsAmt: TBCDField
      FieldName = 'ArrearsAmt'
      currency = True
      Precision = 10
    end
    object dsAccountSummaryPaymentDue: TBCDField
      FieldName = 'PaymentDue'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsAccountSummaryLoanBal: TBCDField
      FieldName = 'LoanBal'
      currency = True
      Precision = 19
    end
    object dsAccountSummaryDelinquency: TIntegerField
      FieldName = 'Delinquency'
      ReadOnly = True
    end
    object dsAccountSummaryNextDueDate: TDateTimeField
      FieldName = 'NextDueDate'
    end
    object dsAccountSummaryOrderNo: TIntegerField
      FieldName = 'OrderNo'
      ReadOnly = True
    end
    object dsAccountSummaryStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object dsAccountSummaryLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
  end
  object dtsAccountSummary: TDataSource
    DataSet = dsAccountSummary
    Left = 656
    Top = 32
  end
  object dsFeeSummary: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsFeeSummaryAfterOpen
    CommandText = 
      'DECLARE @CMD NVARCHAR(3000), @FeeID VARCHAR(3), @FeeName VARCHAR' +
      '(30)'#13#10#13#10'SELECT @CMD = '#13#10#9#39'SELECT '#39#39'Amount'#39#39' AS Description, Fee1' +
      ' AS @1, Fee2 AS @2, Fee3 AS @3, Fee4 AS @4, Fee5 AS @5, '#13#10#9'Fee6 ' +
      'AS @6, Fee7 AS @7, Fee1 + Fee2 + Fee3 + Fee4 + Fee5 + Fee6 + Fee' +
      '7 AS Total, 0 AS OrderNo'#13#10#9'FROM lsLoanDetail'#13#10#9'WHERE LoanID = @L' +
      'oanID'#13#10#9#13#10#9'UNION'#13#10#9#13#10#9'SELECT '#39#39'Levied'#39#39', Fee1, Fee2, Fee3, Fee4,' +
      ' Fee5, Fee6, Fee7, Fee1 + Fee2 + Fee3 + Fee4 + Fee5 + Fee6 + Fee' +
      '7 AS Total, 1'#13#10#9'FROM'#13#10#9#9'(SELECT'#13#10#9#9'ISNULL((SELECT SUM(AmtPost)'#13#10 +
      #9#9'FROM lsBatchHistory'#13#10#9#9'WHERE TransCode IN (1704)'#13#10#9#9'AND LoanID' +
      ' = LD.LoanID),0) AS Fee1,'#13#10#9#13#10#9#9'ISNULL((SELECT SUM(AmtPost)'#13#10#9#9'F' +
      'ROM lsBatchHistory'#13#10#9#9'WHERE TransCode IN (1508, 1608)'#13#10#9#9'AND Loa' +
      'nID = LD.LoanID),0) AS Fee2,'#13#10#9#13#10#9#9'ISNULL((SELECT SUM(AmtPost)'#13#10 +
      #9#9'FROM lsBatchHistory'#13#10#9#9'WHERE TransCode IN (1703)'#13#10#9#9'AND LoanID' +
      ' = LD.LoanID),0) AS Fee3,'#13#10#13#10#9#9'ISNULL((SELECT SUM(AmtPost)'#13#10#9#9'FR' +
      'OM lsBatchHistory'#13#10#9#9'WHERE TransCode IN (1505,1605) AND LoanID =' +
      ' LD.LoanID),0) AS Fee4,'#13#10#9#13#10#9#9'ISNULL((SELECT SUM(AmtPost)'#13#10#9#9'FRO' +
      'M lsBatchHistory'#13#10#9#9'WHERE TransCode IN (1506, 1606)'#13#10#9#9'AND LoanI' +
      'D = LD.LoanID),0) AS Fee5,'#13#10#13#10#9#9'0 AS Fee6,'#13#10#9#13#10#9#9'ISNULL((SELECT ' +
      'SUM(AmtPost)'#13#10#9#9'FROM lsBatchHistory'#13#10#9#9'WHERE TransCode IN (1705)' +
      #13#10#9#9'AND LoanID = LD.LoanID),0) AS Fee7'#13#10#9#9'FROM lsLoanDetail LD'#13#10 +
      #9#9'WHERE LoanID = @LoanID'#13#10#9')FE'#13#10#9'ORDER BY OrderNo'#39#13#10#13#10'DECLARE Fe' +
      'eNameCursor CURSOR FOR'#13#10#9'SELECT '#39'@'#39' + RIGHT(TypeKey,1), '#39'['#39' + De' +
      'scription + '#39']'#39#13#10#9'FROM CodeTable'#13#10#9'WHERE GroupKey = 100100'#13#10#13#10'OP' +
      'EN FeeNameCursor'#13#10#13#10'FETCH NEXT FROM FeeNameCursor'#13#10#9'INTO @FeeID,' +
      ' @FeeName'#13#10#13#10'WHILE @@FETCH_STATUS = 0'#13#10'BEGIN'#13#10#9'SELECT @CMD = REP' +
      'LACE(@CMD, @FeeID, @FeeName)'#13#10#13#10#9'FETCH NEXT FROM FeeNameCursor'#13#10 +
      #9#9'INTO @FeeID, @FeeName'#13#10'END'#13#10#13#10'CLOSE FeeNameCursor'#13#10'DEALLOCATE ' +
      'FeeNameCursor'#13#10#13#10'EXEC SP_executesql @CMD, N'#39'@LoanID INT'#39', @LoanI' +
      'D = :LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 656
    Top = 376
  end
  object dtsFeeSummary: TDataSource
    DataSet = dsFeeSummary
    Left = 656
    Top = 392
  end
  object dsCurrentRate: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT TOP 1 LoanID, EffectiveDate, InterestRate'#13#10'FROM lsLoanRat' +
      'e'#13#10'WHERE LoanID = :LoanID'#13#10'AND EffectiveDate <= GETDATE()'#13#10'ORDER' +
      ' BY EffectiveDate DESC'
    DataSource = dtsEntLoan
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
    Left = 175
    Top = 16
  end
  object dtsCurrentRate: TDataSource
    DataSet = dsCurrentRate
    Left = 175
    Top = 32
  end
  object ADODataSet1: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = dsAgeRealTimeAfterOpen
    OnCalcFields = dsAgeRealTimeCalcFields
    CommandText = 
      'DECLARE @LoanID INT, @AtDate DATETIME, @YMKey VARCHAR(6), @Effec' +
      'tiveDate DATETIME, @MonthStartDate DATETIME, @MonthEndDate DATET' +
      'IME, '#13#10#9'@InstalmentDue MONEY, @AmountPaid MONEY, @AdditionalFees' +
      ' MONEY, @LegalFees MONEY, @ContractFees MONEY,'#13#10#9'@ContractIntere' +
      'st MONEY, @Interest MONEY, @Fees MONEY, @ArrearsInterestActual M' +
      'ONEY, @ArrearsFeesActual MONEY, @ArrearsFees MONEY,'#13#10#9'@ArrearsIn' +
      'terest MONEY, @TotalDue MONEY, @I INT, @Bucket MONEY, @FeeBucket' +
      ' MONEY, '#13#10#9'@AgeNo INT, @Amount MONEY, @YMID INT, @CurrentDue MON' +
      'EY, @Expired BIT'#13#10#13#10'SELECT @LoanID = :LoanID, @AtDate = :Date'#13#10#13 +
      #10'--'#9'SELECT @LoanID = LoanID, @AtDate = GETDATE()'#13#10'--'#9'FROM lsLoan' +
      'Detail'#13#10'--'#9'WHERE RefNo = '#39'111832'#39#13#10#13#10#9'IF OBJECT_ID('#39'tempdb..#Arr' +
      'earsAge'#39') IS NOT NULL'#13#10#9#9'DROP TABLE #ArrearsAge'#13#10#13#10#9'IF OBJECT_ID' +
      '('#39'tempdb..#Age'#39') IS NOT NULL'#13#10#9#9'DROP TABLE #Age'#13#10#13#10#9'CREATE TABLE' +
      ' #ArrearsAge'#13#10#9#9'(YMKey VARCHAR(7),'#13#10#9#9'MonthStartDate DATETIME,'#13#10 +
      #9#9'MonthEndDate DATETIME,'#13#10#9#9'EffectiveDate DATETIME,'#13#10#9#9'Instalmen' +
      'tDue MONEY,'#13#10#9#9'AmountPaid MONEY,'#13#10#9#9'AdditionalFees MONEY,'#13#10#9#9'Leg' +
      'alFees MONEY,'#13#10#9#9'ArrearsFeesActual MONEY,'#13#10#9#9'ArrearsFees MONEY,'#13 +
      #10#9#9'ArrearsInterestActual MONEY,'#13#10#9#9'ArrearsInterest MONEY,'#13#10#9#9'Buc' +
      'ket MONEY,'#13#10#9#9'FeeBucket MONEY,'#13#10#9#9'TotalArrears MONEY,'#13#10#9#9'TotalDu' +
      'e MONEY)'#13#10#13#10#9#9'CREATE TABLE #Age'#13#10#9#9'(RecordID INT IDENTITY(1,1) P' +
      'RIMARY KEY,'#13#10#9#9'YMID INT,'#13#10#9#9'YMKey VARCHAR(6),'#13#10#9#9'AgeNo INT,'#13#10#9#9'A' +
      'mount MONEY,'#13#10#9#9'OriginalAmount MONEY)'#13#10#13#10'DECLARE @LoanCycles TAB' +
      'LE'#13#10#9'(LoanID INT,'#13#10#9'YearMonth INT,'#13#10#9'Expired BIT,'#13#10#9'InstalmentDu' +
      'e MONEY,'#13#10#9'MonthStartDate DATETIME,'#13#10#9'MonthEndDate DATETIME,'#13#10#9'C' +
      'ycleEndDay INT)'#13#10#13#10'INSERT INTO @LoanCycles (LoanID, YearMonth, E' +
      'xpired, InstalmentDue, MonthEndDate, CycleEndDay)'#13#10'SELECT LC.Loa' +
      'nID, LC.YearMonth, Expired, Amount, '#13#10#9'LEFT(YearMonth,4) + '#39'-'#39' +' +
      ' RIGHT(YearMonth,2) + '#39'-'#39' + CAST(dbo.MIN(ISNULL(CycleEndDay,31),' +
      #13#10#9'dbo.DaysInMonth(LEFT(YearMonth,4) + '#39'-'#39' + RIGHT(YearMonth,2) ' +
      '+ '#39'-01'#39')) AS VARCHAR(2)) AS MonthEndDate, CycleEndDay'#13#10#9'--DATEAD' +
      'D(MONTH, 1, CONVERT(VARCHAR(8), YearMonth, 120) + '#39'-01'#39') - 1 AS ' +
      'MonthEndDate'#13#10'FROM '#13#10#9'(SELECT LoanID, CONVERT(VARCHAR(6), MIN(Tr' +
      'ansactionDate), 112) AS YearMonth, 0 AS Amount, 0 AS Expired'#13#10#9'F' +
      'ROM lsLoanContract'#13#10#9'WHERE LoanID = @LoanID'#13#10#9'GROUP BY LoanID'#13#10#9 +
      #13#10#9'UNION'#13#10#9#13#10#9'SELECT LoanID, CONVERT(VARCHAR(6), TransactionDate' +
      ', 112), ROUND(SUM(Amount), 2) * -1, 0'#13#10#9'FROM lsLoanContract'#13#10#9'WH' +
      'ERE LoanID = @LoanID'#13#10#9'AND TransactionType = '#39'P'#39#13#10#9'GROUP BY Loan' +
      'ID, CONVERT(VARCHAR(6), TransactionDate, 112)'#13#10#13#10#9'UNION'#13#10#13#10#9'SELE' +
      'CT @LoanID, CONVERT(VARCHAR(6), MonthEndDate, 112), 0, 1'#13#10#9'FROM ' +
      'lsMonthEnd ME'#13#10#9'WHERE MonthEndDate >'#13#10#9#9'(SELECT MAX(TransactionD' +
      'ate)'#13#10#9#9'FROM lsLoanContract'#13#10#9#9'WHERE LoanID = @LoanID)'#13#10#9')LC'#13#10'LE' +
      'FT JOIN lsLoanDetail LD ON LC.LoanID = LD.LoanID'#13#10#13#10'UPDATE @Loan' +
      'Cycles SET MonthStartDate = DATEADD(MONTH, -1, MonthEndDate + 1)' +
      ' --DATEADD(MONTH, -1, MonthEndDate) + 1'#13#10#13#10'UPDATE LC SET MonthSt' +
      'artDate ='#13#10'CASE '#13#10'WHEN CycleEndDay < 31 AND DATEPART(DAY, MonthS' +
      'tartDate) = 1 THEN MonthStartDate - (dbo.DaysInMonth(DATEADD(MON' +
      'TH, -1, MonthEndDate)) - CycleEndDay)'#13#10'WHEN CycleEndDay >= DATEP' +
      'ART(DAY, MonthStartDate) AND DATEPART(MONTH, MonthStartDate) < D' +
      'ATEPART(MONTH, MonthEndDate) THEN MonthStartDate + 1'#13#10'ELSE Month' +
      'StartDate END'#13#10'FROM @LoanCycles LC'#13#10#13#10#9#9'DECLARE AgeCursor CURSOR' +
      ' FOR'#13#10#9#9'SELECT YearMonth, MonthStartDate, MonthEndDate, dbo.dMIN' +
      '(@AtDate,MonthEndDate), Expired,'#13#10#9#9'--CASE WHEN MonthEndDate < @' +
      'AtDate THEN DATEADD(DAY,0,MonthEndDate) ELSE @AtDate END AS Mont' +
      'hEndDate, '#13#10#9#9'SUM(InstalmentDue) AS InstalmentDue,'#13#10#9#9#9'ISNULL((S' +
      'ELECT SUM(AmtPost) * -1'#13#10#9#9#9'FROM lsBatchHistory BH'#13#10#9#9#9'WHERE Loa' +
      'nID = LC.LoanID'#13#10#9#9#9'AND EffectDate BETWEEN MonthStartDate AND db' +
      'o.dMIN(@AtDate,MonthEndDate)'#13#10#9#9#9'AND TransType IN (11,12)), 0) A' +
      'S Paid,'#13#10#13#10#9#9#9'ISNULL((SELECT SUM(AmtPost)'#13#10#9#9#9'FROM lsBatchHistor' +
      'y BH'#13#10#9#9#9'WHERE LoanID = LC.LoanID'#13#10#9#9#9'AND EffectDate BETWEEN Mon' +
      'thStartDate AND dbo.dMIN(@AtDate,MonthEndDate)'#13#10#9#9#9'AND TransType' +
      ' IN (1,2)), 0) AS AdditionalFees,'#13#10#13#10#9#9#9'ISNULL((SELECT SUM(AmtPo' +
      'st)'#13#10#9#9#9'FROM lsBatchHistory BH'#13#10#9#9#9'WHERE LoanID = LC.LoanID'#13#10#9#9#9 +
      'AND EffectDate BETWEEN MonthStartDate AND dbo.dMIN(@AtDate,Month' +
      'EndDate)'#13#10#9#9#9'AND TransType IN (17,18)), 0) AS Fees,'#13#10#13#10#9#9#9'ISNULL' +
      '((SELECT SUM(Amount)'#13#10#9#9#9'FROM lsLoanContract'#13#10#9#9#9'WHERE LoanID = ' +
      'LC.LoanID'#13#10#9#9#9'AND SUBSTRING(TransactionType, 1, 1) = '#39'F'#39#13#10#9#9#9'AND' +
      ' TransactionType NOT IN ('#39'FO'#39', '#39'FV'#39')--, '#39'FFA'#39', '#39'FFM'#39')'#13#10#9#9#9'AND Tr' +
      'ansactionDate BETWEEN MonthStartDate AND dbo.dMIN(@AtDate,MonthE' +
      'ndDate)),0) AS ContractFees,'#13#10#13#10#9#9#9'ISNULL((SELECT SUM(AmtPost)'#13#10 +
      #9#9#9'FROM lsBatchHistory BH'#13#10#9#9#9'WHERE LoanID = LC.LoanID'#13#10#9#9#9'AND E' +
      'ffectDate BETWEEN MonthStartDate AND dbo.dMIN(@AtDate,MonthEndDa' +
      'te)'#13#10#9#9#9'AND TransType IN (29,28)),0) AS LegalFees,'#13#10#13#10#9#9#9'ISNULL(' +
      '(SELECT SUM(AmtPost)'#13#10#9#9#9'FROM lsBatchHistory BH'#13#10#9#9#9'WHERE LoanID' +
      ' = LC.LoanID'#13#10#9#9#9'AND EffectDate BETWEEN MonthStartDate AND dbo.d' +
      'MIN(@AtDate,MonthEndDate)'#13#10#9#9#9'AND TransType IN (14,13)),0) AS In' +
      'terest,'#13#10#13#10#9#9#9'ISNULL((SELECT SUM(Amount)'#13#10#9#9#9'FROM lsLoanContract' +
      #13#10#9#9#9'WHERE LoanID = LC.LoanID'#13#10#9#9#9'AND TransactionType = '#39'I'#39#13#10#9#9#9 +
      'AND TransactionDate BETWEEN MonthStartDate AND dbo.dMIN(@AtDate,' +
      'MonthEndDate)),0) AS ContractInterest'#9#13#10#9#9#13#10#9#9'FROM @LoanCycles L' +
      'C'#13#10#9#9'--LEFT JOIN lsLoanDetail LD ON LC.LoanID = LD.LoanID'#13#10#9#9'--W' +
      'HERE LD.Status IN (30,60,65,68)'#13#10#9#9'WHERE MonthStartDate <= @AtDa' +
      'te'#13#10#9#9'GROUP BY YearMonth, MonthStartDate, MonthEndDate, dbo.dMIN' +
      '(@AtDate,MonthEndDate), Expired, LoanID'#13#10#9#9'ORDER BY YearMonth'#9#9#13 +
      #10#13#10#9'OPEN AgeCursor'#13#10#13#10#9'FETCH NEXT FROM AgeCursor INTO'#13#10#9#9'@YMKey,' +
      ' @MonthEndDate, @MonthStartDate, @EffectiveDate, @Expired, '#13#10#9#9'@' +
      'InstalmentDue, @AmountPaid, @AdditionalFees, @Fees, @ContractFee' +
      's, @LegalFees, @Interest, @ContractInterest'#13#10#13#10#9'SELECT @TotalDue' +
      ' = 0, @YMID = 0, @Bucket = 0, @FeeBucket = 0'#13#10#13#10#9'WHILE @@FETCH_S' +
      'TATUS = 0'#13#10#9'BEGIN'#13#10#9#9'SELECT @AdditionalFees = @AdditionalFees + ' +
      '@LegalFees'#9#13#10#13#10#9#9'SELECT @ArrearsInterest = @Interest - @Contract' +
      'Interest'#13#10#9#9'SELECT @ArrearsInterestActual = @ArrearsInterest'#13#10#13#10 +
      #9#9'SELECT @ArrearsFees = @Fees - @ContractFees'#13#10#9#9'SELECT @Arrears' +
      'FeesActual = @ArrearsFees'#13#10#13#10#9#9'if @ArrearsInterest < 0'#13#10#9#9#9'SELEC' +
      'T @Bucket = @Bucket + @ArrearsInterest, @ArrearsInterest = 0'#13#10#13#10 +
      #9#9'IF @ArrearsFees < 0'#13#10#9#9#9'SELECT @FeeBucket = @FeeBucket + @Arre' +
      'arsFees, @ArrearsFees = 0'#13#10#13#10#13#10#9#9'IF @Bucket < 0 AND @ArrearsInte' +
      'rest > 0'#13#10#9#9'BEGIN'#13#10#9#9#9'SELECT @ArrearsInterest = dbo.mMAX(@Arrear' +
      'sInterest + @Bucket, 0)'#13#10#9#9#9'SELECT @Bucket = dbo.mMIN(@Bucket + ' +
      '(@Interest - @ContractInterest), 0)'#13#10#9#9'END'#13#10#13#10#9#9'IF @FeeBucket < ' +
      '0 AND @ArrearsFees > 0'#13#10#9#9'BEGIN'#13#10#9#9#9'SELECT @ArrearsFees = dbo.mM' +
      'AX(@ArrearsFees + @FeeBucket, 0)'#13#10#9#9#9'SELECT @FeeBucket = dbo.mMI' +
      'N(@FeeBucket + (@Fees - @ContractFees), 0)'#13#10#9#9'END'#13#10#13#10#9#9'IF @Arrea' +
      'rsInterest > 0'#13#10#9#9#9'SET @ArrearsInterest = dbo.mMAX(@ArrearsInter' +
      'est + @Bucket, 0)'#13#10#13#10#9#9'IF @ArrearsFees > 0'#13#10#9#9#9'SET @ArrearsFees ' +
      '= dbo.mMAX(@ArrearsFees + @FeeBucket, 0)'#13#10#13#10#9#9'--SELECT @ArrearsI' +
      'nterest, @TotalArrearsInterest'#13#10#13#10#9#9'--SELECT @CurrentDue = @Inst' +
      'almentDue + @AdditionalFees + @LegalFees + @ArrearsInterest + db' +
      'o.mMIN(0, @Interest - @ContractInterest), @YMID = @YMID + 1'#13#10#9#9'S' +
      'ELECT @CurrentDue = @InstalmentDue + @ArrearsFees + @ArrearsInte' +
      'rest + @AdditionalFees, @YMID = @YMID + 1'#13#10#13#10#9#9'SET @I = 0'#13#10#13#10#9#9'W' +
      'HILE @I <= 12'#13#10#9#9'BEGIN'#13#10#9#9#9'INSERT INTO #Age VALUES (@YMID, @YMKe' +
      'y, @I, 0, 0)'#13#10#13#10#9#9#9'SET @I = @I + 1 '#13#10#9#9'END'#13#10#13#10#9#9'UPDATE A1 SET Am' +
      'ount = ISNULL(A2.Amount,0), OriginalAmount = ISNULL(A2.OriginalA' +
      'mount,0)'#13#10#9#9'FROM #Age A1'#13#10#9#9'LEFT JOIN #Age A2 ON A1.YMID - 1 = A' +
      '2.YMID AND A1.AgeNo - '#13#10#9#9#9'CASE WHEN @MonthEndDate <= @AtDate TH' +
      'EN 1 ELSE 0 END = A2.AgeNo'#13#10#9#9'WHERE A1.YMKey = @YMKey'#13#10#13#10#9#9'IF @M' +
      'onthEndDate <= @AtDate'#13#10#9#9#9'UPDATE #Age SET Amount = @CurrentDue,' +
      ' OriginalAmount = @CurrentDue'#13#10#9#9#9'WHERE YMKey = @YMKey '#13#10#9#9#9'AND ' +
      'AgeNo = 0'#13#10#13#10#9#9'SELECT @TotalDue =  @TotalDue + @CurrentDue - @Am' +
      'ountPaid'#13#10#13#10#9#9'INSERT INTO #ArrearsAge (YMKey, EffectiveDate, Mon' +
      'thEndDate, MonthStartDate, InstalmentDue, AmountPaid, Additional' +
      'Fees,'#13#10#9#9#9'ArrearsFees, LegalFees, ArrearsFeesActual, ArrearsInte' +
      'restActual, ArrearsInterest, Bucket, FeeBucket, TotalDue)'#13#10#9#9'SEL' +
      'ECT @YMKey, @EffectiveDate, @MonthStartDate, @MonthEndDate, @Ins' +
      'talmentDue, @AmountPaid, '#13#10#9#9#9'--@AdditionalFees + CASE WHEN @Exp' +
      'ired = 1 THEN @ContractFees ELSE 0 END, '#13#10#9#9#9'@AdditionalFees, @A' +
      'rrearsFees,'#13#10#9#9#9'@LegalFees, @ArrearsFeesActual, @ArrearsInterest' +
      'Actual, '#13#10#9#9#9'@ArrearsInterest, @Bucket, @FeeBucket, @TotalDue'#13#10#9 +
      #9#13#10#9#9'--SET @AmountPaid = @AmountPaid - @Bucket'#13#10#9#9#13#10#9#9'IF @Amount' +
      'Paid > 0'#13#10#9#9'BEGIN'#13#10#9#9#9'DECLARE ArrearsCursor CURSOR FOR'#13#10#9#9#9#9'SELE' +
      'CT AgeNo, Amount'#13#10#9#9#9#9'FROM #Age'#13#10#9#9#9#9'WHERE YMKey = @YMKey'#13#10#9#9#9#9'A' +
      'ND Amount > 0'#13#10#9#9#9#9'ORDER BY AgeNo DESC'#13#10#13#10#9#9#9'OPEN ArrearsCursor'#13 +
      #10#13#10#9#9#9'FETCH NEXT FROM ArrearsCursor'#13#10#9#9#9#9'INTO @AgeNo, @Amount'#13#10#13 +
      #10#9#9#9'WHILE @@FETCH_STATUS = 0'#13#10#9#9#9'BEGIN'#13#10#9#9#9#9'IF @AmountPaid > 0'#13#10 +
      #9#9#9#9#9'UPDATE #Age SET Amount = dbo.mMAX(@Amount - @AmountPaid, 0)' +
      #13#10#9#9#9#9#9#9'WHERE YMKey = @YMKey AND AgeNo = @AgeNo'#13#10#13#10#9#9#9#9'SET @Amou' +
      'ntPaid = @AmountPaid - @Amount'#13#10#13#10#9#9#9#9'FETCH NEXT FROM ArrearsCur' +
      'sor'#13#10#9#9#9#9#9'INTO @AgeNo, @Amount'#13#10#9#9#9'END'#13#10#13#10#9#9#9'CLOSE ArrearsCursor' +
      #13#10#9#9#9'DEALLOCATE ArrearsCursor'#13#10#13#10#9#9#9'--SET @Bucket = @Bucket + db' +
      'o.mMIN(0, @Interest - @ContractInterest)'#13#10#13#10#9#9#9'--SET @Bucket = d' +
      'bo.mMAX(@AmountPaid,0) * -1'#13#10#9#9#9#13#10#9#9#9'--UPDATE #ArrearsAge SET Bu' +
      'cket = @Bucket'#13#10#9#9#9'--'#9'WHERE YMKey = @YMKey'#13#10#9#9'END'#13#10#9#9'ELSE IF @Am' +
      'ountPaid < 0'#13#10#9#9#9'UPDATE #Age SET Amount = Amount - @AmountPaid'#13#10 +
      #9#9#9'WHERE RecordID = '#13#10#9#9#9#9'(SELECT MAX(RecordID) '#13#10#9#9#9#9'FROM #Age ' +
      #13#10#9#9#9#9'WHERE Amount > 0'#13#10#9#9#9#9'AND YMKey = @YMKey)'#13#10#9#9#13#10#13#10#9#9'FETCH N' +
      'EXT FROM AgeCursor INTO'#13#10#9#9#9'@YMKey, @MonthEndDate, @MonthStartDa' +
      'te, @EffectiveDate, @Expired,'#13#10#9#9#9'@InstalmentDue, @AmountPaid, @' +
      'AdditionalFees, @Fees, @ContractFees, @LegalFees, @Interest, @Co' +
      'ntractInterest'#13#10#9'END'#9#13#10#13#10#9'CLOSE AgeCursor'#13#10#9'DEALLOCATE AgeCursor' +
      #13#10#13#10'SELECT AA.YMKey, EffectiveDate, MonthStartDate, MonthEndDate' +
      ', InstalmentDue, AmountPaid,'#13#10'AdditionalFees, ArrearsFeesActual,' +
      ' ArrearsFees, ArrearsInterestActual, '#13#10'ArrearsInterest,  TotalDu' +
      'e, --dbo.mMIN(0, TotalArrearsInterest) AS Bucket, '#13#10'Bucket AS In' +
      'terestBucket, FeeBucket,'#13#10'CASE'#13#10'WHEN A12.Amount > 0 AND A12.Orig' +
      'inalAmount > 0 AND (A12.Amount/ISNULL(NULLIF(A12.OriginalAmount,' +
      ' 0), 1) * 100 > 30) THEN 12'#13#10'WHEN A11.Amount > 0 AND A11.Origina' +
      'lAmount > 0 AND (A11.Amount/ISNULL(NULLIF(A11.OriginalAmount, 0)' +
      ', 1) * 100 > 30) THEN 11'#13#10'WHEN A10.Amount > 0 AND A10.OriginalAm' +
      'ount > 0 AND (A10.Amount/ISNULL(NULLIF(A10.OriginalAmount, 0), 1' +
      ') * 100 > 30) THEN 10'#13#10'WHEN A9.Amount > 0 AND A9.OriginalAmount ' +
      '> 0 AND (A9.Amount/ISNULL(NULLIF(A9.OriginalAmount, 0), 1) * 100' +
      ' > 30) THEN 9'#13#10'WHEN A8.Amount > 0 AND A8.OriginalAmount > 0 AND ' +
      '(A8.Amount/ISNULL(NULLIF(A8.OriginalAmount, 0), 1) * 100 > 30) T' +
      'HEN 8'#13#10'WHEN A7.Amount > 0 AND A7.OriginalAmount > 0 AND (A7.Amou' +
      'nt/ISNULL(NULLIF(A7.OriginalAmount, 0), 1) * 100 > 30) THEN 7'#13#10'W' +
      'HEN A6.Amount > 0 AND A6.OriginalAmount > 0 AND (A6.Amount/ISNUL' +
      'L(NULLIF(A6.OriginalAmount, 0), 1) * 100 > 30) THEN 6'#13#10'WHEN A5.A' +
      'mount > 0 AND A5.OriginalAmount > 0 AND (A5.Amount/ISNULL(NULLIF' +
      '(A5.OriginalAmount, 0), 1) * 100 > 30) THEN 5'#13#10'WHEN A4.Amount > ' +
      '0 AND A4.OriginalAmount > 0 AND (A4.Amount/ISNULL(NULLIF(A4.Orig' +
      'inalAmount, 0), 1) * 100 > 30) THEN 4'#13#10'WHEN A3.Amount > 0 AND A3' +
      '.OriginalAmount > 0 AND (A3.Amount/ISNULL(NULLIF(A3.OriginalAmou' +
      'nt, 0), 1) * 100 > 30) THEN 3'#13#10'WHEN A2.Amount > 0 AND A2.Origina' +
      'lAmount > 0 AND (A2.Amount/ISNULL(NULLIF(A2.OriginalAmount, 0), ' +
      '1) * 100 > 30) THEN 2'#13#10'WHEN A1.Amount > 0 AND A1.OriginalAmount ' +
      '> 0 AND (A1.Amount/ISNULL(NULLIF(A1.OriginalAmount, 0), 1) * 100' +
      ' > 30) THEN 1'#13#10'WHEN A0.Amount > 0 AND A0.OriginalAmount > 0 AND ' +
      '(A0.Amount/ISNULL(NULLIF(A0.OriginalAmount, 0), 1) * 100 > 30) T' +
      'HEN 0'#13#10'--WHEN A7.Amount > 0 AND A7.OriginalAmount > 0 THEN A7.Or' +
      'iginalAmount '#13#10'ELSE 0 END AS CD,'#13#10'A0.Amount AS Days0, A1.Amount ' +
      'AS Days1, A2.Amount AS Days2,'#13#10'A3.Amount AS Days3, A4.Amount AS ' +
      'Days4, A5.Amount AS Days5, '#13#10'A6.Amount AS Days6, A7.Amount AS Da' +
      'ys7,'#13#10'A8.Amount AS Days8, A9.Amount AS Days9, A10.Amount AS Days' +
      '10, '#13#10'A11.Amount AS Days11, A12.Amount AS Days12'#13#10'FROM #ArrearsA' +
      'ge AA'#13#10'LEFT JOIN #Age A0 ON AA.YMKey = A0.YMKey AND A0.AgeNo = 0' +
      #13#10'LEFT JOIN #Age A1 ON AA.YMKey = A1.YMKey AND A1.AgeNo = 1'#13#10'LEF' +
      'T JOIN #Age A2 ON AA.YMKey = A2.YMKey AND A2.AgeNo = 2'#13#10'LEFT JOI' +
      'N #Age A3 ON AA.YMKey = A3.YMKey AND A3.AgeNo = 3'#13#10'LEFT JOIN #Ag' +
      'e A4 ON AA.YMKey = A4.YMKey AND A4.AgeNo = 4'#13#10'LEFT JOIN #Age A5 ' +
      'ON AA.YMKey = A5.YMKey AND A5.AgeNo = 5'#13#10'LEFT JOIN #Age A6 ON AA' +
      '.YMKey = A6.YMKey AND A6.AgeNo = 6'#13#10'LEFT JOIN #Age A7 ON AA.YMKe' +
      'y = A7.YMKey AND A7.AgeNo = 7'#13#10'LEFT JOIN #Age A8 ON AA.YMKey = A' +
      '8.YMKey AND A8.AgeNo = 8'#13#10'LEFT JOIN #Age A9 ON AA.YMKey = A9.YMK' +
      'ey AND A9.AgeNo = 9'#13#10'LEFT JOIN #Age A10 ON AA.YMKey = A10.YMKey ' +
      'AND A10.AgeNo = 10'#13#10'LEFT JOIN #Age A11 ON AA.YMKey = A11.YMKey A' +
      'ND A11.AgeNo = 11'#13#10'LEFT JOIN #Age A12 ON AA.YMKey = A12.YMKey AN' +
      'D A12.AgeNo = 12'#13#10'ORDER BY AA.YMKey'#13#10#13#10'DROP TABLE #ArrearsAge'#13#10'D' +
      'ROP TABLE #Age'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Date'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    Left = 657
    Top = 232
    object StringField1: TStringField
      FieldName = 'YMKey'
      Size = 7
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'MonthEndDate'
    end
    object BCDField1: TBCDField
      FieldName = 'InstalmentDue'
      Precision = 19
    end
    object BCDField2: TBCDField
      FieldName = 'AmountPaid'
      Precision = 19
    end
    object BCDField3: TBCDField
      FieldName = 'ArrearsInterest'
      currency = True
      Precision = 19
    end
    object BCDField4: TBCDField
      FieldName = 'TotalDue'
      Precision = 19
    end
    object BCDField5: TBCDField
      FieldName = 'Days0'
      Precision = 19
    end
    object BCDField6: TBCDField
      FieldName = 'Days1'
      Precision = 19
    end
    object BCDField7: TBCDField
      FieldName = 'Days2'
      Precision = 19
    end
    object BCDField8: TBCDField
      FieldName = 'Days3'
      Precision = 19
    end
    object BCDField9: TBCDField
      FieldName = 'Days4'
      Precision = 19
    end
    object BCDField10: TBCDField
      FieldName = 'Days5'
      Precision = 19
    end
    object BCDField11: TBCDField
      FieldName = 'Days6'
      Precision = 19
    end
    object BCDField12: TBCDField
      FieldName = 'Days7'
      Precision = 19
    end
    object BCDField13: TBCDField
      FieldName = 'Days8'
      Precision = 19
    end
    object BCDField14: TBCDField
      FieldName = 'Days9'
      Precision = 19
    end
    object BCDField15: TBCDField
      FieldName = 'Days10'
      Precision = 19
    end
    object BCDField16: TBCDField
      FieldName = 'Days11'
      Precision = 19
    end
    object BCDField17: TBCDField
      FieldName = 'Days12'
      Precision = 19
    end
    object BCDField18: TBCDField
      FieldKind = fkCalculated
      FieldName = 'Days210+'
      Calculated = True
    end
    object BCDField19: TBCDField
      FieldName = 'ArrearsFeesActual'
      currency = True
      Precision = 19
    end
    object BCDField20: TBCDField
      FieldName = 'ArrearsFees'
      currency = True
      Precision = 19
    end
    object BCDField21: TBCDField
      FieldName = 'ArrearsInterestActual'
      currency = True
      Precision = 19
    end
    object BCDField22: TBCDField
      FieldName = 'InterestBucket'
      currency = True
      Precision = 19
    end
    object BCDField23: TBCDField
      FieldName = 'FeeBucket'
      currency = True
      Precision = 19
    end
    object BCDField24: TBCDField
      FieldName = 'AdditionalFees'
      currency = True
      Precision = 19
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'MonthStartDate'
    end
    object IntegerField1: TIntegerField
      FieldName = 'CD'
      ReadOnly = True
    end
    object StringField2: TStringField
      FieldKind = fkCalculated
      FieldName = 'CyclePeriod'
      Size = 30
      Calculated = True
    end
  end
  object dsAgeMonthEnd: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsAgeRealTimeAfterOpen
    OnCalcFields = dsAgeMonthEndCalcFields
    CommandText = 
      'SELECT AH.CycleKey, AH.EffectiveDate, AH.PeriodStartDate, AH.Per' +
      'iodEndDate, AH.InstalmentDue, AH.AmountPaid,'#13#10'AH.AdditionalFees,' +
      ' AH.ArrearsFeesActual, AH.ArrearsFees, AH.ArrearsInterestActual,' +
      ' AH.ArrearsInterest,'#13#10'AH.TotalDue, AH.InterestBucket, AH.FeeBuck' +
      'et, AH.PayBucket,'#13#10'AH.Cycle0, AH.Cycle1, AH.Cycle2, AH.Cycle3, A' +
      'H.Cycle4, AH.Cycle5, AH.Cycle6, AH.Cycle7, AH.Cycle8, AH.Cycle9,' +
      ' '#13#10'AH.Cycle10, AH.Cycle11, AH.Cycle12, AH.Delinquency'#13#10'FROM lsLo' +
      'anDetail LD'#13#10'LEFT JOIN LNS_ArrearsHistory AH ON LD.LoanID = AH.L' +
      'oanID'#13#10'WHERE LD.LoanID = :LoanID'#13#10'AND AH.PeriodType = '#39'M'#39
    DataSource = dtsEntLoan
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
    Left = 176
    Top = 376
    object dsAgeMonthEndCycleKey: TIntegerField
      FieldName = 'CycleKey'
    end
    object dsAgeMonthEndEffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object dsAgeMonthEndPeriodStartDate: TDateTimeField
      FieldName = 'PeriodStartDate'
    end
    object dsAgeMonthEndPeriodEndDate: TDateTimeField
      FieldName = 'PeriodEndDate'
    end
    object dsAgeMonthEndInstalmentDue: TBCDField
      FieldName = 'InstalmentDue'
      Precision = 19
    end
    object dsAgeMonthEndAmountPaid: TBCDField
      FieldName = 'AmountPaid'
      Precision = 19
    end
    object dsAgeMonthEndAdditionalFees: TBCDField
      FieldName = 'AdditionalFees'
      Precision = 19
    end
    object dsAgeMonthEndArrearsFeesActual: TBCDField
      FieldName = 'ArrearsFeesActual'
      Precision = 19
    end
    object dsAgeMonthEndArrearsFees: TBCDField
      FieldName = 'ArrearsFees'
      Precision = 19
    end
    object dsAgeMonthEndArrearsInterestActual: TBCDField
      FieldName = 'ArrearsInterestActual'
      Precision = 19
    end
    object dsAgeMonthEndArrearsInterest: TBCDField
      FieldName = 'ArrearsInterest'
      Precision = 19
    end
    object dsAgeMonthEndTotalDue: TBCDField
      FieldName = 'TotalDue'
      Precision = 19
    end
    object dsAgeMonthEndInterestBucket: TBCDField
      FieldName = 'InterestBucket'
      Precision = 19
    end
    object dsAgeMonthEndFeeBucket: TBCDField
      FieldName = 'FeeBucket'
      Precision = 19
    end
    object dsAgeMonthEndPayBucket: TBCDField
      FieldName = 'PayBucket'
      Precision = 19
    end
    object dsAgeMonthEndCycle0: TBCDField
      FieldName = 'Cycle0'
      Precision = 19
    end
    object dsAgeMonthEndCycle1: TBCDField
      FieldName = 'Cycle1'
      Precision = 19
    end
    object dsAgeMonthEndCycle2: TBCDField
      FieldName = 'Cycle2'
      Precision = 19
    end
    object dsAgeMonthEndCycle3: TBCDField
      FieldName = 'Cycle3'
      Precision = 19
    end
    object dsAgeMonthEndCycle4: TBCDField
      FieldName = 'Cycle4'
      Precision = 19
    end
    object dsAgeMonthEndCycle5: TBCDField
      FieldName = 'Cycle5'
      Precision = 19
    end
    object dsAgeMonthEndCycle6: TBCDField
      FieldName = 'Cycle6'
      Precision = 19
    end
    object dsAgeMonthEndCycle7: TBCDField
      FieldName = 'Cycle7'
      Precision = 19
    end
    object dsAgeMonthEndCycle8: TBCDField
      FieldName = 'Cycle8'
      Precision = 19
    end
    object dsAgeMonthEndCycle9: TBCDField
      FieldName = 'Cycle9'
      Precision = 19
    end
    object dsAgeMonthEndCycle10: TBCDField
      FieldName = 'Cycle10'
      Precision = 19
    end
    object dsAgeMonthEndCycle11: TBCDField
      FieldName = 'Cycle11'
      Precision = 19
    end
    object dsAgeMonthEndCycle12: TBCDField
      FieldName = 'Cycle12'
      Precision = 19
    end
    object dsAgeMonthEndDelinquency: TWordField
      FieldName = 'Delinquency'
    end
    object dsAgeMonthEndCyclePeriod: TStringField
      FieldKind = fkCalculated
      FieldName = 'CyclePeriod'
      Size = 30
      Calculated = True
    end
    object dsAgeMonthEndMonthEnd: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'MonthEnd'
      DisplayFormat = 'mmm yy'
      Calculated = True
    end
    object dsAgeMonthEndMonthDue: TBCDField
      FieldKind = fkCalculated
      FieldName = 'MonthDue'
      currency = True
      Calculated = True
    end
    object dsAgeMonthEndArrears: TBCDField
      FieldKind = fkCalculated
      FieldName = 'Arrears'
      currency = True
      Calculated = True
    end
  end
  object dtsAgeMonthEnd: TDataSource
    DataSet = dsAgeMonthEnd
    Left = 176
    Top = 392
  end
  object dsArrearsAgeing: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    OnCalcFields = dsArrearsAgeingCalcFields
    CommandText = 'EXEC dbo.LNS_GetArrearsHistory :LoanID, :AtDate'
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
        Name = 'AtDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 413
    Top = 16
    object dsArrearsAgeingYMKey: TStringField
      FieldName = 'YMKey'
      Size = 7
    end
    object dsArrearsAgeingEffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object dsArrearsAgeingMonthStartDate: TDateTimeField
      FieldName = 'MonthStartDate'
    end
    object dsArrearsAgeingMonthEndDate: TDateTimeField
      FieldName = 'MonthEndDate'
    end
    object dsArrearsAgeingInstalmentDue: TBCDField
      FieldName = 'InstalmentDue'
      Precision = 19
    end
    object dsArrearsAgeingAmountPaid: TBCDField
      FieldName = 'AmountPaid'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingAdditionalFees: TBCDField
      FieldName = 'AdditionalFees'
      Precision = 19
    end
    object dsArrearsAgeingArrearsFeesActual: TBCDField
      FieldName = 'ArrearsFeesActual'
      Precision = 19
    end
    object dsArrearsAgeingArrearsFees: TBCDField
      FieldName = 'ArrearsFees'
      Precision = 19
    end
    object dsArrearsAgeingArrearsInterestActual: TBCDField
      FieldName = 'ArrearsInterestActual'
      Precision = 19
    end
    object dsArrearsAgeingArrearsInterest: TBCDField
      FieldName = 'ArrearsInterest'
      Precision = 19
    end
    object dsArrearsAgeingTotalDue: TBCDField
      FieldName = 'TotalDue'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingInterestBucket: TBCDField
      FieldName = 'InterestBucket'
      Precision = 19
    end
    object dsArrearsAgeingFeeBucket: TBCDField
      FieldName = 'FeeBucket'
      Precision = 19
    end
    object dsArrearsAgeingPayBucket: TBCDField
      FieldName = 'PayBucket'
      Precision = 19
    end
    object dsArrearsAgeingCD: TIntegerField
      FieldName = 'CD'
      ReadOnly = True
    end
    object dsArrearsAgeingStrCD: TStringField
      FieldKind = fkCalculated
      FieldName = 'StrCD'
      Size = 3
      Calculated = True
    end
    object dsArrearsAgeingDays0: TBCDField
      FieldName = 'Days0'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays1: TBCDField
      FieldName = 'Days1'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays2: TBCDField
      FieldName = 'Days2'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays3: TBCDField
      FieldName = 'Days3'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays4: TBCDField
      FieldName = 'Days4'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays5: TBCDField
      FieldName = 'Days5'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays6: TBCDField
      FieldName = 'Days6'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays7: TBCDField
      FieldName = 'Days7'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays8: TBCDField
      FieldName = 'Days8'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays9: TBCDField
      FieldName = 'Days9'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays10: TBCDField
      FieldName = 'Days10'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays11: TBCDField
      FieldName = 'Days11'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingDays12: TBCDField
      FieldName = 'Days12'
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount0: TBCDField
      FieldName = 'InitialAmount0'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount1: TBCDField
      FieldName = 'InitialAmount1'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount2: TBCDField
      FieldName = 'InitialAmount2'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount3: TBCDField
      FieldName = 'InitialAmount3'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount4: TBCDField
      FieldName = 'InitialAmount4'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount5: TBCDField
      FieldName = 'InitialAmount5'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount6: TBCDField
      FieldName = 'InitialAmount6'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount7: TBCDField
      FieldName = 'InitialAmount7'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount8: TBCDField
      FieldName = 'InitialAmount8'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount9: TBCDField
      FieldName = 'InitialAmount9'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount10: TBCDField
      FieldName = 'InitialAmount10'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount11: TBCDField
      FieldName = 'InitialAmount11'
      Precision = 19
    end
    object dsArrearsAgeingInitialAmount12: TBCDField
      FieldName = 'InitialAmount12'
      Precision = 19
    end
    object dsArrearsAgeingDays72: TBCDField
      FieldKind = fkCalculated
      FieldName = 'Days7+'
      currency = True
      Calculated = True
    end
    object dsArrearsAgeingArrearsAmount: TBCDField
      FieldName = 'ArrearsAmount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsArrearsAgeingCycleDue: TBCDField
      FieldKind = fkCalculated
      FieldName = 'CycleDue'
      currency = True
      Size = 0
      Calculated = True
    end
  end
  object dtsArrearsAgeing: TDataSource
    DataSet = dsArrearsAgeing
    Left = 413
    Top = 32
  end
  object dsAgeCycleEnd: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsAgeRealTimeAfterOpen
    OnCalcFields = dsAgeMonthEndCalcFields
    CommandText = 
      'SELECT AH.CycleKey, AH.EffectiveDate, AH.PeriodStartDate, AH.Per' +
      'iodEndDate, AH.InstalmentDue, AH.AmountPaid,'#13#10'AH.AdditionalFees,' +
      ' AH.ArrearsFeesActual, AH.ArrearsFees, AH.ArrearsInterestActual,' +
      ' AH.ArrearsInterest,'#13#10'AH.TotalDue, AH.InterestBucket, AH.FeeBuck' +
      'et, AH.PayBucket,'#13#10'AH.Cycle0, AH.Cycle1, AH.Cycle2, AH.Cycle3, A' +
      'H.Cycle4, AH.Cycle5, AH.Cycle6, AH.Cycle7, AH.Cycle8, AH.Cycle9,' +
      ' '#13#10'AH.Cycle10, AH.Cycle11, AH.Cycle12, AH.Delinquency'#13#10'FROM lsLo' +
      'anDetail LD'#13#10'LEFT JOIN LNS_ArrearsHistory AH ON LD.LoanID = AH.L' +
      'oanID'#13#10'WHERE LD.LoanID = :LoanID'#13#10'AND AH.PeriodType = '#39'C'#39
    DataSource = dtsEntLoan
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 296
    Top = 376
    object IntegerField2: TIntegerField
      FieldName = 'CycleKey'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'PeriodStartDate'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'PeriodEndDate'
    end
    object BCDField25: TBCDField
      FieldName = 'InstalmentDue'
      Precision = 19
    end
    object BCDField26: TBCDField
      FieldName = 'AmountPaid'
      Precision = 19
    end
    object BCDField27: TBCDField
      FieldName = 'AdditionalFees'
      Precision = 19
    end
    object BCDField28: TBCDField
      FieldName = 'ArrearsFeesActual'
      Precision = 19
    end
    object BCDField29: TBCDField
      FieldName = 'ArrearsFees'
      Precision = 19
    end
    object BCDField30: TBCDField
      FieldName = 'ArrearsInterestActual'
      Precision = 19
    end
    object BCDField31: TBCDField
      FieldName = 'ArrearsInterest'
      Precision = 19
    end
    object BCDField32: TBCDField
      FieldName = 'TotalDue'
      Precision = 19
    end
    object BCDField33: TBCDField
      FieldName = 'InterestBucket'
      Precision = 19
    end
    object BCDField34: TBCDField
      FieldName = 'FeeBucket'
      Precision = 19
    end
    object BCDField35: TBCDField
      FieldName = 'PayBucket'
      Precision = 19
    end
    object BCDField36: TBCDField
      FieldName = 'Cycle0'
      Precision = 19
    end
    object BCDField37: TBCDField
      FieldName = 'Cycle1'
      Precision = 19
    end
    object BCDField38: TBCDField
      FieldName = 'Cycle2'
      Precision = 19
    end
    object BCDField39: TBCDField
      FieldName = 'Cycle3'
      Precision = 19
    end
    object BCDField40: TBCDField
      FieldName = 'Cycle4'
      Precision = 19
    end
    object BCDField41: TBCDField
      FieldName = 'Cycle5'
      Precision = 19
    end
    object BCDField42: TBCDField
      FieldName = 'Cycle6'
      Precision = 19
    end
    object BCDField43: TBCDField
      FieldName = 'Cycle7'
      Precision = 19
    end
    object BCDField44: TBCDField
      FieldName = 'Cycle8'
      Precision = 19
    end
    object BCDField45: TBCDField
      FieldName = 'Cycle9'
      Precision = 19
    end
    object BCDField46: TBCDField
      FieldName = 'Cycle10'
      Precision = 19
    end
    object BCDField47: TBCDField
      FieldName = 'Cycle11'
      Precision = 19
    end
    object BCDField48: TBCDField
      FieldName = 'Cycle12'
      Precision = 19
    end
    object WordField1: TWordField
      FieldName = 'Delinquency'
    end
    object StringField3: TStringField
      FieldKind = fkCalculated
      FieldName = 'CyclePeriod'
      Size = 30
      Calculated = True
    end
  end
  object dtsAgeCycleEnd: TDataSource
    DataSet = dsAgeCycleEnd
    Left = 296
    Top = 392
  end
  object ADODataSet2: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryEntLoanBeforeOpen
    OnCalcFields = qryEntLoanCalcFields
    CommandText = 
      'DECLARE'#13#10'  @Close as int,'#13#10'  @Cancel as int,'#13#10'  @Decline as int'#13 +
      #10#13#10'SET @Close = :prClose'#13#10'SET @Cancel = :prCancel'#13#10'SET @Decline ' +
      '= :prDecline'#13#10#13#10'SELECT DISTINCT(LD.LoanID), EntityID, LoanKey, E' +
      'ntCode, LoanType, LTaccT, LoanPeriod, '#13#10'AmtToFin, PayIns, IntRat' +
      'e, TotInterest, TotSecAmt, StartDate, OpenDate, FirstInsDate, En' +
      'dDate, '#13#10'AccBal, LoanBal, AvlBal, Status, LD.UserID, ArrearsBuck' +
      'et, ArrearsAmt, NoOfPay, LastDPay, '#13#10'LastAmtPay, ExtendPrd, Arre' +
      'arsSettle, CycleEndDay, Delinquency, RL.Description AS RiskBand,' +
      #13#10'RefNo,LoanCapital,DepositBal,LOID,FunderID, DocNo, HOProcessed' +
      ', JDProcessed, JDDate,'#13#10'CASE WHEN LS.LoanID IS NULL THEN '#39#39' ELSE' +
      ' '#39'R'#39' END AS Restructured, '#13#10#39'NCA Letter sent on '#39' + dbo.FORMATDA' +
      'TE('#39'dd/mm/yyyy'#39',NCALetterDate) AS NCALetter,'#13#10'(SELECT COUNT(*) F' +
      'ROM lsLoanDetail WHERE entityid = LD.EntityID AND LoanID <= LD.L' +
      'oanID '#13#10'AND Status <> @Close'#13#10'AND Status <> @Cancel'#13#10'AND Status ' +
      '<> @Decline) AS LoanNo, '#39'['#39' + FL.FlagCode + '#39'] '#39' + FL.Descriptio' +
      'n AS Flag,'#13#10'dbo.mMAX(0,AA.Instalment - AmountPaid + AdditionalFe' +
      'es + LegalFees + ArrearsInterest) AS CurrentDue,'#13#10'AA.Days0 AS Da' +
      'ys30, AA.Days30 AS Days60, AA.Days60 AS Days90, AA.Days90 AS Day' +
      's120, TR.DeductDate AS NextDeduction,'#13#10'ISNULL((SELECT SUM(AmtPos' +
      't) * -1'#13#10'FROM lsBatchHistory'#13#10'WHERE TransType IN (11,12)'#13#10'AND Lo' +
      'anID = LD.LoanID),0) AS PaymentsReceived,'#13#10'ISNULL((SELECT SUM(Am' +
      'tPost)'#13#10'FROM lsBatchHistory'#13#10'WHERE TransType IN (13,14)'#13#10'AND Loa' +
      'nID = LD.LoanID),0) AS InterestAccrued,'#13#10'ISNULL((SELECT SUM(AmtP' +
      'ost)'#13#10'FROM lsBatchHistory'#13#10'WHERE TransType IN (17,18)'#13#10'AND LoanI' +
      'D = LD.LoanID'#13#10'--AND TransCode NOT IN (1704,1705)'#13#10'),0) AS Contr' +
      'actFees,'#13#10'ISNULL((SELECT SUM(AmtPost)'#13#10'FROM lsBatchHistory'#13#10'WHER' +
      'E TransType IN (1,2)'#13#10'AND LoanID = LD.LoanID),0) AS AddFeesLevie' +
      'd,'#13#10'ISNULL((SELECT SUM(AmtPost)'#13#10'FROM lsBatchHistory'#13#10'WHERE Tran' +
      'sType IN (28,29)'#13#10'AND LoanID = LD.LoanID),0) AS LegalFeesLevied,' +
      ' '#13#10'AA.InstalmentDue, AA.AdditionalFees, AA.ArrearsInterest, AA.A' +
      'rrearsAmount, AA.TotalDue,'#13#10'(SELECT TOP 1 InterestRate'#13#10'FROM lsL' +
      'oanRate'#13#10'WHERE LoanID = LD.LoanID'#13#10'AND EffectiveDate <= GETDATE(' +
      ')'#13#10'ORDER BY EffectiveDate DESC) AS CurrentRate, LD.IntRate AS Or' +
      'iginalRate'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN lsLDStruc LS ON LD.L' +
      'oanID = LS.LoanID'#13#10'LEFT JOIN '#13#10#9'(SELECT FH.LoanID, FlagCode'#13#10#9'FR' +
      'OM lsFlagHistory FH'#13#10#9'RIGHT JOIN '#13#10#9#9'(SELECT MAX(RecordID) AS Re' +
      'cordID, LoanID'#13#10#9#9'FROM lsFlagHistory'#13#10#9#9'GROUP BY LoanID)MF ON FH' +
      '.LoanID = MF.LoanID AND FH.RecordID = MF.RecordID)FH ON LD.LoanI' +
      'D = FH.LoanID'#13#10'LEFT JOIN lsFlags FL ON FH.FlagCode = FL.FlagCode' +
      #13#10'LEFT JOIN Legal LG ON LD.LoanID = LG.LoanID'#13#10'LEFT JOIN lsArrea' +
      'rsAge AA ON LD.LoanID = AA.LoanID AND CurrentArrears = 1'#13#10'LEFT J' +
      'OIN ieTransactions TR ON LD.LoanID = TR.LoanID AND DebitType = '#39 +
      'R'#39' AND InstalBatch IS NULL'#13#10'LEFT JOIN scRiskLevel RL ON ISNULL(L' +
      'D.RiskLevelClient, LD.RiskLevelBureau) = RL.RiskLevel'#13#10'WHERE Ent' +
      'ityID = :EntityID'#13#10'AND Status <> @Close'#13#10'AND Status <> @Cancel'#13#10 +
      'AND Status <> @Decline'#13#10'ORDER BY LD.LoanID'
    DataSource = dtmMain.dtsEntID
    IndexFieldNames = 'EntityID'
    Parameters = <
      item
        Name = 'prClose'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'prCancel'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'prDecline'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EntityID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 536
    Top = 232
    object IntegerField3: TIntegerField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'EntityID'
    end
    object IntegerField5: TIntegerField
      FieldName = 'LoanKey'
    end
    object StringField4: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'LoanType'
      Size = 3
    end
    object SmallintField1: TSmallintField
      FieldName = 'LTaccT'
    end
    object SmallintField2: TSmallintField
      FieldName = 'LoanPeriod'
    end
    object StringField6: TStringField
      FieldKind = fkCalculated
      FieldName = 'StrLoanPeriod'
      Size = 10
      Calculated = True
    end
    object BCDField49: TBCDField
      FieldName = 'AmtToFin'
      currency = True
      Precision = 19
    end
    object BCDField50: TBCDField
      FieldName = 'PayIns'
      currency = True
      Precision = 10
    end
    object BCDField51: TBCDField
      FieldName = 'IntRate'
      Precision = 5
      Size = 2
    end
    object BCDField52: TBCDField
      FieldName = 'TotInterest'
      currency = True
      Precision = 19
    end
    object BCDField53: TBCDField
      FieldName = 'TotSecAmt'
      currency = True
      Precision = 19
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'StartDate'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'FirstInsDate'
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'EndDate'
    end
    object BCDField54: TBCDField
      FieldName = 'AccBal'
      currency = True
      Precision = 19
    end
    object BCDField55: TBCDField
      FieldName = 'LoanBal'
      currency = True
      Precision = 19
    end
    object BCDField56: TBCDField
      FieldName = 'AvlBal'
      currency = True
      Precision = 19
    end
    object SmallintField3: TSmallintField
      FieldName = 'Status'
    end
    object StringField7: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object BCDField57: TBCDField
      FieldName = 'ArrearsAmt'
      currency = True
      Precision = 10
    end
    object SmallintField4: TSmallintField
      FieldName = 'NoOfPay'
    end
    object DateTimeField10: TDateTimeField
      FieldName = 'LastDPay'
    end
    object BCDField58: TBCDField
      FieldName = 'LastAmtPay'
      currency = True
      Precision = 10
    end
    object SmallintField5: TSmallintField
      FieldName = 'ExtendPrd'
    end
    object BCDField59: TBCDField
      FieldName = 'ArrearsBucket'
      Precision = 10
    end
    object StringField8: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object BCDField60: TBCDField
      FieldName = 'LoanCapital'
      currency = True
      Precision = 19
    end
    object BCDField61: TBCDField
      FieldName = 'DepositBal'
      currency = True
      Precision = 19
    end
    object IntegerField6: TIntegerField
      FieldName = 'LOID'
    end
    object IntegerField7: TIntegerField
      FieldName = 'FunderID'
    end
    object IntegerField8: TIntegerField
      FieldName = 'LoanNo'
      ReadOnly = True
    end
    object StringField9: TStringField
      FieldKind = fkCalculated
      FieldName = 'Record'
      Size = 10
      Calculated = True
    end
    object StringField10: TStringField
      FieldName = 'Restructured'
      ReadOnly = True
      Size = 1
    end
    object BCDField62: TBCDField
      FieldName = 'ArrearsSettle'
      currency = True
      Precision = 19
    end
    object StringField11: TStringField
      FieldName = 'DocNo'
      Size = 15
    end
    object StringField12: TStringField
      FieldName = 'Flag'
      ReadOnly = True
      Size = 58
    end
    object BooleanField1: TBooleanField
      FieldName = 'HOProcessed'
    end
    object BooleanField2: TBooleanField
      FieldName = 'JDProcessed'
    end
    object DateTimeField11: TDateTimeField
      FieldName = 'JDDate'
    end
    object StringField13: TStringField
      FieldName = 'NCALetter'
      ReadOnly = True
      Size = 29
    end
    object WordField2: TWordField
      FieldName = 'CycleEndDay'
    end
    object BCDField63: TBCDField
      FieldName = 'CurrentDue'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object BCDField64: TBCDField
      FieldName = 'Days30'
      currency = True
      Precision = 19
    end
    object BCDField65: TBCDField
      FieldName = 'Days60'
      currency = True
      Precision = 19
    end
    object BCDField66: TBCDField
      FieldName = 'Days90'
      currency = True
      Precision = 19
    end
    object BCDField67: TBCDField
      FieldName = 'Days120'
      currency = True
      Precision = 19
    end
    object DateTimeField12: TDateTimeField
      FieldName = 'NextDeduction'
    end
    object BCDField68: TBCDField
      FieldName = 'PaymentsReceived'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object BCDField69: TBCDField
      FieldName = 'InterestAccrued'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object BCDField70: TBCDField
      FieldName = 'ContractFees'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object BCDField71: TBCDField
      FieldName = 'AddFeesLevied'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object BCDField72: TBCDField
      FieldName = 'LegalFeesLevied'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object BCDField73: TBCDField
      FieldName = 'InstalmentDue'
      currency = True
      Precision = 19
    end
    object BCDField74: TBCDField
      FieldName = 'AdditionalFees'
      currency = True
      Precision = 19
    end
    object BCDField75: TBCDField
      FieldName = 'ArrearsInterest'
      currency = True
      Precision = 19
    end
    object BCDField76: TBCDField
      FieldName = 'ArrearsAmount'
      currency = True
      Precision = 19
    end
    object BCDField77: TBCDField
      FieldName = 'TotalDue'
      currency = True
      Precision = 19
    end
    object StringField14: TStringField
      FieldKind = fkCalculated
      FieldName = 'clPayments'
      Calculated = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'Delinquency'
    end
    object DateTimeField13: TDateTimeField
      FieldName = 'OpenDate'
    end
    object StringField15: TStringField
      FieldName = 'RiskBand'
    end
    object BCDField78: TBCDField
      FieldName = 'CurrentRate'
      ReadOnly = True
      Precision = 5
      Size = 2
    end
    object BCDField79: TBCDField
      FieldName = 'OriginalRate'
      Precision = 5
      Size = 2
    end
    object StringField16: TStringField
      FieldKind = fkCalculated
      FieldName = 'StrRate'
      Size = 15
      Calculated = True
    end
    object StringField17: TStringField
      FieldKind = fkCalculated
      FieldName = 'StrDelinquency'
      Size = 3
      Calculated = True
    end
  end
  object dsStatement: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE '#13#10#9'@LoanID INT = :LoanID,'#13#10#9'@ShowFutureFees BIT = :ShowF' +
      'utureFees;'#13#10#13#10'WITH Account AS'#13#10'('#13#10#9'SELECT *, ROW_NUMBER()OVER(OR' +
      'DER BY SequenceNo, EffectDate) AS RowNo'#13#10#9'FROM'#13#10#9#9'(SELECT '#13#10#9#9#9'L' +
      'oanID, TransCode, ValueDate, EffectDate, '#13#10#9#9#9'CASE WHEN AmtPost ' +
      '> 0 THEN AmtPost END AS Debit, '#13#10#9#9#9'CASE WHEN AmtPost <= 0 THEN ' +
      'AmtPost END AS Credit, '#13#10#9#9#9'Amount AS Bal, BatchNo, UserID, RefN' +
      'o, RefNo2, 1 AS SequenceNo'#13#10#9#9'FROM lsBatchHistory'#13#10#9#9'WHERE LoanI' +
      'D = @LoanID'#13#10#9#9#9'AND TransType NOT IN (3,5,6,7,8,9,10,19,20,40,41' +
      ',42,43)'#13#10#13#10#9#9'UNION ALL'#13#10#13#10#9#9'SELECT '#13#10#9#9#9'LF.LoanID, TF.TransCodeD' +
      'ebit, NULL, NULL,'#13#10#9#9#9'LF.PendingAmount, NULL, LF.PendingAmount, ' +
      'NULL, NULL, NULL, NULL, 2'#13#10#9#9'FROM lsLoanFee LF'#13#10#9#9'LEFT JOIN lsLo' +
      'anTypeFee TF ON LF.FeeID = TF.FeeID'#13#10#9#9'WHERE LF.LoanID = @LoanID' +
      #13#10#9#9#9'AND ISNULL(LF.PendingAmount, 0) > 0'#9#13#10#9#9#9'AND @ShowFutureFee' +
      's = 1'#13#10#9#9')AC'#13#10')'#13#10#13#10'SELECT '#13#10#9'AC.LoanID, TS.TransType, AC.TransCo' +
      'de, TS.Description AS [Transaction], AC.ValueDate, AC.EffectDate' +
      ', AC.Debit, AC.Credit,'#13#10#9'SUM(ISNULL(AP.Debit, 0) + ISNULL(AP.Cre' +
      'dit, 0)) AS Balance, AC.BatchNo, AC.UserID, AC.RefNo, AC.RefNo2'#13 +
      #10'FROM Account AC'#13#10'LEFT JOIN Account AP ON AC.LoanID = AP.LoanID'#13 +
      #10#9'AND AP.RowNo <= AC.RowNo'#13#10'LEFT JOIN TransSetup TS ON AC.TransC' +
      'ode = TS.TransCode'#13#10'GROUP BY '#13#10#9'AC.LoanID, TS.TransType, AC.Tran' +
      'sCode, AC.ValueDate, AC.EffectDate, AC.Debit, AC.Credit,'#13#10#9'AC.Ba' +
      'tchNo, AC.UserID, AC.RefNo, AC.RefNo2, AC.RowNo, TS.Description'#13 +
      #10'ORDER BY AC.RowNo'#13#10
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ShowFutureFees'
        DataType = ftBoolean
        Size = -1
        Value = Null
      end>
    Left = 294
    Top = 16
    object dsStatementLoanID: TIntegerField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object dsStatementTransType: TSmallintField
      FieldName = 'TransType'
    end
    object dsStatementTransCode: TIntegerField
      FieldName = 'TransCode'
      ReadOnly = True
    end
    object dsStatementTransaction: TStringField
      FieldName = 'Transaction'
      Size = 50
    end
    object dsStatementValueDate: TDateTimeField
      FieldName = 'ValueDate'
      ReadOnly = True
    end
    object dsStatementEffectDate: TDateTimeField
      FieldName = 'EffectDate'
      ReadOnly = True
    end
    object dsStatementDebit: TBCDField
      FieldName = 'Debit'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsStatementCredit: TBCDField
      FieldName = 'Credit'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsStatementBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsStatementBatchNo: TStringField
      FieldName = 'BatchNo'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object dsStatementUserID: TStringField
      FieldName = 'UserID'
      ReadOnly = True
      Size = 10
    end
    object dsStatementRefNo: TStringField
      FieldName = 'RefNo'
      ReadOnly = True
      Size = 10
    end
    object dsStatementRefNo2: TStringField
      FieldName = 'RefNo2'
      ReadOnly = True
      Size = 10
    end
  end
  object dtsStatement: TDataSource
    DataSet = dsStatement
    Left = 294
    Top = 32
  end
  object qryIndemnity: TADOQuery
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select LoanId'
      'from afAffordabilityEditRpt'
      'where LoanId = :LoanId')
    Left = 64
    Top = 464
  end
  object qryIndemnityPDF: TADOQuery
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select PdfReport'
      'from afAffordabilityEditRpt'
      'where LoanId = :LoanId')
    Left = 176
    Top = 464
  end
  object qryLoanQuote: TADOQuery
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
    SQL.Strings = (
      
        'Select Count(*) as QuoteCount from afQuotations where LoanId = :' +
        'LoanID ')
    Left = 300
    Top = 463
  end
end
