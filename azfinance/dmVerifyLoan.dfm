object dtmVerifyLoan: TdtmVerifyLoan
  OldCreateOrder = False
  Left = 593
  Top = 251
  Height = 345
  Width = 410
  object qryAcceptQuote: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT CAST(CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END AS BIT) AS ' +
      'AcceptedQuote'#13#10'FROM afQuotations'#13#10'WHERE LoanID = :LoanID'#13#10'AND St' +
      'atus = ''A'''#13#10'AND OfferID > 0'
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 16
  end
  object qrySignedQuote: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT CAST(CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END AS BIT) AS ' +
        'SignedQuote'
      'FROM dtDocs'
      'WHERE LoanID = :LoanID'
      'AND DocType = ''Quote'''
      'AND Rejected = 0'
      'AND Parked = 0')
    Left = 56
    Top = 72
  end
  object qryQuoteDate: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT CAST(CONVERT(VARCHAR(10),CreateDate, 120) AS DATETIME) AS' +
        ' QuoteDate,'
      'AcceptDate'
      'FROM afQuotations'
      'WHERE LoanID = :LoanID'
      'AND Status = ''A'''
      'AND OfferID > 0')
    Left = 176
    Top = 8
  end
  object qryValidPayouts: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT ISNULL(SUM(CASE WHEN DATEDIFF(DAY,GETDATE(),ISNULL(LP.Exp' +
        'iryDate,GETDATE()))>= 1 THEN 0 ELSE 1 END),0)'
      'FROM afQuotations QU'
      'LEFT JOIN afQuoteOffers QO ON QU.QuotationID = QO.QuotationID'
      
        'LEFT JOIN afOffers OO ON QO.OfferID = OO.OfferID AND OO.Status =' +
        ' ''A'''
      'LEFT JOIN afOfferPayouts OP ON OO.OfferID = OP.OfferID'
      'INNER JOIN lsLoanDPay LP ON OP.PayoutID = LP.PayoutID'
      'WHERE QU.LoanID = :LoanID'
      'AND QU.Status = ''A'''
      'AND LP.ThirdType IN (3,4)')
    Left = 176
    Top = 72
  end
  object qryCheckFraudEnquiry: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 1 1'
      'FROM FPS_FraudEnquiry'
      'WHERE LoanID = :LoanID OR 1=1')
    Left = 176
    Top = 136
  end
  object qryOutdatedFraudEnquiry: TADOQuery
    Connection = dtmMain.dbData
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'EXEC dbo.FPS_GetOutdatedEnquiry :LoanID')
    Left = 48
    Top = 136
  end
end
