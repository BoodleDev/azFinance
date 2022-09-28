object dtmBatchTrans: TdtmBatchTrans
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1002
  Top = 251
  Height = 522
  Width = 800
  object spcEntLoan: TADOStoredProc
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'lsBatchEntLoans;1'
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
    Left = 56
    Top = 224
  end
  object qryBatchT: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterInsert = qryBatchTAfterInsert
    AfterEdit = qryBatchTAfterEdit
    BeforePost = qryBatchTBeforePost
    CommandText = 
      'SELECT '#13#10#9'BT.TransNo, BT.BatchID, BT.BatchNo, BT.LoanID, BT.Enti' +
      'tyID, BT.EntCode, BT.TransCode, BT.TransType, BT.TransDate, BT.S' +
      'tatus,'#13#10#9'BT.EffectDate, BT.ValueDate, BT.PostDate, BT.Amount, BT' +
      '.AmtPost, BT.UserID, BT.RefNo, BT.RefNo2, BT.Processed, '#13#10#9'CASE ' +
      #13#10#9#9'WHEN BT.TransType IN (22,23) THEN '#39#39#13#10#9#9'ELSE CAST(BT.LoanID ' +
      'AS varchar(10)) '#13#10#9'END AS sLoanID, LD.RefNo AS AccountNo, LS.Loa' +
      'nStatus AS StatusDescription, LS.StatusColor'#13#10'FROM lsBatchTrans ' +
      'BT'#13#10'LEFT JOIN lsLoanDetail LD ON BT.LoanID = LD.LoanID'#13#10'LEFT JOI' +
      'N lsLoanStatus LS ON LD.Status = LS.StatusID'#13#10'WHERE BT.BatchID =' +
      ' :inBatchID'
    IndexFieldNames = 'TransNo'
    Parameters = <
      item
        Name = 'inBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 56
    Top = 80
    object qryBatchTTransNo: TAutoIncField
      FieldName = 'TransNo'
      ReadOnly = True
    end
    object qryBatchTBatchID: TIntegerField
      FieldName = 'BatchID'
    end
    object qryBatchTBatchNo: TStringField
      FieldName = 'BatchNo'
      FixedChar = True
      Size = 10
    end
    object qryBatchTLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object qryBatchTsLoanID: TStringField
      FieldName = 'sLoanID'
      ReadOnly = True
      Size = 10
    end
    object qryBatchTEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object qryBatchTEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object qryBatchTTransCode: TIntegerField
      FieldName = 'TransCode'
    end
    object qryBatchTTransType: TSmallintField
      FieldName = 'TransType'
    end
    object qryBatchTTransDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'TransDate'
    end
    object qryBatchTEffectDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'EffectDate'
    end
    object qryBatchTValueDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'ValueDate'
    end
    object qryBatchTPostDate: TDateTimeField
      FieldName = 'PostDate'
    end
    object qryBatchTAmount: TBCDField
      DisplayWidth = 10
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryBatchTAmtPost: TBCDField
      FieldName = 'AmtPost'
      Precision = 19
    end
    object qryBatchTUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object qryBatchTRefNo: TStringField
      FieldName = 'RefNo'
      FixedChar = True
      Size = 10
    end
    object qryBatchTRefNo2: TStringField
      FieldName = 'RefNo2'
      Size = 10
    end
    object qryBatchTProcessed: TBooleanField
      FieldName = 'Processed'
    end
    object qryBatchTTransLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'TransLookup'
      LookupDataSet = qryTransType
      LookupKeyFields = 'TransCode'
      LookupResultField = 'Description'
      KeyFields = 'TransCode'
      LookupCache = True
      ReadOnly = True
      Size = 25
      Lookup = True
    end
    object qryBatchTAccountNo: TStringField
      FieldName = 'AccountNo'
      ReadOnly = True
      Size = 15
    end
    object qryBatchTStatusColor: TStringField
      FieldName = 'StatusColor'
      ReadOnly = True
    end
    object qryBatchTStatusDescription: TStringField
      FieldName = 'StatusDescription'
      ReadOnly = True
    end
    object qryBatchTStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object qryTransType: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select TransCode, TransType, Description, DefaultVal'#13#10'from Trans' +
      'setup where AppID=100'
    Parameters = <>
    Left = 56
    Top = 16
    object qryTransTypeTransCode: TIntegerField
      FieldName = 'TransCode'
    end
    object qryTransTypeTransType: TSmallintField
      FieldName = 'TransType'
    end
    object qryTransTypeDescription: TStringField
      FieldName = 'Description'
      FixedChar = True
      Size = 25
    end
    object qryTransTypeDefaultVal: TBCDField
      FieldName = 'DefaultVal'
      currency = True
      Precision = 10
    end
  end
  object cmdDeleteBatch: TADOCommand
    CommandText = 'delete from lsBatchTrans where BatchID=:inBatchID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'inBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 168
  end
  object cmdAcceptBatch: TADOCommand
    CommandText = 
      'update lsBatchTrans set Processed = :inStatus where BatchID = :i' +
      'nBatchID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'inStatus'
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'inBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 296
  end
  object qryBatchControl: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select BatchID, BatchNo, UserID, RequestDate, Status, HashTotal,' +
      ' TotalRecords, TotalErrors, AcceptID,  AcceptDate, ProcessedID, ' +
      'ProcessedDate from lsBatchControl'
    Parameters = <>
    Left = 168
    Top = 16
  end
  object qryGetCurBatches: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select BatchNo from lsBatchControl'#13#10'where UserID= :inUser and St' +
      'atus < 10'#13#10'and BatchType = :BatchType'
    Parameters = <
      item
        Name = 'inUser'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'BatchType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 168
    Top = 64
  end
  object qryGetCloseBatches: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select BatchNo from lsBatchControl '#13#10'where Status in (10,15)'#13#10
    Parameters = <>
    Left = 168
    Top = 112
  end
  object cmdUpdAcceptBatch: TADOCommand
    CommandType = cmdStoredProc
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 288
    Top = 144
  end
  object qryGetTransForStatus: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select Count(LoanID) from lsBatchTrans'#13#10'where Processed=:inStatu' +
      's and BatchID= :inBatchID'
    Parameters = <
      item
        Name = 'inStatus'
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'inBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Left = 288
    Top = 80
  end
  object qryGetUserDecBatch: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterCancel = qryBatchNoteAfterEdit
    CommandText = 
      'select BatchID from lsBatchControl where UserID=:inUser and Stat' +
      'us=5'
    Parameters = <
      item
        Name = 'inUser'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 168
    Top = 160
  end
  object cmdSetNewBatchID: TADOCommand
    CommandText = 
      'update lsBatchTrans '#13#10'set BatchID=:NewBatchID, BatchNo = :NewBat' +
      'chNo '#13#10'where BatchID = :OldBatchID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'NewBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NewBatchNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OldBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 288
    Top = 272
  end
  object cmdBatchMovDel: TADOCommand
    CommandType = cmdStoredProc
    Connection = dtmMain.dbData
    Parameters = <>
    Left = 288
    Top = 208
  end
  object cmdUpdNoteID: TADOCommand
    CommandText = 
      'update lsBatchNote set BatchID=:NewBatchID'#13#10'where BatchID = :Old' +
      'BatchID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'NewBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'OldBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 400
    Top = 168
  end
  object qryBatchNote: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    BeforeOpen = qryBatchNoteBeforeOpen
    AfterInsert = qryBatchNoteAfterInsert
    AfterEdit = qryBatchNoteAfterEdit
    CommandText = 
      'SELECT BatchID, NoteNo, TheNote, NoteDate, UserID'#13#10'FROM lsBatchN' +
      'ote'#13#10'where BatchID=:inBatchID'
    Parameters = <
      item
        Name = 'inBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 400
    Top = 88
  end
  object cmdGetBatchNo: TADOCommand
    CommandText = 'lsGetNewBatchNo;1'
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
        Name = '@inUser'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@inStatus'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@inType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NewBatchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 288
    Top = 16
  end
  object cmdSetBCStatus: TADOCommand
    CommandText = 
      'update lsBatchControl set Status = :inStatus,'#13#10'BatchType = :inBa' +
      'tchType where BatchID = :inBatchID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'inStatus'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'inBatchType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'inBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 168
    Top = 208
  end
  object adoFeeTC: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select FeeID, TransCode, TCodeCR'#13#10'from lsFeeSetup'#13#10'where TransCo' +
      'de<>0'
    Parameters = <>
    Left = 56
    Top = 360
  end
  object adoLoanFees: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select LoanID, AmtToFin, Fee1, Fee2, Fee3, Fee4, Fee5, Fee6'#13#10'fro' +
      'm lsLoanDetail'#13#10'where LoanID=:LoanID'
    DataSource = dtsEntLoan
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 168
    Top = 384
  end
  object dtsEntLoan: TDataSource
    DataSet = spcEntLoan
    Left = 56
    Top = 240
  end
  object dtsBatchNote: TDataSource
    DataSet = qryBatchNote
    Left = 400
    Top = 105
  end
  object dtsBatchT: TDataSource
    DataSet = qryBatchT
    Left = 24
    Top = 120
  end
  object qryLDavlbal: TADODataSet
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    CommandText = 
      'select LDS.AvlBal,sum(BH.Amount)- Sum(HB.Amount)'#13#10'from lsLoanDet' +
      'ail LDS '#13#10'inner join lsBatchTrans BH on LDS.LoanID=BH.LoanID '#13#10' ' +
      ' and BH.TransType = 15'#13#10'inner join lsBatchTrans HB on LDS.LoanID' +
      '=HB.LoanID '#13#10'  and HB.TRansType = 16'#13#10'where LDS.LoanID=:LoanID'#13#10 +
      'group by LDS.AvlBal'#13#10#13#10
    DataSource = dtsBatchT
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 168
    Top = 256
  end
  object qryToUse: TADOQuery
    Connection = dtmMain.dbData
    LockType = ltReadOnly
    Parameters = <>
    Left = 400
    Top = 24
  end
  object spBBankDet: TADOStoredProc
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = spBBankDetBeforeOpen
    ProcedureName = 'lsBatchBnkDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@BatchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 400
    Top = 224
  end
  object cmdMoveDecline: TADOCommand
    CommandText = 'lsMoveDeclineBatch;1'
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
        Name = '@BatchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NewBatchID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 288
    Top = 328
  end
  object qryEntLoans: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = qryEntLoansAfterOpen
    CommandText = 
      'SELECT ENT.EntityID, ENT.EntCode as EntCode, LDS.LoanID,  '#13#10'   L' +
      'oanKey, ENT.Name2, ENT.Name, ENT.RegNo,ENT.RefFld1,'#13#10'   LDS.Loan' +
      'Type, LDS.Status, LDS.PayIns, LDS.AmtToFin, LDS.StartDate,'#13#10'   L' +
      'DS.CashDep, LDS.AvlBal, LDS.RefNo, ETA.EmpID,'#13#10'   LS.LoanStatus ' +
      'AS StatusDescription, LS.StatusColor'#13#10'FROM lsLoandetail LDS '#13#10'LE' +
      'FT JOIN EntityData ENT  ON ENT.EntityID = LDS.EntityID'#13#10'LEFT JOI' +
      'N lsEntPsnAdd ETA ON ETA.EntityID=LDS.EntityID'#13#10'LEFT JOIN lsLoan' +
      'Status LS ON LDS.Status = LS.StatusID'#13#10'WHERE LDS.Status BETWEEN ' +
      '20 AND 70'
    Parameters = <>
    Left = 176
    Top = 312
    object qryEntLoansEntityID: TIntegerField
      FieldName = 'EntityID'
    end
    object qryEntLoansEntCode: TStringField
      FieldName = 'EntCode'
      Size = 10
    end
    object qryEntLoansLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object qryEntLoansLoanKey: TIntegerField
      FieldName = 'LoanKey'
    end
    object qryEntLoansName2: TStringField
      FieldName = 'Name2'
      Size = 50
    end
    object qryEntLoansName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryEntLoansRegNo: TStringField
      FieldName = 'RegNo'
      Size = 15
    end
    object qryEntLoansRefFld1: TStringField
      FieldName = 'RefFld1'
      Size = 15
    end
    object qryEntLoansLoanType: TStringField
      FieldName = 'LoanType'
      Size = 3
    end
    object qryEntLoansStatus: TSmallintField
      FieldName = 'Status'
    end
    object qryEntLoansPayIns: TBCDField
      FieldName = 'PayIns'
      Precision = 10
    end
    object qryEntLoansAmtToFin: TBCDField
      FieldName = 'AmtToFin'
      Precision = 19
    end
    object qryEntLoansStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object qryEntLoansCashDep: TBCDField
      FieldName = 'CashDep'
      Precision = 19
    end
    object qryEntLoansAvlBal: TBCDField
      FieldName = 'AvlBal'
      Precision = 19
    end
    object qryEntLoansRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object qryEntLoansEmpID: TIntegerField
      FieldName = 'EmpID'
    end
    object qryEntLoansStatusColor: TStringField
      FieldName = 'StatusColor'
    end
    object qryEntLoansStatusDescription: TStringField
      FieldName = 'StatusDescription'
    end
  end
  object dtsEntLoans: TDataSource
    DataSet = qryEntLoans
    Left = 176
    Top = 328
  end
  object qryLoanStatus: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select Status'#13#10'from lsLoanDetail'#13#10'where LoanID = :LoanID'#13#10
    DataSource = dtsBatchT
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
    Left = 400
    Top = 296
  end
  object qryGetBatchType: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'prBatchID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select BatchType'
      'from lsBatchControl'
      'where BatchId = :prBatchID')
    Left = 400
    Top = 360
  end
  object cdsImportMap: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 24
    object cdsImportMapImportField: TStringField
      FieldName = 'ImportField'
    end
    object cdsImportMapDBField: TStringField
      FieldName = 'DBField'
    end
    object cdsImportMapDBLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'DBLookup'
      LookupDataSet = qryImportFields
      LookupKeyFields = 'Field'
      LookupResultField = 'Display'
      KeyFields = 'DBField'
      LookupCache = True
      Lookup = True
    end
  end
  object dtsImportMap: TDataSource
    DataSet = cdsImportMap
    Left = 600
    Top = 48
  end
  object qryImportFields: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select '#39'Loan ID'#39' as Display,'#39'LoanID'#39' as Field'#13#10'UNION'#13#10'SELECT '#39'Lo' +
      'an Ref.'#39', '#39'LoanRef'#39#13#10'union'#13#10'select '#39'Transaction Code'#39', '#39'TransCod' +
      'e'#39#13#10'union'#13#10'select '#39'Description'#39', '#39'Description'#39#13#10'union'#13#10'select '#39'E' +
      'ffective Date'#39', '#39'EffectDate'#39#13#10'union'#13#10'select '#39'Transaction Date'#39', ' +
      #39'TransDate'#39#13#10'union '#13#10'select '#39'Amount'#39', '#39'Amount'#39#13#10'union '#13#10'select '#39 +
      'Ref No.1'#39', '#39'RefNo'#39#13#10'union '#13#10'select '#39'Ref No.2'#39', '#39'RefNo2'#39#13#10'union '#13 +
      #10'select '#39'<Ignore>'#39', '#39#39
    Parameters = <>
    Left = 512
    Top = 96
  end
  object dtsImportFields: TDataSource
    DataSet = qryImportFields
    Left = 512
    Top = 112
  end
  object qryGetEntity: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'prLoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        '/*Ignoring entcode i  lsLoanDetails because if not it should be ' +
        'a redundant field*/'
      'SELECT ED.EntityID, ED.EntCode'
      'FROM lsLoanDetail LD'
      'LEFT JOIN EntityData ED ON LD.EntityID = ED.EntityID'
      'WHERE LoanID = :prLoanID')
    Left = 512
    Top = 176
  end
  object cdsImportErrors: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 240
    object cdsImportErrorsRowNo: TIntegerField
      Alignment = taCenter
      DisplayWidth = 8
      FieldName = 'RowNo'
    end
    object cdsImportErrorsError: TStringField
      DisplayWidth = 45
      FieldName = 'Error'
      Size = 50
    end
  end
  object dtsImportErrors: TDataSource
    DataSet = cdsImportErrors
    Left = 640
    Top = 296
  end
  object qryGetLoanEntity: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'LoanRef'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        '/*Ignoring entcode i  lsLoanDetails because if not it should be ' +
        'a redundant field*/'
      'SELECT LD.LoanID, ED.EntityID, ED.EntCode'
      'FROM lsLoanDetail LD'
      'LEFT JOIN EntityData ED ON LD.EntityID = ED.EntityID'
      'WHERE LD.RefNo LIKE :LoanRef')
    Left = 584
    Top = 176
  end
  object dsLoanPayoutFees: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LD.LoanID, LT.TransCodeDebit, LT.TransCodeCredit, AmtToFi' +
      'n,'#13#10'CASE '#13#10'WHEN FeeTypeID = 2 THEN LF.Amount/LoanPeriod * dbo.MI' +
      'N(12, LD.LoanPeriod) --Annualised Fee'#13#10'ELSE LF.Amount'#13#10'END AS Am' +
      'ount'#13#10'FROM lsLoanDetail LD'#13#10'LEFT JOIN lsLoanFee LF ON LD.LoanID ' +
      '= LF.LoanID'#13#10'LEFT JOIN lsLoanFeeDetail FD ON LF.LoanID = FD.Loan' +
      'ID AND LF.FeeID = FD.FeeID'#13#10'LEFT JOIN lsLoanTypeFee LT ON FD.Fee' +
      'ID = LT.FeeID'#13#10'WHERE LD.LoanID = :LoanID'#13#10'AND FeeTypeID IN (1,2,' +
      '3) --Finance Once-Off, Monthly, Yearly '#13#10
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 288
    Top = 392
  end
  object cmdDeleteTransaction: TADOCommand
    CommandText = 'DELETE FROM lsBatchTrans WHERE TransNo = :TransNo'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'TransNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 512
    Top = 320
  end
end
