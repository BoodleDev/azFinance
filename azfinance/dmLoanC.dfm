object dtmLoanC: TdtmLoanC
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 219
  Height = 785
  Width = 1473
  object qryLoanDet: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforeOpen = qryLoanDetBeforeOpen
    AfterOpen = qryLoanDetAfterOpen
    AfterClose = qryLoanDetAfterClose
    AfterInsert = qryLoanDetAfterInsert
    AfterEdit = qryLoanDetAfterEdit
    BeforePost = qryLoanDetBeforePost
    AfterPost = qryLoanDetAfterPost
    OnCalcFields = qryLoanDetCalcFields
    OnNewRecord = qryLoanDetNewRecord
    CommandText = 
      'SELECT LN.LoanID, LN.EntityID, LoanKey, EntCode, LoanType, LTacc' +
      'T, LoanPeriod, LoanPeriodM, '#13#10'LoanCapital, AmtToFin, ResidualAmt' +
      ', MthIns, PayIns, IntRate, TotInterest, TotSecAmt, '#13#10'InstPaid, S' +
      'tartDate, FirstInsDate, EndDate, EndDate as ActualEndDate, '#13#10'Acc' +
      'Bal, LoanBal, AvlBal, DepositBal, DefIOn, LN.Status, LoanUse, Lo' +
      'anTypeInd, LOID, IntermediaryID, FunderID, '#13#10'BranchID, Link1, Li' +
      'nk2, Link3,Link4,Link5,  ApprCtl, LN.UserID, DateChanged, Arrear' +
      'sAmt, ArrearsNo, '#13#10'AmountDue, NoOfPay, LastDPay, LastAmtPay, Ext' +
      'endPrd, FeeToInsTot, Fee1, Fee2, Fee3, Fee4, Fee5, '#13#10'Fee6, Fee7,' +
      ' RegNo, RefNo,QryNo, AppAmt ,AppDate, AppPeriod, AprvDate,'#13#10'Loan' +
      'Ind, ActionInd, DebtDate,CntrC, CurReason, StatusReasonID2, Limi' +
      'tInt, DocNo, CycleEndDay,'#13#10'UpdateUser, UpdateDate, LN.CreateDate' +
      ', PreApproveDate, PreApproveUser, ApproveUser,'#13#10'DoLimit, LimitAm' +
      'ount, LimitPeriod, LimitDebt, LimitReason, ApplicationScore, Bur' +
      'eauScore, MatrixScore, '#13#10'UserApplicationScore, UserBureauScore, ' +
      'UserMatrixScore, Scorecard, ISNULL(CT.Description, '#39'None'#39') AS Ca' +
      'tegory, CategoryID, HandoverTypeID,'#13#10'AF.AccountFlagID, AF.Create' +
      'Date AS FraudFlagDate, FU.Username AS FraudUser, SF.Description ' +
      'AS FraudReason, LN.HostID, LN.BookID'#13#10'FROM lsLoanDetail LN'#13#10'LEFT' +
      ' JOIN CodeTable CT ON LN.CategoryID = CT.TypeKey'#13#10'LEFT JOIN DCC_' +
      'AccountFlag AF ON LN.LoanID = AF.AccountID'#13#10#9'AND AF.FlagID = 3'#13#10 +
      #9'AND AF.DisableDate IS NULL'#13#10'LEFT JOIN DCC_SubFlag SF ON AF.SubF' +
      'lagID = SF.SubFlagID'#13#10'LEFT JOIN SEC_User FU ON AF.CreateUserID =' +
      ' FU.UserID'#13#10'WHERE LN.EntityID = :EntityID'
    IndexFieldNames = 'LoanID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 51
    Top = 25
    object qryLoanDetLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object qryLoanDetEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object qryLoanDetLoanKey: TIntegerField
      FieldName = 'LoanKey'
    end
    object qryLoanDetEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object qryLoanDetLoanType: TStringField
      FieldName = 'LoanType'
      Size = 3
    end
    object qryLoanDetLTaccT: TSmallintField
      FieldName = 'LTaccT'
    end
    object qryLoanDetLoanPeriod: TSmallintField
      FieldName = 'LoanPeriod'
    end
    object qryLoanDetLoanPeriodM: TSmallintField
      FieldName = 'LoanPeriodM'
    end
    object qryLoanDetLoanCapital: TBCDField
      FieldName = 'LoanCapital'
      Precision = 19
    end
    object qryLoanDetAmtToFin: TBCDField
      FieldName = 'AmtToFin'
      Precision = 19
    end
    object qryLoanDetResidualAmt: TBCDField
      FieldName = 'ResidualAmt'
      Precision = 19
    end
    object qryLoanDetMthIns: TBCDField
      FieldName = 'MthIns'
      Precision = 19
    end
    object qryLoanDetPayIns: TBCDField
      FieldName = 'PayIns'
      Precision = 19
    end
    object qryLoanDetIntRate: TBCDField
      FieldName = 'IntRate'
      Precision = 5
      Size = 2
    end
    object qryLoanDetTotInterest: TBCDField
      FieldName = 'TotInterest'
      Precision = 19
    end
    object qryLoanDetTotSecAmt: TBCDField
      FieldName = 'TotSecAmt'
      Precision = 19
    end
    object qryLoanDetInstPaid: TStringField
      FieldName = 'InstPaid'
      FixedChar = True
      Size = 1
    end
    object qryLoanDetStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object qryLoanDetFirstInsDate: TDateTimeField
      FieldName = 'FirstInsDate'
    end
    object qryLoanDetEndDate: TDateTimeField
      FieldName = 'EndDate'
    end
    object qryLoanDetActualEndDate: TDateTimeField
      FieldName = 'ActualEndDate'
      ReadOnly = True
    end
    object qryLoanDetAccBal: TBCDField
      FieldName = 'AccBal'
      Precision = 19
    end
    object qryLoanDetLoanBal: TBCDField
      FieldName = 'LoanBal'
      Precision = 19
    end
    object qryLoanDetAvlBal: TBCDField
      FieldName = 'AvlBal'
      Precision = 19
    end
    object qryLoanDetDepositBal: TBCDField
      FieldName = 'DepositBal'
      Precision = 19
    end
    object qryLoanDetDefIOn: TBooleanField
      FieldName = 'DefIOn'
    end
    object qryLoanDetStatus: TSmallintField
      FieldName = 'Status'
    end
    object qryLoanDetLoanUse: TIntegerField
      FieldName = 'LoanUse'
    end
    object qryLoanDetLoanTypeInd: TIntegerField
      FieldName = 'LoanTypeInd'
    end
    object qryLoanDetLOID: TIntegerField
      FieldName = 'LOID'
    end
    object qryLoanDetIntermediaryID: TIntegerField
      FieldName = 'IntermediaryID'
    end
    object qryLoanDetFunderID: TIntegerField
      FieldName = 'FunderID'
    end
    object qryLoanDetBranchID: TIntegerField
      FieldName = 'BranchID'
    end
    object qryLoanDetLink1: TIntegerField
      FieldName = 'Link1'
    end
    object qryLoanDetLink2: TIntegerField
      FieldName = 'Link2'
    end
    object qryLoanDetLink3: TIntegerField
      FieldName = 'Link3'
    end
    object qryLoanDetLink4: TIntegerField
      FieldName = 'Link4'
    end
    object qryLoanDetLink5: TIntegerField
      FieldName = 'Link5'
    end
    object qryLoanDetApprCtl: TIntegerField
      FieldName = 'ApprCtl'
    end
    object qryLoanDetUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qryLoanDetDateChanged: TDateTimeField
      FieldName = 'DateChanged'
    end
    object qryLoanDetArrearsAmt: TBCDField
      FieldName = 'ArrearsAmt'
      Precision = 19
    end
    object qryLoanDetArrearsNo: TSmallintField
      FieldName = 'ArrearsNo'
    end
    object qryLoanDetAmountDue: TBCDField
      FieldName = 'AmountDue'
      Precision = 19
    end
    object qryLoanDetNoOfPay: TSmallintField
      FieldName = 'NoOfPay'
    end
    object qryLoanDetLastDPay: TDateTimeField
      FieldName = 'LastDPay'
    end
    object qryLoanDetLastAmtPay: TBCDField
      FieldName = 'LastAmtPay'
      Precision = 19
    end
    object qryLoanDetExtendPrd: TSmallintField
      FieldName = 'ExtendPrd'
    end
    object qryLoanDetFeeToInsTot: TBCDField
      FieldName = 'FeeToInsTot'
      Precision = 19
    end
    object qryLoanDetFee1: TBCDField
      FieldName = 'Fee1'
      Precision = 19
    end
    object qryLoanDetFee2: TBCDField
      FieldName = 'Fee2'
      Precision = 19
    end
    object qryLoanDetFee3: TBCDField
      FieldName = 'Fee3'
      Precision = 19
    end
    object qryLoanDetFee4: TBCDField
      FieldName = 'Fee4'
      Precision = 19
    end
    object qryLoanDetFee5: TBCDField
      FieldName = 'Fee5'
      Precision = 19
    end
    object qryLoanDetFee6: TBCDField
      FieldName = 'Fee6'
      Precision = 19
    end
    object qryLoanDetFee7: TBCDField
      FieldName = 'Fee7'
      Precision = 10
    end
    object qryLoanDetRegNo: TStringField
      FieldName = 'RegNo'
      Size = 15
    end
    object qryLoanDetRefNo: TStringField
      FieldName = 'RefNo'
      Required = True
      Size = 15
    end
    object qryLoanDetQryNo: TStringField
      FieldName = 'QryNo'
      Size = 15
    end
    object qryLoanDetAppAmt: TBCDField
      FieldName = 'AppAmt'
      Precision = 19
    end
    object qryLoanDetAppDate: TDateTimeField
      FieldName = 'AppDate'
    end
    object qryLoanDetAppPeriod: TWordField
      FieldName = 'AppPeriod'
    end
    object qryLoanDetAprvDate: TDateTimeField
      FieldName = 'AprvDate'
    end
    object qryLoanDetLoanInd: TIntegerField
      FieldName = 'LoanInd'
    end
    object qryLoanDetActionInd: TIntegerField
      FieldName = 'ActionInd'
    end
    object qryLoanDetDebtDate: TDateTimeField
      FieldName = 'DebtDate'
    end
    object qryLoanDetCntrC: TWordField
      FieldName = 'CntrC'
    end
    object qryLoanDetCurReason: TIntegerField
      FieldName = 'CurReason'
    end
    object qryLoanDetStatusReasonID2: TIntegerField
      FieldName = 'StatusReasonID2'
    end
    object qryLoanDetLimitInt: TBCDField
      FieldName = 'LimitInt'
      Precision = 19
    end
    object qryLoanDetDocNo: TStringField
      FieldName = 'DocNo'
      Size = 15
    end
    object qryLoanDetRestructured: TStringField
      FieldKind = fkCalculated
      FieldName = 'Restructured'
      Size = 12
      Calculated = True
    end
    object qryLoanDetUpdateUser: TStringField
      FieldName = 'UpdateUser'
      Size = 10
    end
    object qryLoanDetUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
    end
    object qryLoanDetFMTAprvDate: TStringField
      FieldKind = fkCalculated
      FieldName = 'FMTAprvDate'
      ReadOnly = True
      Size = 16
      Calculated = True
    end
    object qryLoanDetCreateDetails: TStringField
      FieldKind = fkCalculated
      FieldName = 'CreateDetails'
      Size = 60
      Calculated = True
    end
    object qryLoanDetCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object qryLoanDetUpdateDetails: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateDetails'
      Size = 60
      Calculated = True
    end
    object qryLoanDetPreApproveDate: TDateTimeField
      FieldName = 'PreApproveDate'
    end
    object qryLoanDetPreApproveUser: TStringField
      FieldName = 'PreApproveUser'
      Size = 10
    end
    object qryLoanDetPreApproved: TStringField
      FieldKind = fkCalculated
      FieldName = 'PreApproved'
      Size = 60
      Calculated = True
    end
    object qryLoanDetApproveUser: TStringField
      FieldName = 'ApproveUser'
      Size = 10
    end
    object qryLoanDetCurrentReason: TStringField
      FieldKind = fkLookup
      FieldName = 'CurrentReason'
      LookupDataSet = qryLUReasons
      LookupKeyFields = 'IDVal'
      LookupResultField = 'Description'
      KeyFields = 'CurReason'
      Lookup = True
    end
    object qryLoanDetDoLimit: TBooleanField
      FieldName = 'DoLimit'
    end
    object qryLoanDetLimitAmount: TBCDField
      FieldName = 'LimitAmount'
      Precision = 19
    end
    object qryLoanDetLimitPeriod: TIntegerField
      FieldName = 'LimitPeriod'
    end
    object qryLoanDetLimitReason: TIntegerField
      FieldName = 'LimitReason'
    end
    object qryLoanDetLimitDebt: TBooleanField
      FieldName = 'LimitDebt'
    end
    object qryLoanDetApplicationScore: TIntegerField
      FieldName = 'ApplicationScore'
    end
    object qryLoanDetBureauScore: TIntegerField
      FieldName = 'BureauScore'
    end
    object qryLoanDetMatrixScore: TBCDField
      FieldName = 'MatrixScore'
      Precision = 5
      Size = 2
    end
    object qryLoanDetUserApplicationScore: TIntegerField
      FieldName = 'UserApplicationScore'
    end
    object qryLoanDetUserBureauScore: TIntegerField
      FieldName = 'UserBureauScore'
    end
    object qryLoanDetUserMatrixScore: TBCDField
      FieldName = 'UserMatrixScore'
      Precision = 5
      Size = 2
    end
    object qryLoanDetCycleEndDay: TWordField
      FieldName = 'CycleEndDay'
    end
    object qryLoanDetScorecard: TStringField
      FieldName = 'Scorecard'
      Size = 5
    end
    object qryLoanDetCategory: TStringField
      FieldName = 'Category'
      ReadOnly = True
      Size = 50
    end
    object qryLoanDetCategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object qryLoanDetHandoverTypeID: TIntegerField
      FieldName = 'HandoverTypeID'
    end
    object qryLoanDetAccountFlagID: TAutoIncField
      FieldName = 'AccountFlagID'
      ReadOnly = True
    end
    object qryLoanDetFraudFlagDate: TDateTimeField
      FieldName = 'FraudFlagDate'
    end
    object qryLoanDetFraudUser: TStringField
      FieldName = 'FraudUser'
      Size = 10
    end
    object qryLoanDetFraudReason: TStringField
      FieldName = 'FraudReason'
      Size = 50
    end
    object qryLoanDetHostID: TIntegerField
      FieldName = 'HostID'
    end
    object qryLoanDetBookID: TIntegerField
      FieldName = 'BookID'
    end
  end
  object qryLT: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select LoanType, AccType, Category, LinkToRate, RateAdj, MinTerm' +
      ', MaxTerm, MinAmt, MaxAmt, RCterm, AffPerc, FeeT1, FeeT2, FeeT3,' +
      ' FeeT4, FeeT5, FeeT6, FeeT7, LimIntForm, LoanDesc'#13#10'from lsLoanTy' +
      'pes'#13#10'where LTStatus=0'
    Parameters = <>
    Left = 146
    Top = 25
  end
  object dtsLoanDet: TDataSource
    DataSet = qryLoanDet
    Left = 51
    Top = 13
  end
  object qryToUse: TADOQuery
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    Parameters = <>
    Left = 146
    Top = 617
  end
  object dtsLT: TDataSource
    DataSet = qryLT
    Left = 146
    Top = 13
  end
  object qryLTrate: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select EffectDate, IntRate '#13#10'from lsLoanTRate'#13#10'where LoanType = ' +
      ':LoanType'
    DataSource = dtsLT
    Parameters = <
      item
        Name = 'LoanType'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 146
    Top = 555
  end
  object qryLTFeeD: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select Right(TypeKey,1) as TypeKey, Description'#13#10'from CodeTable ' +
      'where GroupKey=100100'
    Parameters = <>
    Left = 51
    Top = 437
  end
  object qryLTFees: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT FeeID, EffectDate, PerOrAmt, Type, Type2, Value2, Offset2' +
      ', LTFeeID, ISNULL(CapAmount,0) AS CapAmount'#13#10'FROM lsLoanTFee'#13#10'WH' +
      'ERE LoanType = :inLT'
    Parameters = <
      item
        Name = 'inLT'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 250
    Top = 617
  end
  object qryLD3Pay: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryLD3PayBeforeOpen
    AfterOpen = qryLD3PayAfterOpen
    AfterInsert = qryLD3PayAfterInsert
    BeforeEdit = qryLD3PayBeforeEdit
    BeforePost = qryLD3PayBeforePost
    AfterPost = qryLD3PayAfterPost
    OnCalcFields = qryLD3PayCalcFields
    CommandText = 
      'SELECT PayoutID, LP.LoanID, PayNo, Amount, PayDate, LP.Name, Che' +
      'queNo, ThirdRefNo,  '#13#10'ThirdType, ThirdInvNo, '#13#10'LP.RefNo, Descrip' +
      'tion, CreateUser, LP.DateAdded, LP.UserID, System, LP.UpdateDate' +
      ', LP.UpdateUser,'#13#10'ISNULL('#13#10#9'(SELECT CASE PayoutID WHEN NULL THEN' +
      ' 0 ELSE 1 END'#13#10#9'FROM afOffers OE'#13#10#9'LEFT JOIN afOfferPayouts OP O' +
      'N OE.OfferID = OP.OfferID'#13#10#9'WHERE PayoutID = LP.PayoutID'#13#10#9'AND S' +
      'tatus = '#39'A'#39'),0) AS Accepted,'#13#10'CASE ThirdType'#13#10'WHEN 1 THEN '#39'Loan ' +
      'Settlement'#39#13#10'WHEN 2 THEN '#39'Arrears Settlement'#39#13#10'WHEN 3 THEN '#39'3rd ' +
      'Party - Beneficiary'#39#13#10'WHEN 4 THEN '#39'3rd Party - Once-Off'#39#13#10'ELSE '#39 +
      'Loan Settlement'#39#13#10'END AS PayName, '#13#10'CASE ThirdType'#13#10'WHEN 1 THEN ' +
      #39'Account No. '#39' + LS.RefNo'#13#10'WHEN 2 THEN '#39'Account No. '#39' + LT.RefNo' +
      #13#10'WHEN 3 THEN BN.EntCode + '#39' - '#39' + BN.Name + CASE BN.EntType WHE' +
      'N 1 THEN '#39' '#39' + Name2 ELSE '#39#39' END'#13#10'WHEN 4 THEN LP.Name'#13#10'END AS Re' +
      'ference, DocumentID, AccountID, LP.ExpiryDate, LP.Enabled'#13#10'FROM ' +
      'lsLoanDPay LP'#13#10'LEFT JOIN lsLoanDetail LS ON LP.RefNo = LS.LoanID' +
      ' AND ThirdType = 1'#13#10'LEFT JOIN lsLoanDetail LT ON LP.RefNo = LT.L' +
      'oanID AND ThirdType = 2'#13#10'LEFT JOIN EntityData BN ON LP.RefNo = B' +
      'N.EntityID AND ThirdType = 3'#13#10'WHERE LP.LoanID = :LoanID'
    IndexFieldNames = 'LoanID'
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 51
    Top = 170
    object qryLD3PayPayoutNo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PayoutNo'
      Calculated = True
    end
    object qryLD3PayPayoutID: TAutoIncField
      FieldName = 'PayoutID'
      ReadOnly = True
    end
    object qryLD3PayLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object qryLD3PayPayNo: TSmallintField
      FieldName = 'PayNo'
    end
    object qryLD3PayAmount: TBCDField
      FieldName = 'Amount'
      Precision = 10
    end
    object qryLD3PayPayDate: TDateTimeField
      FieldName = 'PayDate'
    end
    object qryLD3PayName: TStringField
      FieldName = 'Name'
      Size = 35
    end
    object qryLD3PayChequeNo: TStringField
      FieldName = 'ChequeNo'
      Size = 15
    end
    object qryLD3PayThirdType: TIntegerField
      FieldName = 'ThirdType'
    end
    object qryLD3PayThirdInvNo: TStringField
      FieldName = 'ThirdInvNo'
      Size = 15
    end
    object qryLD3PayThirdRefNo: TStringField
      FieldName = 'ThirdRefNo'
      Size = 30
    end
    object qryLD3PayRefNo: TIntegerField
      FieldName = 'RefNo'
    end
    object qryLD3PayDescription: TStringField
      FieldName = 'Description'
      Size = 200
    end
    object qryLD3PayDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
    object qryLD3PayUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qryLD3PayAccepted: TIntegerField
      FieldName = 'Accepted'
      ReadOnly = True
    end
    object qryLD3PaySystem: TBooleanField
      FieldName = 'System'
    end
    object qryLD3PayUpdateDetails: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateDetails'
      Size = 30
      Calculated = True
    end
    object qryLD3PayUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
    end
    object qryLD3PayUpdateUser: TStringField
      FieldName = 'UpdateUser'
      Size = 10
    end
    object qryLD3PayCreateUser: TStringField
      FieldName = 'CreateUser'
      Size = 10
    end
    object qryLD3PayPayName: TStringField
      FieldName = 'PayName'
      ReadOnly = True
      Size = 23
    end
    object qryLD3PayReference: TStringField
      FieldName = 'Reference'
      ReadOnly = True
      Size = 113
    end
    object qryLD3PayDocumentID: TIntegerField
      FieldName = 'DocumentID'
    end
    object qryLD3PayAccountID: TIntegerField
      FieldName = 'AccountID'
    end
    object qryLD3PayExpiryDate: TDateTimeField
      FieldName = 'ExpiryDate'
    end
    object qryLD3PayEnabled: TBooleanField
      FieldName = 'Enabled'
    end
  end
  object dtsLD3Pay: TDataSource
    DataSet = qryLD3Pay
    Left = 51
    Top = 158
  end
  object qry3PayNextNo: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    CommandText = 'select Max(PayNo) from lsLoanDPay'#13#10'where LoanID= :LoanID'
    DataSource = dtsLoanDet
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
    Left = 51
    Top = 373
  end
  object qry3PayTot: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 'select sum(Amount) from lsLoanDPay where LoanID= :LoanID'
    DataSource = dtsLD3Pay
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 31
      end>
    Prepared = True
    Left = 1179
    Top = 241
    object qry3PayTotCOLUMN1: TBCDField
      FieldName = 'COLUMN1'
      currency = True
      Precision = 19
    end
  end
  object dts3PayTot: TDataSource
    DataSet = qry3PayTot
    Left = 1179
    Top = 228
  end
  object qryTrack: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    OnCalcFields = qryTrackCalcFields
    CommandText = 
      'select LoanID, CtlID, Checked, CheckDate, UserID, Notes,'#13#10'CONVER' +
      'T(VARCHAR(10),CheckDate,103) + '#39' '#39' +'#13#10'CONVERT(VARCHAR(5),CheckDa' +
      'te,108) AS FMTCheckDate'#13#10'from lsLDSaddChk'#13#10'where LoanID =:LoanID' +
      ' and (CtlID between 100123001 and 100123999'#13#10'or CtlID between 10' +
      '0120001 and 100120999)'#13#10
    DataSource = dtsLoanDet
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
    Left = 146
    Top = 96
    object qryTrackLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object qryTrackCtlID: TIntegerField
      FieldName = 'CtlID'
    end
    object qryTrackLUTrack: TStringField
      FieldKind = fkLookup
      FieldName = 'LUTrack'
      LookupDataSet = qryAllLU
      LookupKeyFields = 'TypeKey'
      LookupResultField = 'Description'
      KeyFields = 'CtlID'
      Size = 50
      Lookup = True
    end
    object qryTrackChecked: TWordField
      FieldName = 'Checked'
    end
    object qryTrackCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object qryTrackUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qryTrackNotes: TStringField
      FieldName = 'Notes'
      Size = 255
    end
    object qryTrackYesNo: TStringField
      FieldKind = fkCalculated
      FieldName = 'YesNo'
      Size = 3
      Calculated = True
    end
    object qryTrackFMTCheckDate: TStringField
      FieldName = 'FMTCheckDate'
      ReadOnly = True
      Size = 16
    end
  end
  object dtsTrack: TDataSource
    DataSet = qryTrack
    Left = 146
    Top = 84
  end
  object cmdCalc: TADOCommand
    CommandText = 'lsCalcTotSecAmt;1'
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
        Name = '@ValSum'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@CashDep'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end>
    Left = 146
    Top = 373
  end
  object qryStatus: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = qryStatusAfterOpen
    AfterClose = qryStatusAfterClose
    BeforePost = qryStatusBeforePost
    OnCalcFields = qryStatusCalcFields
    CommandText = 
      'SELECT LoanID, CtlID, Description, Checked, CheckDate, AC.UserID' +
      ', Notes,'#13#10#9'CAST('#13#10#9#9'CASE '#13#10#9#9#9'WHEN CtlID IN (100108009) THEN 1'#13#10 +
      #9#9#9'ELSE 0 '#13#10#9#9'END AS BIT'#13#10#9') AS ReadOnly, Authorised, AuthoriseD' +
      'ate, AuthoriseUser'#13#10'FROM lsLDSaddChk AC'#13#10'LEFT JOIN CodeTable CT ' +
      'ON CtlID = TypeKey'#13#10'WHERE CtlID BETWEEN 100108001 AND 100108999'#13 +
      #10'AND LoanID = :LoanID'#13#10'ORDER BY Description'#13#10
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
    Left = 51
    Top = 96
  end
  object dtsStatus: TDataSource
    DataSet = qryStatus
    Left = 51
    Top = 84
  end
  object qryLUStatus: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select TypeKey As IDVal, GroupKey, Description '#13#10'from CodeTable'#13 +
      #10'where Groupkey = 100108 and NotUse=0'
    Parameters = <>
    Left = 250
    Top = 95
    object qryLUStatusIDVal: TIntegerField
      FieldName = 'IDVal'
      Visible = False
    end
    object qryLUStatusDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object qryLUStatusGroupKey: TIntegerField
      FieldName = 'GroupKey'
      Visible = False
    end
  end
  object dtsLUStatus: TDataSource
    DataSet = qryLUStatus
    Left = 250
    Top = 83
  end
  object cmdGetAff: TADOCommand
    CommandText = 'lsEntPsnAfford;1'
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
        Name = '@EntID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TotAff'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        Precision = 19
        Value = Null
      end
      item
        Name = '@CurLns'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        Precision = 19
        Value = Null
      end>
    Left = 51
    Top = 496
  end
  object qryAllLU: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select TypeKey, GroupKey, Description '#13#10'from CodeTable'#13#10'where Gr' +
      'oupKey in (100108,100120,100123,100124)'
    Parameters = <>
    Left = 1287
    Top = 673
  end
  object qryLUReasons: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Filtered = True
    LockType = ltReadOnly
    CommandText = 
      'SELECT TypeKey As IDVal, GroupKey, Description '#13#10'FROM CodeTable'#13 +
      #10'WHERE Groupkey IN (100133,100134)'#13#10'AND NotUse=0'#13#10#13#10'UNION'#13#10#13#10'SEL' +
      'ECT StatusReasonID, 10, Description'#13#10'FROM ACC_StatusReason'#13#10#13#10'OR' +
      'DER BY Description'
    Parameters = <>
    Left = 363
    Top = 25
    object IntegerField1: TIntegerField
      FieldName = 'GroupKey'
      Visible = False
    end
    object StringField1: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'IDVal'
    end
  end
  object dtsLUReasons: TDataSource
    DataSet = qryLUReasons
    Left = 363
    Top = 13
  end
  object qryLDStsChange: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select LoanID, DateChange, Status, UserID from lsLDStsChange'#13#10'wh' +
      'ere LoanID = :LoanID'#13#10'order by DateChange Desc'
    DataSource = dtsLoanDet
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 250
    Top = 241
    object qryLDStsChangeLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object qryLDStsChangeDateChange: TDateTimeField
      FieldName = 'DateChange'
    end
    object qryLDStsChangeStatus: TSmallintField
      FieldName = 'Status'
    end
    object qryLDStsChangeUserID: TStringField
      FieldName = 'UserID'
      Size = 50
    end
  end
  object dtsLDStsChange: TDataSource
    DataSet = qryLDStsChange
    Left = 250
    Top = 228
  end
  object qryLTFix: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select LoanType,LoanPeriod,LoanCapital,FixInstal'#13#10'from lsLoanTFi' +
      'x'#13#10'where LoanType = :inLT'
    Parameters = <
      item
        Name = 'inLT'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 466
    Top = 555
  end
  object qryAppStatus: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'select LoanID, CtlID, Description, Checked, CheckDate, AC.UserID' +
      ', Notes '#13#10'from lsLDSaddChk AC'#13#10'left join CodeTable CT on AC.CtlI' +
      'D = CT.TypeKey'#13#10'where CtlID between 100108001 and 100108999 and ' +
      'LoanID =:LoanID'
    DataSource = dtsLoanDet
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 51
    Top = 307
  end
  object qryIsBadDebt: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select Count(*)'#13#10'from lsBatchHistory'#13#10'where LoanID = :LoanID and' +
      ' TransType = 24'
    DataSource = dtsLoanDet
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 800
    Top = 373
  end
  object qryPrimeRate: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select EffectDate, RateType'#13#10'from lsPrimeRate'#13#10'Group by EffectDa' +
      'te, RateType'#13#10'having EffectDate = Max(EffectDate)'
    Parameters = <>
    Left = 466
    Top = 617
  end
  object qryDocPath: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 'SELECT ValStr'#13#10'FROM General'#13#10'WHERE RecID = 10020'
    Parameters = <>
    Left = 1404
    Top = 617
  end
  object qryRestructured: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'SELECT COUNT(*)'#13#10'FROM lsLDStruc'#13#10'WHERE LoanID = :LoanID'
    DataSource = dtsLoanDet
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
    Left = 571
    Top = 617
  end
  object qryDupDocs: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'prDocNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'prLoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT COUNT(*)'
      'FROM lsLoanDetail'
      'WHERE RefNo = :prDocNo'
      'AND LoanID <> :prLoanID')
    Left = 1179
    Top = 673
  end
  object cdsAFSettle: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAfSettle'
    OnCalcFields = cdsAFSettleCalcFields
    OnNewRecord = cdsAFSettleNewRecord
    Left = 48
    Top = 747
    object cdsAFSettleSettleID: TAutoIncField
      FieldName = 'SettleID'
      ReadOnly = True
    end
    object cdsAFSettleLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object cdsAFSettleSettleLoanID: TIntegerField
      FieldName = 'SettleLoanID'
    end
    object cdsAFSettleSettleType: TSmallintField
      FieldName = 'SettleType'
    end
    object cdsAFSettleThirdParty: TStringField
      FieldName = 'ThirdParty'
      Size = 30
    end
    object cdsAFSettleAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object cdsAFSettleSettleDesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'SettleDesc'
      Size = 30
      Calculated = True
    end
    object cdsAFSettleDescription: TStringField
      FieldKind = fkCalculated
      FieldName = 'Description'
      Size = 30
      Calculated = True
    end
  end
  object dtsAFSettle: TDataSource
    DataSet = cdsAFSettle
    Left = 48
    Top = 734
  end
  object dsAfSettle: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT SettleID, LoanID, SettleLoanID, SettleType, '#13#10'ThirdParty,' +
      ' Amount'#13#10'FROM afSettle'#13#10'WHERE LoanID = :LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 680
    Top = 555
  end
  object dspAfSettle: TDataSetProvider
    DataSet = dsAfSettle
    ResolveToDataSet = True
    Left = 144
    Top = 735
  end
  object dsAfLoans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LoanID, Instalment, ofAmount, ofTerm, ofInstalment,'#13#10'ofAc' +
      'tion, Notes'#13#10'FROM afLoans'#13#10'WHERE LoanID = :LoanID'
    DataSource = dtsLoanDet
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
    Left = 800
    Top = 555
  end
  object cdsAfLoans: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAfLoans'
    AfterOpen = cdsAfLoansAfterOpen
    Left = 571
    Top = 25
    object cdsAfLoansLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object cdsAfLoansInstalment: TBCDField
      FieldName = 'Instalment'
      Precision = 19
    end
    object cdsAfLoansofAmount: TBCDField
      FieldName = 'ofAmount'
      Precision = 19
    end
    object cdsAfLoansofTerm: TIntegerField
      FieldName = 'ofTerm'
    end
    object cdsAfLoansofInstalment: TBCDField
      FieldName = 'ofInstalment'
      Precision = 19
    end
    object cdsAfLoansofAction: TIntegerField
      FieldName = 'ofAction'
    end
    object cdsAfLoansNotes: TMemoField
      FieldName = 'Notes'
      BlobType = ftMemo
    end
  end
  object dtsAfLoans: TDataSource
    DataSet = cdsAfLoans
    Left = 571
    Top = 13
  end
  object dsAfActions: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT 0 AS ActionID, '#39'(none)'#39' AS Description'#13#10#13#10'UNION'#13#10#13#10'SELECT' +
      ' 1, '#39'Accepted'#39#13#10#13#10'UNION'#13#10#13#10'SELECT 2, '#39'Cancelled'#39#13#10#13#10'UNION'#13#10#13#10'SEL' +
      'ECT 3, '#39'Requested'#39
    Parameters = <>
    Left = 363
    Top = 94
  end
  object dtsAfActions: TDataSource
    DataSet = dsAfActions
    Left = 363
    Top = 82
  end
  object dspAfLoans: TDataSetProvider
    DataSet = dsAfLoans
    ResolveToDataSet = True
    Left = 250
    Top = 735
  end
  object dsAfLoanLU: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LoanID, LoanType, LoanCapital, IntRate, LoanPeriod, LoanB' +
      'al, FirstInsDate, EndDate'#13#10'FROM lsLoanDetail'#13#10'WHERE EntityID = :' +
      'EntityID'
    DataSource = dtsLoanDet
    MasterFields = 'EntityID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1404
    Top = 673
    object dsAfLoanLULoanID: TAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'Loan ID'
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object dsAfLoanLULoanType: TStringField
      DisplayLabel = 'Loan Type'
      DisplayWidth = 5
      FieldName = 'LoanType'
      Size = 3
    end
    object dsAfLoanLULoanCapital: TBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Loan Capital'
      DisplayWidth = 12
      FieldName = 'LoanCapital'
      currency = True
      Precision = 19
    end
    object dsAfLoanLUIntRate: TBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Rate'
      DisplayWidth = 7
      FieldName = 'IntRate'
      Precision = 5
      Size = 2
    end
    object dsAfLoanLULoanPeriod: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Period'
      DisplayWidth = 8
      FieldName = 'LoanPeriod'
    end
    object dsAfLoanLUFirstInsDate: TDateTimeField
      DisplayLabel = 'First Instalment'
      FieldName = 'FirstInsDate'
    end
    object dsAfLoanLUEndDate: TDateTimeField
      DisplayLabel = 'End Date'
      FieldName = 'EndDate'
    end
  end
  object dsOffers: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Filter = 'Visible = 1'
    BeforeEdit = dsOffersBeforeEdit
    BeforePost = dsOffersBeforePost
    OnCalcFields = dsOffersCalcFields
    OnNewRecord = dsOffersNewRecord
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SET @LoanID = :LoanID'#13#10'SELECT '#13#10#9'OS.Offer' +
      'ID, OS.LoanID, OS.Amount, OS.Period, OS.Instalment, OS.Status, O' +
      'S.UpdateUser, OS.UpdateDate, '#13#10#9'OS.System, OS.Visible, OS.Enable' +
      'd, OT.Description AS OfferType'#13#10'FROM afOffers OS'#13#10'LEFT JOIN afQu' +
      'oteOffers QO ON OS.OfferID = QO.OfferID'#13#10'LEFT JOIN afOfferType O' +
      'T ON OS.OfferTypeID = OT.OfferTypeID'#13#10'WHERE LoanID = @LoanID'#13#10#9'A' +
      'ND (QO.QuotationID IN'#13#10#9#9#9'(SELECT MAX(QuotationID)'#13#10#9#9#9'FROM afQu' +
      'otations'#13#10#9#9#9'WHERE LoanID = @LoanID'#13#10#9#9#9#9'AND Status IN ('#39'S'#39','#39'A'#39',' +
      #39#39'))'#13#10#9#9'OR OS.Enabled = 0'#13#10#9#9'OR QO.QuotationID IS NULL)'#13#10'ORDER B' +
      'Y OS.OfferID'#13#10
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 250
    Top = 170
    object dsOffersOffer: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Offer'
      Calculated = True
    end
    object dsOffersOfferID: TAutoIncField
      FieldName = 'OfferID'
      ReadOnly = True
    end
    object dsOffersLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object dsOffersAmount: TBCDField
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object dsOffersPeriod: TWordField
      FieldName = 'Period'
    end
    object dsOffersInstalment: TBCDField
      FieldName = 'Instalment'
      currency = True
      Precision = 19
    end
    object dsOffersNetAmount: TBCDField
      FieldKind = fkCalculated
      FieldName = 'NetAmount'
      currency = True
      Size = 0
      Calculated = True
    end
    object dsOffersStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object dsOffersStatusLU: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusLU'
      Calculated = True
    end
    object dsOffersUpdateUser: TStringField
      FieldName = 'UpdateUser'
      Size = 10
    end
    object dsOffersUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
    end
    object dsOffersUpdateDetails: TStringField
      FieldKind = fkCalculated
      FieldName = 'UpdateDetails'
      Size = 30
      Calculated = True
    end
    object dsOffersSystem: TBooleanField
      FieldName = 'System'
    end
    object dsOffersVisible: TBooleanField
      FieldName = 'Visible'
    end
    object dsOffersEnabled: TBooleanField
      FieldName = 'Enabled'
    end
    object dsOffersOfferType: TStringField
      FieldName = 'OfferType'
    end
  end
  object dtsOffers: TDataSource
    DataSet = dsOffers
    Left = 250
    Top = 158
  end
  object dsNoPayouts: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'SELECT COUNT(*) AS NoPays'#13#10'FROM lsLoanDPay'#13#10'WHERE LoanID = :Loan' +
      'ID'
    DataSource = dtsLoanDet
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
    Left = 1060
    Top = 555
  end
  object dsOfferPayouts: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT PayoutID, OP.OfferID'#13#10'FROM afOfferPayouts OP'#13#10'LEFT JOIN a' +
      'fOffers OE ON OP.OfferID = OE.OfferID'#13#10'WHERE LoanID = :LoanID'
    DataSource = dtsLoanDet
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 363
    Top = 241
  end
  object dsOffersMatrix: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Filter = 'Visible = 1'
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SET @LoanID = :LoanID'#13#10#13#10'SELECT OS.OfferI' +
      'D, LoanID, Amount, Period, Instalment, Status, UpdateUser, Updat' +
      'eDate, System, Visible,Enabled'#13#10'FROM afOffers OS'#13#10'LEFT JOIN afQu' +
      'oteOffers QO ON OS.OfferID = QO.OfferID'#13#10'WHERE LoanID = @LoanID'#13 +
      #10'AND (ISNULL(QuotationID,0) IN'#13#10#9'(SELECT MAX(QuotationID)'#13#10#9'FROM' +
      ' afQuotations'#13#10#9'WHERE LoanID = @LoanID'#13#10#9'UNION SELECT 0)'#13#10'OR Ena' +
      'bled = 0)'#13#10'ORDER BY OS.OfferID'#13#10#13#10#13#10'/*SELECT OfferID, LoanID, Am' +
      'ount, Period, Instalment, Status, UpdateUser, UpdateDate, System' +
      ', Visible,Enabled'#13#10'FROM afOffers'#13#10'WHERE LoanID = LoanID*/'#13#10'--ORD' +
      'ER BY System DESC, OfferID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 672
    Top = 673
    object AutoIncField1: TAutoIncField
      FieldName = 'OfferID'
      ReadOnly = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'LoanID'
    end
    object BCDField1: TBCDField
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object WordField1: TWordField
      FieldName = 'Period'
    end
    object BCDField2: TBCDField
      FieldName = 'Instalment'
      currency = True
      Precision = 19
    end
    object StringField2: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object dsOffersMatrixSystem: TBooleanField
      FieldName = 'System'
    end
  end
  object dsOfferStatus: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT NULL AS Status, '#39#39' AS Description'#13#10'UNION'#13#10'SELECT '#39'A'#39','#39'Acc' +
      'epted'#39#13#10'UNION'#13#10'SELECT '#39'D'#39', '#39'Declined'#39
    Parameters = <>
    Left = 1404
    Top = 437
  end
  object dsPayMatrix: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT PayoutID, LoanID, PayNo, Amount, PayDate, Name, ChequeNo,' +
      ' ThirdRefNo,   ThirdInvNo, RefNo, Description, DateAdded, UserID' +
      ', System'#13#10'FROM lsLoanDPay'#13#10'WHERE LoanID = :LoanID'#13#10'ORDER BY Payo' +
      'utID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 568
    Top = 735
  end
  object qryHasOffer: TADOQuery
    Connection = dtmMain.dbData
    DataSource = dtsLoanDet
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
      'SELECT COUNT(*)'
      'FROM afOffers'
      'WHERE LoanID = :LoanID'
      'AND Status = '#39'A'#39)
    Left = 571
    Top = 555
  end
  object qryTotalPayouts: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'OfferID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT SUM(LP.Amount) AS TotalPayouts'
      'FROM afOffers OE'
      'LEFT JOIN afOfferPayouts OP ON OE.OfferID = OP.OfferID'
      'LEFT JOIN lsLoanDPay LP ON OP.PayoutID = LP.PayoutID'
      'WHERE OE.OfferID = :OfferID')
    Left = 571
    Top = 496
  end
  object dsNoteSys: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'SELECT NoteID, Tablename, KeyValue, Category, CreateUser, Create' +
      'Date, UpdateDate, DeleteDate, Note'#13#10'FROM NoteSys'#13#10'WHERE DeleteDa' +
      'te IS NULL'#13#10'AND Tablename = '#39'lsLoanDetail'#39#13#10'AND Category = 11000' +
      '4012'#13#10'AND KeyValue = :LoanID'#13#10'ORDER BY CreateDate'
    DataSource = dtsLoanDet
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    Left = 464
    Top = 735
  end
  object dsEditNotes: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10'CAST(Note AS varchar(50)) + CASE WHEN Len(CAST(Note AS ' +
      'varchar(55))) BETWEEN 51 AND 55 THEN '#39'...'#39' ELSE '#39#39' END AS Previe' +
      'w, '#13#10'NoteID, '#13#10'Tablename, KeyValue, Category, CreateUser, Create' +
      'Date, UpdateDate, DeleteDate, Note,'#13#10'CONVERT(varchar(5),CreateDa' +
      'te,108) AS NoteTime'#13#10'FROM NoteSys '#13#10'WHERE DeleteDate IS NULL'#13#10'AN' +
      'D Tablename = '#39'lsLoanDetail'#39#13#10'AND Category = 110004012'#13#10'AND KeyV' +
      'alue = :LoanID'#13#10'AND CONVERT(varchar(8),CreateDate,112) = CONVERT' +
      '(varchar(8),getdate(),112)'#13#10'AND CreateUser = :prUserID'#13#10'ORDER BY' +
      ' CreateDate DESC'
    DataSource = dtsLoanDet
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'prUserID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 363
    Top = 170
    object dsEditNotesNoteID: TAutoIncField
      FieldName = 'NoteID'
      ReadOnly = True
    end
    object dsEditNotesTablename: TStringField
      FieldName = 'Tablename'
      Size = 30
    end
    object dsEditNotesKeyValue: TStringField
      FieldName = 'KeyValue'
      Size = 30
    end
    object dsEditNotesCategory: TIntegerField
      FieldName = 'Category'
    end
    object dsEditNotesCreateUser: TStringField
      FieldName = 'CreateUser'
      Size = 10
    end
    object dsEditNotesCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object dsEditNotesUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
    end
    object dsEditNotesDeleteDate: TDateTimeField
      FieldName = 'DeleteDate'
    end
    object dsEditNotesNote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object dsEditNotesPreview: TStringField
      FieldName = 'Preview'
      ReadOnly = True
      Size = 53
    end
    object dsEditNotesNoteTime: TStringField
      FieldName = 'NoteTime'
      ReadOnly = True
      Size = 5
    end
  end
  object dtsEditNotes: TDataSource
    DataSet = dsEditNotes
    Left = 363
    Top = 158
  end
  object dsDDLoanStatus: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT EffectiveDate, LoanStatus, CreateUser, CreateDate,'#13#10'dbo.F' +
      'GetLoanStatusName(LoanStatus) AS StatusName'#13#10'FROM lsDDLoanStatus' +
      #13#10'WHERE LoanID = :LoanID'#13#10'ORDER BY DDID DESC'
    DataSource = dtsLoanDet
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2225
      end>
    Left = 466
    Top = 241
    object dsDDLoanStatusEffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object dsDDLoanStatusLoanStatus: TWordField
      FieldName = 'LoanStatus'
    end
    object dsDDLoanStatusCreateUser: TStringField
      FieldName = 'CreateUser'
      Size = 10
    end
    object dsDDLoanStatusCreateDate: TDateTimeField
      FieldName = 'CreateDate'
      DisplayFormat = 'HH:MM AM/PM'
    end
    object dsDDLoanStatusStatusName: TStringField
      FieldName = 'StatusName'
      ReadOnly = True
    end
  end
  object dtsDDLoanStatus: TDataSource
    DataSet = dsDDLoanStatus
    Left = 466
    Top = 228
  end
  object dsOtherLoans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LoanID, EntityID, LoanCapital, LD.LoanType, AccType, Stat' +
      'us, '#13#10'ISNULL((SELECT TOP 1 CAST(CASE WHEN FeeID IS NULL THEN 0 E' +
      'LSE 1 END AS bit) '#13#10'FROM lsLoanTFee LF'#13#10'WHERE LF.LoanType = LD.L' +
      'oanType'#13#10'AND FeeID = 2),0) AS AdminFee'#13#10'FROM lsLoanDetail LD'#13#10'LE' +
      'FT JOIN lsLoanTypes LT ON LD.LoanType = LT.LoanType'#13#10'WHERE Statu' +
      's IN (30,60,65,68)'#13#10'AND dbo.FGetCapBalDate(LoanID,getdate()) > 0' +
      #13#10'AND EntityID = :EntityID'#13#10'AND LoanID <> :LoanID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1287
    Top = 555
  end
  object dsStatusNotes: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT CG.TypeKey, Description'#13#10'FROM CodeTblGrp CG'#13#10'LEFT JOIN Co' +
      'deTable CT ON CG.TypeKey = CT.TypeKey'#13#10'WHERE GrpKey = :CtlID'#13#10'OR' +
      'DER BY Description'
    DataSource = dtsStatus
    Parameters = <
      item
        Name = 'CtlID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 51
    Top = 241
  end
  object dtsStatusNotes: TDataSource
    DataSet = dsStatusNotes
    Left = 51
    Top = 228
  end
  object dsAccBalance: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 'EXEC lsGetAccBal :LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1287
    Top = 307
  end
  object dsFixInstalment: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT FixInstal'#13#10'FROM lsLoanTFix'#13#10'WHERE LoanPeriod = :Period'#13#10'A' +
      'ND LoanCapital = :LoanCapital'#13#10'AND LoanType = :LoanType'#13#10'ORDER B' +
      'Y FixInstal DESC'
    Parameters = <
      item
        Name = 'Period'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'LoanCapital'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'LoanType'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 466
    Top = 307
  end
  object dsNoLoans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT COUNT(*) + 1'#13#10'FROM lsLoanDetail'#13#10'WHERE EntityID = :Entity' +
      'ID'#13#10'AND Status >= 30'#13#10'AND LoanID < :LoanID'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1287
    Top = 373
  end
  object dsPayouts: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT PayoutID, LoanID, PayNo, ThirdType, Amount, PayDate, Name' +
      ', ChequeNo, ThirdRefNo,'#13#10'ThirdInvNo, RefNo, Description, DateAdd' +
      'ed, UserID, PayAuthorisation'#13#10'FROM lsLoanDPay'#13#10'WHERE LoanID = :L' +
      'oanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1287
    Top = 617
  end
  object dsLoanOffers: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT OfferID, LoanID, Amount, Period, Instalment, Status, Upda' +
      'teUser, UpdateDate, System'#13#10'FROM afOffers'#13#10'WHERE LoanID = :LoanI' +
      'D'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1404
    Top = 373
  end
  object dsOfferInstal: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LoanPeriod'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'LoanCapital'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Top 1 LoanPeriod, LoanCapital, FixInstal + ISNULL(SUM(FF.' +
        'PerOrAmt),0) + (ISNULL(SUM(FP.PerOrAmt),0)/100) * LoanCapital AS' +
        ' FixInstal'
      'FROM lsLoanTFix LX'
      'LEFT JOIN lsLoanTypes LT ON LX.LoanType = LT.LoanType'
      'LEFT JOIN '
      #9'(SELECT PerOrAmt, LF.LoanType'
      #9'FROM lsLoanTFee LF'
      #9'LEFT JOIN '
      #9#9'(SELECT 1 AS FeeID, FeeT1 AS FeeType, LoanType'
      #9#9'FROM lsLoanTypes'
      #9#9'UNION'
      #9#9'SELECT 2, FeeT2, LoanType'
      #9#9'FROM lsLoanTypes'
      #9#9'UNION'
      #9#9'SELECT 3, FeeT3, LoanType'
      #9#9'FROM lsLoanTypes'
      #9#9'UNION'
      #9#9'SELECT 4, FeeT4, LoanType'
      #9#9'FROM lsLoanTypes'
      #9#9'UNION'
      #9#9'SELECT 5, FeeT5, LoanType'
      #9#9'FROM lsLoanTypes'
      #9#9'UNION'
      #9#9'SELECT 6, FeeT6, LoanType'
      
        #9#9'FROM lsLoanTypes)FT ON LF.FeeID = FT.FeeID AND LF.LoanType = F' +
        'T.LoanType'
      #9'WHERE FeeType IN (4,5,6)'
      #9'AND Type = '#39'FIX'#39') FF ON LX.LoanType = FF.LoanType'
      'LEFT JOIN '
      #9'(SELECT PerOrAmt, LF.LoanType'
      #9'FROM lsLoanTFee LF'
      #9'LEFT JOIN '
      #9#9'(SELECT 1 AS FeeID, FeeT1 AS FeeType, LoanType'
      #9#9'FROM lsLoanTypes'
      #9#9'UNION'
      #9#9'SELECT 2, FeeT2, LoanType'
      #9#9'FROM lsLoanTypes'
      #9#9'UNION'
      #9#9'SELECT 3, FeeT3, LoanType'
      #9#9'FROM lsLoanTypes'
      #9#9'UNION'
      #9#9'SELECT 4, FeeT4, LoanType'
      #9#9'FROM lsLoanTypes'
      #9#9'UNION'
      #9#9'SELECT 5, FeeT5, LoanType'
      #9#9'FROM lsLoanTypes'
      #9#9'UNION'
      #9#9'SELECT 6, FeeT6, LoanType'
      
        #9#9'FROM lsLoanTypes)FT ON LF.FeeID = FT.FeeID AND LF.LoanType = F' +
        'T.LoanType'
      #9'WHERE FeeType IN (4,5,6)'
      #9'AND Type = '#39'%'#39') FP ON LX.LoanType = FP.LoanType'
      'WHERE LoanPeriod = :LoanPeriod'
      'AND LTStatus = 0'
      'AND LoanCapital = :LoanCapital'
      'AND AccType IN (5,6,7,8)'
      'AND Category = 100101002'
      'GROUP BY LX.LoanType, LoanPeriod, LoanCapital, FixInstal'
      'ORDER BY LoanCapital DESC, LoanPeriod DESC, FixInstal DESC')
    Left = 1404
    Top = 307
  end
  object dsOfferLoan: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT ISNULL(PayFreq,'#39'M'#39') AS PayFreq, CAST(CASE WHEN ISNULL(ER.' +
      'Relation,0) > 0 THEN 1 ELSE 0 END AS bit) AS Payroll'#13#10'FROM lsLoa' +
      'nDetail LD'#13#10'LEFT JOIN lsEntPsnAdd PA ON LD.EntityID = PA.EntityI' +
      'D'#13#10'LEFT JOIN EntRelation ER ON PA.EmpID = ER.EntityID AND Relati' +
      'on = 100001023'#13#10'WHERE LoanID = :LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 800
    Top = 673
  end
  object qryExpiredPayouts: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    DataSource = dtsLoanDet
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
      'SELECT COUNT(*)'
      'FROM lsLoanDPay'
      'WHERE LoanID = :LoanID'
      'AND DATEDIFF(Day,ISNULL(UpdateDate,DateAdded), getdate()) > 3'
      'AND ThirdType IN (0,1)'
      'AND Enabled = 1')
    Left = 51
    Top = 673
  end
  object qryExpiredOption: TADOQuery
    Connection = dtmMain.dbData
    DataSource = dtsLoanDet
    Parameters = <
      item
        Name = 'OfferID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT COUNT(*)'
      'FROM afOfferPayouts'
      'WHERE OfferID = :OfferID'
      'AND PayoutID IN'
      '(SELECT PayoutID'
      'FROM lsLoanDPay'
      'WHERE LoanID = :LoanID'
      'AND DATEDIFF(Day,ISNULL(UpdateDate,DateAdded), getdate()) > 3'
      'AND System = 1)')
    Left = 680
    Top = 496
  end
  object dsStatusChecks: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT COUNT(*)'#13#10'FROM lsLDSaddChk'#13#10'WHERE LoanID = :LoanID'#13#10'AND C' +
      'tlID LIKE '#39'100108%'#39#13#10'AND ISNULL(Authorised, 0) = 0'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 922
    Top = 555
  end
  object dsTrackingCheck: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT COUNT(*)'#13#10'FROM lsLDSaddChk'#13#10'WHERE LoanID = :LoanID'#13#10'AND C' +
      'hecked = 0'#13#10'AND CtlID <> 100123004'#13#10#13#10
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 922
    Top = 496
  end
  object qryPayouts: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = qryPayoutsAfterOpen
    BeforeClose = qryPayoutsBeforeClose
    AfterInsert = qryPayoutsAfterInsert
    BeforePost = qryPayoutsBeforePost
    OnNewRecord = qryPayoutsNewRecord
    CommandText = 
      'SELECT LP.PayoutID, LP.LoanID, ThirdType, Amount, LP.Instalment,' +
      ' PayDate, LP.Name, ThirdRefNo, Description, ExpiryDate,'#13#10'LP.Date' +
      'Added, LP.CreateUser, LP.UpdateDate, LP.UpdateUser, System, LD.R' +
      'efNo AS LoanRef, LP.RefNo,'#13#10'ED.EntCode + '#39' - '#39' + ED.Name + '#39' '#39' +' +
      ' ED.Name2 AS Beneficiary, LP.PayNo, LP.AccountID, DocumentID,'#13#10'S' +
      'ubscriber, BA.AccountNo, BA.Instalment AS BureauInstalment, Bank' +
      'Name, BranchName, BranchCode,'#13#10'AccountName, LP.AccountType AS Ba' +
      'nkAccType, LP.AccountNo AS BankAccNo, PayAuthorisation'#13#10'FROM lsL' +
      'oanDPay LP'#13#10'LEFT JOIN lsLoanDetail LD ON PayID = LD.LoanID AND T' +
      'hirdType IN (1,2)'#13#10'LEFT JOIN EntityData ED ON PayID = ED.EntityI' +
      'D AND ThirdType = 3'#13#10'LEFT JOIN BureauAccounts BA ON LP.AccountID' +
      ' = BA.AccountID'#13#10'WHERE LP.LoanID = :LoanID'
    DataSource = dtsLoanDet
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
    Left = 146
    Top = 170
  end
  object dtsPayouts: TDataSource
    DataSet = qryPayouts
    Left = 146
    Top = 158
  end
  object dsBeneficiaries: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT ER.EntityID, EntCode, Name AS FirstName, Name2 AS LastNam' +
      'e, RegNo AS IDNumber, EntCode + '#39' - '#39' + Name + '#13#10'CASE EntType WH' +
      'EN 1 THEN '#39' '#39' + Name2 ELSE '#39#39' END AS Beneficiary'#13#10'FROM EntRelati' +
      'on ER'#13#10'LEFT JOIN EntityData ED ON ER.EntityID = ED.EntityID'#13#10'WHE' +
      'RE Relation = 100001013'#13#10'AND LinkID = 0'#13#10'AND ER.Status = 0'
    Parameters = <>
    Left = 466
    Top = 496
    object dsBeneficiariesEntityID: TIntegerField
      FieldName = 'EntityID'
      Visible = False
    end
    object dsBeneficiariesEntCode: TStringField
      DisplayLabel = 'Code'
      FieldName = 'EntCode'
      Size = 10
    end
    object dsBeneficiariesFirstName: TStringField
      DisplayLabel = 'First Name'
      DisplayWidth = 30
      FieldName = 'FirstName'
      Size = 50
    end
    object dsBeneficiariesLastName: TStringField
      DisplayLabel = 'Last Name'
      DisplayWidth = 30
      FieldName = 'LastName'
      Size = 50
    end
    object dsBeneficiariesIDNumber: TStringField
      DisplayLabel = 'ID Number'
      FieldName = 'IDNumber'
      Size = 15
    end
    object dsBeneficiariesBeneficiary: TStringField
      FieldName = 'Beneficiary'
      ReadOnly = True
      Visible = False
      Size = 114
    end
  end
  object dsPayoutBank: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT PayoutID, BRecID, BankName AS BName, BranchName AS BBranc' +
      'h, BranchCode AS BBCode, AccountNo AS AccNo, AccountName AS AccN' +
      'ame, AccountType AS AccType,'#13#10'BranchCode + '#39' '#39' + BranchName AS s' +
      'Branch,'#13#10'CASE AccountType '#13#10'WHEN 0 THEN '#39'Cheque / Current Accoun' +
      't'#39#13#10'WHEN 1 THEN '#39'Savings Account'#39#13#10'WHEN 2 THEN '#39'Transmission Acc' +
      'ount'#39#13#10'WHEN 3 THEN '#39'Bond Account'#39#13#10'WHEN 4 THEN '#39'Credit Card Acco' +
      'unt'#39#13#10'END AS sAccountType'#13#10'FROM lsLoanDBank'#13#10'WHERE PayoutID = :P' +
      'ayoutID'
    DataSource = dtsPayouts
    Parameters = <
      item
        Name = 'PayoutID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 466
    Top = 95
  end
  object dtsPayoutBank: TDataSource
    DataSet = dsPayoutBank
    Left = 466
    Top = 83
  end
  object dsLoanTransfers: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'SELECT LoanID, RefNo, LoanCapital, LD.LoanType, AccType, dbo.FGe' +
      'tLoanStatusName(Status) AS Status'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JO' +
      'IN lsLoanTypes LT ON LD.LoanType = LT.LoanType'#13#10'WHERE Status IN ' +
      '(30,60,65,68)'#13#10'AND LoanBal > 0'#13#10'AND EntityID = :EntityID'#13#10'AND Lo' +
      'anID <> :LoanID'#13#10'ORDER BY RefNo'
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1060
    Top = 496
    object dsLoanTransfersLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
      Visible = False
    end
    object dsLoanTransfersRefNo: TStringField
      DisplayLabel = 'Loan Ref.'
      FieldName = 'RefNo'
      Size = 15
    end
    object dsLoanTransfersLoanCapital: TBCDField
      DisplayLabel = 'Loan Capital'
      FieldName = 'LoanCapital'
      currency = True
      Precision = 19
    end
    object dsLoanTransfersLoanType: TStringField
      DisplayLabel = 'Loan Type'
      FieldName = 'LoanType'
      Size = 3
    end
    object dsLoanTransfersStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
    end
  end
  object dsPaySummary: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SET @LoanID = :LoanID'#13#10#13#10'SELECT CAST(LP.R' +
      'efNo AS NVARCHAR(MAX)) AS RefNo, ThirdType, '#13#10'CASE ThirdType'#13#10'WH' +
      'EN 1 THEN '#39'Loan Settlement'#39#13#10'WHEN 2 THEN '#39'Loan Transfer'#39#13#10'WHEN 3' +
      ' THEN '#39'3rd Party - Beneficiary'#39#13#10'WHEN 4 THEN '#39'3rd Party - Once-O' +
      'ff'#39#13#10'ELSE '#39'Loan Settlement'#39#13#10'END AS Description, LP.Amount'#13#10'FROM' +
      ' afOffers OS'#13#10'LEFT JOIN afOfferPayouts OP ON OS.OfferID = OP.Off' +
      'erID'#13#10'LEFT JOIN lsLoanDPay LP ON LP.PayoutID = OP.PayoutID'#13#10'WHER' +
      'E Status = '#39'A'#39#13#10'AND OS.LoanID = @LoanID'#13#10#13#10'UNION'#13#10#13#10'SELECT RefNo' +
      ', -1, '#39'Loan Payout'#39', LoanCapital'#13#10'FROM lsLoanDetail'#13#10'WHERE LoanI' +
      'D = @LoanID'#13#10'ORDER BY ThirdType'#13#10
    DataSource = dtsLoanDet
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 680
    Top = 241
  end
  object dtsPaySummary: TDataSource
    DataSet = dsPaySummary
    Left = 680
    Top = 228
  end
  object dtsOfferPayouts: TDataSource
    DataSet = dsOfferPayouts
    Left = 363
    Top = 228
  end
  object cmdAddStatusCheck: TADOCommand
    CommandText = 
      'INSERT INTO lsLDSaddChk (LoanID, CtlID)'#13#10'SELECT :LoanID, TypeKey' +
      #13#10'FROM CodeTable'#13#10'WHERE Groupkey = 100108'#13#10'AND NotUse=0'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 363
    Top = 617
  end
  object cmdAutoApprove: TADOCommand
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SET @LoanID = :LoanID'#13#10#13#10'UPDATE afOffers ' +
      'SET Status = NULL'#13#10'WHERE LoanID = @LoanID'#13#10#13#10'UPDATE afOffers SET' +
      ' Status = '#39'A'#39#13#10'WHERE OfferID IN'#13#10'(SELECT TOP 1 OfferID'#13#10'FROM lsL' +
      'oanDetail LD'#13#10'LEFT JOIN afOffers OS ON LD.LoanID = OS.LoanID'#13#10'WH' +
      'ERE LD.LoanID = @LoanID'#13#10'AND AppAmt = Amount '#13#10'AND AppPeriod = P' +
      'eriod)'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 146
    Top = 673
  end
  object dsBureau: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT AccountID, EnquiryNo, AccountType, Source, Subscriber, Ac' +
      'countNo,'#13#10'StatusCode, BA.Status, OpenDate, Instalment, CurrentBa' +
      'lance, Period,'#13#10'LastPayDate, Enabled, EnqDate, '#13#10'CASE EnqType'#13#10'W' +
      'HEN 4 THEN '#39'COMPUSCAN/NLR'#39#13#10'END AS EnquiryType,'#13#10'CASE DoSettle'#13#10 +
      'WHEN 1 THEN '#39'Yes'#39#13#10'ELSE '#39'No'#39' END AS Settle'#13#10'FROM BureauAccounts ' +
      'BA'#13#10'LEFT JOIN BureauHistory ON EnquiryNo = TransNo'#13#10'WHERE Enable' +
      'd = 1'#13#10'AND BA.LoanID = :LoanID'#13#10'AND Subscriber <> '#39'BRUMA FINANCE' +
      ' CC'#39
    DataSource = dtsLoanDet
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 466
    Top = 373
    object dsBureauAccountID: TAutoIncField
      FieldName = 'AccountID'
      ReadOnly = True
      Visible = False
    end
    object dsBureauEnquiryNo: TIntegerField
      FieldName = 'EnquiryNo'
      Visible = False
    end
    object dsBureauAccountType: TStringField
      FieldName = 'AccountType'
      Visible = False
    end
    object dsBureauSettle: TStringField
      DisplayWidth = 5
      FieldName = 'Settle'
      ReadOnly = True
      Size = 3
    end
    object dsBureauSubscriber: TStringField
      DisplayLabel = 'Company Name'
      DisplayWidth = 20
      FieldName = 'Subscriber'
      Size = 50
    end
    object dsBureauAccountNo: TStringField
      DisplayWidth = 22
      FieldName = 'AccountNo'
      Size = 50
    end
    object dsBureauSource: TStringField
      DisplayWidth = 20
      FieldName = 'Source'
    end
    object dsBureauStatusCode: TStringField
      FieldName = 'StatusCode'
      Size = 10
    end
    object dsBureauStatus: TStringField
      DisplayWidth = 15
      FieldName = 'Status'
      Size = 30
    end
    object dsBureauOpenDate: TDateTimeField
      Alignment = taCenter
      DisplayWidth = 12
      FieldName = 'OpenDate'
    end
    object dsBureauInstalment: TBCDField
      DisplayWidth = 12
      FieldName = 'Instalment'
      currency = True
      Precision = 19
    end
    object dsBureauCurrentBalance: TBCDField
      DisplayLabel = 'Balance'
      DisplayWidth = 9
      FieldName = 'CurrentBalance'
      currency = True
      Precision = 19
    end
    object dsBureauPeriod: TStringField
      DisplayWidth = 15
      FieldName = 'Period'
      Visible = False
    end
    object dsBureauLastPayDate: TDateTimeField
      FieldName = 'LastPayDate'
      Visible = False
    end
    object dsBureauEnabled: TBooleanField
      FieldName = 'Enabled'
      Visible = False
    end
    object dsBureauEnqDate: TDateTimeField
      FieldName = 'EnqDate'
      Visible = False
    end
    object dsBureauEnquiryType: TStringField
      FieldName = 'EnquiryType'
      ReadOnly = True
      Visible = False
      Size = 13
    end
  end
  object cmdDocLinked: TADOCommand
    CommandText = 
      'DECLARE @PayNo INT'#13#10#13#10'SELECT @PayNo = PayNo'#13#10'FROM lsLoanDPay'#13#10'WH' +
      'ERE DocumentID = :DocumentID'#13#10'AND PayoutID <> :PayoutID'#13#10#13#10'SELEC' +
      'T :PayNo = ISNULL(@PayNo,0)'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'DocumentID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PayoutID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PayNo'
        DataType = ftInteger
        Direction = pdReturnValue
        Size = -1
        Value = Null
      end>
    Left = 250
    Top = 437
  end
  object dsBureauAccounts: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsBureauAccountsAfterOpen
    OnNewRecord = dsBureauAccountsNewRecord
    CommandText = 
      'SELECT BA.AutoDisabled, BA.status AS LoanStatus, '#13#10'      BA.Acco' +
      'untID, Subscriber, AccountNo, BT.Description AS AccountType, ISN' +
      'ULL(StatusDescription, BA.StatusCode) AS Status, '#13#10'      CONVERT' +
      '(VARCHAR,OpenDate, 103) AS OpenDate, Instalment,OriginalInstalme' +
      'nt, SettleAmount, LoanID, AutoDisabled, CurrentBalance, Period, ' +
      'LastPayDate, [Enabled],'#13#10'      CONVERT(VARCHAR,DisableDate, 103)' +
      ' AS DisableDate, BA.CreateUser,CONVERT(VARCHAR,BA.CreateDate, 10' +
      '3) AS CreateDate , DoSettle, [Source],DisableUser,CONVERT(VARCHA' +
      'R,LastUpdateDate, 103) AS LastUpdateDate, Notes,DoSettle, '#13#10'    ' +
      '  CAST('#13#10'            CASE '#13#10'                  WHEN AccountType I' +
      'N ('#39'NLR'#39', '#39'ITC'#39') THEN 0                   '#13#10'                  EL' +
      'SE 1 '#13#10'            END AS BIT) AS CanDelete,     '#13#10'      AA.[Des' +
      'cription] AS [Action],'#13#10'      AA.AccountActionID AS AccountActio' +
      'nID,     '#13#10'      ISNULL(BA.SalesDepartment,'#13#10'            CASE'#13#10' ' +
      '                 WHEN (DisableUser IS NOT NULL AND DisableUser <' +
      '> '#39'System'#39') '#13#10'                        THEN ISNULL((SELECT TOP(1)' +
      ' '#39'Sales     '#39#13#10#9#9#9#9#9#9#9#9#9#9'  FROM SEC_UserSubDepartment US'#13#10#9#9#9#9#9#9 +
      #9#9#9#9'  INNER JOIN SEC_SubDepartment SD ON US.SubDepartmentID = SD' +
      '.SubDepartmentID'#13#10#9#9#9#9#9#9#9#9#9#9#9#9'AND SD.DepartmentID = 8 --- *** Sa' +
      'les'#13#10#9#9#9#9#9#9#9#9#9#9'  INNER JOIN SEC_User SU ON US.UserID = SU.UserID' +
      #13#10#9#9#9#9#9#9#9#9#9#9'  WHERE SU.Username = DisableUser ORDER BY US.Effect' +
      'iveDate DESC),--DisableUser'#13#10#9#9#9#9#9#9#9#9#9#9'  (SELECT TOP(1) ST.UserI' +
      'D FROM Securitytbl ST WHERE ST.UserKey =  BA.AccountActionUserID' +
      '))'#9#13#10#9#9#9#9#9#9'WHEN (CreateUser IS NOT NULL AND DisableUser <> '#39'Syst' +
      'em'#39')  THEN'#13#10'                       ISNULL((SELECT TOP(1)'#39'Sales  ' +
      '   '#39#13#10#9#9#9#9#9#9#9#9#9#9'  FROM SEC_UserSubDepartment US'#13#10#9#9#9#9#9#9#9#9#9#9'  INN' +
      'ER JOIN SEC_SubDepartment SD ON US.SubDepartmentID = SD.SubDepar' +
      'tmentID'#13#10#9#9#9#9#9#9#9#9#9#9#9#9'AND SD.DepartmentID = 8 --- *** Sales'#13#10#9#9#9#9 +
      #9#9#9#9#9#9'  INNER JOIN SEC_User SU ON US.UserID = SU.UserID'#13#10#9#9#9#9#9#9#9 +
      #9#9#9'  WHERE SU.Username = CreateUser ORDER BY US.EffectiveDate DE' +
      'SC),'#13#10#9#9#9#9#9#9#9#9#9#9'  (SELECT TOP(1) ST.UserID FROM Securitytbl ST W' +
      'HERE ST.UserKey =  BA.AccountActionUserID))'#9#13#10#9#9#9#9#9#9'WHEN (BA.Acc' +
      'ountActionUserID <> 0) THEN'#13#10#9#9#9#9#9#9#9'     ISNULL((SELECT TOP(1)'#39'S' +
      'ales     '#39#13#10#9#9#9#9#9#9#9#9#9#9'FROM SEC_User SU'#13#10#9#9#9#9#9#9#9#9#9#9'INNER JOIN SEC' +
      '_UserSubDepartment US ON SU.UserID = US.UserID'#13#10#9#9#9#9#9#9#9#9#9#9'INNER ' +
      'JOIN SEC_SubDepartment SD ON US.SubDepartmentID = SD.SubDepartme' +
      'ntID'#13#10#9#9#9#9#9#9#9#9#9#9'AND SD.DepartmentID = 8 --- *** Sales'#13#10#9#9#9#9#9#9#9#9#9 +
      #9'WHERE SU.UserID = BA.AccountActionUserID ORDER BY US.EffectiveD' +
      'ate DESC), '#13#10#9#9#9#9#9#9#9#9#9#9'(SELECT TOP(1) ST.UserID FROM Securitytbl' +
      ' ST WHERE ST.UserKey =  BA.AccountActionUserID))'#9#9#9#9#13#10#9#9#9#9#9#9'ELSE' +
      ' '#39'System'#39#9#9#9#9'  '#13#10#9#9#9#9#9#9#9#9#9#9'  END )AS ActionBy,--CreateUser '#13#10#9#9#9 +
      #9#9#9#9#9#9#9'  BA.SalesDepartment,'#13#10'                        ST.UserKey' +
      ' AS AccountActionUserID ,                        '#13#10'      CONVERT' +
      '(VARCHAR,BA.ActionDate, 103) AS ActionDate,      '#13#10'      CONVERT' +
      '(VARCHAR,BA.UpdateDate, 103) AS UpdateDate,'#13#10'      BA.UpdateUser' +
      'ID,'#13#10'      CONVERT(VARCHAR,BA.LastPayDate, 103) AS LastPayDate'#13#10 +
      'FROM BureauAccounts BA'#13#10'LEFT JOIN BureauAccountStatus BS ON BA.S' +
      'tatusCode = BS.StatusCode'#13#10'LEFT JOIN BureauAccountType BT ON BA.' +
      'AccountTypeCode = BT.AccountTypeCode'#13#10'LEFT JOIN BUR_AccountActio' +
      'n AA ON BA.AccountActionID = AA.AccountActionID'#13#10'LEFT JOIN Secur' +
      'itytbl ST ON BA.AccountActionUserID = ST.UserKey'#13#10'WHERE LoanID =' +
      ':LoanID --'#39'536618'#39'--'#39'222847'#39#13#10'ORDER BY '#13#10'CASE WHEN BA.Enabled = ' +
      '1'#13#10'      THEN 0'#13#10'ELSE 1'#13#10'END,'#13#10'CASE WHEN BA.Enabled = 1'#13#10'THEN'#13#10' ' +
      '     CASE '#13#10'            WHEN BA.CreateUser = '#39'System'#39' THEN 0 '#13#10' ' +
      '           ELSE 1 '#13#10'      END'#13#10'ELSE'#13#10'CASE '#13#10'      WHEN BA.Accoun' +
      'tActionID = 4 THEN -- *** 4 = Disabled'#13#10'                  CASE '#9 +
      #9#9#9#9#9#13#10'                        WHEN ST.UserID = '#39'System'#39'THEN 1'#13#10 +
      '                        ELSE 0'#13#10'                  END'#13#10'         ' +
      '   ELSE 1 '#13#10'      END'#13#10'END, '#13#10'      CASE '#13#10'            WHEN BA.A' +
      'ccountActionID = 3 THEN -- *** 3 = Edited'#13#10'                  CAS' +
      'E '#13#10'                        WHEN ST.UserID = '#39'System'#39'THEN 1'#13#10'   ' +
      '                     ELSE 0'#13#10'                  END'#13#10'            ' +
      'ELSE 1 '#13#10'      END,'#13#10'      CASE '#13#10'            WHEN BA.AccountAct' +
      'ionID = 2 THEN -- *** 2 = Added'#13#10'                  CASE '#13#10'      ' +
      '                  WHEN ST.UserID = '#39'System'#39' THEN 1'#13#10'            ' +
      '            ELSE 0'#13#10'                  END'#13#10'            ELSE 1 '#13#10 +
      '      END;'
    DataSource = dtsLoanDet
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 922
    Top = 170
  end
  object dtsBureauAccounts: TDataSource
    DataSet = dsBureauAccounts
    Left = 922
    Top = 158
  end
  object dsBureauDisabled: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Filtered = True
    AfterOpen = dsBureauAccountsAfterOpen
    CommandText = 
      'SELECT '#13#10#9'AccountID, Subscriber, AccountNo, BT.Description AS Ac' +
      'countType, Source, ISNULL(StatusDescription, BA.StatusCode) AS S' +
      'tatus, '#13#10#9'OpenDate, Instalment, SettleAmount, LoanID, DoSettle, ' +
      'CurrentBalance, Period, LastPayDate, Enabled, AutoDisabled, Last' +
      'UpdateDate, OriginalInstalment,'#13#10#9'BA.Notes, BA.DisableUser, BA.D' +
      'isableDate'#13#10'FROM BureauAccounts BA'#13#10'LEFT JOIN BureauAccountStatu' +
      's BS ON BA.StatusCode = BS.StatusCode'#13#10'LEFT JOIN BureauAccountTy' +
      'pe BT ON BA.AccountTypeCode = BT.AccountTypeCode'#13#10'WHERE LoanID =' +
      ' :LoanID'#13#10#9'AND Enabled = 0'#13#10'ORDER BY Subscriber, AccountNo, Open' +
      'Date'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 466
    Top = 170
  end
  object dtsBureauDisabled: TDataSource
    DataSet = dsBureauDisabled
    Left = 466
    Top = 158
  end
  object dsQuotes: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsQuotesAfterOpen
    CommandText = 
      'SELECT QuotationID, LoanID, CreateDate, CreateUser, ExpiryDate, ' +
      'IssueDate, IssueUser, SentDate, SentUser, SentMethod, SentDetail' +
      's, Status,'#13#10'ISNULL('#13#10'CASE RejectType'#13#10'WHEN '#39'L'#39' THEN '#39'Lesser Amou' +
      'nt/Period'#39#13#10'WHEN '#39'C'#39' THEN '#39'Cancelled'#39#13#10'WHEN '#39'O'#39' THEN '#39'Other'#39#13#10'WH' +
      'EN '#39'Q'#39' THEN '#39'Original Quotation'#39#13#10'END + '#39' - '#39' + Reason,'#39#39') AS Re' +
      'ason,'#13#10'CASE Status'#13#10'WHEN '#39'A'#39' THEN '#39'Accepted'#39#13#10'WHEN '#39'R'#39' THEN '#39'Rej' +
      'ected'#39#13#10'WHEN '#39'S'#39' THEN '#39'Sent'#39#13#10'WHEN '#39'C'#39' THEN '#39'Cancelled'#39#13#10'ELSE '#39'W' +
      'aiting to be sent'#39' END AS sStatus, '#13#10'CASE Status'#13#10'WHEN '#39#39' THEN C' +
      'reateDate'#13#10'ELSE StatusDate END AS StatusDate, '#13#10'StatusUser, Vers' +
      'ion'#13#10'FROM afQuotations'#13#10'WHERE LoanID = :LoanID'
    DataSource = dtsLoanDet
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
    Left = 571
    Top = 170
  end
  object dtsQuotes: TDataSource
    DataSet = dsQuotes
    Left = 571
    Top = 158
  end
  object cmdAddQuote: TADOCommand
    CommandText = 
      'DECLARE @LoanID INT, @QuotationID INT'#13#10#13#10'SELECT @LoanID = :LoanI' +
      'D'#13#10#13#10'SELECT @QuotationID =  '#13#10'ISNULL((SELECT TOP 1 QuotationID'#13#10 +
      'FROM afQuotations'#13#10'WHERE LoanID = @LoanID'#13#10'AND ISNULL(Status,'#39#39')' +
      ' = '#39#39#13#10'AND SentDate IS NULL'#13#10'ORDER BY QuotationID DESC),0)'#13#10#13#10'IF' +
      ' @QuotationID = 0'#13#10'BEGIN'#13#10#9'INSERT INTO afQuotations (LoanID, Cre' +
      'ateDate, CreateUser, Status, Version)'#13#10#9'SELECT TOP 1 @LoanID, GE' +
      'TDATE(), :UserID, '#39#39', 4'#13#10#9'FROM afOffers OS'#13#10#9'LEFT JOIN afQuoteOf' +
      'fers QO ON OS.OfferID = QO.OfferID'#13#10#9'WHERE LoanID = @LoanID'#13#10#9'AN' +
      'D QO.OfferID IS NULL'#13#10#9'AND OS.Enabled = 1'#13#10#13#10#13#10#9'SELECT @Quotatio' +
      'nID = SCOPE_IDENTITY()'#13#10'END'#13#10#13#10#13#10#9'DECLARE @OfferID INT'#13#10#13#10#9'DECLA' +
      'RE QuoteOfferCursor CURSOR FOR'#13#10#9'SELECT OS.OfferID'#13#10#9'FROM afOffe' +
      'rs OS'#13#10#9'LEFT JOIN afQuoteOffers QO ON OS.OfferID = QO.OfferID --' +
      'AND QO.QuotationID = @QuotationID'#13#10#9'WHERE LoanID = @LoanID'#13#10#9'AND' +
      ' QO.OfferID IS NULL'#13#10#9'AND OS.Enabled = 1'#13#10#13#10#9'OPEN QuoteOfferCurs' +
      'or'#13#10#13#10#9'FETCH NEXT FROM QuoteOfferCursor '#13#10#9#9'INTO @OfferID'#13#10#13#10#9'WH' +
      'ILE @@FETCH_STATUS = 0'#13#10#9'BEGIN'#13#10#9#9'INSERT INTO afQuoteOffers'#13#10#9#9#9 +
      '(QuotationID, OfferID, OfferNo)'#13#10#9#9'SELECT '#13#10#9#9#9'@QuotationID, @Of' +
      'ferID, '#13#10#9#9#9'(SELECT COUNT(*) + 1'#13#10#9#9#9'FROM afQuoteOffers'#13#10#9#9#9'WHER' +
      'E QuotationID = @QuotationID)'#13#10#13#10#9#9'FETCH NEXT FROM QuoteOfferCur' +
      'sor '#13#10#9#9#9'INTO @OfferID'#13#10#9'END'#9#13#10#13#10#9'CLOSE QuoteOfferCursor'#13#10#9'DEALL' +
      'OCATE QuoteOfferCursor'#13#10#13#10'UPDATE afOffers SET StartDate = '#13#10'CAST' +
      '(CONVERT(VARCHAR(10),GETDATE(),120) AS DATETIME)'#13#10'FROM afOffers ' +
      'OS'#13#10'LEFT JOIN afQuoteOffers QO ON OS.OfferID = QO.OfferID'#13#10'WHERE' +
      ' LoanID = @LoanID'#13#10'AND QO.QuotationID = @QuotationID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'UserID'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 1179
    Top = 496
  end
  object dsQuoteOffers: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsQuoteOffersAfterOpen
    CommandText = 
      'SELECT QO.OfferNo, '#39'Option '#39' + CAST(QO.OfferNo AS VARCHAR(2)) AS' +
      ' sOfferNo, QO.OfferID,'#13#10'OS.Amount, OS.Period, OS.PayableInstal A' +
      'S Instalment,'#13#10'StartDate, FirstInstalDate, LoanType, ResidualAmo' +
      'unt, InterestRate,'#13#10'ISNULL(SUM(LP.Amount),0) AS Settlements, '#13#10'O' +
      'S.Amount - ISNULL(SUM(LP.Amount),0) AS Payout, '#13#10'CASE WHEN OS.St' +
      'atus = '#39'A'#39' THEN '#39'Accepted'#39' ELSE '#39#39' END AS Accepted, OS.System'#13#10'F' +
      'ROM afQuotations QU'#13#10'LEFT JOIN afQuoteOffers QO ON QU.QuotationI' +
      'D = QO.QuotationID'#13#10'LEFT JOIN afOffers OS ON QO.OfferID = OS.Off' +
      'erID  AND OS.LoanID = QU.LoanID'#13#10'LEFT JOIN afOfferPayouts OP ON ' +
      'OS.OfferID = OP.OfferID'#13#10'LEFT JOIN lsLoanDPay LP ON OP.PayoutID ' +
      '= LP.PayoutID'#13#10'WHERE QU.QuotationID = :QuotationID'#13#10'GROUP BY QO.' +
      'OfferNo, QO.OfferID, OS.Amount, OS.Period, OS.PayableInstal, Sta' +
      'rtDate, FirstInstalDate, '#13#10'LoanType, ResidualAmount, InterestRat' +
      'e, CASE WHEN OS.Status = '#39'A'#39' THEN '#39'Accepted'#39' ELSE '#39#39' END, OS.Sys' +
      'tem'
    DataSource = dtsQuotes
    Parameters = <
      item
        Name = 'QuotationID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 680
    Top = 170
  end
  object dtsQuoteOffers: TDataSource
    DataSet = dsQuoteOffers
    Left = 680
    Top = 158
  end
  object dsPrintQuote: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT QU.QuotationID, LD.LoanID, ED.EntCode AS ClientCode, ED.N' +
      'ame2 AS Surname, ED.Name,'#13#10'ED.RegNo AS IDNumber, PA.DOB, MS.Desc' +
      'ription AS MaritalStatus,'#13#10'MaritalContract, Department, OC.Descr' +
      'iption AS Occupation, '#13#10'ET.Description AS EmploymentType,'#13#10'EmpNa' +
      'me AS EmployerName, EmpTel AS EmployerTel,'#13#10'WorkName AS Workplac' +
      'eName, WorkTel AS WorkplaceTel,'#13#10'WorkAddress, WorkSuburb, WorkTo' +
      'wn, WorkPostCode,'#13#10'ED.RefFld1 AS EmployeeNo,'#13#10'AD.Address1, AD.Ad' +
      'dress2, AD.Address3, AD.Address4, AD.AddressCode,'#13#10'BName AS Bank' +
      'Name, AccNo AS AccountNo, '#13#10'CASE BD.AccType'#13#10'WHEN 0 THEN '#39'Cheque' +
      ' / Current Account'#39#13#10'WHEN 1 THEN '#39'Savings Account'#39#13#10'WHEN 2 THEN ' +
      #39'Transmission Account'#39#13#10'WHEN 3 THEN '#39'Bond Account'#39#13#10'WHEN 4 THEN ' +
      #39'Credit Card Account'#39#13#10'END AS AccountType,'#13#10'OS.OfferID, OS.Amoun' +
      't AS LoanAmount, '#13#10'OS.Period AS RepaymentPeriod,'#13#10'InterestRate A' +
      'S AnnualInterestRate, '#13#10'TotalInterest AS TotalInterest, '#13#10'OS.Fee' +
      '2 AS InitiationFee,'#13#10'OS.Fee3 * Period AS TotalServiceFee, '#13#10'OS.F' +
      'ee1 * Period AS TotalInsurance, '#13#10'TotalInterest + OS.Fee2 + (OS.' +
      'Fee3 * Period) + (OS.Fee1 * Period) AS TotalCostCredit,'#13#10'TotalIn' +
      'terest + OS.Fee2 + (OS.Fee3 * Period) + (OS.Fee1 * Period) + OS.' +
      'Amount AS TotalLoan,'#13#10'MonthlyInstal AS MonthInstalment, '#13#10'OS.Fee' +
      '3 AS MonthServiceFee, '#13#10'OS.Fee1 AS MonthInsurance,'#13#10'PayableInsta' +
      'l AS DeductionAmount, '#13#10'Period AS NoDeductions, '#13#10'ISNULL(SUM(LP.' +
      'Amount),0) AS Settlement,'#13#10'OS.Amount - ISNULL(SUM(LP.Amount),0) ' +
      'AS TotalRepayable,'#13#10'CASE PayFreq'#13#10'WHEN '#39'T'#39' THEN '#39'Fortnightly'#39#13#10'W' +
      'HEN '#39'M'#39' THEN '#39'Monthly'#39#13#10'WHEN '#39'W'#39' THEN '#39'Weekly'#39#13#10'ELSE '#39#39' END AS P' +
      'ayFrequency, FirstInstalDate,'#13#10'DATEADD(DAY,-1,'#13#10'DATEADD(MONTH,1,' +
      #13#10'CAST(CAST(DATEPART(YEAR,FirstInstalDate) AS CHAR(4)) + '#39'-'#39' + '#13 +
      #10'CAST(DATEPART(MONTH,FirstInstalDate) AS VARCHAR(2)) + '#39'-01'#39' AS ' +
      'DATETIME))) AS DueDate, '#13#10'60 AS DefaultFee, LU.Description AS Lo' +
      'anPurpose'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN EntityData ED ON LD.E' +
      'ntityID = ED.EntityID'#13#10'LEFT JOIN lsEntPsnAdd PA ON ED.EntityID =' +
      ' PA.EntityID'#13#10'LEFT JOIN Address AD ON ED.EntityID = AD.EntityID ' +
      'AND AD.AddressType = 2'#13#10'LEFT JOIN BankDetails BD ON ED.EntityID ' +
      '= BD.EntityID'#13#10'LEFT JOIN CodeTable MS ON MaritalStatus = MS.Type' +
      'Key'#13#10'LEFT JOIN CodeTable OC ON Occupation = OC.TypeKey'#13#10'LEFT JOI' +
      'N CodeTable ET ON Employment = ET.TypeKey'#13#10'LEFT JOIN CodeTable L' +
      'U ON LoanUse = LU.TypeKey'#13#10'LEFT JOIN EntityData EM ON EmpID = EM' +
      '.EntityID'#13#10'LEFT JOIN EntityData WP ON PA.BranchID = WP.EntityID'#13 +
      #10'LEFT JOIN afQuotations QU ON LD.LoanID = QU.LoanID'#13#10'LEFT JOIN a' +
      'fQuoteOffers QO ON QU.QuotationID = QO.QuotationID'#13#10'LEFT JOIN af' +
      'Offers OS ON QO.OfferID = OS.OfferID'#13#10'LEFT JOIN afOfferPayouts O' +
      'P ON OS.OfferID = OP.OfferID'#13#10'LEFT JOIN lsLoanDPay LP ON OP.Payo' +
      'utID =  LP.PayoutID'#13#10'LEFT JOIN lsLoanTFix LF ON OS.Period = LF.L' +
      'oanPeriod AND OS.Amount = LF.LoanCapital AND OS.Instalment = Fix' +
      'Instal'#13#10'LEFT JOIN lsLoanTypes LT ON LF.LoanType = LT.LoanType AN' +
      'D LTStatus = 0'#13#10'WHERE LD.LoanID = 15629'#13#10'AND QU.QuotationID = 7'#13 +
      #10'GROUP BY QU.QuotationID, '#13#10'LD.LoanID, ED.EntCode, ED.Name2, ED.' +
      'Name,'#13#10'ED.RegNo, PA.DOB, MS.Description, MaritalContract, Depart' +
      'ment,OC.Description, ET.Description,'#13#10'EmpName, EmpTel, WorkName,' +
      ' WorkTel, WorkAddress, WorkSuburb, WorkTown, WorkPostCode,'#13#10'AD.A' +
      'ddress1, AD.Address2, AD.Address3, AD.Address4, AD.AddressCode,'#13 +
      #10'ED.RefFld1, BName, AccNo, BD.AccType, PayableInstal,'#13#10'OS.OfferI' +
      'D, OS.Amount, OS.Period, InterestRate, TotalInterest, MonthlyIns' +
      'tal,'#13#10'OS.Fee1, OS.Fee2, OS.Fee3, PayFreq, FirstInstalDate, LU.De' +
      'scription'#13#10#13#10
    Parameters = <>
    Left = 800
    Top = 170
  end
  object dsCalcOptions: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT OS.OfferID, OS.LoanID, Amount, Period, Instalment, '#13#10'Star' +
      'tDate, FirstInstalDate, FirstDeductDate, EndDate, ResidualAmount' +
      ','#13#10'InterestRate, FinanceAmount, MonthlyInstal, PayableInstal,'#13#10'T' +
      'otalInterest, Fee1, Fee2, Fee3, Fee4, Fee5, Fee6, Fee7, TotalMon' +
      'thlyFees, OS.LoanType,'#13#10'AccType, Category, LinkToRate, RateAdj, ' +
      'MinTerm, MaxTerm, MinAmt, '#13#10'MaxAmt, RCterm, AffPerc, FeeT1, FeeT' +
      '2, FeeT3, FeeT4, FeeT5, FeeT6, '#13#10'FeeT7, LimIntForm'#13#10'FROM afOffer' +
      's OS'#13#10'LEFT JOIN lsLoanTypes LT ON OS.LoanType = LT.LoanType'#13#10'LEF' +
      'T JOIN afQuoteOffers QO ON OS.OfferID = QO.OfferID'#13#10'LEFT JOIN af' +
      'Quotations QU ON QO.QuotationID = QU.QuotationID AND OS.LoanID =' +
      ' QU.LoanId'#13#10'WHERE OS.LoanID = :LoanID'#13#10'AND LTStatus = 0'#13#10'AND ISN' +
      'ULL(QU.Status,'#39#39') IN ('#39'R'#39','#39#39')'#13#10'AND SentDate IS NULL'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 466
    Top = 437
  end
  object dsWorkFlow: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LoanID, Description, CASE WHEN ISNULL(CompleteUser, Proce' +
      'ssUser)= ProcessUser THEN ProcessUser '#13#10'ELSE CompleteUser + ISNU' +
      'LL('#39' ('#39' + NULLIF(ProcessUser,'#39#39') + '#39')'#39', '#39#39') END AS ProcessUser,'#13 +
      #10'StartDate, EndDate, Notes'#13#10'FROM wfProcessHistory PH'#13#10'LEFT JOIN ' +
      'wfProcesses PR ON PH.ProcessID = PR.ProcessID'#13#10'WHERE LoanID = :L' +
      'oanID'#13#10'ORDER BY StartDate'
    DataSource = dtsLoanDet
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
    Left = 1404
    Top = 98
  end
  object dtsWorkFlow: TDataSource
    DataSet = dsWorkFlow
    Left = 1404
    Top = 86
  end
  object dsPolicyRules: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 'SELECT PolicyRule'#13#10'FROM lsPolicyRules'#13#10'WHERE LoanID = :LoanID'
    DataSource = dtsLoanDet
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
    Left = 922
    Top = 241
  end
  object dtsPolicyRules: TDataSource
    DataSet = dsPolicyRules
    Left = 922
    Top = 228
  end
  object cmdCalcOptions: TADOCommand
    CommandText = 'EXEC afCalculateOptions_BrumaNet :LoanID'
    CommandTimeout = 90
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1287
    Top = 437
  end
  object cmdProcessID: TADOCommand
    CommandText = 
      'DECLARE @ProcessID INT'#13#10#13#10'SELECT TOP 1 @ProcessID = PH.ProcessID' +
      #13#10'FROM wfProcessHistory PH'#13#10'LEFT JOIN wfProcesses PR ON PH.Proce' +
      'ssID = PR.ProcessID'#13#10'WHERE'#13#10#9'PH.LoanID = :LoanID'#13#10#9'AND PR.Workfl' +
      'owID IN (1, 7)'#13#10#9'AND PH.EndDate IS NULL'#13#10'ORDER BY StartDate DESC' +
      #13#10#13#10'SELECT :ProcessID = ISNULL(@ProcessID,0)'
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
        Direction = pdReturnValue
        Size = -1
        Value = Null
      end>
    Left = 571
    Top = 307
  end
  object dtsPrintQuote: TDataSource
    DataSet = dsPrintQuote
    Left = 800
    Top = 158
  end
  object dsPolicies: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 'EXEC ACC_GetVettingFlags :LoanID'
    DataSource = dtsLoanDet
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1404
    Top = 241
  end
  object dtsPolicies: TDataSource
    DataSet = dsPolicies
    Left = 1404
    Top = 228
  end
  object dsCurrentStatus: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT TOP 1 CreateUser, CreateDate, EffectiveDate'#13#10'FROM lsDDLoa' +
      'nStatus'#13#10'WHERE LoanID = :LoanID'#13#10'ORDER BY DDID DESC'
    DataSource = dtsLoanDet
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1287
    Top = 241
  end
  object dtsCurrentStatus: TDataSource
    DataSet = dsCurrentStatus
    Left = 1287
    Top = 228
  end
  object cmdAddQuoteCall: TADOCommand
    CommandText = 'ccAddQuoteCall;1'
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
        Name = '@CreateUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@QuotationID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CallReference'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 10
        Value = Null
      end>
    Left = 1179
    Top = 496
  end
  object dsPrintBureau: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LD.RefNo AS LoanRef, ED.EntCode AS ClientCode, ED.RegNo A' +
      'S IDNumber, ED.Name AS FirstName, Ed.Name2 AS LastName, Address1' +
      ', Address2, Address3, Address4, AddressCode,'#13#10'AccountID, Subscri' +
      'ber, AccountNo, Source, BA.Status, BA.OpenDate, BA.Instalment, L' +
      'D.LoanID, AutoDisabled,'#13#10'CurrentBalance, Period, LastPayDate, BA' +
      '.Enabled, DisableUser, BA.DisableDate,'#13#10'BA.CreateUser, BA.Create' +
      'Date'#13#10'FROM BureauAccounts BA'#13#10'LEFT JOIN lsLoanDetail LD ON BA.Lo' +
      'anID = LD.LoanID'#13#10'LEFT JOIN EntityData ED ON LD.EntityID = ED.En' +
      'tityID'#13#10'LEFT JOIN Address AD ON ED.EntityID = AD.EntityID AND Ad' +
      'dressType = 2'#13#10'WHERE LD.LoanID = :LoanID'#13#10'AND BA.Enabled = 1'#13#10'OR' +
      'DER BY Subscriber, AccountNo, BA.OpenDate'
    DataSource = dtsLoanDet
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 571
    Top = 241
  end
  object dtsPrintBureau: TDataSource
    DataSet = dsPrintBureau
    Left = 571
    Top = 228
  end
  object dsPayoutPages: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT PageID'#13#10'FROM dtPages'#13#10'WHERE DocumentID = :DocumentID'#13#10'ORD' +
      'ER BY OrderID'
    Parameters = <
      item
        Name = 'DocumentID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 800
    Top = 437
  end
  object cmdDisableOption: TADOCommand
    CommandText = 
      'DECLARE @OfferID INT, @QuoteID INT, @I INT, @OrderID INT'#13#10#13#10'SET ' +
      '@OfferID = :OfferID'#13#10#13#10'DECLARE QuoteCursor CURSOR FOR'#13#10#9'SELECT Q' +
      'O.QuotationID'#13#10#9'FROM afQuoteOffers QO'#13#10#9'LEFT JOIN afQuotations Q' +
      'U ON QO.QuotationID = QU.QuotationID'#13#10#9'WHERE QO.OfferID = @Offer' +
      'ID'#13#10#9'AND Status = '#39#39#13#10#13#10'OPEN QuoteCursor'#13#10#13#10'FETCH NEXT FROM Quot' +
      'eCursor'#13#10#9'INTO @QuoteID'#13#10#13#10'WHILE @@FETCH_STATUS = 0'#13#10'BEGIN'#13#10#9'DEL' +
      'ETE FROM afQuoteOffers'#13#10#9'WHERE OfferID = @OfferID'#13#10#9'AND Quotatio' +
      'nID = @QuoteID'#13#10#13#10#9'SET @I = 0'#13#10#13#10#9'DECLARE OfferCursor CURSOR FOR' +
      #13#10#9#9'SELECT OfferID'#13#10#9#9'FROM afQuoteOffers'#13#10#9#9'WHERE QuotationID = ' +
      '@QuoteID'#13#10#13#10#9'OPEN OfferCursor'#13#10#13#10#9'FETCH NEXT FROM OfferCursor'#13#10#9 +
      #9'INTO @OrderID'#13#10#13#10#9'WHILE @@FETCH_STATUS = 0'#13#10#9'BEGIN'#13#10#9#9'SET @I = ' +
      '@I + 1'#13#10#13#10#9#9'UPDATE afQuoteOffers SET OfferNo = @I'#13#10#9#9'WHERE Offer' +
      'ID = @OrderID'#13#10#9#9'AND QuotationID = @QuoteID'#13#10#13#10#9#9'FETCH NEXT FROM' +
      ' OfferCursor'#13#10#9#9'INTO @OrderID'#9#13#10#9'END'#13#10#13#10#9'CLOSE OfferCursor'#13#10#9'DEA' +
      'LLOCATE OfferCursor'#9#13#10#13#10#9'FETCH NEXT FROM QuoteCursor'#13#10#9#9'INTO @Qu' +
      'oteID'#13#10'END'#13#10#13#10'CLOSE QuoteCursor'#13#10'DEALLOCATE QuoteCursor'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'OfferID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 1404
    Top = 496
  end
  object dsDebtRecord: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsBureauAccountsAfterOpen
    CommandText = 
      'SELECT AccountID, Subscriber, AccountNo, Source, BA.Status, Open' +
      'Date, Instalment, SettleAmount, LoanID, AutoDisabled,'#13#10'CurrentBa' +
      'lance, Period, LastPayDate, Enabled, DisableUser, DisableDate,'#13#10 +
      'BA.CreateUser, BA.CreateDate, DoSettle, '#13#10'CASE DoSettle'#13#10'WHEN 1 ' +
      'THEN '#39'Yes'#39#13#10'ELSE '#39'No'#39' END AS Settle'#13#10'FROM BureauAccounts BA'#13#10'WHE' +
      'RE Enabled = 1'#13#10'AND AccountID = :AccountID'#13#10'ORDER BY Subscriber,' +
      ' AccountNo, OpenDate'
    DataSource = dtsPayouts
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 146
    Top = 241
  end
  object dtsDebtRecord: TDataSource
    DataSet = dsDebtRecord
    Left = 146
    Top = 228
  end
  object dsLetterPreview: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SET @LoanID = :LoanID'#13#10#13#10'SELECT DocumentI' +
      'D, IDNumber, DC.DocType, Rejected,'#13#10'DT.Description + '#13#10'CASE '#13#10'WH' +
      'EN Authorised = 1 THEN '#39' (Authorised) '#39#13#10'ELSE '#39#39' END AS Descript' +
      'ion, LoanID, Pages, Authorised,'#13#10'CreateDate, CreateUser, ISNULL(' +
      'RD.Description + CHAR(13) + CHAR(10),'#39#39') + ISNULL(Notes,'#39#39') AS R' +
      'ejection,'#13#10'RD.Description AS Reason, Notes'#13#10'FROM dtDocs DC'#13#10'LEFT' +
      ' JOIN dtDocumentTypes DT ON DC.DocType = DT.DocType'#13#10'LEFT JOIN d' +
      'tRejections RJ ON DC.RejectID = RJ.RejectID AND Rejected = 1'#13#10'LE' +
      'FT JOIN CodeTable RD ON RJ.Reason = RD.TypeKey'#13#10'WHERE DC.DocType' +
      ' = '#39'LSL'#39#13#10'AND LoanID = @LoanID'#13#10'AND Rejected = 0'#13#10'AND DocumentID' +
      ' NOT IN'#13#10'(SELECT DocumentID'#13#10'FROM lsLoanDPay'#13#10'WHERE LoanID = @Lo' +
      'anID)'#13#10'ORDER BY Description'#13#10
    DataSource = dtsLoanDet
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
    Left = 363
    Top = 373
  end
  object dsLetterSumm: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10'CASE COUNT(*)'#13#10'WHEN 1 THEN '#39'  There is 1 Settlement Let' +
      'ter for this client'#39#13#10'ELSE '#39'  There are '#39' + CAST(COUNT(*) AS VAR' +
      'CHAR(10)) + '#39' Settlement Letters for this client'#39' END'#13#10'AS Summar' +
      'y'#13#10'FROM dtDocs'#13#10'WHERE DocType = '#39'LSL'#39#13#10'AND LoanID = :LoanID'#13#10'AND' +
      ' Rejected = 0'
    DataSource = dtsLoanDet
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
    Left = 1287
    Top = 98
  end
  object dtsLetterSumm: TDataSource
    DataSet = dsLetterSumm
    Left = 1287
    Top = 86
  end
  object dsMaxOption: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT MAX(Amount) AS Amount, MAX(Period) AS Period'#13#10'FROM afQuot' +
      'ations QU'#13#10'LEFT JOIN afQuoteOffers QO ON QU.QuotationID = QO.Quo' +
      'tationID'#13#10'LEFT JOIN afOffers OS ON QO.OfferID = OS.OfferID'#13#10'WHER' +
      'E QU.LoanID = :LoanID'#13#10'AND dbo.GetWeekDaysBetween(CreateDate,GET' +
      'DATE()) <= 5'#13#10'AND QU.Status IN ('#39'S'#39','#39'R'#39','#39'A'#39')'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 51
    Top = 617
  end
  object dsActiveOffers: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsActiveOffersAfterOpen
    CommandText = 
      'SELECT QU.QuotationID, OS.OfferID, OfferNo, OS.Amount, Period, O' +
      'S.Instalment, ISNULL(SUM(LP.Amount),0) AS Settlements,'#13#10'OS.Amoun' +
      't - ISNULL(SUM(LP.Amount),0) AS Payout'#13#10'FROM afQuotations QU'#13#10'LE' +
      'FT JOIN afQuoteOffers QO ON QU.QuotationID = QO.QuotationID'#13#10'LEF' +
      'T JOIN afOffers OS ON QO.OfferID = OS.OfferID'#13#10'LEFT JOIN afOffer' +
      'Payouts OP ON OS.OfferID = OP.OfferID'#13#10'LEFT JOIN lsLoanDPay LP O' +
      'N OP.PayoutID = LP.PayoutID'#13#10'WHERE QU.LoanID = :LoanID'#13#10'AND dbo.' +
      'GetWeekDaysBetween(CreateDate,GETDATE()) <= 5'#13#10'AND QU.Status IN ' +
      '('#39'S'#39','#39'R'#39','#39'A'#39')'#13#10'AND OS.Enabled = 1'#13#10'GROUP BY QU.QuotationID, OS.O' +
      'fferID, OfferNo, OS.Amount, Period, OS.Instalment'#13#10'ORDER BY QU.Q' +
      'uotationID, OfferNo'
    DataSource = dtsLoanDet
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
    Left = 1060
    Top = 170
  end
  object dtsActiveOffers: TDataSource
    DataSet = dsActiveOffers
    Left = 1060
    Top = 158
  end
  object dsActivePayouts: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsActivePayoutsAfterOpen
    CommandText = 
      'SELECT Name, ThirdRefNo, Amount, Instalment, ExpiryDate'#13#10'FROM af' +
      'OfferPayouts OP'#13#10'LEFT JOIN lsLoanDPay LP ON OP.PayoutID = LP.Pay' +
      'outID'#13#10'WHERE OP.OfferID = :OfferID'#13#10'ORDER BY Name'
    DataSource = dtsActiveOffers
    MasterFields = 'OfferID'
    Parameters = <
      item
        Name = 'OfferID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1060
    Top = 241
  end
  object dtsActivePayouts: TDataSource
    DataSet = dsActivePayouts
    Left = 1060
    Top = 228
  end
  object cmdNewQuoteOffer: TADOCommand
    CommandText = 
      'DECLARE @QuotationID INT, @OfferID INT, @UserID VARCHAR(10)'#13#10#13#10'S' +
      'ELECT @OfferID = :OfferID, @UserID = :UserID'#13#10#13#10'INSERT INTO afQu' +
      'otations (LoanID, CreateDate, CreateUser, Status, StatusDate, St' +
      'atusUser, SentDate, SentUser)'#13#10'SELECT LoanID, GETDATE(), @UserID' +
      ', '#39'S'#39', GETDATE(), @UserID, GETDATE(), @UserID'#13#10'FROM afOffers OS'#13 +
      #10'WHERE OS.OfferID = @OfferID'#13#10#13#10'INSERT INTO afQuoteOffers VALUES' +
      ' (SCOPE_IDENTITY(),@OfferID, 1)'#13#10
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'OfferID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'UserID'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 922
    Top = 673
  end
  object dsScorecard: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SET @LoanID = :LoanID'#13#10#13#10'SELECT '#39'01 Score' +
      'card'#39' AS Description, ClientScore AS ClientScore, ApplicationSco' +
      're, BureauScore, MatrixScore'#13#10'FROM lsLoanDetail'#13#10'WHERE LoanID = ' +
      '@LoanID'#13#10#13#10'UNION'#13#10#13#10'SELECT '#39'02 Override'#39', ClientScore, UserAppli' +
      'cationScore, UserBureauScore, UserMatrixScore'#13#10'FROM lsLoanDetail' +
      #13#10'WHERE LoanID = @LoanID'#13#10'AND UserApplicationScore IS NOT NULL'#13#10 +
      'AND UserBureauScore IS NOT NULL'#13#10
    DataSource = dtsLoanDet
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 1287
    Top = 170
  end
  object dtsScorecard: TDataSource
    DataSet = dsScorecard
    Left = 1287
    Top = 158
  end
  object cmdPayOffers: TADOCommand
    CommandText = 
      'SELECT DISTINCT OfferID'#13#10'FROM afOfferPayouts'#13#10'WHERE PayoutID = :' +
      'PayoutID'#13#10#13#10'SELECT :Offers = @@ROWCOUNT'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'PayoutID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Offers'
        Attributes = [paSigned]
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 571
    Top = 373
  end
  object cmdDeletePay: TADOCommand
    CommandText = 
      'DECLARE @PayoutID INT'#13#10#13#10'SELECT @PayoutID = :PayoutID'#13#10#13#10'DELETE ' +
      'FROM afOffers'#13#10'WHERE System = 0'#13#10'AND OfferID IN '#13#10'(SELECT OfferI' +
      'D'#13#10'FROM afOfferPayouts'#13#10'WHERE PayoutID = @PayoutID)'#13#10#13#10'DELETE FR' +
      'OM lsLoanDPay '#13#10'WHERE PayoutID = @PayoutID'#13#10#13#10'DELETE FROM afOffe' +
      'rPayouts'#13#10'WHERE PayoutID = @PayoutID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'PayoutID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 366
    Top = 673
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
    DataSource = dtsLoanDet
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
    Left = 680
    Top = 25
  end
  object dtsDocuments: TDataSource
    DataSet = dsDocuments
    Left = 680
    Top = 13
  end
  object dsPages: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT PageID, OrderID'#13#10'FROM dtPages'#13#10'WHERE DocumentID = :Docume' +
      'ntID'#13#10'ORDER BY OrderID'
    DataSource = dtsDocuments
    Parameters = <
      item
        Name = 'DocumentID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 800
    Top = 496
  end
  object cmdOfferQuoted: TADOCommand
    CommandText = 
      'SELECT QuotationID'#13#10'FROM afQuoteOffers'#13#10'WHERE OfferID = :OfferID' +
      #13#10#13#10'SELECT :NoQuotes = @@ROWCOUNT'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'OfferID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NoQuotes'
        Attributes = [paSigned]
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 250
    Top = 673
  end
  object cmdDeleteOffer: TADOCommand
    CommandText = 
      'DECLARE @OfferID INT'#13#10#13#10'SET @OfferID = :OfferID'#13#10#13#10'DELETE FROM a' +
      'fOffers'#13#10'WHERE System = 0'#13#10'AND OfferID = @OfferID'#13#10#13#10'DELETE FROM' +
      ' afOfferPayouts'#13#10'WHERE OfferID = @OfferID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'OfferID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 680
    Top = 307
  end
  object cmdPayoutQuoted: TADOCommand
    CommandText = 
      'SELECT QuotationID'#13#10'FROM afOfferPayouts OP'#13#10'INNER JOIN afQuoteOf' +
      'fers QO ON OP.OfferID = QO.OfferID'#13#10'WHERE PayoutID = :PayoutID'#13#10 +
      #13#10'SELECT :NoQuotes = @@ROWCOUNT'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'PayoutID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NoQuotes'
        Attributes = [paSigned]
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 680
    Top = 373
  end
  object cmdDocPath: TADOCommand
    CommandText = 
      'DECLARE @DocPath VARCHAR(100)'#13#10#13#10'EXEC bsLoanDocPath :LoanID, @Do' +
      'cPath OUTPUT'#13#10#13#10'SELECT :DocPath = @DocPath'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DocPath'
        DataType = ftString
        Direction = pdReturnValue
        Size = -1
        Value = Null
      end>
    Left = 680
    Top = 437
  end
  object dsDocPath: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @DocPath VARCHAR(100)'#13#10#13#10'EXEC bsLoanDocPath :LoanID, @Do' +
      'cPath OUTPUT'#13#10#13#10'SELECT @DocPath'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 250
    Top = 307
  end
  object dsLoanFees: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LF.FeeID, FeeTypeID'#13#10'FROM lsLoanFee LF'#13#10'LEFT JOIN lsLoanT' +
      'ypeFee LT ON LF.FeeID = LT.FeeID'#13#10'WHERE LoanID = :LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 250
    Top = 373
  end
  object dsLoanFeeDetail: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT FeeName, FeeType, FE.Amount'#13#10'FROM lsLoanFeeDetail FD'#13#10'LEF' +
      'T JOIN lsLoanFee FE ON FD.FeeID = FE.FeeID AND FD.LoanID = FE.Lo' +
      'anID'#13#10'LEFT JOIN lsLoanTypeFee LF ON FD.FeeID = LF.FeeID'#13#10'LEFT JO' +
      'IN lsFeeType FT ON LF.FeeTypeID = FT.FeeTypeID'#13#10'WHERE FD.LoanID ' +
      '= :LoanID'
    DataSource = dtsLoanDet
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
    Left = 1404
    Top = 170
    object dsLoanFeeDetailFeeName: TStringField
      FieldName = 'FeeName'
      Size = 30
    end
    object dsLoanFeeDetailFeeType: TStringField
      FieldName = 'FeeType'
      Size = 50
    end
    object dsLoanFeeDetailAmount: TBCDField
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
  end
  object dtsLoanFeeDetail: TDataSource
    DataSet = dsLoanFeeDetail
    Left = 1404
    Top = 158
  end
  object cmdUpdateFee: TADOCommand
    CommandText = 
      'UPDATE lsLoanFee SET Amount = :Amount'#13#10'WHERE LoanID = :LoanID'#13#10'A' +
      'ND FeeID = :FeeID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'Amount'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FeeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 146
    Top = 496
  end
  object dsLoanTypeFees: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LF.LoanType, LF.FeeID, PerOrAmt, Type, Type2, Value2, Off' +
      'set2,'#13#10'ISNULL(CapAmount,0) AS CapAmount, MF.LTFeeID, LF.FeeTypeI' +
      'D'#13#10'FROM lsLoanTypeFee LF'#13#10'LEFT JOIN '#13#10#9'(SELECT LTFeeID, LoanType' +
      ', MAX(EffectDate) AS EffectDate'#13#10#9'FROM lsLoanTFee'#13#10#9'GROUP BY LTF' +
      'eeID, LoanType)MF ON LF.FeeID = MF.LTFeeID --AND LF.LoanType = M' +
      'F.LoanType'#13#10'LEFT JOIN lsLoanTFee TF ON MF.LTFeeID = TF.LTFeeID A' +
      'ND MF.EffectDate = TF.EffectDate'#13#10'WHERE LF.LoanType = :LoanType'#13 +
      #10'AND Enabled = 1'
    Parameters = <
      item
        Name = 'LoanType'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 922
    Top = 496
  end
  object cmdUpdateOfferFee: TADOCommand
    CommandText = 
      'DECLARE @OfferID INT, @FeeID INT, @Amount MONEY'#13#10#13#10'SELECT @Offer' +
      'ID = :OfferID, @FeeID = :FeeID, @Amount = :Amount'#13#10#13#10'UPDATE afOf' +
      'ferFee SET Amount = @Amount'#13#10'WHERE OfferID = @OfferID'#13#10'AND FeeID' +
      ' = @FeeID'#13#10#13#10'IF @@ROWCOUNT = 0'#13#10'INSERT INTO afOfferFee VALUES(@O' +
      'fferID, @FeeID, @Amount)'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'OfferID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FeeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Amount'
        DataType = ftBCD
        Size = -1
        Value = Null
      end>
    Left = 571
    Top = 673
  end
  object dsPayrollRules: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT RecordID, EntityID, Description'#13#10'FROM lsPayrollRule'#13#10'WHER' +
      'E EntityID = :EntityID'#13#10'ORDER BY Description'
    Parameters = <
      item
        Name = 'EntityID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 571
    Top = 94
  end
  object dtsPayrollRules: TDataSource
    DataSet = dsPayrollRules
    Left = 571
    Top = 82
  end
  object cmdCheckAuthoristions: TADOCommand
    CommandText = 
      'UPDATE AV'#13#10'SET'#13#10#9'ResultTypeID1 = :AcceptReject, --*** ACCEPT'#13#10#9'U' +
      'serID1 = 0, --*** SYSTEM'#13#10#9'UpdateDate1 = GETDATE()'#13#10'FROM ACC_Acc' +
      'ountVettingTask AV'#13#10'LEFT JOIN lsLoanDetail LD ON AV.AccountID = ' +
      'LD.LoanID'#13#10#9'AND LD.Status NOT IN (10, 15)  --*** DECLINED, CANCE' +
      'LLED'#13#10'WHERE '#13#10#9'AccountID = :LoanID'#13#10#9'AND VettingTaskID = :Vettin' +
      'gTaskID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'AcceptReject'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'VettingTaskID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 571
    Top = 437
  end
  object cmdAddLoanFlags: TADOCommand
    CommandText = 'EXEC BoodleNet_lsAddLoanFlags :LoanID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 146
    Top = 307
  end
  object cmdCalcContractOptions: TADOCommand
    CommandText = 'EXEC lpCalculateLoanOptions :LoanID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 146
    Top = 437
  end
  object cmdCalcLoanContract: TADOCommand
    CommandText = 'EXEC lcCreateLoanContract :LoanID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1179
    Top = 307
  end
  object dsScorecardTU: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SET @LoanID = :LoanID'#13#10#13#10'SELECT '#13#10#9#39'Burea' +
      'u'#39' AS Description, 2 AS SequenceNo,'#13#10#9'CASE LD.ClientType '#13#10#9#9'WHE' +
      'N '#39'P'#39' THEN '#39'Payroll'#39' '#13#10#9#9'WHEN '#39'E'#39' THEN '#39'Repeat'#39' '#13#10#9#9'WHEN '#39'N'#39' THE' +
      'N '#39'New'#39' '#13#10#9'END AS ClientType, '#13#10#9'CASE LD.ScoreDecision '#13#10#9#9'WHEN ' +
      #39'A'#39' THEN '#39'Approve'#39' '#13#10#9#9'WHEN '#39'D'#39' THEN '#39'Decline'#39' '#13#10#9#9'WHEN '#39'R'#39' THEN' +
      ' '#39'Refer'#39' '#13#10#9'END AS ScoreDecision, '#13#10#9'LD.ScoreResult, RL.Descript' +
      'ion AS RiskLevelBureau'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN afLoans ' +
      'AF ON LD.LoanID = AF.LoanID'#13#10'LEFT JOIN scRiskLevel RL ON LD.Risk' +
      'LevelBureau = RL.RiskLevel'#13#10'WHERE LD.LoanID = @LoanID'#13#10#9'AND LD.R' +
      'iskLevelBureau IS NOT NULL'#13#10#13#10'UNION'#13#10#13#10'SELECT '#13#10#9#39'Behaviour'#39', 3,' +
      #13#10#9'CASE LD.ClientType '#13#10#9#9'WHEN '#39'P'#39' THEN '#39'Payroll'#39' '#13#10#9#9'WHEN '#39'E'#39' T' +
      'HEN '#39'Repeat'#39' '#13#10#9#9'WHEN '#39'N'#39' THEN '#39'New'#39' '#13#10#9'END AS ClientType, '#13#10#9'CA' +
      'SE LD.BehaviourScoreDecision '#13#10#9#9'WHEN '#39'A'#39' THEN '#39'Approve'#39' '#13#10#9#9'WHE' +
      'N '#39'D'#39' THEN '#39'Decline'#39#13#10#9#9'WHEN '#39#39' THEN '#39'Override'#39#13#10#9'END,'#13#10#9'LD.Beha' +
      'viourScore, RL.Description'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN afLo' +
      'ans AF ON LD.LoanID = AF.LoanID'#13#10'LEFT JOIN scRiskLevel RL ON LD.' +
      'RiskLevelClient = RL.RiskLevel'#13#10'WHERE LD.LoanID = @LoanID'#13#10#9'AND ' +
      'LD.ClientType  IN ('#39'E'#39','#39'P'#39','#39'N'#39')'#13#10#9'AND ISNULL(LD.RiskLevelClient,' +
      ' '#39#39') <> '#39#39#13#10#13#10'UNION'#13#10#13#10'SELECT '#13#10#9#39'Application'#39' AS Description, 1' +
      ','#13#10#9'CASE ClientType '#13#10#9#9'WHEN '#39'P'#39' THEN '#39'Payroll'#39' '#13#10#9#9'WHEN '#39'E'#39' THE' +
      'N '#39'Repeat'#39' '#13#10#9#9'WHEN '#39'N'#39' THEN '#39'New'#39' '#13#10#9'END AS ClientType, '#13#10#9'CASE' +
      ' ApplicationScoreResult'#13#10#9#9'WHEN '#39'A'#39' THEN '#39'Approve'#39' '#13#10#9#9'WHEN '#39'D'#39' ' +
      'THEN '#39'Decline'#39' '#13#10#9'END AS ScoreDecision,'#13#10#9'ApplicationScore, NULL' +
      #13#10'FROM lsLoanDetail'#13#10'WHERE LoanID = @LoanID'#13#10#9'AND ApplicationSco' +
      're IS NOT NULL'#13#10'ORDER BY SequenceNo'
    DataSource = dtsLoanDet
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 1179
    Top = 170
  end
  object dtsScorecardTU: TDataSource
    DataSet = dsScorecardTU
    Left = 1179
    Top = 158
  end
  object dsLimitOptionReasons: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT TypeKey, Description'#13#10'FROM CodeTable'#13#10'WHERE GroupKey = 10' +
      '0142'#13#10'ORDER BY Description'
    Parameters = <>
    Left = 800
    Top = 25
  end
  object dtsLimitOptionReasons: TDataSource
    DataSet = dsLimitOptionReasons
    Left = 800
    Top = 13
  end
  object dsManOptionReasons: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT TypeKey, Description'#13#10'FROM CodeTable'#13#10'WHERE GroupKey = 10' +
      '0143'#13#10'ORDER BY Description'
    Parameters = <>
    Left = 1287
    Top = 25
  end
  object dtsManOptionReasons: TDataSource
    DataSet = dsManOptionReasons
    Left = 1287
    Top = 13
  end
  object cmdAcceptQuote: TADOCommand
    CommandText = 
      'EXEC afQuotationAccept :QuotationID, :OfferID, :AcceptDate, :Use' +
      'rID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'QuotationID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'OfferID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AcceptDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 250
    Top = 496
  end
  object cmdPreapproveProcess: TADOCommand
    CommandText = 
      'SELECT :ProcessCount = COUNT(*)'#13#10'FROM ACC_AccountVettingTask AV'#13 +
      #10'                                LEFT JOIN ACC_VettingTask VT ON' +
      ' AV.VettingTaskID = VT.ParentID'#13#10'                               ' +
      ' LEFT JOIN ACC_VettingResult TR ON AV.ResultTypeID1 = TR.Vetting' +
      'ResultID'#13#10'                                LEFT JOIN ACC_VettingR' +
      'esult RR ON AV.ResultTypeID2 = RR.VettingResultID'#13#10'             ' +
      '                   LEFT JOIN ACC_VettingResult FR ON AV.ResultTy' +
      'peID3 = FR.VettingResultID'#13#10'                                INNE' +
      'R JOIN ACC_VettingTaskResultType RT ON AV.VettingTaskID = RT.Vet' +
      'tingTaskID'#13#10'                                                AND ' +
      'RT.VettingResultTypeID IN (1) --*** TASK/AUTHORISATIONS'#13#10'       ' +
      '                         WHERE AccountID = :LoanID'#13#10'            ' +
      '                                    AND VT.VettingTaskID IS NULL' +
      #13#10'                                                              ' +
      '                  AND     '#13#10'                                    ' +
      '            ('#13#10'                                                 ' +
      '                                     ISNULL(ISNULL(ISNULL(FR.Suc' +
      'cess, RR.Success), TR.Success), 0) = 0'#13#10'                        ' +
      '                                                        )'#13#10'     ' +
      '                                           AND AV.VettingTaskID ' +
      'NOT IN (15, 16, 17,35)'#13#10
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'ProcessCount'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
        Value = 0
      end
      item
        Name = 'LoanID'
        Size = -1
        Value = Null
      end>
    Left = 1060
    Top = 617
  end
  object qryDocCount: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'DocType'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      'SELECT COUNT(*)'
      'FROM dtDocs'
      'WHERE LoanID = :LoanID'
      'AND DeleteDate IS NULL'
      'AND DocType LIKE  :DocType')
    Left = 922
    Top = 307
  end
  object cmdInsertBureauA: TADOCommand
    CommandText = 
      'INSERT INTO BureauAccounts (LoanID, Source,Subscriber,AccountNo,' +
      'Instalment,SettleAmount, LastPayDate,Enabled,CreateUser,CreateDa' +
      'te,Notes,AccountActionID,AccountActionUserID,ActionDate,OpenDate' +
      ',SalesDepartment)'#13#10#13#10'Values(:LoanID, :Source,:Subscriber,:Accoun' +
      'tNo,:Instalment,:SettleAmount,:LastPayDate,:Enabled,:CreateUser,' +
      'GetDate(),:Notes,:AccountActionID,:AccountActionUserID,GetDate()' +
      ',GetDate(),:SalesDepartment)'#13#10#13#10'SELECT SCOPE_IDENTITY() AS SCOPE' +
      '_IDENTITY'
    Connection = dtmMain.dbData
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
        Name = 'Source'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Subscriber'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'AccountNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Instalment'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'SettleAmount'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'LastPayDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Enabled'
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'CreateUser'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Notes'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'AccountActionID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AccountActionUserID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SalesDepartment'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 922
    Top = 437
  end
  object cmdDisableBureau: TADOCommand
    CommandText = 
      'UPDATE BureauAccounts'#13#10'SET Enabled = :Enabled,'#13#10'DisableUser = :D' +
      'isableUser,'#13#10'DisableDate = GETDATE(),'#13#10'ActionDate  = GETDATE(),'#13 +
      #10'Notes = :Notes,'#13#10'AccountActionUserID =:AccountActionUserID,'#13#10'Ac' +
      'countActionID =:AccountActionID,'#13#10'SalesDepartment =:SalesDepartm' +
      'ent'#13#10'WHERE AccountID=:AccountID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'Enabled'
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'DisableUser'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Notes'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'AccountActionUserID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AccountActionID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SalesDepartment'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 363
    Top = 307
  end
  object cmdUpdateBureau: TADOCommand
    CommandText = 
      'UPDATE BureauAccounts SET '#13#10'     Instalment =:Instalment,'#13#10'     ' +
      'AccountNo =:AccountNo,'#13#10'     OriginalInstalment =:OriginalInstal' +
      'ment,'#13#10'     UpdateDate = GetDate(),'#13#10'     UpdateUserID =:UpdateU' +
      'serID,'#13#10'     ActionDate = GetDate(),'#13#10'     AccountActionID =:Acc' +
      'ountActionID,'#13#10'     AccountActionUserID =:AccountActionUserID,'#13#10 +
      '     Notes =:Notes,'#13#10'     SalesDepartment =:SalesDepartment,'#13#10'  ' +
      '   Subscriber=:Subscriber,'#13#10'     Source =:Source'#13#10'WHERE AccountI' +
      'D = :AccountID'#13#10
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'Instalment'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'AccountNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'OriginalInstalment'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'UpdateUserID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AccountActionID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AccountActionUserID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Notes'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'SalesDepartment'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Subscriber'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'Source'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 922
    Top = 373
  end
  object cmdDisablePay: TADOCommand
    CommandText = 'UPDATE lsLoanDPay SET Enabled = 0'#13#10'WHERE PayoutID = :PayoutID'#13#10
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'PayoutID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 466
    Top = 673
  end
  object dsFraudEnquiry: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SELECT @LoanID = :LoanID'#13#10#13#10'DECLARE @Subj' +
      'ect TABLE'#13#10#9'(LoanID INT,'#13#10#9'SubjectID INT,'#13#10#9'Records INT,'#13#10#9'Order' +
      'ID INT)'#13#10#13#10'INSERT INTO @Subject'#13#10'SELECT @LoanID, SubjectID, Reco' +
      'rds, OrderID'#13#10'FROM'#13#10#9'(SELECT SB.[ID] AS SubjectID, COUNT(*) AS R' +
      'ecords, 10 AS OrderID'#13#10#9'FROM fpLoanSubject LS'#13#10#9'LEFT JOIN fpsSub' +
      'jects SB ON LS.SubjectID = SB.[ID]'#13#10#9'WHERE LoanID = @LoanID'#13#10#9'GR' +
      'OUP BY SB.ID'#13#10#13#10#9'UNION'#13#10#9#13#10#9'SELECT SubjectNo, COUNT(*),6'#13#10#9'FROM ' +
      'fpLoanEmployment LE'#13#10#9'LEFT JOIN fpsEmployment EM ON LE.EmployerI' +
      'D = EM.[ID]'#13#10#9'LEFT JOIN fpsSubjects SB ON EM.SubjectNo = SB.[ID]' +
      #13#10#9'WHERE LoanID = @LoanID'#13#10#9'GROUP BY SubjectNo'#13#10#9#13#10#9'UNION'#13#10#9#13#10#9'S' +
      'ELECT SubjectNo, COUNT(*), 9'#13#10#9'FROM fpLoanOtherID LO'#13#10#9'LEFT JOIN' +
      ' fpsOtherIDS OD ON LO.OtherID = OD.[ID]'#13#10#9'LEFT JOIN fpsSubjects ' +
      'SB ON OD.SubjectNo = SB.[ID]'#13#10#9'WHERE LoanID = @LoanID'#13#10#9'GROUP BY' +
      ' SubjectNo'#13#10#9#13#10#9'UNION'#13#10#9#13#10#9'SELECT SubjectNo, COUNT(*), 8'#13#10#9'FROM ' +
      'fpLoanBank LB'#13#10#9'LEFT JOIN fpsBankAccounts BA ON LB.BankID = BA.[' +
      'ID]'#13#10#9'LEFT JOIN fpsSubjects SB ON BA.SubjectNo = SB.[ID]'#13#10#9'WHERE' +
      ' LoanID = @LoanID'#13#10#9'GROUP BY SubjectNo'#13#10#13#10#9'UNION'#13#10#13#10#9'SELECT Subj' +
      'ectNo, COUNT(*),7'#13#10#9'FROM fpLoanNumber FN'#13#10#9'LEFT JOIN fpsOtherNum' +
      'bers NB ON FN.NumberID = NB.ID'#13#10#9'WHERE LoanID = @LoanID'#13#10#9'GROUP ' +
      'BY SubjectNo)aa'#13#10#13#10'SELECT TOP 30 @LoanID AS LoanID, SB.SubjectID' +
      ', Title, Surname, Firstname, Middlename, '#39'ID Number: '#39' + SJ.Subj' +
      'ectID AS IDLabel, LS.IDNumber, '#13#10#39'Bank Account Number: '#39' + BA.Ac' +
      'countNo AS AccountLabel, LB.AccountNo, IC.Details'#13#10'FROM @Subject' +
      ' SB'#13#10'LEFT JOIN fpsSubjects SJ ON SB.SubjectID = SJ.ID'#13#10'LEFT JOIN' +
      ' fpLoanSubject LS ON SB.SubjectID = LS.SubjectID'#13#10'LEFT JOIN fpsB' +
      'ankAccounts BA ON SB.SubjectID = BA.SubjectNo'#13#10'LEFT JOIN fpLoanB' +
      'ank LB ON BA.ID = LB.BankID'#13#10#13#10'LEFT JOIN fpsIncidents IC ON SB.S' +
      'ubjectID = IC.SubjectNo'#13#10#13#10'ORDER BY OrderID DESC, Records DESC'
    DataSource = dtsLoanDet
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 250
    Top = 25
  end
  object dtsFraudEnquiry: TDataSource
    DataSet = dsFraudEnquiry
    Left = 250
    Top = 13
  end
  object dsFraudNumber: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT DISTINCT NM.Type + '#39': '#39'+ NM.TelNumber AS TelLabel, LN.Tel' +
      'ephone'#13#10'FROM fpsSubjects SB'#13#10'LEFT JOIN fpsOtherNumbers NM ON SB.' +
      'ID = NM.SubjectNo'#13#10'LEFT JOIN fpLoanNumber LN ON NM.ID = LN.Numbe' +
      'rID'#13#10'WHERE SB.ID = :SubjectID'#13#10'AND LN.LoanID = :LoanID'
    DataSource = dtsFraudEnquiry
    Parameters = <
      item
        Name = 'SubjectID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 250
    Top = 555
  end
  object dsFraudOtherID: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#39'Other ID Number: '#39' + OI.IDNumber AS IDLabel, LO.IDNumber' +
      #13#10'FROM fpsSubjects SB'#13#10'LEFT JOIN fpsOtherIDs OI ON SB.ID = OI.Su' +
      'bjectNo'#13#10'LEFT JOIN fpLoanOtherID LO ON OI.ID = LO.OtherID'#13#10'WHERE' +
      ' SB.ID = :SubjectID'#13#10'AND SB.SubjectID <> OI.IDNumber'#13#10'AND LO.Loa' +
      'nID = :LoanID'
    DataSource = dtsFraudEnquiry
    Parameters = <
      item
        Name = 'SubjectID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 363
    Top = 555
  end
  object dsFraudEmployment: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT SubjectNo, EmployerID, Word, EmployerName, EmployerTelNo'#13 +
      #10'FROM fpLoanEmployment LE'#13#10'LEFT JOIN fpsEmployment EM ON LE.Empl' +
      'oyerID = ID'#13#10'WHERE SubjectNo = :SubjectID'#13#10'AND LoanID = :LoanID'
    DataSource = dtsFraudEnquiry
    Parameters = <
      item
        Name = 'SubjectID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 800
    Top = 307
  end
  object cmdCopyITC: TADOCommand
    CommandText = 
      'INSERT INTO BureauAccounts'#13#10#9'(LoanID, EnquiryNo, AccountType, So' +
      'urce, Subscriber, AccountNo, StatusCode, Status, OpenDate, Insta' +
      'lment, CurrentBalance,'#13#10#9'SettleAmount, Period, LastPayDate, Enab' +
      'led, DisableUser, DisableDate, CreateUser, CreateDate, AutoDisab' +
      'led, DoSettle,'#13#10#9'IndustryCode, Industry, OpenBalance, SubAccount' +
      'No, LastUpdateDate, ParentID, Notes)'#13#10'SELECT LoanID, EnquiryNo, ' +
      'AccountType, :Source, :Subscriber, :AccountNo, StatusCode, Statu' +
      's, OpenDate, :Instalment, CurrentBalance,'#13#10#9':SettleAmount, Perio' +
      'd, :LastPayDate, Enabled, DisableUser, DisableDate, CreateUser, ' +
      'CreateDate, AutoDisabled, DoSettle,'#13#10#9'IndustryCode, Industry, Op' +
      'enBalance, SubAccountNo, LastUpdateDate, AccountID, Notes'#13#10'FROM ' +
      'BureauAccounts'#13#10'WHERE AccountID = :AccountID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'Source'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'Subscriber'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'AccountNo'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'Instalment'
        DataType = ftBCD
        Size = -1
        Value = Null
      end
      item
        Name = 'SettleAmount'
        DataType = ftBCD
        Size = -1
        Value = Null
      end
      item
        Name = 'LastPayDate'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1179
    Top = 373
  end
  object dsAuthoriseFlags: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @LoanID INT'#13#10#13#10'SET @LoanID = :LoanID'#13#10#13#10'SELECT FH.LoanID' +
      ', FH.FlagID, 0 AS PolicyID, LF.Flag AS Description'#13#10'FROM lsLoanF' +
      'lagHistory FH'#13#10'LEFT JOIN lsLoanFlag LF ON FH.FlagID = LF.FlagID'#13 +
      #10'WHERE FH.LoanID = @LoanID'#13#10#9'AND FH.Failed = 1'#13#10#9'AND LF.Informat' +
      'ion = 0'#13#10#9'AND FH.AuthoriseDate IS NULL'#13#10#9'AND LF.FlagID <> 6 --**' +
      '* COMPANY CREDIT POLICY'#13#10#9'AND LF.FlagID <> 2 --*** AFFORDABILITY' +
      #13#10#13#10'UNION'#13#10#13#10'SELECT LP.LoanID, 0 AS FlagID, LP.PolicyID, FL.Flag' +
      ' + '#39' - '#39' +PL.Description'#13#10'FROM lsLoanPolicy LP'#13#10'LEFT JOIN lsPoli' +
      'cy PL ON LP.PolicyID = PL.PolicyID'#13#10'LEFT JOIN lsLoanFlag FL ON F' +
      'L.FlagID = 6'#13#10'WHERE LP.LoanID = @LoanID'#13#10#9'AND LP.Result = 0'#13#10#9'AN' +
      'D LP.AuthoriseDate IS NULL'
    DataSource = dtsLoanDet
    MasterFields = 'LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 680
    Top = 94
  end
  object dtsAuthoriseFlags: TDataSource
    DataSet = dsAuthoriseFlags
    Left = 664
    Top = 82
  end
  object cmdAuthoriseFlag: TADOCommand
    CommandText = 
      'UPDATE lsLoanFlagHistory '#13#10'SET AuthoriseDate = GETDATE(), Author' +
      'iseUserID = :UserID'#13#10'WHERE LoanID = :LoanID'#13#10'AND FlagID = :FlagI' +
      'D'
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
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FlagID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 51
    Top = 555
  end
  object cmdAuthorisePolicy: TADOCommand
    CommandText = 
      'UPDATE lsLoanPolicy'#13#10'SET AuthoriseDate = GETDATE(), AuthoriseUse' +
      'rID = :UserID'#13#10'WHERE LoanID = :LoanID'#13#10'AND PolicyID = :PolicyID'
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
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PolicyID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1287
    Top = 496
  end
  object dsHandoverType: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT HandoverTypeID, Description'#13#10'FROM ACC_HandoverType'#13#10#13#10'UNI' +
      'ON'#13#10#13#10'SELECT NULL, '#39#39#13#10'ORDER BY 1'
    Parameters = <>
    Left = 922
    Top = 95
  end
  object dtsHandoverType: TDataSource
    DataSet = dsHandoverType
    Left = 922
    Top = 83
  end
  object dsVettingResult: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT VettingResultID, Description'#13#10'FROM ACC_VettingResult'#13#10'ORD' +
      'ER BY VettingResultID'
    Parameters = <>
    Left = 800
    Top = 241
  end
  object dtsVettingResult: TDataSource
    DataSet = dsVettingResult
    Left = 800
    Top = 228
  end
  object cmdAddVettingResult: TADOCommand
    CommandText = 
      'DECLARE @VettingResultID INT, @VettingResultTypeID INT, @UserID ' +
      'INT, @AccountVettingTaskID INT'#13#10#13#10'SELECT '#13#10#9'@VettingResultID = :' +
      'VettingResultID,'#13#10#9'@VettingResultTypeID = :VettingResultTypeID,'#13 +
      #10#9'@AccountVettingTaskID = :AccountVettingTaskID,'#13#10#9'@UserID = :Us' +
      'erID'#13#10#13#10'IF @VettingResultTypeID = 1'#13#10#9'UPDATE ACC_AccountVettingT' +
      'ask'#13#10#9'SET'#13#10#9#9'ResultTypeID1 = @VettingResultID,'#13#10#9#9'UserID1 = @Use' +
      'rID,'#13#10#9#9'UpdateDate1 = GETDATE()'#13#10#9'WHERE '#13#10#9#9'AccountVettingTaskID' +
      ' = @AccountVettingTaskID'#13#10#9#9#13#10'ELSE IF @VettingResultTypeID = 2'#13#10 +
      #9'UPDATE ACC_AccountVettingTask'#13#10#9'SET'#13#10#9#9'ResultTypeID2 = @Vetting' +
      'ResultID,'#13#10#9#9'UserID2 = @UserID,'#13#10#9#9'UpdateDate2 = GETDATE()'#13#10#9'WHE' +
      'RE '#13#10#9#9'AccountVettingTaskID = @AccountVettingTaskID'#13#10#9#9#13#10'ELSE IF' +
      ' @VettingResultTypeID = 3'#13#10#9'UPDATE ACC_AccountVettingTask'#13#10#9'SET'#13 +
      #10#9#9'ResultTypeID3 = @VettingResultID,'#13#10#9#9'UserID3 = @UserID,'#13#10#9#9'Up' +
      'dateDate3 = GETDATE()'#13#10#9'WHERE '#13#10#9#9'AccountVettingTaskID = @Accoun' +
      'tVettingTaskID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'VettingResultID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'VettingResultTypeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AccountVettingTaskID'
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
      end>
    Left = 1179
    Top = 617
  end
  object cdsVetting: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsVettingBeforePost
    Left = 1060
    Top = 96
    object cdsVettingAccountVettingTaskID: TIntegerField
      FieldName = 'AccountVettingTaskID'
    end
    object cdsVettingVettingTaskID: TIntegerField
      FieldName = 'VettingTaskID'
    end
    object cdsVettingDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object cdsVettingTaskResultID: TIntegerField
      FieldName = 'TaskResultID'
    end
    object cdsVettingTaskResult: TStringField
      FieldKind = fkLookup
      FieldName = 'TaskResult'
      LookupDataSet = dsVettingResult
      LookupKeyFields = 'VettingResultID'
      LookupResultField = 'Description'
      KeyFields = 'TaskResultID'
      LookupCache = True
      Lookup = True
    end
    object cdsVettingTaskResultDate: TDateTimeField
      FieldName = 'TaskResultDate'
      DisplayFormat = 'dd/MM/yyyy hh:mm'
    end
    object cdsVettingTaskUser: TStringField
      FieldName = 'TaskUser'
      Size = 10
    end
    object cdsVettingRiskResultID: TIntegerField
      FieldName = 'RiskResultID'
    end
    object cdsVettingRiskResult: TStringField
      FieldKind = fkLookup
      FieldName = 'RiskResult'
      LookupDataSet = dsVettingResult
      LookupKeyFields = 'VettingResultID'
      LookupResultField = 'Description'
      KeyFields = 'RiskResultID'
      LookupCache = True
      Lookup = True
    end
    object cdsVettingRiskResultDate: TDateTimeField
      FieldName = 'RiskResultDate'
      DisplayFormat = 'dd/MM/yyyy hh:mm'
    end
    object cdsVettingRiskResultUser: TStringField
      FieldName = 'RiskUser'
    end
    object cdsVettingFraudResultID: TIntegerField
      FieldName = 'FraudResultID'
    end
    object cdsVettingFraudResult: TStringField
      FieldKind = fkLookup
      FieldName = 'FraudResult'
      LookupDataSet = dsVettingResult
      LookupKeyFields = 'VettingResultID'
      LookupResultField = 'Description'
      KeyFields = 'FraudResultID'
      LookupCache = True
      Lookup = True
    end
    object cdsVettingFraudResultDate: TDateTimeField
      FieldName = 'FraudResultDate'
      DisplayFormat = 'dd/MM/yyyy hh:mm'
    end
    object cdsVettingFraudUser: TStringField
      FieldName = 'FraudUser'
      Size = 10
    end
    object cdsVettingTaskReadOnly: TBooleanField
      FieldName = 'TaskReadOnly'
    end
    object cdsVettingRiskReadOnly: TBooleanField
      FieldName = 'RiskReadOnly'
    end
    object cdsVettingFraudReadOnly: TBooleanField
      FieldName = 'FraudReadOnly'
    end
  end
  object dtsVetting: TDataSource
    DataSet = cdsVetting
    Left = 1060
    Top = 84
  end
  object dsVetting: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = dsVettingAfterOpen
    CommandText = 'EXEC dbo.ACC_GetAccountVettingTasks :AccountID'
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1179
    Top = 437
  end
  object cmdAddVettingTasks: TADOCommand
    CommandText = 'ACC_AddVettingTasks;1'
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
        Name = '@AccountID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 364
    Top = 735
  end
  object dsSubReasons: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'SELECT CT.TypeKey, CT.Description'#13#10'FROM CodeTable CT'#13#10'LEFT JOIN ' +
      'CodeTblGrp CG ON CT.TypeKey = CG.TypeKey'#13#10'WHERE GroupKey = 10014' +
      '8'#13#10#9'AND CG.GrpKey = :IDVal'#13#10'ORDER BY Description'
    DataSource = dtsLUReasons
    MasterFields = 'IDVal'
    Parameters = <
      item
        Name = 'IDVal'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 466
    Top = 25
  end
  object dtsSubReasons: TDataSource
    DataSet = dsSubReasons
    Left = 466
    Top = 13
  end
  object dsVettingSummary: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'EXEC dbo.ACC_GetAccountVettingSummary :AccountID'
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1060
    Top = 25
  end
  object dtsVettingSummary: TDataSource
    DataSet = dsVettingSummary
    Left = 1060
    Top = 13
  end
  object dsStatusReason: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT StatusReasonID, StatusID, Description, MultipleSubReasons' +
      #13#10'FROM ACC_StatusReason'#13#10'WHERE Enabled = 1'#13#10'ORDER BY Description'
    Parameters = <>
    Left = 922
    Top = 25
  end
  object dtsStatusReason: TDataSource
    DataSet = dsStatusReason
    Left = 922
    Top = 13
  end
  object dsStatusSubReason: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT StatusSubReasonID, StatusReasonID, Description'#13#10'FROM ACC_' +
      'StatusSubReason'#13#10'WHERE Enabled = 1'#13#10'AND StatusReasonID = :Status' +
      'ReasonID'#13#10'ORDER BY StatusReasonID, Description'
    DataSource = dtsStatusReason
    Parameters = <
      item
        Name = 'StatusReasonID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1404
    Top = 25
  end
  object dtsStatusSubReason: TDataSource
    DataSet = dsStatusSubReason
    Left = 1404
    Top = 13
  end
  object dsAccountSubReason: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT AR.AccountID, AR.StatusSubReasonID, SR.Description'#13#10'FROM ' +
      'ACC_AccountStatusSubReason AR'#13#10'LEFT JOIN ACC_StatusSubReason SR ' +
      'ON AR.StatusSubReasonID = SR.StatusSubReasonID'#13#10'WHERE AR.Account' +
      'ID = :LoanID'
    DataSource = dtsLoanDet
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
    Left = 800
    Top = 94
  end
  object dtsAccountSubReason: TDataSource
    DataSet = dsAccountSubReason
    Left = 800
    Top = 82
  end
  object cmdDeleteSubReason: TADOCommand
    CommandText = 
      'DELETE FROM ACC_AccountStatusSubReason WHERE AccountID = :Accoun' +
      'tID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 363
    Top = 496
  end
  object cmdApproveProcess: TADOCommand
    CommandText = 
      'SELECT :ProcessCount = COUNT(*)'#13#10'FROM ACC_AccountVettingTask AV'#13 +
      #10'LEFT JOIN ACC_VettingTask VT ON AV.VettingTaskID = VT.ParentID'#13 +
      #10'LEFT JOIN ACC_VettingResult TR ON AV.ResultTypeID1 = TR.Vetting' +
      'ResultID'#13#10'LEFT JOIN ACC_VettingResult RR ON AV.ResultTypeID2 = R' +
      'R.VettingResultID'#13#10'INNER JOIN ACC_VettingTaskResultType RT ON AV' +
      '.VettingTaskID = RT.VettingTaskID'#13#10#9'AND RT.VettingResultTypeID =' +
      ' 1 --*** TASK/AUTHORISATIONS'#13#10'LEFT JOIN ACC_VettingResult FR ON ' +
      'AV.ResultTypeID3 = FR.VettingResultID'#13#10'WHERE AccountID = :LoanID' +
      #13#10#9'AND VT.VettingTaskID IS NULL'#13#10#9'AND (TR.Success IS NULL'#13#10#9#9'OR'#13 +
      #10#9#9'(TR.Success = 0'#13#10#9#9#9'AND ISNULL(RR.Success, 0) = 0'#13#10#9#9#9'AND ISN' +
      'ULL(FR.Success, 0) = 0))'#13#10'                                      ' +
      '         AND AV.VettingTaskID NOT IN (35)'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'ProcessCount'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
        Value = Null
      end
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 680
    Top = 617
  end
  object cmdCheckRisk: TADOCommand
    CommandText = 
      'UPDATE AV'#13#10'SET'#13#10#9'ResultTypeID3 = :AcceptReject, --*** ACCEPT'#13#10#9'U' +
      'serID3 = 0, --*** SYSTEM'#13#10#9'UpdateDate3 = GETDATE()'#13#10'FROM ACC_Acc' +
      'ountVettingTask AV'#13#10'LEFT JOIN lsLoanDetail LD ON AV.AccountID = ' +
      'LD.LoanID'#13#10#9'AND LD.Status NOT IN (10, 15)  --*** DECLINED, CANCE' +
      'LLED'#13#10'WHERE '#13#10#9'AccountID = :LoanID'#13#10#9'AND VettingTaskID = :Vettin' +
      'gTaskID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'AcceptReject'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'VettingTaskID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1179
    Top = 555
  end
  object cmdSMSSend: TADOCommand
    CommandText = 
      'INSERT INTO SMS_MessageOut'#13#10#9'(CreateDate, CreateuserID, LoanID, ' +
      'EntityID, CellNo, Message, PriorityID, TemplateID) '#13#10'VALUES'#13#10#9'(G' +
      'ETDATE(), :UserID, :LoanID, :EntityID, :CellNo, :SmsMsg, 1, 10)'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EntityID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CellNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end
      item
        Name = 'SmsMsg'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 500
        Value = Null
      end>
    Left = 1060
    Top = 307
  end
  object dsIssueQuote: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'SELECT Email, TelNo3 AS Cellno FROM EntityData WHERE EntityID = ' +
      ':EntityID'
    Parameters = <
      item
        Name = 'EntityID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 800
    Top = 617
  end
  object cmdInsertEmailNote: TADOCommand
    CommandText = 
      'INSERT INTO NoteSys'#13#10#9'(TableName, KeyValue, Category, CreateUser' +
      ', CreateDate, Note, IsInternal)'#13#10'VALUES'#13#10#9'('#39'lsLoanDetail'#39', :Loan' +
      'ID, 0, '#39'SYSTEM'#39', GETDATE(), '#39'Quotation & MLA emailed to, '#39' + :Em' +
      'ail, 0)'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'Email'
        Attributes = [paLong]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end>
    Left = 1060
    Top = 373
  end
  object cmdInsertSMSNote: TADOCommand
    CommandText = 
      'INSERT INTO NoteSys'#13#10#9'(TableName, KeyValue, Category, CreateUser' +
      ', CreateDate, Note, IsInternal)'#13#10'VALUES'#13#10#9'('#39'lsLoanDetail'#39', :Loan' +
      'ID, 0, '#39'SYSTEM'#39', GETDATE(), '#39'Quotation Issued, SMS sent to '#39' + :' +
      'CellNo, 0)'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'CellNo'
        Attributes = [paLong]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    Left = 1060
    Top = 437
  end
  object dsCommunication: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'CM.Type,'#13#10#9'CASE'#13#10#9#9'WHEN CM.Type = '#39'SMS'#39' THEN CAST(CM.M' +
      'essage AS VARCHAR(250))'#13#10#9#9'ELSE CM.Subject'#13#10#9'END AS Subject, '#13#10#9 +
      'CM.Message, CM.CommunicationValue, CM.CreateDate,'#13#10#9'SU.Username ' +
      'AS CreateUser, CM.EntityID,'#13#10#9'CM.AccountID, CM.CommunicationID'#13#10 +
      'FROM vw_ACC_Communication CM'#13#10'LEFT JOIN SEC_User SU ON CM.Create' +
      'UserID = SU.UserID'#13#10'WHERE CM.AccountID = :AccountID'#13#10'ORDER BY CM' +
      '.CreateDate DESC'
    DataSource = dtsLoanDet
    IndexFieldNames = 'AccountID'
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1179
    Top = 25
  end
  object dtsCommunication: TDataSource
    DataSet = dsCommunication
    Left = 1179
    Top = 13
  end
  object qryLastFailedAHV: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 1 AV.RecordID, RS.IsSuccess'
      'FROM ieAHV AV'
      'INNER JOIN AHV_Result RS ON AV.ResultID = RS.ResultID'
      'LEFT JOIN AHV_Batch AB ON AV.BatchID = AB.BatchID'
      'WHERE AV.EntityID = :EntityID'
      #9'AND AV.Enabled = 1'
      'ORDER BY AB.ReplyDate DESC, AV.RecordID DESC')
    Left = 1404
    Top = 555
  end
  object qryNoAHV: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 1 ISNULL(RS.IsSuccess, 0) AS IsSuccess'
      'FROM EntityData ED'
      'LEFT JOIN BankDetails BD ON ED.EntityID = BD.EntityID'
      #9'AND Active = 1'
      'LEFT JOIN ieAHV AV ON BD.EntityID = AV.EntityID '
      #9'AND ED.RegNo = AV.IDNumber '
      #9'AND BD.BName = AV.BankName '
      #9'AND BD.AccNo = AV.AccountNo'
      #9'AND AV.Enabled = 1'
      'LEFT JOIN AHV_Result RS ON AV.ResultID = RS.ResultID'
      'WHERE ED.EntityID = :EntityID'
      'ORDER BY ISNULL(RS.IsSuccess, 0) DESC')
    Left = 363
    Top = 437
  end
  object dsEventTracking: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 'ACC_GetLifecycleTracking;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@AccountID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 1179
    Top = 97
  end
  object dtsEventTracking: TDataSource
    DataSet = dsEventTracking
    Left = 1179
    Top = 83
  end
  object cmdEnableBureauAccount: TADOCommand
    CommandText = 
      'UPDATE BureauAccounts SET '#13#10'     ActionDate = GetDate(),'#13#10'     A' +
      'ccountActionID =:AccountActionID,'#13#10'     AccountActionUserID =:Ac' +
      'countActionUserID,'#13#10'     SalesDepartment =:SalesDepartment'#13#10'WHER' +
      'E AccountID= :AccountID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'AccountActionID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'AccountActionUserID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SalesDepartment'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1060
    Top = 673
  end
  object cmdDeleteNonBureauAccount: TADOCommand
    CommandText = ' DELETE FROM BureauAccounts'#13#10'      WHERE AccountID =:AccountID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'AccountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 922
    Top = 617
  end
  object qryConfigDV360URL: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Value as DV360URL from Config where name = '#39'DV360_URL'#39)
    Left = 632
    Top = 576
  end
  object cmdCheckFlags: TADOCommand
    CommandText = 
      ' SELECT  :FailedFlags = COUNT(*) '#13#10'                             ' +
      '   FROM lsLoanFlagHistory FH'#13#10'                                LE' +
      'FT JOIN lsLoanFlag LF ON FH.FlagID = LF.FlagID'#13#10'                ' +
      '                WHERE FH.LoanID = :LoanID'#13#10#9'                    ' +
      '            AND FH.Failed = 1'#13#10#9'                                ' +
      'AND LF.Information = 0'#13#10#9'                                AND FH.' +
      'AuthoriseDate IS NULL'#13#10#9'                                AND LF.F' +
      'lagID <> 6'#13#10#9'                                AND LF.FlagID <> 2'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'FailedFlags'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
        Value = 0
      end
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 676
    Top = 729
  end
end
