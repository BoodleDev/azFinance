object dtmLetter: TdtmLetter
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 177
  Top = 145
  Height = 314
  Width = 468
  object qryLetterFld: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select LetterFld.LetKey, LetterFld.LetKey, Lettercodes.Name,   L' +
      'etterCodes.FieldName '#13#10'from Letterfld inner join Lettercodes'#13#10'on' +
      ' Letterfld.LetCode = Lettercodes.CodeID'#13#10'where Letterfld.LetKey ' +
      '=:LetKey'#13#10
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
    Left = 40
    Top = 24
  end
  object qryLetters: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryLettersBeforeOpen
    CommandText = 
      'select LetKey, AppID, LetDescription, LetterBody, UserID, DateAd' +
      'ded'#13#10'from Letters'#13#10'where AppID =:AppID'#13#10
    Parameters = <
      item
        Name = 'AppID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 24
  end
  object dtsLetters: TDataSource
    DataSet = qryLetters
    Left = 144
    Top = 40
  end
  object dtsLetterFld: TDataSource
    DataSet = qryLetterFld
    Left = 40
    Top = 40
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
    Left = 104
    Top = 96
  end
end
