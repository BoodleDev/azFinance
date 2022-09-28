object dtmLoanFees: TdtmLoanFees
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Top = 245
  Height = 283
  Width = 439
  object dsFees: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'SELECT LoanID, LF.FeeID, FeeName, FeeType'#13#10'FROM lsLoanFee LF'#13#10'LE' +
      'FT JOIN lsLoanTypeFee TF ON LF.FeeID = TF.FeeID'#13#10'LEFT JOIN lsFee' +
      'Type FT ON TF.FeeTypeID = FT.FeeTypeID'#13#10'WHERE LoanID = :LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 16
  end
  object dsFeeDetail: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LoanID, FeeID, EffectiveDate, Value1, Type1, Value2, Type' +
      '2, OffSet2, CeilAmount, CreateDate, CreateUser'#13#10'FROM lsLoanFeeDe' +
      'tail'#13#10'WHERE LoanID = :LoanID'#13#10'AND FeeID = :FeeID'
    DataSource = dtsFees
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
        Name = 'FeeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 112
    Top = 16
  end
  object dtsFeeDetail: TDataSource
    DataSet = dsFeeDetail
    Left = 112
    Top = 32
  end
  object dtsFees: TDataSource
    DataSet = dsFees
    Left = 40
    Top = 32
  end
end
