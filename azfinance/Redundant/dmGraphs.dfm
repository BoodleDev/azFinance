object dtmGraphs: TdtmGraphs
  OldCreateOrder = False
  Left = 120
  Top = 57
  Height = 471
  Width = 561
  object dsrcLoanType: TDecisionSource
    DecisionCube = dcLoanType
    ControlType = xtCheck
    SparseRows = False
    SparseCols = False
    Left = 40
    Top = 281
    DimensionCount = 3
    SummaryCount = 5
    CurrentSummary = 1
    SparseRows = False
    SparseCols = False
    DimensionInfo = (
      2
      0
      1
      0
      -1
      1
      0
      1
      0
      -1
      1
      1
      1
      1
      0)
  end
  object qryYMDetail: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryYMDetailCalcFields
    CommandText = 
      'select YMKey, YearInd, MonthInd, LCPayment, LCInterest,'#13#10' LDPaym' +
      'ent, LDInterest, SeqNo, LCBal, LCcnt, LDcnt'#13#10'from lsYMDetail'#13#10
    Parameters = <>
    Left = 40
    Top = 112
    object qryYMDetailYMKey: TIntegerField
      FieldName = 'YMKey'
    end
    object qryYMDetailYearInd: TSmallintField
      FieldName = 'YearInd'
    end
    object qryYMDetailMonthInd: TStringField
      FieldName = 'MonthInd'
      FixedChar = True
      Size = 2
    end
    object qryYMDetailLCPayment: TBCDField
      DisplayWidth = 10
      FieldName = 'LCPayment'
      currency = True
      Precision = 19
    end
    object qryYMDetailLCInterest: TBCDField
      DisplayWidth = 10
      FieldName = 'LCInterest'
      currency = True
      Precision = 19
    end
    object qryYMDetailLDPayment: TBCDField
      DisplayWidth = 10
      FieldName = 'LDPayment'
      currency = True
      Precision = 19
    end
    object qryYMDetailLDInterest: TBCDField
      DisplayWidth = 10
      FieldName = 'LDInterest'
      currency = True
      Precision = 19
    end
    object qryYMDetailSeqNo: TIntegerField
      FieldName = 'SeqNo'
    end
    object qryYMDetailPayDif: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PayDif'
      Calculated = True
    end
    object qryYMDetailIntDif: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'IntDif'
      Calculated = True
    end
    object qryYMDetailLCBal: TBCDField
      DisplayWidth = 10
      FieldName = 'LCBal'
      currency = True
      Precision = 19
    end
    object qryYMDetailLCcnt: TSmallintField
      FieldName = 'LCcnt'
    end
    object qryYMDetailLDcnt: TSmallintField
      FieldName = 'LDcnt'
    end
  end
  object decDataLoanType: TADOStoredProc
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'lsDecisionLoanSum;1'
    Parameters = <>
    Left = 40
    Top = 192
    object decDataLoanTypeLoanType: TStringField
      FieldName = 'LoanType'
      Size = 3
    end
    object decDataLoanTypeDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object decDataLoanTypeLoanPeriod: TSmallintField
      FieldName = 'LoanPeriod'
    end
    object decDataLoanTypeNoOfLoan: TIntegerField
      FieldName = 'NoOfLoan'
    end
    object decDataLoanTypeSumLoanCap: TBCDField
      FieldName = 'SumLoanCap'
      DisplayFormat = 'R#,###,#0.00;(R#,###,#0.00)'
      currency = True
      Precision = 19
    end
    object decDataLoanTypeSumArrAmt: TBCDField
      FieldName = 'SumArrAmt'
      DisplayFormat = 'R#,###,#0.00;(R#,###,#0.00)'
      currency = True
      Precision = 19
    end
    object decDataLoanTypeSumMthIns: TBCDField
      FieldName = 'SumMthIns'
      DisplayFormat = 'R#,###,#0.00;(R#,###,#0.00)'
      currency = True
      Precision = 19
    end
  end
  object spcSumLoanType: TADOStoredProc
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    BeforeOpen = spcSumLoanTypeBeforeOpen
    ProcedureName = 'lsGrpSumLoanType;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@inBranchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 40
    Top = 8
  end
  object spcArrearsStats: TADOStoredProc
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    BeforeOpen = spcSumLoanTypeBeforeOpen
    OnCalcFields = spcArrearsStatsCalcFields
    ProcedureName = 'lsGrpArrearsStats;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@inBranchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 136
    Top = 8
    object spcArrearsStatsArrearsNo: TSmallintField
      FieldName = 'ArrearsNo'
    end
    object spcArrearsStatsArrearDays: TStringField
      FieldKind = fkCalculated
      FieldName = 'ArrearDays'
      Size = 10
      Calculated = True
    end
    object spcArrearsStatscntLoan: TIntegerField
      FieldName = 'cntLoan'
      ReadOnly = True
    end
    object spcArrearsStatssumLC: TBCDField
      FieldName = 'sumLC'
      ReadOnly = True
      currency = True
      Precision = 15
    end
  end
  object spcLoanStatus: TADOStoredProc
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    BeforeOpen = spcSumLoanTypeBeforeOpen
    OnCalcFields = spcLoanStatusCalcFields
    ProcedureName = 'lsGrpLoanStatus;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@inBranchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 224
    Top = 8
    object spcLoanStatusStatus: TSmallintField
      FieldName = 'Status'
    end
    object spcLoanStatusLoanStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'LoanStatus'
      Size = 10
      Calculated = True
    end
    object spcLoanStatuscntLoan: TIntegerField
      FieldName = 'cntLoan'
      ReadOnly = True
    end
    object spcLoanStatussumLC: TBCDField
      FieldName = 'sumLC'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object spcSumLoanUse: TADOStoredProc
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    BeforeOpen = spcSumLoanTypeBeforeOpen
    ProcedureName = 'lsGrpSumLoanUse;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@inBranchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 40
    Top = 64
  end
  object spcLoanPeriod: TADOStoredProc
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    BeforeOpen = spcSumLoanTypeBeforeOpen
    ProcedureName = 'lsGrpLoanPeriods;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@inBranchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 136
    Top = 64
  end
  object dcLoanType: TDecisionCube
    DataSet = decDataLoanType
    DimensionMap = <
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'LoanType'
        Name = 'LoanType'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 2
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'Description'
        Name = 'Description'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 7
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftSmallint
        Fieldname = 'LoanPeriod'
        Name = 'LoanPeriod'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 4
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftInteger
        Fieldname = 'NoOfLoan'
        Name = 'No of Loans'
        DerivedFrom = -1
        DimensionType = dimCount
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftBCD
        Fieldname = 'SumLoanCap'
        Name = 'Sum of Loancapital'
        DerivedFrom = -1
        DimensionType = dimSum
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftBCD
        Fieldname = 'SumArrAmt'
        Name = 'Sum of Arrears Amt.'
        DerivedFrom = -1
        DimensionType = dimSum
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftBCD
        Fieldname = 'SumMthIns'
        Name = 'Sum of Instalments'
        DerivedFrom = -1
        DimensionType = dimSum
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftUnknown
        Fieldname = 'Average of '
        Name = 'Average of '
        DerivedFrom = 4
        DimensionType = dimAverage
        BinType = binNone
        ValueCount = -1
        Active = True
      end>
    ShowProgressDialog = True
    MaxDimensions = 5
    MaxSummaries = 10
    MaxCells = 0
    Left = 40
    Top = 237
  end
  object dcArrFreq: TDecisionCube
    DataSet = qryArrFreq
    DimensionMap = <
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'ArrNo'
        Name = 'Arrears prd.'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 0
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PayNo'
        Name = 'Last paid'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 0
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'LoanType'
        Name = 'Loan type'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 0
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftBCD
        Fieldname = 'SumArr'
        Name = 'Sum of arrears'
        DerivedFrom = -1
        DimensionType = dimSum
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftBCD
        Fieldname = 'SumLA'
        Name = 'Sum of loan bal.'
        DerivedFrom = -1
        DimensionType = dimSum
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftInteger
        Fieldname = 'cntLN'
        Name = 'No of loans'
        DerivedFrom = -1
        DimensionType = dimCount
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftUnknown
        Fieldname = 'Average of '
        Name = 'Average of '
        DerivedFrom = 3
        DimensionType = dimAverage
        BinType = binNone
        ValueCount = -1
        Active = True
      end>
    ShowProgressDialog = True
    MaxDimensions = 5
    MaxSummaries = 10
    MaxCells = 0
    Left = 128
    Top = 237
  end
  object dsrcArrFreq: TDecisionSource
    DecisionCube = dcArrFreq
    ControlType = xtCheck
    SparseRows = True
    SparseCols = True
    Left = 128
    Top = 281
    DimensionCount = 3
    SummaryCount = 4
    CurrentSummary = 0
    SparseRows = True
    SparseCols = True
    DimensionInfo = (
      2
      0
      1
      0
      0
      1
      0
      1
      0
      -1
      1
      1
      1
      1
      0)
  end
  object decDellRate: TADOStoredProc
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'lsDellRate;1'
    Parameters = <>
    Left = 232
    Top = 192
    object decDellRateLoanType: TStringField
      DisplayLabel = 'Loan type'
      FieldName = 'LoanType'
      Size = 3
    end
    object decDellRateArrearsNo: TStringField
      FieldName = 'ArrearsNo'
      Size = 10
    end
    object decDellRateLoanBal: TBCDField
      DisplayLabel = 'Loan balance'
      FieldName = 'LoanBal'
      DisplayFormat = 'R#,###,#0.00;(R#,###,#0.00)'
      Precision = 19
    end
    object decDellRatePayIns: TBCDField
      DisplayLabel = 'Payble inst.'
      FieldName = 'PayIns'
      DisplayFormat = 'R#,###,#0.00;(R#,###,#0.00)'
      Precision = 19
    end
    object decDellRateCntLoan: TIntegerField
      DisplayLabel = 'No. of loans'
      FieldName = 'CntLoan'
    end
    object decDellRateDilRate: TBCDField
      DisplayLabel = 'Delinquency rate'
      FieldName = 'DilRate'
      ReadOnly = True
      DisplayFormat = '###.##.####%'
      Precision = 32
      Size = 15
    end
    object decDellRateArrNo: TIntegerField
      FieldName = 'ArrNo'
    end
  end
  object dcDellRate: TDecisionCube
    DataSet = decDellRate
    DimensionMap = <
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'LoanType'
        Name = 'Loan type'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 43
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'ArrearsNo'
        Name = 'Arrears prd.'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 5
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftBCD
        Fieldname = 'LoanBal'
        Name = 'Loan balance'
        DerivedFrom = -1
        DimensionType = dimSum
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftBCD
        Fieldname = 'PayIns'
        Name = 'Payble inst.'
        DerivedFrom = -1
        DimensionType = dimSum
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftInteger
        Fieldname = 'CntLoan'
        Name = 'No. of loans'
        DerivedFrom = -1
        DimensionType = dimCount
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftBCD
        Fieldname = 'DilRate'
        Name = 'Delinquency rate'
        DerivedFrom = -1
        DimensionType = dimSum
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diInactive
        FieldType = ftInteger
        Fieldname = 'ArrNo'
        Name = 'ArrNo'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftUnknown
        Fieldname = 'Average of '
        Name = 'Average of '
        DerivedFrom = 2
        DimensionType = dimAverage
        BinType = binNone
        ValueCount = -1
        Active = True
      end>
    ShowProgressDialog = True
    MaxDimensions = 5
    MaxSummaries = 10
    MaxCells = 0
    Left = 232
    Top = 237
  end
  object dsrcDellRate: TDecisionSource
    DecisionCube = dcDellRate
    ControlType = xtCheck
    SparseRows = False
    SparseCols = False
    Left = 232
    Top = 281
    DimensionCount = 2
    SummaryCount = 5
    CurrentSummary = 0
    SparseRows = False
    SparseCols = False
    DimensionInfo = (
      1
      0
      1
      0
      0
      2
      0
      1
      0
      0)
  end
  object dtsYMDetail: TDataSource
    DataSet = qryYMDetail
    Left = 40
    Top = 136
  end
  object qryArrFreq: TADOStoredProc
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'lsGetArrFreq;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@MEID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 128
    Top = 192
    object qryArrFreqArrNo: TStringField
      FieldName = 'ArrNo'
      Size = 10
    end
    object qryArrFreqPayNo: TStringField
      FieldName = 'PayNo'
      Size = 12
    end
    object qryArrFreqLoanType: TStringField
      FieldName = 'LoanType'
      Size = 3
    end
    object qryArrFreqSumArr: TBCDField
      FieldName = 'SumArr'
      DisplayFormat = 'R#,###,#0.00;(R#,###,#0.00)'
      currency = True
      Precision = 19
    end
    object qryArrFreqSumLA: TBCDField
      FieldName = 'SumLA'
      DisplayFormat = 'R#,###,#0.00;(R#,###,#0.00)'
      currency = True
      Precision = 19
    end
    object qryArrFreqcntLN: TIntegerField
      FieldName = 'cntLN'
    end
  end
end
