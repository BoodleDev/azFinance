object dtmReporting: TdtmReporting
  OldCreateOrder = False
  Left = 326
  Top = 183
  Height = 328
  Width = 439
  object plClientStatement: TppDBPipeline
    DataSource = dtsLoanAccount
    UserName = 'plClientStatement'
    Left = 38
    Top = 16
  end
  object dsLoanAccount: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @Interest MONEY, @Date DATETIME, @LoanID INT,'#13#10'@TotalPai' +
      'd MONEY, @TotalInterest MONEY, @TotalFees MONEY,'#13#10'@TotalInsuranc' +
      'e MONEY, @TotalCollections MONEY, @TotalDefaultCosts MONEY,'#13#10'@To' +
      'talLegalCosts MONEY, @OtherDebits MONEY, @OtherCredits MONEY'#13#10#13#10 +
      'SELECT @Interest = 0, @LoanID = :LoanID, @Date = CAST(CONVERT(VA' +
      'RCHAR(10),GETDATE(),120) AS DATETIME)'#13#10#13#10'SELECT @TotalPaid = ISN' +
      'ULL(SUM(AmtPost),0) * -1'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = @L' +
      'oanID'#13#10'AND TransType IN (11,12)'#13#10#13#10'SELECT @TotalInterest = ISNUL' +
      'L(SUM(AmtPost),0)'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = @LoanID'#13#10 +
      'AND TransType IN (13,14)'#13#10#13#10'SELECT @TotalFees = ISNULL(SUM(AmtPo' +
      'st),0)'#13#10'FROM lsBatchHistory'#13#10'WHERE LoanID = @LoanID'#13#10'AND TransTy' +
      'pe IN (17,18)'#13#10'AND TransCode NOT IN (1704,1705)'#13#10#13#10'SELECT @Total' +
      'Insurance = ISNULL(SUM(AmtPost),0)'#13#10'FROM lsBatchHistory'#13#10'WHERE L' +
      'oanID = @LoanID'#13#10'AND TransCode IN (1704,1705)'#13#10#13#10'SELECT @TotalCo' +
      'llections = 0, @OtherDebits = 0, @OtherCredits = 0'#13#10#13#10'SELECT @To' +
      'talDefaultCosts = ISNULL(SUM(AmtPost),0)'#13#10'FROM lsBatchHistory'#13#10'W' +
      'HERE LoanID = @LoanID'#13#10'AND TransCode IN (206,106)'#13#10#13#10'SELECT @Tot' +
      'alLegalCosts = ISNULL(SUM(AmtPost),0)'#13#10'FROM lsBatchHistory'#13#10'WHER' +
      'E LoanID = @LoanID'#13#10'AND TransType IN (28,29)'#13#10#13#10'SELECT LD.LoanID' +
      ', Name + '#39' '#39' + Name2 AS ClientName, Address1, Address2, Address3' +
      ', Address4, AddressCode,'#13#10'ISNULL(NULLIF(Address1,'#39#39') + CHAR(13),' +
      #39#39') + ISNULL(NULLIF(Address2,'#39#39') + CHAR(13),'#39#39') + '#13#10'ISNULL(NULLI' +
      'F(Address3,'#39#39') + CHAR(13),'#39#39') + ISNULL(NULLIF(Address4,'#39#39') + CHA' +
      'R(13),'#39#39') + '#13#10'ISNULL(NULLIF(AddressCode,'#39#39') + CHAR(13),'#39#39') AS Ad' +
      'dress, '#13#10'RIGHT(ED.EntCode,7) AS ClientCode, ED.RegNo AS IDNumber' +
      ', LD.RefNo AS LoanRef, AmtToFin AS PrincipalDebt,'#13#10'CAST(LoanPeri' +
      'od AS varchar(3)) + '#39' '#39' +'#13#10'CASE '#13#10'WHEN AccType IN (5,6) THEN '#39'We' +
      'eks'#39#13#10'WHEN AccType IN (7,8) THEN '#39'Fortnights'#39#13#10'ELSE '#39'Months'#39' END' +
      ' AS LoanPeriod, '#13#10#39'Monthly ('#39' + dbo.MonthDay(ISNULL(CycleEndDay,' +
      '31)) + '#39')'#39' AS Frequency,'#13#10'StartDate, FirstInsDate AS FirstDueDat' +
      'e, EndDate, LoanBal AS LoanBalance,'#13#10'@Date AS StatementDate,'#13#10'In' +
      'tRate AS InterestRate, NoOfPay, PayIns,'#13#10'RefFld1, AmtToFin + Tot' +
      'Interest AS TotalLoan,'#13#10'BH.TransType, BH.TransCode, TS.Descripti' +
      'on AS sTransaction, '#13#10'ValueDate, EffectDate, TR.DeductDate AS Ne' +
      'xtDeductionDate,'#13#10'CASE WHEN AmtPost >= 0 THEN Amount END AS Debi' +
      't,'#13#10'CASE WHEN AmtPost < 0 THEN Amount END AS Credit, Amount as B' +
      'alance,'#13#10'@TotalPaid AS TotalPaid, @TotalInterest AS TotalInteres' +
      't, @TotalFees AS TotalFees, '#13#10'@TotalInsurance AS TotalInsurance,' +
      ' @TotalCollections AS TotalCollections, '#13#10'@TotalDefaultCosts AS ' +
      'TotalDefaultCosts, @TotalLegalCosts AS TotalLegalCosts, '#13#10'@Other' +
      'Debits AS OtherDebits, @OtherCredits AS OtherCredits,'#13#10'--dbo.mMA' +
      'X(0,AA.Instalment - AA.AmountPaid + AA.AdditionalFees + AA.Legal' +
      'Fees + AA.ArrearsInterest) AS CurrentDue,'#13#10'AH.Cycle0 AS CurrentD' +
      'ue, AH.ArrearsAmount, AH.Cycle0 + AH.ArrearsAmount AS TotalDue, ' +
      'AH.PeriodEndDate AS DueDate,'#13#10'Cycle1 AS Days30, Cycle2 AS Days60' +
      ', Cycle3 AS Days90, Cycle4 AS Days120, '#13#10'Cycle5 + Cycle6 + Cycle' +
      '7 + Cycle8 + Cycle9 + Cycle10 + Cycle11 + Cycle12 AS Days150'#13#10'FR' +
      'OM lsLoanDetail LD'#13#10'LEFT JOIN lsLoanTypes LT ON LT.LoanType = LD' +
      '.LoanType'#13#10'LEFT JOIN EntityData ED ON ED.EntityID = LD.EntityID'#13 +
      #10'LEFT JOIN lsBatchHistory BH ON BH.LoanID = LD.LoanID'#13#10'LEFT JOIN' +
      ' TransSetup TS ON TS.TransCode = BH.TransCode'#13#10'LEFT JOIN Address' +
      ' AD ON AD.EntityID = ED.EntityID AND AddressType = 2'#13#10'LEFT JOIN ' +
      'lsEntPsnAdd PA ON LD.EntityID = PA.EntityID'#13#10'LEFT JOIN lsPayRule' +
      's PR ON PA.PayRuleID = PR.PayRuleID'#13#10'LEFT JOIN '#13#10#9'(SELECT MAX(De' +
      'ductDate) AS DeductDate, LoanID'#13#10#9'FROM ieTransactions '#13#10#9'WHERE D' +
      'ebitType = '#39'R'#39#13#10#9'AND InstalBatch IS NULL'#13#10#9'AND dbo.ieGetTransSta' +
      'tus(LoanID, @Date) = '#39'AC'#39#13#10#9'GROUP BY LoanID) TR ON LD.LoanID = T' +
      'R.LoanID'#13#10'LEFT JOIN LNS_ArrearsHistory AH ON LD.LoanID = AH.Loan' +
      'ID AND AH.PeriodType = '#39'R'#39#13#10#9'AND @Date BETWEEN AH.PeriodStartDat' +
      'e AND AH.PeriodEndDate'#13#10'WHERE LD.LoanID = @LoanID '#13#10'AND BH.Trans' +
      'Type NOT IN (3,5,6,7,8,9,10,19,20)'#13#10'AND Effectdate <= GETDATE()'#13 +
      #10'ORDER BY EffectDate'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 40
    Top = 80
  end
  object dtsLoanAccount: TDataSource
    DataSet = dsLoanAccount
    Left = 40
    Top = 96
  end
  object dsClientAccount: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT LD.LoanID, CAST(LoanPeriod AS varchar(3)) + '#39' '#39' +'#13#10'CASE '#13 +
      #10'WHEN AccType IN (5,6) THEN '#39'Weeks'#39#13#10'WHEN AccType IN (7,8) THEN ' +
      #39'Fortnights'#39#13#10'ELSE '#39'Months'#39' END AS LoanPeriod,'#13#10'NoOfPay, StartDa' +
      'te, AmtToFin, PayIns, ArrearsAmt, FirstInsDate, LD.RefNo, dbo.FG' +
      'etLoanStatusName(LD.Status) AS Status, LD.RefNo AS LoanNo,'#13#10'Name' +
      ' + '#39' '#39' + Name2 AS Fullname, ED.RegNo AS IDNo, ED.EntCode, RefFld' +
      '1, AmtToFin + TotInterest AS TotalLoan,'#13#10'Address1, Address2, Add' +
      'ress3, Address4, AddressCode,'#13#10'BH.TransType, BH.TransCode, TS.De' +
      'scription AS sTransaction, ValueDate, '#13#10'CASE WHEN AmtPost >= 0 T' +
      'HEN AmtPost END AS Debit,'#13#10'CASE WHEN AmtPost < 0 THEN AmtPost EN' +
      'D AS Credit, Amount as Balance, BatchNo, BH.UserID, BH.RefNo AS ' +
      'TransRef,'#13#10'(SELECT SUM(AmtPost) FROM lsBatchHistory BA WHERE Loa' +
      'nID = LD.LoanID AND TransType IN (11,12)) AS NetPay'#13#10'FROM lsLoan' +
      'Detail LD'#13#10'LEFT JOIN lsLoanTypes LT ON LT.LoanType = LD.LoanType' +
      #13#10'LEFT JOIN EntityData ED ON ED.EntityID = LD.EntityID'#13#10'LEFT JOI' +
      'N lsBatchHistory BH ON BH.LoanID = LD.LoanID'#13#10'LEFT JOIN TransSet' +
      'up TS ON TS.TransCode = BH.TransCode'#13#10'LEFT JOIN Address AD ON AD' +
      '.EntityID = ED.EntityID AND AddressType = 2'#13#10'WHERE LD.LoanID = :' +
      'LoanID'#13#10'AND BH.TransType NOT IN (4,7,8,9,10,13,14,19,20)'#13#10'AND Ef' +
      'fectdate <= getdate()'#13#10'ORDER BY ValueDate'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 128
    Top = 80
  end
  object dtsClientAccount: TDataSource
    DataSet = dsClientAccount
    Left = 128
    Top = 96
  end
  object prClientStatement: TppReport
    AutoStop = False
    DataPipeline = plClientStatement
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 200
    Top = 160
    Version = '9.01'
    mmColumnWidth = 0
    DataPipelineName = 'plClientStatement'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 2646
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 114300
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 9260
        mmLeft = 8467
        mmTop = 93927
        mmWidth = 182034
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 38100
        mmTop = 93927
        mmWidth = 13229
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape2'
        mmHeight = 8202
        mmLeft = 135202
        mmTop = 56356
        mmWidth = 55298
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 97896
        mmWidth = 182034
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape1'
        mmHeight = 13229
        mmLeft = 8467
        mmTop = 71967
        mmWidth = 182034
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 154517
        mmTop = 20108
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 154517
        mmTop = 23548
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'User'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 154517
        mmTop = 26988
        mmWidth = 5027
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 19844
        mmWidth = 12965
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 23283
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'lblUserID1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblUserID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 26723
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Customer Care: 0861 33 11 33'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 84667
        mmTop = 33073
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Boodle (Pty) Ltd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 10583
        mmTop = 19844
        mmWidth = 18500
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PO Box 72263, Parkview, 2122'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3090
        mmLeft = 10583
        mmTop = 26723
        mmWidth = 34544
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '26 Girton Rd, Parktown, 2196'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3090
        mmLeft = 10583
        mmTop = 23283
        mmWidth = 33613
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label901'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Email: info@boodle.co.za'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3090
        mmLeft = 10583
        mmTop = 30427
        mmWidth = 30099
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'STATEMENT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 38894
        mmWidth = 200555
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClientName'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3429
        mmLeft = 10583
        mmTop = 44450
        mmWidth = 16383
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Client Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 135467
        mmTop = 45244
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ID Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 135467
        mmTop = 49477
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'LOAN REFERENCE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 138907
        mmTop = 58738
        mmWidth = 26194
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LoanRef'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 58738
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Principal Debt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 10583
        mmTop = 72761
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Original Term'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 10583
        mmTop = 76994
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Annual Interest Rate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 10583
        mmTop = 81227
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Instalment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 76200
        mmTop = 72761
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Frequency'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 76200
        mmTop = 76994
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Current Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 76200
        mmTop = 81227
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 135202
        mmTop = 72761
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'First Due Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 135202
        mmTop = 76994
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 135202
        mmTop = 81227
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PrincipalDebt'
        DataPipeline = plClientStatement
        DisplayFormat = 'R #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 72761
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LoanPeriod'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 76994
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'InterestRate'
        DataPipeline = plClientStatement
        DisplayFormat = '00.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 81227
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PayIns'
        DataPipeline = plClientStatement
        DisplayFormat = 'R #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 99484
        mmTop = 72761
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Frequency'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 99484
        mmTop = 76994
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LoanBalance'
        DataPipeline = plClientStatement
        DisplayFormat = 'R #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 99484
        mmTop = 81227
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'StartDate'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 154782
        mmTop = 72761
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FirstDueDate'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 154782
        mmTop = 76994
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText66'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EndDate'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 154782
        mmTop = 81227
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Statement Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 14023
        mmTop = 94456
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Current Due'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 44450
        mmTop = 94456
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Arrears'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2921
        mmLeft = 74988
        mmTop = 94456
        mmWidth = 8509
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Payment Due'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 97367
        mmTop = 94456
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Due Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 132292
        mmTop = 94456
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Next Deduct Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 160867
        mmTop = 94456
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Effective Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 10583
        mmTop = 107156
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 50800
        mmTop = 107156
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Debit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 136525
        mmTop = 107156
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Credit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 160867
        mmTop = 107156
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2921
        mmLeft = 180446
        mmTop = 107156
        mmWidth = 9864
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClientCode'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 152400
        mmTop = 45244
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IDNumber'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3090
        mmLeft = 152400
        mmTop = 49477
        mmWidth = 12023
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NextDeductionDate'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 98954
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DueDate'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 129646
        mmTop = 98954
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'lblStatement'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Statement of Account for Period 2007/01/01 to 2007/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3006
        mmLeft = 10583
        mmTop = 89165
        mmWidth = 180182
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 64823
        mmTop = 93927
        mmWidth = 6615
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 93663
        mmTop = 93927
        mmWidth = 13229
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 123296
        mmTop = 93927
        mmWidth = 13229
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 154517
        mmTop = 93927
        mmWidth = 13229
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText67'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CurrentDue'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 40481
        mmTop = 98954
        mmWidth = 21696
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'StatementDate'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 12965
        mmTop = 98954
        mmWidth = 18256
        BandType = 0
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ArrearsAmount'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3090
        mmLeft = 70326
        mmTop = 98954
        mmWidth = 17568
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalDue'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 97367
        mmTop = 98954
        mmWidth = 21696
        BandType = 0
      end
      object ppImage3: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = True
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        mmHeight = 20373
        mmLeft = 3704
        mmTop = 0
        mmWidth = 72231
        BandType = 0
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'Address'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 21696
        mmLeft = 10583
        mmTop = 48683
        mmWidth = 59796
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel27: TppLabel
        UserName = 'lblBalanceForward'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Balance Brought Forward'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3090
        mmLeft = 50800
        mmTop = 111209
        mmWidth = 30141
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Value Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 29104
        mmTop = 107156
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'lblBalanceDate'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblBalanceDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3090
        mmLeft = 10583
        mmTop = 111209
        mmWidth = 18627
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'lblBalanceAmount'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblBalanceAmount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 168011
        mmTop = 111125
        mmWidth = 22225
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EffectDate'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 10583
        mmTop = 529
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ValueDate'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 29104
        mmTop = 794
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Debit'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3090
        mmLeft = 121179
        mmTop = 529
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Credit'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3429
        mmLeft = 146315
        mmTop = 529
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'sTransaction'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3090
        mmLeft = 50800
        mmTop = 529
        mmWidth = 56886
        BandType = 4
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'clcDebit'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Debit'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plClientStatement'
        mmHeight = 3090
        mmLeft = 86784
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'clcCredit'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Credit'
        DataPipeline = plClientStatement
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plClientStatement'
        mmHeight = 3090
        mmLeft = 105834
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'lblBalance'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblBalance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 168275
        mmTop = 529
        mmWidth = 22225
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 12435
        mmWidth = 13494
        BandType = 8
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Boodle (Pty) Ltd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2921
        mmLeft = 89441
        mmTop = 1588
        mmWidth = 18500
        BandType = 8
      end
      object ppLabel55: TppLabel
        UserName = 'Label501'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Company Reg.No. 2010/020539/07'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3090
        mmLeft = 78013
        mmTop = 5292
        mmWidth = 41360
        BandType = 8
      end
      object ppLabel56: TppLabel
        UserName = 'Label502'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VAT Reg. No. 4760259475'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3090
        mmLeft = 83897
        mmTop = 8996
        mmWidth = 29591
        BandType = 8
      end
      object ppLabel57: TppLabel
        UserName = 'Label503'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NCR Reg. No. NCRCP5361'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3090
        mmLeft = 83196
        mmTop = 12700
        mmWidth = 30988
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 84138
      mmPrintPosition = 0
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 19315
        mmLeft = 8467
        mmTop = 26458
        mmWidth = 182034
        BandType = 7
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 30692
        mmWidth = 182034
        BandType = 7
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19315
        mmLeft = 111919
        mmTop = 26458
        mmWidth = 13229
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 8731
        mmTop = 40217
        mmWidth = 182034
        BandType = 7
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 35983
        mmWidth = 182034
        BandType = 7
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 13494
        mmLeft = 8467
        mmTop = 5292
        mmWidth = 182034
        BandType = 7
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 9260
        mmWidth = 133615
        BandType = 7
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 115888
        mmTop = 9260
        mmWidth = 9525
        BandType = 7
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 13229
        mmWidth = 182034
        BandType = 7
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 167217
        mmTop = 5292
        mmWidth = 13229
        BandType = 7
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 141817
        mmTop = 5292
        mmWidth = 13229
        BandType = 7
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Arrears Ageing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 9525
        mmTop = 5556
        mmWidth = 131763
        BandType = 7
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '150+ Days'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2921
        mmLeft = 20108
        mmTop = 9790
        mmWidth = 12107
        BandType = 7
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '120 Days'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2921
        mmLeft = 48419
        mmTop = 9790
        mmWidth = 10626
        BandType = 7
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '90 Days'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 77258
        mmTop = 9790
        mmWidth = 9260
        BandType = 7
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '60 Days'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 104511
        mmTop = 9790
        mmWidth = 9260
        BandType = 7
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '30 Days'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2921
        mmLeft = 130429
        mmTop = 9790
        mmWidth = 9271
        BandType = 7
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Current'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 156634
        mmTop = 7938
        mmWidth = 8731
        BandType = 7
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Due'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 177007
        mmTop = 7938
        mmWidth = 10848
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Statement Summary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 89653
        mmTop = 21960
        mmWidth = 27601
        BandType = 7
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Payments Received'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 10583
        mmTop = 27252
        mmWidth = 23548
        BandType = 7
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Interest Accrued'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 52917
        mmTop = 27252
        mmWidth = 19844
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fees Levied'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 95515
        mmTop = 27252
        mmWidth = 13758
        BandType = 7
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insurance Costs Levied'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 120386
        mmTop = 27252
        mmWidth = 27252
        BandType = 7
      end
      object ppLabel48: TppLabel
        UserName = 'Label401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Collection Costs Levied'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 160867
        mmTop = 27252
        mmWidth = 27781
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Default Administration Costs Levied'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2921
        mmLeft = 31147
        mmTop = 36513
        mmWidth = 41614
        BandType = 7
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Legal Fees Levied'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 88106
        mmTop = 36513
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Other Debits'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 133086
        mmTop = 36513
        mmWidth = 14552
        BandType = 7
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Other Credits'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2921
        mmLeft = 173027
        mmTop = 36513
        mmWidth = 15621
        BandType = 7
      end
      object ppMemo10: TppMemo
        UserName = 'Memo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 6
        Font.Style = []
        Lines.Strings = (
          
            '1. The information contained in this Loan Statement ("the Statem' +
            'ent") reflects the balance outstanding, including interest and a' +
            'rrears, as at the statement date.')
        Transparent = True
        mmHeight = 3175
        mmLeft = 8731
        mmTop = 55033
        mmWidth = 190500
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo11: TppMemo
        UserName = 'Memo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Memo2'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 6
        Font.Style = []
        Lines.Strings = (
          
            '2. The Statement is rendered to you without predjudice to any ri' +
            'ght Bruma Finance may have in terms of the Loan Agreement, or ot' +
            'herwise.')
        Transparent = True
        mmHeight = 3440
        mmLeft = 8731
        mmTop = 58208
        mmWidth = 190500
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo12: TppMemo
        UserName = 'Memo3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Memo3'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 6
        Font.Style = []
        Lines.Strings = (
          
            '3. Bruma Finance shall not be responsible for any errors and/or ' +
            'omissions should the information contained in the Statement be i' +
            'ncorrect.')
        Transparent = True
        mmHeight = 3704
        mmLeft = 8731
        mmTop = 61648
        mmWidth = 190236
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo13: TppMemo
        UserName = 'Memo4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Memo4'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 6
        Font.Style = []
        Lines.Strings = (
          
            '4. Bruma Finance reserves the right to claim any amount erroneou' +
            'sly not reflected in the Statement, for any reason whatsoever, a' +
            's and  when such amount becomes due.')
        Transparent = True
        mmHeight = 3440
        mmLeft = 8731
        mmTop = 65352
        mmWidth = 190236
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo14: TppMemo
        UserName = 'Memo5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Memo5'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 6
        Font.Style = []
        Lines.Strings = (
          
            '5. Nothing contained in the Statement shall detract from the Loa' +
            'n Agreement entered into between you and Bruma Finance, which re' +
            'mains a valid and binding agreement.')
        Transparent = True
        mmHeight = 3440
        mmLeft = 8731
        mmTop = 68792
        mmWidth = 190236
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo15: TppMemo
        UserName = 'Memo6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Memo6'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 6
        Font.Style = []
        Lines.Strings = (
          
            '6. Should there be an error in the Statement or should you have ' +
            'any queries then please contact Bruma Finance.')
        Transparent = True
        mmHeight = 3704
        mmLeft = 8731
        mmTop = 72231
        mmWidth = 190236
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo16: TppMemo
        UserName = 'Memo7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Memo7'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 6
        Font.Style = []
        Lines.Strings = (
          
            '7. The amount reflected in the Statement is not a settlement bal' +
            'ance. Should you require a settlement balance please feel free t' +
            'o contact Bruma Finance.')
        Transparent = True
        mmHeight = 3440
        mmLeft = 8731
        mmTop = 75936
        mmWidth = 190236
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppRichText1: TppRichText
        UserName = 'RichText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RichText1'
        RichText = 
          '{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcha' +
          'rset0 Century Gothic;}{\f1\fnil MS Sans Serif;}}'#13#10'\viewkind4\uc1' +
          '\pard\f0\fs14 If you have any trouble understanding this stateme' +
          'nt please call \b Customer Care\b0  on \b 0861 33 11 33\b0\f1\fs' +
          '16 '#13#10'\par }'#13#10
        mmHeight = 3969
        mmLeft = 35983
        mmTop = 48154
        mmWidth = 119592
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalPaid'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 12435
        mmTop = 31750
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalInterest'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 31750
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalFees'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 87577
        mmTop = 31750
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalInsurance'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 125942
        mmTop = 31750
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalCollections'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 166952
        mmTop = 31750
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalDefaultCosts'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 41275
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalLegalCosts'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 87577
        mmTop = 41275
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OtherDebits'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 125942
        mmTop = 41275
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OtherCredits'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 167217
        mmTop = 41275
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Days150'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 10848
        mmTop = 14288
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Days120'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 37835
        mmTop = 14288
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Days90'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 64823
        mmTop = 14288
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Days60'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 92075
        mmTop = 14288
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Days30'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 118534
        mmTop = 14288
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText68: TppDBText
        UserName = 'DBText68'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CurrentDue'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 143934
        mmTop = 14288
        mmWidth = 21696
        BandType = 7
      end
      object ppDBText69: TppDBText
        UserName = 'DBText69'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalDue'
        DataPipeline = plClientStatement
        DisplayFormat = 'R ###,###,##0.00;(R ###,###,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Century Gothic'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientStatement'
        mmHeight = 3175
        mmLeft = 168805
        mmTop = 14288
        mmWidth = 19050
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 35454
        mmTop = 9260
        mmWidth = 13229
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 62177
        mmTop = 9260
        mmWidth = 13229
        BandType = 7
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 89694
        mmTop = 9260
        mmWidth = 6350
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 35454
        mmTop = 26458
        mmWidth = 13229
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19315
        mmLeft = 74348
        mmTop = 26458
        mmWidth = 13229
        BandType = 7
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19315
        mmLeft = 150284
        mmTop = 26458
        mmWidth = 13229
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'LoanID'
      DataPipeline = plClientStatement
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plClientStatement'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 2910
        mmPrintPosition = 0
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060D54726156617250726F6772616D094368696C645479706502110B50726F
        6772616D4E616D6506095661726961626C65730B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365064470726F6365647572652056
        61726961626C65733B0D0A7661720D0A2020204C61737442616C616E63653A43
        757272656E63793B0D0A626567696E0D0A0D0A656E643B0D0A0001060F547261
        4576656E7448616E646C65720B50726F6772616D4E616D6506136C626C557365
        724944314F6E476574546578740B50726F6772616D54797065070B747450726F
        63656475726506536F75726365066B70726F636564757265206C626C55736572
        4944314F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A0D0A202054657874203A3D205265706F72742E506172616D
        65746572735B27557365724944275D3B0D0A0D0A656E643B0D0A0D436F6D706F
        6E656E744E616D65060A6C626C55736572494431094576656E744E616D650609
        4F6E47657454657874074576656E74494402350001060F5472614576656E7448
        616E646C65720B50726F6772616D4E616D6506136C626C42616C616E63654F6E
        476574546578740B50726F6772616D54797065070B747450726F636564757265
        06536F757263650C0301000070726F636564757265206C626C42616C616E6365
        4F6E476574546578742876617220546578743A20537472696E67293B0D0A6265
        67696E0D0A0D0A202054657874203A3D20466F726D6174466C6F617428275220
        2323232C2323232C2323302E30303B2D52202323232C2323232C2323302E3030
        272C20537472546F466C6F617428636C6344656269742E5465787429202D2053
        7472546F466C6F617428636C634372656469742E5465787429293B0D0A20204C
        61737442616C616E6365203A3D20537472546F466C6F617428636C6344656269
        742E5465787429202D20537472546F466C6F617428636C634372656469742E54
        657874293B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060A6C
        626C42616C616E6365094576656E744E616D6506094F6E476574546578740745
        76656E74494402350001060F5472614576656E7448616E646C65720B50726F67
        72616D4E616D6506115265706F72744265666F72655072696E740B50726F6772
        616D54797065070B747450726F63656475726506536F7572636506FA70726F63
        6564757265205265706F72744265666F72655072696E743B0D0A626567696E0D
        0A096C626C53746174656D656E742E43617074696F6E203A3D20275374617465
        6D656E74206F66204163636F756E7420666F7220506572696F642027202B0D0A
        0909466F726D61744461746554696D652827797979792F6D6D2F6464272C2070
        6C436C69656E7453746174656D656E745B27537461727444617465275D29202B
        202720746F2027202B0D0A0909466F726D61744461746554696D652827797979
        792F6D6D2F6464272C20706C436C69656E7453746174656D656E745B27537461
        74656D656E7444617465275D293B0D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D6506065265706F7274094576656E744E616D65060B4265666F72655072
        696E74074576656E74494402010001060F5472614576656E7448616E646C6572
        0B50726F6772616D4E616D6506144865616465724265666F726547656E657261
        74650B50726F6772616D54797065070B747450726F63656475726506536F7572
        63650C1E02000070726F636564757265204865616465724265666F726547656E
        65726174653B0D0A626567696E0D0A096966205265706F72742E506167654E6F
        203D2031207468656E0D0A09626567696E0D0A09094865616465722E48656967
        6874203A3D20342E33383B0D0A09096C626C42616C616E6365446174652E5669
        7369626C65203A3D2046616C73653B0D0A09096C626C42616C616E6365466F72
        776172642E56697369626C65203A3D2046616C73653B0D0A09096C626C42616C
        616E6365416D6F756E742E56697369626C65203A3D2046616C73653B0D0A0965
        6E640D0A09656C73650D0A09626567696E0D0A09094865616465722E48656967
        6874203A3D20342E35303B0D0A09096C626C42616C616E6365446174652E4361
        7074696F6E203A3D20706C436C69656E7453746174656D656E745B2745666665
        637444617465275D3B0D0A09096C626C42616C616E6365416D6F756E742E4361
        7074696F6E203A3D20466F726D6174466C6F6174282752202323232C2323232C
        2323302E30303B2D52202323232C2323232C2323302E3030272C204C61737442
        616C616E6365293B0D0A09096C626C42616C616E6365446174652E5669736962
        6C65203A3D20547275653B0D0A09096C626C42616C616E6365466F7277617264
        2E56697369626C65203A3D20547275653B0D0A09096C626C42616C616E636541
        6D6F756E742E56697369626C65203A3D20547275653B0D0A09656E643B0D0A65
        6E643B0D0A0D436F6D706F6E656E744E616D650606486561646572094576656E
        744E616D65060E4265666F726547656E6572617465074576656E744944021A00
        00}
    end
    object ppParameterList1: TppParameterList
      object ppParameter1: TppParameter
        DataType = dtString
        Value = ''
      end
      object ppParameter2: TppParameter
        DataType = dtString
        Value = ''
      end
      object ppParameter3: TppParameter
        DataType = dtString
        Value = ''
      end
    end
  end
  object dsLoanAccount2: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @Interest MONEY, @Date DATETIME, @LoanID INT'#13#10#13#10'SELECT @' +
      'Interest = :IntToDate, @LoanID = :LoanID, @Date = CAST(CONVERT(V' +
      'ARCHAR(10),GETDATE(),120) AS DATETIME)'#13#10#13#10'SELECT LD.LoanID, CAST' +
      '(LoanPeriod AS varchar(3)) + '#39' '#39' +'#13#10'CASE '#13#10'WHEN AccType IN (5,6)' +
      ' THEN '#39'Weeks'#39#13#10'WHEN AccType IN (7,8) THEN '#39'Fortnights'#39#13#10'ELSE '#39'Mo' +
      'nths'#39' END AS LoanPeriod,'#13#10'NoOfPay, StartDate, AmtToFin, PayIns, ' +
      'ArrearsAmt, FirstInsDate, LD.RefNo, dbo.FGetLoanStatusName(LD.St' +
      'atus) AS Status, LD.RefNo AS LoanNo,'#13#10'Name + '#39' '#39' + Name2 AS Full' +
      'name, ED.RegNo AS IDNo, ED.EntCode, RefFld1, AmtToFin + TotInter' +
      'est AS TotalLoan,'#13#10'Address1, Address2, Address3, Address4, Addre' +
      'ssCode,'#13#10'BH.TransType, BH.TransCode, Description AS sTransaction' +
      ', ValueDate, '#13#10'CASE WHEN AmtPost >= 0 THEN AmtPost END AS Debit,' +
      #13#10'CASE WHEN AmtPost < 0 THEN AmtPost END AS Credit, Amount as Ba' +
      'lance, BatchNo, BH.UserID, BH.RefNo AS TransRef,'#13#10'(SELECT SUM(Am' +
      'tPost) FROM lsBatchHistory BA WHERE LoanID = LD.LoanID AND Trans' +
      'Type IN (11,12)) AS NetPay, 1 AS OrderID'#13#10'FROM lsLoanDetail LD'#13#10 +
      'LEFT JOIN lsLoanTypes LT ON LT.LoanType = LD.LoanType'#13#10'LEFT JOIN' +
      ' EntityData ED ON ED.EntityID = LD.EntityID'#13#10'LEFT JOIN lsBatchHi' +
      'story BH ON BH.LoanID = LD.LoanID'#13#10'LEFT JOIN TransSetup TS ON TS' +
      '.TransCode = BH.TransCode'#13#10'LEFT JOIN Address AD ON AD.EntityID =' +
      ' ED.EntityID AND AddressType = 2'#13#10'WHERE LD.LoanID = @LoanID '#13#10'AN' +
      'D BH.TransType NOT IN (3,5,6,7,8,9,10,19,20)'#13#10'AND Effectdate <= ' +
      'getdate()'#13#10#13#10'UNION'#13#10#13#10'SELECT LD.LoanID, CAST(LoanPeriod AS varch' +
      'ar(3)) + '#39' '#39' +'#13#10'CASE '#13#10'WHEN AccType IN (5,6) THEN '#39'Weeks'#39#13#10'WHEN ' +
      'AccType IN (7,8) THEN '#39'Fortnights'#39#13#10'ELSE '#39'Months'#39' END AS LoanPer' +
      'iod,'#13#10'NoOfPay, StartDate, AmtToFin, PayIns, ArrearsAmt, FirstIns' +
      'Date, LD.RefNo, '#13#10'dbo.FGetLoanStatusName(LD.Status) AS Status, L' +
      'D.RefNo AS LoanNo,'#13#10'Name + '#39' '#39' + Name2 AS Fullname, ED.RegNo AS ' +
      'IDNo, ED.EntCode, RefFld1, AmtToFin + TotInterest AS TotalLoan,'#13 +
      #10'Address1, Address2, Address3, Address4, AddressCode,'#13#10'14, 1407,' +
      ' '#39'Interest to Date'#39', @Date, '#13#10'CASE WHEN @Interest >= 0 THEN @Int' +
      'erest END AS Debit,'#13#10'CASE WHEN @Interest < 0 THEN @Interest END ' +
      'AS Credit, @Interest as Balance, '#13#10#39#39', '#39#39', '#39#39', 0, 2'#13#10'FROM lsLoan' +
      'Detail LD'#13#10'LEFT JOIN lsLoanTypes LT ON LT.LoanType = LD.LoanType' +
      #13#10'LEFT JOIN EntityData ED ON ED.EntityID = LD.EntityID'#13#10'LEFT JOI' +
      'N Address AD ON AD.EntityID = ED.EntityID AND AddressType = 2'#13#10'W' +
      'HERE LD.LoanID = @LoanID '#13#10'AND LD.Status <> 45'#13#10#13#10'ORDER BY Value' +
      'Date, OrderID'
    Parameters = <
      item
        Name = 'IntToDate'
        DataType = ftBCD
        Size = -1
        Value = Null
      end
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 328
    Top = 56
  end
  object dtsLoanAccount2: TDataSource
    DataSet = dsLoanAccount2
    Left = 328
    Top = 72
  end
end
