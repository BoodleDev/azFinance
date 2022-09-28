object dtmLCD: TdtmLCD
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 194
  Top = 166
  Height = 267
  Width = 476
  object cdsContract: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 104
    object cdsContractLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object cdsContractType: TIntegerField
      FieldName = 'Type'
    end
    object cdsContractPayNo: TIntegerField
      FieldName = 'PayNo'
    end
    object cdsContractEffectDate: TDateField
      FieldName = 'EffectDate'
    end
    object cdsContractAmount: TCurrencyField
      FieldName = 'Amount'
    end
    object cdsContractInterest: TCurrencyField
      FieldName = 'Interest'
    end
    object cdsContractBalance: TCurrencyField
      FieldName = 'Balance'
    end
    object cdsContractNOD: TIntegerField
      DisplayLabel = 'No of days'
      FieldName = 'NOD'
    end
    object cdsContractAmtToAdd: TCurrencyField
      FieldName = 'AmtToAdd'
    end
    object cdsContractIntRate: TFloatField
      FieldName = 'IntRate'
    end
    object cdsContractIntME: TCurrencyField
      FieldName = 'IntME'
    end
  end
  object dtsContract: TDataSource
    DataSet = cdsContract
    Left = 48
    Top = 120
  end
  object qryStruc: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select LoanID, EffectDate, Type, Amount, TypeCnt '#13#10'from lsLDStru' +
      'c'#13#10'where LoanID=:LoanID'
    DataSource = dtsLDS
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
    Top = 24
  end
  object qryLDS: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select LoanID, LoanType, LTaccT, LoanPeriod, AmtToFin, ResidualA' +
      'mt, MthIns, StartDate, FirstInsDate'#13#10'from lsLoanDetail where Loa' +
      'nID= :Lid'
    Parameters = <
      item
        Name = 'Lid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 24
  end
  object qryRates: TADODataSet
    LockType = ltReadOnly
    CommandText = 
      'select EffectDate, IntRate'#13#10'from lsLoanTRate where LoanType = :L' +
      'oanType'
    DataSource = dtsLDS
    Parameters = <
      item
        Name = 'LoanType'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    Left = 208
    Top = 24
  end
  object dtsLDS: TDataSource
    DataSet = qryLDS
    Left = 48
    Top = 40
  end
end
