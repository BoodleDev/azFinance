object dtmNLR: TdtmNLR
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 102
  Top = 62
  Height = 426
  Width = 567
  object qryData: TADODataSet
    AutoCalcFields = False
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select ENT.EntityID,ENT.EntType,ENT.EntCode,ENT.Status,'#13#10'       ' +
      'ENT.Category,ENT.RegNo as ID,'#13#10'       ENT.RefFld1,ENT.RefFld2,EN' +
      'T.Title,ENT.Name,ENT.Name2,'#13#10'       ENT.TelNo1,ENT.TelNo2,ENT.Te' +
      'lNo3,ENT.FaxNo,'#13#10'       ENT.Email,ENT.WebSite,'#13#10#9'LDS.LoanID,LDS.' +
      'LoanKey,LDS.AppAmt,'#13#10#9'LDS.LoanPeriod,LDS.LoanCapital,LDS.AmtToFi' +
      'n,LDS.PayIns,LDS.IntRate,'#13#10#9'LDS.StartDate,LDS.AccBal,LDS.LoanBal' +
      ',LDS.AvlBal,LDS.DepositBal,'#13#10#9'LDS.LoanUse,LDS.Link1,LDS.Link2,LD' +
      'S.Link3,LDS.ApprCtl,'#13#10#9'LDS.NoOfPay,LDS.LastDPay,LDS.LastAmtPay,'#13 +
      #10#9'LDS.RegNo,LDS.QryNo,LDS.LoanInd,LDS.ActionInd,LDS.TotInterest,' +
      #13#10'        ADR.Address1,ADR.Address2,ADR.Address3,ADR.Address4,AD' +
      'R.AddressCode,'#13#10'        eAdd.DOB,eAdd.Gender,eAdd.MaritalStatus,' +
      'eAdd.MthGross,'#13#10#9'eAdd.PayFreq, eAdd.OwnRent, LDS.Status as LoanS' +
      'tatus'#13#10'from lsLoanDetail LDS '#13#10'   Inner Join EntityData ENT on (' +
      'Ent.EntityID = LDS.EntityID)'#13#10'   left join Address ADR on (Ent.E' +
      'ntityID = ADR.EntityID) and (ADR.Addresstype = 2)  '#13#10'   left joi' +
      'n lsEntPsnAdd eAdd on(Ent.EntityID = eAdd.EntityID)'#13#10'order by en' +
      't.entCode'
    Parameters = <>
    Left = 48
    Top = 40
  end
  object qryNLRToDo: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 'select LoanID, TransType, StatusCode, RequestStr from lsNLRToDo'
    Parameters = <>
    Left = 48
    Top = 120
    object qryNLRToDoLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object qryNLRToDoTransType: TSmallintField
      FieldName = 'TransType'
    end
    object qryNLRToDoStatusCode: TSmallintField
      FieldName = 'StatusCode'
    end
    object qryNLRToDoRequestStr: TMemoField
      FieldName = 'RequestStr'
      BlobType = ftMemo
    end
    object qryNLRToDoLUCode: TStringField
      FieldKind = fkLookup
      FieldName = 'LUCode'
      LookupDataSet = qryLU
      LookupKeyFields = 'LoanID'
      LookupResultField = 'EntCode'
      KeyFields = 'LoanID'
      Size = 10
      Lookup = True
    end
    object qryNLRToDoLUPayIns: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'LUPayIns'
      LookupDataSet = qryLU
      LookupKeyFields = 'LoanID'
      LookupResultField = 'PayIns'
      KeyFields = 'LoanID'
      Lookup = True
    end
    object qryNLRToDoLULoanKey: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LULoanKey'
      LookupDataSet = qryLU
      LookupKeyFields = 'LoanID'
      LookupResultField = 'LoanKey'
      KeyFields = 'LoanID'
      Lookup = True
    end
  end
  object qryNLRResult: TADODataSet
    Connection = dtmMain.dbData
    CommandText = 
      'select LoanID, DateQry, DateReg, DateCls, QryRes from lsNLRResul' +
      't'
    Parameters = <>
    Left = 136
    Top = 120
  end
  object dtsNLRToDo: TDataSource
    DataSet = qryNLRToDo
    Left = 48
    Top = 136
  end
  object dtsData: TDataSource
    DataSet = qryData
    Left = 48
    Top = 56
  end
  object qryLU: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select LDS.LoanID,LDS.EntCode,LDS.PayIns ,LDS.LoanKey'
      'from '
      '  lsLoanDetail LDS ')
    Left = 136
    Top = 40
  end
  object qryLoanDetails: TADOQuery
    Connection = dtmMain.dbData
    Parameters = <>
    SQL.Strings = (
      'select LoanID, RegNo, QryNo , EntityID'
      'from '
      '  lsLoanDetail')
    Left = 208
    Top = 40
  end
  object qryMFRC: TADOQuery
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 48
    Top = 208
  end
  object qryGeneral: TADOQuery
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select RecID,ValInt,ValStr from General'
      'where recid between 11002 and 11003')
    Left = 136
    Top = 208
  end
  object qryPsnAdd: TADOQuery
    Connection = dtmMain.dbData
    Parameters = <>
    SQL.Strings = (
      'select EntityID,NLRRefNo from lsEntpsnAdd')
    Left = 288
    Top = 40
  end
  object QryToUse: TADOQuery
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 48
    Top = 272
  end
end
