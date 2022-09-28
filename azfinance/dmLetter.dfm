object dtmLetter: TdtmLetter
  OldCreateOrder = False
  Left = 275
  Top = 168
  Height = 314
  Width = 468
  object qryLetterFld: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select LetterFld.LetKey, LetterFld.LetKey, Lettercodes.Name,   L' +
      'etterCodes.FieldName '#13#10'from Letterfld inner join Lettercodes'#13#10'on' +
      ' Letterfld.LetCode = Lettercodes.CodeID'#13#10'where Letterfld.LetKey ' +
      '=:LetKey'
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
      'SELECT LoanID, ENT.EntityID, ENT.EntCode, LoanType, LoanPeriod, ' +
      'LoanCapital, AmtToFin, ResidualAmt,'#13#10'MthIns, PayIns, IntRate, To' +
      'tInterest, CashDep, TotSecAmt, InstPaid, StartDate, FirstInsDate' +
      ','#13#10'EndDate, AccBal, LoanBal, AvlBal, DepositBal, '#13#10'CASE LOAN.Sta' +
      'tus'#13#10'WHEN 0 THEN '#39'Inactive'#39#13#10'WHEN 10 THEN '#39'Declined'#39#13#10'WHEN 15 TH' +
      'EN '#39'Cancelled'#39#13#10'WHEN 18 THEN '#39'Preapproved'#39#13#10'WHEN 20 THEN '#39'Approv' +
      'ed'#39#13#10'WHEN 25 THEN '#39'Auto-Pay'#39#13#10'WHEN 28 THEN '#39'Auto-IMEX'#39#13#10'WHEN 30 ' +
      'THEN '#39'Open'#39#13#10'WHEN 40 THEN '#39'Bad Debt'#39#13#10'WHEN 50 THEN '#39'Settled'#39#13#10'WH' +
      'EN 60 THEN '#39'Frozen'#39#13#10'WHEN 65 THEN '#39'Zero Interest'#39#13#10'WHEN 68 THEN ' +
      #39'No Debits'#39'  '#13#10'WHEN 70 THEN '#39'Closed'#39#13#10'END Status, ArrearsAmt, Ar' +
      'rearsDate, AmountDue, NoOfPay, LastDPay, LastAmtPay,'#13#10'LOAN.RegNo' +
      ' AS NLRRegNo, RefNo AS LoanRef, QryNo, AppAmt, AppDate, DocNo, F' +
      'ee1,Fee2,Fee3,Fee4,'#13#10'Fee5,Fee6,(AmtToFin + TotInterest) as TotLo' +
      'an, AprvDate, ENT.DOB, ENT.RegNo As IDNo,'#13#10'ENT.RefFld1, ENT.RefF' +
      'ld2, ENT.Title, ENT.Name, ENT.Name2 AS Surname, ENT.CallName, EN' +
      'T.TelNo1 AS TelHome, '#13#10'ENT.TelNo2 AS TelWork,ENT.TelNo3 AS TelCe' +
      'll, ENT.FaxNo, ENT.Email, ENT.Website, BName AS Bank, BBranch, B' +
      'BCode, AccNo, AccName, AccType,'#13#10'DateOpen, POS.Address1 AS POSAd' +
      'd1, POS.Address2 AS POSAdd2, POS.Address3 AS POSAdd3,'#13#10'POS.Addre' +
      'ss4 AS POSAdd4, POS.AddressCode AS POSCode, RES.Address1 AS RESA' +
      'dd1, RES.Address2 AS RESAdd2, '#13#10'RES.Address3 AS RESAdd3, RES.Add' +
      'ress4 AS RESAdd4, RES.AddressCode AS RESCode, EMP.Name AS EmpNam' +
      'e,'#13#10'EPOS.Address1 AS EmpPosAdd1, EPOS.Address2 AS EmpPosAdd2, EP' +
      'OS.Address3 AS EmpPosAdd3,'#13#10'EPOS.Address4 AS EmpPosAdd4, EPOS.Ad' +
      'dressCode AS EmpPosCode,'#13#10'EPHY.Address1 AS EmpPhyAdd1, EPHY.Addr' +
      'ess2 AS EmpPhyAdd2, '#13#10'EPHY.Address3 AS EmpPhyAdd3, EPHY.Address4' +
      ' AS EmpPhyAdd4, EPHY.AddressCode AS EmpPhyCode,'#13#10'EMP.TelNo1 AS E' +
      'mpTelNo1, EMP.TelNo2 AS EmpTelNo2, EMP.TelNo3 AS EmpTelNo3, EMP.' +
      'FaxNo AS EmpFaxNo, '#13#10'EMP.Email AS EmpEmail, EMP.Website AS EmpWe' +
      'bsite, BRA.Name AS BranchName,'#13#10'BRA.TelNo1 AS BranchTelNo1, BRA.' +
      'TelNo2 AS BranchTelNo2, BRA.TelNo3 AS BranchTelNo3, '#13#10'BRA.FaxNo ' +
      'AS BranchFaxNo, BRA.Email AS BranchEmail, BRA.Website AS BranchW' +
      'ebsite,'#13#10'BPOS.Address1 AS BranchPosAdd1, BPOS.Address2 AS Branch' +
      'PosAdd2, BPOS.Address3 AS BranchPosAdd3,'#13#10'BPOS.Address4 AS Branc' +
      'hPosAdd4, BPOS.AddressCode AS BranchPosCode,'#13#10'BPHY.Address1 AS B' +
      'ranchPhyAdd1, BPHY.Address2 AS BranchPhyAdd2, '#13#10'BPHY.Address3 AS' +
      ' BranchPhyAdd3, BPHY.Address4 AS BranchPhyAdd4, BPHY.AddressCode' +
      ' AS BranchPhyCode'#13#10'FROM lsLoanDetail LOAN '#13#10'LEFT JOIN EntityData' +
      ' ENT ON LOAN.EntityID = ENT.EntityID'#13#10'LEFT JOIN BankDetails BANK' +
      ' ON ENT.EntityID  = BANK.EntityID'#13#10'LEFT JOIN Address POS ON ENT.' +
      'EntityID = POS.EntityID AND POS.AddressType = 1'#13#10'LEFT JOIN Addre' +
      'ss RES ON ENT.EntityID = RES.EntityID AND RES.AddressType = 2'#13#10'L' +
      'EFT JOIN lsEntPsnAdd PSN ON ENT.EntityID = PSN.EntityID'#13#10'LEFT JO' +
      'IN EntityData EMP ON PSN.EmpID = EMP.EntityID'#13#10'LEFT JOIN Address' +
      ' EPOS ON EMP.EntityID = EPOS.EntityID AND EPOS.AddressType = 1'#13#10 +
      'LEFT JOIN Address EPHY ON EMP.EntityID = EPHY.EntityID AND EPHY.' +
      'AddressType = 2'#13#10'LEFT JOIN EntityData BRA ON PSN.BranchID = BRA.' +
      'EntityID'#13#10'LEFT JOIN Address BPOS ON BRA.EntityID = BPOS.EntityID' +
      ' AND BPOS.AddressType = 1'#13#10'LEFT JOIN Address BPHY ON BRA.EntityI' +
      'D = BPHY.EntityID AND BPHY.AddressType = 2'#13#10'WHERE LoanID = :LID'
    Parameters = <
      item
        Name = 'LID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 96
  end
  object qryLetters: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryLettersBeforeOpen
    CommandText = 
      'select LetKey, AppID, LetDescription, LetterBody, UserID, DateAd' +
      'ded, LetType'#13#10'from Letters where AppID = :AppID'
    Parameters = <
      item
        Name = 'AppID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 16
    object qryLettersLetKey: TIntegerField
      FieldName = 'LetKey'
      ReadOnly = True
    end
    object qryLettersAppID: TIntegerField
      FieldName = 'AppID'
    end
    object qryLettersLetDescription: TStringField
      FieldName = 'LetDescription'
      Size = 50
    end
    object qryLettersLetterBody: TMemoField
      FieldName = 'LetterBody'
      BlobType = ftMemo
    end
    object qryLettersUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qryLettersDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
    object qryLettersLetType: TSmallintField
      FieldName = 'LetType'
    end
  end
  object dtsLetters: TDataSource
    DataSet = qryLetters
    Left = 144
    Top = 32
  end
  object qryLoanAgree: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Filtered = True
    LockType = ltReadOnly
    BeforeOpen = qryLettersBeforeOpen
    CommandText = 'select * '#13#10'from Letters'#13#10'where DefaultLA = 1'
    Parameters = <>
    Left = 144
    Top = 96
    object qryLoanAgreeLetKey: TIntegerField
      FieldName = 'LetKey'
      ReadOnly = True
    end
    object qryLoanAgreeAppID: TIntegerField
      FieldName = 'AppID'
    end
    object qryLoanAgreeLetDescription: TStringField
      FieldName = 'LetDescription'
      Size = 50
    end
    object qryLoanAgreeLetterBody: TMemoField
      FieldName = 'LetterBody'
      BlobType = ftMemo
    end
    object qryLoanAgreeUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qryLoanAgreeDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
    object qryLoanAgreeLetType: TSmallintField
      FieldName = 'LetType'
    end
    object qryLoanAgreeDefaultLA: TBooleanField
      FieldName = 'DefaultLA'
    end
  end
  object dtsLoanAgree: TDataSource
    DataSet = qryLoanAgree
    Left = 144
    Top = 112
  end
end
