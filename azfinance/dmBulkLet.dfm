object dtmBulkLet: TdtmBulkLet
  OldCreateOrder = False
  Left = 192
  Top = 133
  Height = 375
  Width = 544
  object qryLetters: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select LetKey, AppID, LetDescription, LetterBody, UserID, DateAd' +
      'ded'#13#10'from Letters'#13#10'where AppID = 100'
    Parameters = <>
    Left = 40
    Top = 16
  end
  object dtsLetters: TDataSource
    DataSet = qryLetters
    Left = 40
    Top = 32
  end
  object qryLUEntity: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select EntityID, EntCode, Name,Name2,TelNo1'#13#10'from EntityData'#13#10'wh' +
      'ere EntityID in (select EntityID from EntRelation'#13#10'   where Rela' +
      'tion=0 and AppId=100)'
    Parameters = <>
    Left = 144
    Top = 16
  end
  object dtsLUEntity: TDataSource
    DataSet = qryLUEntity
    Left = 144
    Top = 32
  end
  object qryLoanDet: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select LoanID, EntityID, LoanType, LoanPeriod, IntRate, StartDat' +
      'e, EndDate, Status'#13#10'from lsLoanDetail'
    Parameters = <>
    Left = 240
    Top = 16
    object qryLoanDetLoanID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'ID'
      DisplayWidth = 6
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object qryLoanDetLUEntity: TStringField
      DisplayLabel = 'Client'
      FieldKind = fkLookup
      FieldName = 'LUEntity'
      LookupDataSet = qryLUEntity
      LookupKeyFields = 'EntityID'
      LookupResultField = 'Name'
      KeyFields = 'EntityID'
      Lookup = True
    end
    object qryLoanDetStatus: TSmallintField
      DisplayWidth = 10
      FieldName = 'Status'
    end
    object qryLoanDetStartDate: TDateTimeField
      DisplayLabel = 'Start date'
      DisplayWidth = 12
      FieldName = 'StartDate'
    end
    object qryLoanDetEndDate: TDateTimeField
      DisplayLabel = 'End date'
      DisplayWidth = 12
      FieldName = 'EndDate'
    end
    object qryLoanDetLoanType: TStringField
      DisplayLabel = 'Loan type'
      DisplayWidth = 5
      FieldName = 'LoanType'
      Size = 3
    end
    object qryLoanDetLoanPeriod: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Loan period'
      DisplayWidth = 11
      FieldName = 'LoanPeriod'
    end
    object qryLoanDetIntRate: TBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Int rate'
      DisplayWidth = 7
      FieldName = 'IntRate'
      Precision = 5
      Size = 2
    end
    object qryLoanDetEntityID: TIntegerField
      FieldName = 'EntityID'
      Visible = False
    end
  end
  object dtsLoanDet: TDataSource
    DataSet = qryLoanDet
    Left = 240
    Top = 32
  end
  object qryLoanType: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 'select LoanType '#13#10'from lsLoanTypes'
    Parameters = <>
    Left = 40
    Top = 112
  end
  object dtsLoanType: TDataSource
    DataSet = qryLoanType
    Left = 40
    Top = 128
  end
  object qryReplace: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select PSN.EntityID,PSN.EntCode,PSN.Title,PSN.Name2,PSN.Name,'#13#10' ' +
      'PSN.RegNo,PSN.TelNo1,PSN.TelNo2,PSN.TelNo3,'#13#10' --Indicator,'#13#10' ETA' +
      '.EmpID,EMP.EntCode as EmpKey,Emp.Name as EmpName,'#13#10'ETA.BranchID,' +
      ' LDS.LoanID,LDS.LoanKey,LDS.LoanType,LDS.LoanPeriod,'#13#10'LDS.LoanCa' +
      'pital,LDS.MthIns,LDS.AmtToFin,LDS.PayIns,LDS.IntRate,'#13#10'LDS.TotIn' +
      'terest,LDS.CashDep,LDS.InstPaid,LDS.StartDate,'#13#10'LDS.FirstInsDate' +
      ',LDS.AccBal,LDS.LoanBal,LDS.AvlBal,LDS.DepositBal,'#13#10'LDS.Status,L' +
      'DS.LoanTypeInd,LDS.FunderID,LDS.ArrearsAmt,LDs.Fee1,'#13#10'LDS.Fee2,L' +
      'DS.Fee3,LDS.Fee4,LDS.Fee5,LDS.Fee6, BNK.BName,BNK.BBranch,BNK.BB' +
      'Code,BNK.AccNo,BNK.AccName,'#13#10'BNK.AccType,'#13#10'PST.Address1 as PST1,' +
      'PST.Address2 as PST2,PST.Address3 as PST3,'#13#10'PST.Address4 as PST4' +
      ',PST.AddressCode as PSTCode,'#13#10'PHS.Address1 as PHS1,PHS.Address2 ' +
      'as PHT2,PHS.Address3 as PHS3,'#13#10'PHS.Address4 as PHS4,PHS.AddressC' +
      'ode as PHSCode'#13#10'FROM lsLoandetail LDS left join EntityData PSN o' +
      'n LDS.EntityID=PSN.EntityID'#13#10'  left join lsEntPsnAdd ETA on ETA.' +
      'EntityID=LDS.EntityID'#13#10'  left join EntityData EMP on EMP.EntityI' +
      'D=LDS.EntityID'#13#10'  left join BankDetails BNK on BNK.EntityID=LDS.' +
      'EntityID'#13#10'  left join Address PST on PST.EntityID=LDS.EntityID a' +
      'nd PST.AddressType=1'#13#10'  left join Address PHS on PHS.EntityID=LD' +
      'S.EntityID and PHS.AddressType=2'#13#10'where LDS.LoanID = :LID'#13#10
    Parameters = <
      item
        Name = 'LID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 152
    Top = 104
  end
  object qryLetterFld: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select LetterFld.LetKey, LetterFld.LetCode, Lettercodes.Name,   ' +
      'LetterCodes.FieldName '#13#10'from Letterfld inner join Lettercodes'#13#10'o' +
      'n Letterfld.LetCode = Lettercodes.CodeID'#13#10'where Letterfld.LetKey' +
      ' =:LetKey'#13#10
    DataSource = dtsLetters
    Parameters = <
      item
        Name = 'LetKey'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 240
    Top = 104
  end
  object dtsLetterFld: TDataSource
    DataSet = qryLetterFld
    Left = 240
    Top = 120
  end
end
