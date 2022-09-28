object dtmLCST: TdtmLCST
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 137
  Top = 109
  Height = 323
  Width = 517
  object cdsContract: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 160
    object cdsContractLoanID: TIntegerField
      FieldName = 'LoanID'
      Visible = False
    end
    object cdsContractType: TIntegerField
      FieldName = 'Type'
    end
    object cdsContractPayNo: TIntegerField
      DisplayLabel = 'Pay no.'
      DisplayWidth = 5
      FieldName = 'PayNo'
    end
    object cdsContractEffectDate: TDateField
      DisplayLabel = 'Effect. date'
      DisplayWidth = 12
      FieldName = 'EffectDate'
    end
    object cdsContractAmount: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Amount'
    end
    object cdsContractInterest: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Interest'
    end
    object cdsContractBalance: TCurrencyField
      DisplayWidth = 13
      FieldName = 'Balance'
    end
    object cdsContractNOD: TIntegerField
      DisplayLabel = 'No of days'
      FieldName = 'NOD'
      Visible = False
    end
    object cdsContractAmtToAdd: TCurrencyField
      FieldName = 'AmtToAdd'
      Visible = False
    end
    object cdsContractIntRate: TFloatField
      DisplayLabel = 'Rate'
      DisplayWidth = 8
      FieldName = 'IntRate'
    end
  end
  object cdsStruc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'LoanID'
    MasterFields = 'LoanID'
    MasterSource = dtsLDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspStruc'
    Left = 152
    Top = 96
    object cdsStrucLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object cdsStrucEffectDate: TDateTimeField
      FieldName = 'EffectDate'
    end
    object cdsStrucType: TSmallintField
      FieldName = 'Type'
    end
    object cdsStrucAmount: TBCDField
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object cdsStrucTypeCnt: TSmallintField
      FieldName = 'TypeCnt'
    end
  end
  object dtsContract: TDataSource
    DataSet = cdsContract
    Left = 32
    Top = 176
  end
  object dtsStruc: TDataSource
    DataSet = cdsStruc
    Left = 152
    Top = 112
  end
  object qryLDS: TADODataSet
    LockType = ltReadOnly
    CommandText = 
      'select LoanID, LoanType, LTaccT, LoanPeriod, AmtToFin, ResidualA' +
      'mt, MthIns,   StartDate, FirstInsDate '#13#10'from lsLoanDetail'#13#10'where' +
      ' LoanID= :LID'
    Parameters = <
      item
        Name = 'LID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 16
  end
  object qryToUse: TADOQuery
    LockType = ltReadOnly
    Parameters = <>
    Left = 200
    Top = 16
  end
  object qryRate: TADODataSet
    LockType = ltReadOnly
    CommandText = 
      'select LoanType, EffectDate, IntRate from lsLoanTRate'#13#10'where Loa' +
      'nType=:LoanType'
    DataSource = dtsLDS
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
    Left = 120
    Top = 16
  end
  object dtsLDS: TDataSource
    DataSet = qryLDS
    Left = 32
    Top = 32
  end
  object dtsRate: TDataSource
    DataSet = qryRate
    Left = 120
    Top = 32
  end
  object dspStruc: TDataSetProvider
    DataSet = qryStruc
    Left = 96
    Top = 96
  end
  object qryStruc: TADODataSet
    MarshalOptions = moMarshalModifiedOnly
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
    Left = 32
    Top = 96
    object qryStrucLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object qryStrucEffectDate: TDateTimeField
      FieldName = 'EffectDate'
    end
    object qryStrucType: TWordField
      FieldName = 'Type'
    end
    object qryStrucAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object qryStrucTypeCnt: TWordField
      FieldName = 'TypeCnt'
    end
  end
end
