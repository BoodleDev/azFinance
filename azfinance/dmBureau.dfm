object dtmBureau: TdtmBureau
  OldCreateOrder = False
  Left = 37
  Top = 207
  Height = 352
  Width = 518
  object qrySetBureau: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Filtered = True
    CommandText = 
      'SELECT C1.Value AS Server, C2.Value AS Username, '#13#10'C3.Value AS P' +
      'assword, C4.Value AS BranchID, '#13#10'C5.Value AS ResultPath'#13#10'FROM Co' +
      'nfig C1, Config C2, '#13#10'Config C3, Config C4, Config C5'#13#10'WHERE C1.' +
      'Name = '#39'CS_Server'#39#13#10'AND C2.Name = '#39'CS_USername'#39#13#10'AND C3.Name = '#39 +
      'CS_Password'#39#13#10'AND C4.Name = '#39'CS_BranchID'#39#13#10'AND C5.Name = '#39'CS_Res' +
      'ultPath'#39
    Parameters = <>
    Left = 48
    Top = 24
  end
  object dtsSetBureau: TDataSource
    DataSet = qrySetBureau
    Left = 48
    Top = 40
  end
  object qryEntity: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT EntityID, EntType, EntCode, DefAdr, DocAdr, DelAdr,'#13#10'  Ca' +
      'tegory, SendSMS,SendEmail,'#13#10'  RegNo, RefFld1, RefFld2, Title, Na' +
      'me, Name2, Name + '#39' '#39' + Name2 FullName,TelNo1, TelNo2, TelNo3, '#13 +
      #10'  FaxNo, UserID, DateChange, UserAdd, DateAdded, Email, WebSite' +
      #13#10'FROM Entitydata'#13#10'WHERE EntityID = :EntityID'#13#10
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 128
    Top = 24
  end
  object qryEnqHistory: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT BH.TransNo, BH.EntityID, BH.EnqType, BH.EnqDate, '#13#10'ISNULL' +
      '(BS.Status,CAST(BH.Status AS VARCHAR(50))) AS Status, BH.CreateU' +
      'ser,'#13#10'CONVERT(VARCHAR(10), BH.EnqDate, 103) + '#39' '#39' +'#13#10'CONVERT(VAR' +
      'CHAR(5),  BH.EnqDate,108) AS FMTEnqDate, BH.LoanID, BH.ResultTyp' +
      'e, BH.Result, ED.RegNo AS IDNumber'#13#10'FROM BureauHistory BH'#13#10'LEFT ' +
      'JOIN BureauStatus BS ON BH.Status = BS.StatusCode'#13#10'LEFT JOIN lsL' +
      'oanDetail LD ON BH.LoanID = LD.LoanID'#13#10'LEFT JOIN EntityData ED O' +
      'N LD.EntityID = ED.EntityID'#13#10'WHERE (BH.LoanID = :LoanID'#13#10#9'OR (BH' +
      '.LoanID = 0 AND BH.EntityID = :EntityID))'#13#10#9'AND BH.EnqType <> -8' +
      #13#10'ORDER BY BH.TransNo DESC'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 209
    Top = 24
  end
  object dtsEnqHistory: TDataSource
    DataSet = qryEnqHistory
    Left = 209
    Top = 40
  end
  object qryUpdateEnqHist: TADOCommand
    CommandText = 
      'Insert into BureauHistory(EntityID, EnqType, Status)'#13#10'Values(:En' +
      'tityID,:EnqType, :Status)'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EnqType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Status'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 208
    Top = 96
  end
  object qryUpdateNlrEnqRefNo: TADOCommand
    CommandText = 
      'Update lsEntPsnAdd'#13#10'set NlrRefNo = :NlrRefNo'#13#10'where EntityID = :' +
      'EntityID'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'NlrRefNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 208
    Top = 152
  end
  object dtsEntity: TDataSource
    DataSet = qryEntity
    Left = 128
    Top = 40
  end
  object cmdUpdateRef: TADOCommand
    CommandText = 
      'UPDATE lsLoanDetail '#13#10'SET QryNo = :RefNo'#13#10'WHERE EntityID = :Enti' +
      'tyID'#13#10'AND Status = 0'
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'RefNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'EntityID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 152
  end
  object dsResult: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT SegmentCode, IndexNo, ISNULL(DisplayName,Field) AS Field,' +
      ' Format, Length, DBField, DateField, Display, FieldType'#13#10'FROM sc' +
      'ITC'#13#10'WHERE SegmentCode = :SegmentCode'#13#10'ORDER BY IndexNo'
    Parameters = <
      item
        Name = 'SegmentCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    Left = 336
    Top = 88
  end
  object qryXSLFile: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Value + Scorecard + '#39'.xsl'#39' AS Value'
      'FROM Config CN'
      'LEFT JOIN lsLoanDetail LD ON LD.LoanID = :LoanID'
      'WHERE Name = '#39'BU_XSLT'#39)
    Left = 336
    Top = 152
  end
  object qryLastEnquiry: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 1 EnqDate, Reference, Result, ResultType'
      'FROM BureauHistory BH'
      'LEFT JOIN BureauStatus BS ON BH.Status = BS.StatusCode'
      'WHERE LoanID = :LoanID'
      'AND EnqType = -1'
      'AND Success = 1'
      'ORDER BY EnqDate DESC')
    Left = 336
    Top = 16
  end
  object qryXSLFraudFile: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Value'
      'FROM Config'
      'WHERE Name = '#39'BU_XSLT1'#39)
    Left = 336
    Top = 208
  end
  object dsFailedPolicy: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT DISTINCT PH.PolicyID, BP.Description'#13#10'FROM BureauHistory ' +
      'BH'#13#10'INNER JOIN BureauPolicyHistory PH ON BH.TransNo= PH.EnquiryN' +
      'o'#13#10'LEFT JOIN BureauPolicy BP ON PH.PolicyID = BP.PolicyID'#13#10'WHERE' +
      ' BH.LoanID = :LoanID'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 208
    Top = 216
  end
  object dtsFailedPolicy: TDataSource
    DataSet = dsFailedPolicy
    Left = 208
    Top = 232
  end
end
