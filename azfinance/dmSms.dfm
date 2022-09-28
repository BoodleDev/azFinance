object dtmSms: TdtmSms
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 250
  Top = 125
  Height = 329
  Width = 488
  object qrySMS: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'select TransID, AppID, UserID, CellNo, SMS, UsrID, UserRef, SmsD' +
      'ate, Status from GtSms'
    Parameters = <>
    Left = 40
    Top = 16
  end
  object dtsSMS: TDataSource
    DataSet = qrySMS
    Left = 40
    Top = 40
  end
  object qrySmsLDs: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'GTSmstbl;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 40
    Top = 96
    object qrySmsLDsLoanID: TIntegerField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object qrySmsLDsEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object qrySmsLDsLoanKey: TIntegerField
      FieldName = 'LoanKey'
    end
    object qrySmsLDsEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object qrySmsLDsLoanType: TStringField
      FieldName = 'LoanType'
      Size = 3
    end
    object qrySmsLDsLTaccT: TSmallintField
      FieldName = 'LTaccT'
    end
    object qrySmsLDsLoanPeriod: TSmallintField
      FieldName = 'LoanPeriod'
    end
    object qrySmsLDsLoanCapital: TBCDField
      FieldName = 'LoanCapital'
      currency = True
      Precision = 19
    end
    object qrySmsLDsAmtToFin: TBCDField
      FieldName = 'AmtToFin'
      currency = True
      Precision = 19
    end
    object qrySmsLDsResidualAmt: TBCDField
      FieldName = 'ResidualAmt'
      currency = True
      Precision = 19
    end
    object qrySmsLDsMthIns: TBCDField
      FieldName = 'MthIns'
      currency = True
      Precision = 10
    end
    object qrySmsLDsPayIns: TBCDField
      FieldName = 'PayIns'
      currency = True
      Precision = 10
    end
    object qrySmsLDsIntRate: TBCDField
      FieldName = 'IntRate'
      Precision = 5
      Size = 2
    end
    object qrySmsLDsTotInterest: TBCDField
      FieldName = 'TotInterest'
      currency = True
      Precision = 19
    end
    object qrySmsLDsTotSecAmt: TBCDField
      FieldName = 'TotSecAmt'
      currency = True
      Precision = 19
    end
    object qrySmsLDsInstPaid: TStringField
      FieldName = 'InstPaid'
      FixedChar = True
      Size = 1
    end
    object qrySmsLDsStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object qrySmsLDsFirstInsDate: TDateTimeField
      FieldName = 'FirstInsDate'
    end
    object qrySmsLDsEndDate: TDateTimeField
      FieldName = 'EndDate'
    end
    object qrySmsLDsAccBal: TBCDField
      FieldName = 'AccBal'
      currency = True
      Precision = 19
    end
    object qrySmsLDsLoanBal: TBCDField
      FieldName = 'LoanBal'
      currency = True
      Precision = 19
    end
    object qrySmsLDsAvlBal: TBCDField
      FieldName = 'AvlBal'
      currency = True
      Precision = 19
    end
    object qrySmsLDsDepositBal: TBCDField
      FieldName = 'DepositBal'
      currency = True
      Precision = 19
    end
    object qrySmsLDsStatus: TSmallintField
      FieldName = 'Status'
    end
    object qrySmsLDsArrearsAmt: TBCDField
      FieldName = 'ArrearsAmt'
      currency = True
      Precision = 10
    end
    object qrySmsLDsArrearsNo: TSmallintField
      FieldName = 'ArrearsNo'
    end
    object qrySmsLDsArrearsDate: TDateTimeField
      FieldName = 'ArrearsDate'
    end
    object qrySmsLDsAmountDue: TBCDField
      FieldName = 'AmountDue'
      currency = True
      Precision = 19
    end
    object qrySmsLDsNoOfPay: TSmallintField
      FieldName = 'NoOfPay'
    end
    object qrySmsLDsLastDPay: TDateTimeField
      FieldName = 'LastDPay'
    end
    object qrySmsLDsLastAmtPay: TBCDField
      FieldName = 'LastAmtPay'
      Precision = 10
    end
    object qrySmsLDsAppDate: TDateTimeField
      FieldName = 'AppDate'
    end
    object qrySmsLDsAprvDate: TDateTimeField
      FieldName = 'AprvDate'
    end
    object qrySmsLDsName: TStringField
      FieldName = 'Name'
      Size = 35
    end
    object qrySmsLDsName2: TStringField
      FieldName = 'Name2'
      Size = 35
    end
    object qrySmsLDsTitle: TStringField
      FieldName = 'Title'
      Size = 4
    end
    object qrySmsLDsTelNo1: TStringField
      FieldName = 'TelNo1'
    end
    object qrySmsLDsFaxNo: TStringField
      FieldName = 'FaxNo'
    end
    object qrySmsLDsTelNo3: TStringField
      FieldName = 'TelNo3'
    end
  end
  object dtsSmsLds: TDataSource
    DataSet = qrySmsLDs
    Left = 40
    Top = 112
  end
  object qryGeneral: TADOQuery
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select RecID,ValInt,ValStr from General'
      'where recid = 11001')
    Left = 112
    Top = 96
  end
end
