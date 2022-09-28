object frmLoanBook2: TfrmLoanBook2
  Left = 227
  Top = 187
  Width = 870
  Height = 640
  Caption = 'Loan Book'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    854
    602)
  PixelsPerInch = 96
  TextHeight = 13
  object grdLoanBook: TDBGrid
    Left = 7
    Top = 8
    Width = 798
    Height = 591
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtsLoanBook
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Description'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ToDate'
        Title.Alignment = taRightJustify
        Title.Caption = 'Up to Today'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ToCurrentME'
        Title.Alignment = taRightJustify
        Title.Caption = 'Up to Current Month-End'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Month4'
        Title.Alignment = taRightJustify
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Month3'
        Title.Alignment = taRightJustify
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Month2'
        Title.Alignment = taRightJustify
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Month1'
        Title.Alignment = taRightJustify
        Width = 120
        Visible = True
      end>
  end
  object tlbDBBase: TToolBar
    Left = 805
    Top = 0
    Width = 49
    Height = 602
    Align = alRight
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 49
    Color = clBtnFace
    EdgeBorders = []
    Flat = True
    Images = dtmMain.imglstMain
    ParentColor = False
    ShowCaptions = True
    TabOrder = 1
    object btnExit: TToolButton
      Left = 0
      Top = 0
      Caption = '  Exit  '
      ImageIndex = 2
      Wrap = True
      OnClick = btnExitClick
    end
    object btnExport: TToolButton
      Left = 0
      Top = 36
      Caption = '  Export  '
      ImageIndex = 39
      OnClick = btnExportClick
    end
  end
  object dsLoanBook1: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @PrevMonth INT, @Month1 INT, @Month2 INT, @Month3 INT, @' +
      'Month4 INT'#13#10#13#10'SELECT @PrevMonth = MAX(MonthNo)'#13#10'FROM lsMonthEnd'#13 +
      #10'WHERE Closed= 1'#13#10#13#10'SET @Month1 = @PrevMonth - 1'#13#10'SET @Month2 = ' +
      '@PrevMonth - 2'#13#10'SET @Month3 = @PrevMonth - 3'#13#10'SET @Month4 = @Pre' +
      'vMonth - 4'#13#10#13#10#13#10'SELECT 10 AS RecNo, '#39'TOTAL ARREARS (150 DAYS)'#39' A' +
      'S Description,'#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsLoanDetail'#13#10'WHER' +
      'E Status IN (30,60,65,68)'#13#10'AND ArrearsNo = 5) AS CurrentValue,'#13#10 +
      '(SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,6' +
      '0,65,68)'#13#10'AND ArrearsNo = 5'#13#10'AND MEID = @PrevMonth) AS PrevMonth' +
      'Value,'#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status ' +
      'IN (30,60,65,68)'#13#10'AND ArrearsNo = 5'#13#10'AND MEID = @Month1) AS Mont' +
      'hValue1,'#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Statu' +
      's IN (30,60,65,68)'#13#10'AND ArrearsNo = 5'#13#10'AND MEID = @Month2) AS Mo' +
      'nthValue2,'#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Sta' +
      'tus IN (30,60,65,68)'#13#10'AND ArrearsNo = 5'#13#10'AND MEID = @Month3) AS ' +
      'MonthValue3,'#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE S' +
      'tatus IN (30,60,65,68)'#13#10'AND ArrearsNo = 5'#13#10'AND MEID = @Month4) A' +
      'S MonthValue4'#13#10#13#10'UNION'#13#10#13#10'SELECT 20 AS RecNo, '#39'TOTAL ARREARS (12' +
      '0 DAYS)'#39','#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsLoanDetail'#13#10'WHERE Sta' +
      'tus IN (30,60,65,68)'#13#10'AND ArrearsNo = 4) AS CurrentValue,'#13#10'(SELE' +
      'CT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,65,' +
      '68)'#13#10'AND ArrearsNo = 4'#13#10'AND MEID = @PrevMonth) AS PrevMonthValue' +
      ','#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (3' +
      '0,60,65,68)'#13#10'AND ArrearsNo = 4'#13#10'AND MEID = @Month1) AS MonthValu' +
      'e1,'#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN ' +
      '(30,60,65,68)'#13#10'AND ArrearsNo = 4'#13#10'AND MEID = @Month2) AS MonthVa' +
      'lue2,'#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status I' +
      'N (30,60,65,68)'#13#10'AND ArrearsNo = 4'#13#10'AND MEID = @Month3) AS Month' +
      'Value3,'#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status' +
      ' IN (30,60,65,68)'#13#10'AND ArrearsNo = 4'#13#10'AND MEID = @Month4) AS Mon' +
      'thValue4'#13#10#13#10'UNION'#13#10#13#10'SELECT 30 AS RecNo, '#39'TOTAL ARREARS (90 DAYS' +
      ')'#39','#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsLoanDetail'#13#10'WHERE Status IN' +
      ' (30,60,65,68)'#13#10'AND ArrearsNo = 3) AS CurrentValue,'#13#10'(SELECT SUM' +
      '(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,65,68)'#13#10'A' +
      'ND ArrearsNo = 3'#13#10'AND MEID = @PrevMonth) AS PrevMonthValue,'#13#10'(SE' +
      'LECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,6' +
      '5,68)'#13#10'AND ArrearsNo = 3'#13#10'AND MEID = @Month1) AS MonthValue1,'#13#10'(' +
      'SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60' +
      ',65,68)'#13#10'AND ArrearsNo = 3'#13#10'AND MEID = @Month2) AS MonthValue2,'#13 +
      #10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,' +
      '60,65,68)'#13#10'AND ArrearsNo = 3'#13#10'AND MEID = @Month3) AS MonthValue3' +
      ','#13#10'(SELECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (3' +
      '0,60,65,68)'#13#10'AND ArrearsNo = 3'#13#10'AND MEID = @Month4) AS MonthValu' +
      'e4'#13#10#13#10'UNION'#13#10#13#10'SELECT 40 AS RecNo, '#39'TOTAL ARREARS (60 DAYS)'#39','#13#10'(' +
      'SELECT SUM(ArrearsAmt)'#13#10'FROM lsLoanDetail'#13#10'WHERE Status IN (30,6' +
      '0,65,68)'#13#10'AND ArrearsNo = 2) AS CurrentValue,'#13#10'(SELECT SUM(Arrea' +
      'rsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,65,68)'#13#10'AND Arr' +
      'earsNo = 2'#13#10'AND MEID = @PrevMonth) AS PrevMonthValue,'#13#10'(SELECT S' +
      'UM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,65,68)'#13 +
      #10'AND ArrearsNo = 2'#13#10'AND MEID = @Month1) AS MonthValue1,'#13#10'(SELECT' +
      ' SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,65,68' +
      ')'#13#10'AND ArrearsNo = 2'#13#10'AND MEID = @Month2) AS MonthValue2,'#13#10'(SELE' +
      'CT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,65,' +
      '68)'#13#10'AND ArrearsNo = 2'#13#10'AND MEID = @Month3) AS MonthValue3,'#13#10'(SE' +
      'LECT SUM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,6' +
      '5,68)'#13#10'AND ArrearsNo = 2'#13#10'AND MEID = @Month4) AS MonthValue4'#13#10#13#10 +
      'UNION'#13#10#13#10'SELECT 50 AS RecNo, '#39'TOTAL ARREARS (30 DAYS)'#39','#13#10'(SELECT' +
      ' SUM(ArrearsAmt)'#13#10'FROM lsLoanDetail'#13#10'WHERE Status IN (30,60,65,6' +
      '8)'#13#10'AND ArrearsNo = 1) AS CurrentValue,'#13#10'(SELECT SUM(ArrearsAmt)' +
      #13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,65,68)'#13#10'AND ArrearsNo' +
      ' = 1'#13#10'AND MEID = @PrevMonth) AS PrevMonthValue,'#13#10'(SELECT SUM(Arr' +
      'earsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,65,68)'#13#10'AND A' +
      'rrearsNo = 1'#13#10'AND MEID = @Month1) AS MonthValue1,'#13#10'(SELECT SUM(A' +
      'rrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,65,68)'#13#10'AND' +
      ' ArrearsNo = 1'#13#10'AND MEID = @Month2) AS MonthValue2,'#13#10'(SELECT SUM' +
      '(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,65,68)'#13#10'A' +
      'ND ArrearsNo = 1'#13#10'AND MEID = @Month3) AS MonthValue3,'#13#10'(SELECT S' +
      'UM(ArrearsAmt)'#13#10'FROM lsMESummary'#13#10'WHERE Status IN (30,60,65,68)'#13 +
      #10'AND ArrearsNo = 1'#13#10'AND MEID = @Month4) AS MonthValue4'#13#10#13#10'ORDER ' +
      'BY RecNo'
    Parameters = <>
    Left = 480
    Top = 96
    object dsLoanBook1RecNo: TIntegerField
      FieldName = 'RecNo'
      ReadOnly = True
    end
    object dsLoanBook1Description: TStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 24
    end
    object dsLoanBook1CurrentValue: TBCDField
      FieldName = 'CurrentValue'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsLoanBook1PrevMonthValue: TBCDField
      FieldName = 'PrevMonthValue'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsLoanBook1MonthValue1: TBCDField
      FieldName = 'MonthValue1'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsLoanBook1MonthValue2: TBCDField
      FieldName = 'MonthValue2'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsLoanBook1MonthValue3: TBCDField
      FieldName = 'MonthValue3'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object dsLoanBook1MonthValue4: TBCDField
      FieldName = 'MonthValue4'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object dtsLoanBook1: TDataSource
    DataSet = dsLoanBook1
    Left = 480
    Top = 112
  end
  object dsMonths: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT MonthEndDate'#13#10'FROM lsMonthEnd'#13#10'WHERE MonthNo'#13#10'= (SELECT M' +
      'AX(MonthNo)'#13#10'FROM lsMonthEnd'#13#10'WHERE Closed= 1)'#13#10#13#10'/*SELECT TOP 1' +
      ' MonthNo, MonthEndDate'#13#10'FROM lsMonthEnd'#13#10'WHERE MonthEndDate > GE' +
      'TDATE()*/'
    Parameters = <>
    Left = 328
    Top = 96
  end
  object dsLoanBook: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @PrevMonth INT, @Month0 INT, @Month1 INT, @Month2 INT, @' +
      'Month3 INT, @Month4 INT'#13#10'SELECT @PrevMonth = (SELECT MAX(MonthNo' +
      ')'#13#10'FROM lsMonthEnd'#13#10'WHERE Closed= 1)'#13#10#13#10'SET @Month4 = @PrevMonth' +
      #13#10'SET @Month3 = @PrevMonth - 1'#13#10'SET @Month2 = @PrevMonth - 2'#13#10'SE' +
      'T @Month1 = @PrevMonth - 3'#13#10'SET @Month0 = @PrevMonth - 4'#13#10#13#10'SELE' +
      'CT'#13#10'TD.LoanCapital AS LoanCapitalTD,  '#13#10'ME4.LoanCapital AS LoanC' +
      'apital, ME4.LoanCapital - ME3.LoanCapital AS LoanCapital4, ME3.L' +
      'oanCapital - ME2.LoanCapital AS LoanCapital3, '#13#10'ME2.LoanCapital ' +
      '- ME1.LoanCapital AS LoanCapital2, ME1.LoanCapital - ME0.LoanCap' +
      'ital AS LoanCapital1,'#13#10#13#10'TD.AmtToFin AS AmtToFinTD,'#13#10'ME4.AmtToFi' +
      'n AS AmtToFin, ME4.AmtToFin - ME3.AmtToFin AS AmtToFin4, ME3.Amt' +
      'ToFin - ME2.AmtToFin AS AmtToFin3,'#13#10'ME2.AmtToFin - ME1.AmtToFin ' +
      'AS AmtToFin2, ME1.AmtToFin - ME0.AmtToFin AS AmtToFin1,'#13#10#13#10'TD.Mt' +
      'hIns AS MthInsTD,'#13#10'ME4.MthIns AS MthIns, ME4.MthIns - ME3.MthIns' +
      ' AS MthIns4, ME3.MthIns - ME2.MthIns AS MthIns3,'#13#10'ME2.MthIns - M' +
      'E1.MthIns AS MthIns2, ME1.MthIns - ME0.MthIns AS MthIns1,'#13#10#13#10'TD.' +
      'PayIns AS PayInsTD,'#13#10'ME4.PayIns AS PayIns, ME4.PayIns - ME3.PayI' +
      'ns AS PayIns4, ME3.PayIns - ME2.PayIns AS PayIns3,'#13#10'ME2.PayIns -' +
      ' ME1.PayIns AS PayIns2, ME1.PayIns - ME0.PayIns AS PayIns1,'#13#10#13#10'T' +
      'D.TotInterest AS TotInterestTD,'#13#10'ME4.TotInterest AS TotInterest,' +
      ' ME4.TotInterest - ME3.TotInterest AS TotInterest4, ME3.TotInter' +
      'est - ME2.TotInterest AS TotInterest3,'#13#10'ME2.TotInterest - ME1.To' +
      'tInterest AS TotInterest2, ME1.TotInterest - ME0.TotInterest AS ' +
      'TotInterest1,'#13#10#13#10'TD.AccBal AS AccBalTD,'#13#10'ME4.AccBal AS AccBal, M' +
      'E4.AccBal - ME3.AccBal AS AccBal4, ME3.AccBal - ME2.AccBal AS Ac' +
      'cBal3,'#13#10'ME2.AccBal - ME1.AccBal AS AccBal2, ME1.AccBal - ME0.Acc' +
      'Bal AS AccBal1,'#13#10#13#10'TD.LoanBal AS LoanBalTD,'#13#10'ME4.LoanBal AS Loan' +
      'Bal, ME4.LoanBal - ME3.LoanBal AS LoanBal4, ME3.LoanBal - ME2.Lo' +
      'anBal AS LoanBal3,'#13#10'ME2.LoanBal - ME1.LoanBal AS LoanBal2, ME1.L' +
      'oanBal - ME0.LoanBal AS LoanBal1,'#13#10#13#10'TD.ArrearsAmt AS ArrearsAmt' +
      'TD,'#13#10'ME4.ArrearsAmt AS ArrearsAmt, ME4.ArrearsAmt - ME3.ArrearsA' +
      'mt AS ArrearsAmt4, ME3.ArrearsAmt - ME2.ArrearsAmt AS ArrearsAmt' +
      '3,'#13#10'ME2.ArrearsAmt - ME1.ArrearsAmt AS ArrearsAmt2, ME1.ArrearsA' +
      'mt - ME0.ArrearsAmt AS ArrearsAmt1,'#13#10#13#10'TD.AmountDue AS AmountDue' +
      'TD,'#13#10'ME4.AmountDue AS AmountDue, ME4.AmountDue - ME3.AmountDue A' +
      'S AmountDue4, ME3.AmountDue - ME2.AmountDue AS AmountDue3,'#13#10'ME2.' +
      'AmountDue - ME1.AmountDue AS AmountDue2, ME1.AmountDue - ME0.Amo' +
      'untDue AS AmountDue1,'#13#10#13#10'TD.TotCRRec aS TotCRRecTD,'#13#10'ME4.TotCRRe' +
      'c AS TotCRRec, ME4.TotCRRec - ME3.TotCRRec AS TotCRRec4, ME3.Tot' +
      'CRRec - ME2.TotCRRec AS TotCRRec3,'#13#10'ME2.TotCRRec - ME1.TotCRRec ' +
      'AS TotCRRec2, ME1.TotCRRec - ME0.TotCRRec AS TotCRRec1,'#13#10#13#10'TD.To' +
      'tAddDC AS TotAddDCTD,'#13#10'ME4.TotAddDC AS TotAddDC, ME4.TotAddDC - ' +
      'ME3.TotAddDC AS TotAddDC4, ME3.TotAddDC - ME2.TotAddDC AS TotAdd' +
      'DC3,'#13#10'ME2.TotAddDC - ME1.TotAddDC AS TotAddDC2, ME1.TotAddDC - M' +
      'E0.TotAddDC AS TotAddDC1,'#13#10#13#10'TD.TotIntEarn AS TotIntEarnTD,'#13#10'ME4' +
      '.TotIntEarn AS TotIntEarn, ME4.TotIntEarn - ME3.TotIntEarn AS To' +
      'tIntEarn4, ME3.TotIntEarn - ME2.TotIntEarn AS TotIntEarn3,'#13#10'ME2.' +
      'TotIntEarn - ME1.TotIntEarn AS TotIntEarn2, ME1.TotIntEarn - ME0' +
      '.TotIntEarn AS TotIntEarn1,'#13#10#13#10'TD.Days30 AS Days30_TD,'#13#10'ME4.Days' +
      '30 AS Days30_, ME4.Days30 - ME3.Days30 AS Days30_4, ME3.Days30 -' +
      ' ME2.Days30 AS Days30_3,'#13#10'ME2.Days30 - ME1.Days30 AS Days30_2, M' +
      'E1.Days30 - ME0.Days30 AS Days30_1,'#13#10#13#10'TD.Days60 AS Days60_TD,'#13#10 +
      'ME4.Days60 AS Days60_, ME4.Days60 - ME3.Days60 AS Days60_4, ME3.' +
      'Days60 - ME2.Days60 AS Days60_3,'#13#10'ME2.Days60 - ME1.Days60 AS Day' +
      's60_2, ME1.Days60 - ME0.Days60 AS Days60_1,'#13#10#13#10'TD.Days90 AS Days' +
      '90_TD,'#13#10'ME4.Days90 AS Days90_, ME4.Days90 - ME3.Days90 AS Days90' +
      '_4, ME3.Days90 - ME2.Days90 AS Days90_3,'#13#10'ME2.Days90 - ME1.Days9' +
      '0 AS Days90_2, ME1.Days90 - ME0.Days90 AS Days90_1,'#13#10#13#10'TD.Days12' +
      '0 AS Days120_TD,'#13#10'ME4.Days120 AS Days120_, ME4.Days120 - ME3.Day' +
      's120 AS Days120_4, ME3.Days120 - ME2.Days120 AS Days120_3,'#13#10'ME2.' +
      'Days120 - ME1.Days120 AS Days120_2, ME1.Days120 - ME0.Days120 AS' +
      ' Days120_1,'#13#10#13#10'TD.Days150 AS Days150_TD,'#13#10'ME4.Days150 AS Days150' +
      '_, ME4.Days150 - ME3.Days150 AS Days150_4, ME3.Days150 - ME2.Day' +
      's150 AS Days150_3,'#13#10'ME2.Days150 - ME1.Days150 AS Days150_2, ME1.' +
      'Days150 - ME0.Days150 AS Days150_1,'#13#10#13#10'TD.Days180 AS Days180_TD,' +
      #13#10'ME4.Days180 AS Days180_,ME4.Days180 - ME3.Days180 AS Days180_4' +
      ', ME3.Days180 - ME2.Days180 AS Days180_3,'#13#10'ME2.Days180 - ME1.Day' +
      's180 AS Days180_2, ME1.Days180 - ME0.Days180 AS Days180_1,'#13#10#13#10'TD' +
      '.Days210 AS Days210_TD,'#13#10'ME4.Days210 AS Days210_, ME4.Days210 - ' +
      'ME3.Days210 AS Days210_4, ME3.Days210 - ME2.Days210 AS Days210_3' +
      ','#13#10'ME2.Days210 - ME1.Days210 AS Days210_2, ME1.Days210 - ME0.Day' +
      's210 AS Days210_1,'#13#10#13#10'TD.Days240 AS Days240_TD,'#13#10'ME4.Days240 AS ' +
      'Days240_, ME4.Days240 - ME3.Days240 AS Days240_4, ME3.Days240 - ' +
      'ME2.Days240 AS Days240_3,'#13#10'ME2.Days240 - ME1.Days240 AS Days240_' +
      '2, ME1.Days240 - ME0.Days240 AS Days240_1,'#13#10#13#10'TD.Days270 AS Days' +
      '270_TD,'#13#10'ME4.Days270 AS Days270_, ME4.Days270 - ME3.Days270 AS D' +
      'ays270_4, ME3.Days270 - ME2.Days270 AS Days270_3,'#13#10'ME2.Days270 -' +
      ' ME1.Days270 AS Days270_2, ME1.Days270 - ME0.Days270 AS Days270_' +
      '1,'#13#10#13#10'TD.Days300 AS Days300_TD,'#13#10'ME4.Days300 AS Days300_, ME4.Da' +
      'ys300 - ME3.Days300 AS Days300_4, ME3.Days300 - ME2.Days300 AS D' +
      'ays300_3,'#13#10'ME2.Days300 - ME1.Days300 AS Days300_2, ME1.Days300 -' +
      ' ME0.Days300 AS Days300_1,'#13#10#13#10'TD.Days330 AS Days330_TD,'#13#10'ME4.Day' +
      's330 AS Days330_, ME4.Days330 - ME3.Days330 AS Days330_4, ME3.Da' +
      'ys330 - ME2.Days330 AS Days330_3,'#13#10'ME2.Days330 - ME1.Days330 AS ' +
      'Days330_2, ME1.Days330 - ME0.Days330 AS Days330_1,'#13#10#13#10'TD.Days360' +
      ' AS Days360_TD,'#13#10'ME4.Days360 AS Days360_, ME4.Days360 - ME3.Days' +
      '360 AS Days360_4, ME3.Days360 - ME2.Days360 AS Days360_3,'#13#10'ME2.D' +
      'ays360 - ME1.Days360 AS Days360_2, ME1.Days360 - ME0.Days360 AS ' +
      'Days360_1'#13#10#13#10'FROM '#13#10#9'(SELECT SUM(LoanCapital) AS LoanCapital, SU' +
      'M(AmtToFin) AS AmtToFin, '#13#10#9'SUM(MthIns) AS MthIns, SUM(PayIns) A' +
      'S PayIns, SUM(TotInterest) AS TotInterest, '#13#10#9'SUM(CashDep) As Ca' +
      'shDep, SUM(TotSecAmt) As TotSecAmt, SUM(AccBal) As AccBal, '#13#10#9'SU' +
      'M(LoanBal) As LoanBal, SUM(DepositBal) As DepositBal, SUM(Arrear' +
      'sAmt) As ArrearsAmt, '#13#10#9'SUM(AmountDue) As AmountDue, SUM(TotCRRe' +
      'c) As TotCRRec, SUM(TotAddDC) As TotAddDC, '#13#10#9'SUM(TotIntEarn) As' +
      ' TotIntEarn, SUM(TotDepInt) As TotDepInt, '#13#10#9'SUM(CASE WHEN Arrea' +
      'rsNo = 1 THEN ArrearsAmt ELSE 0 END) AS Days30,'#13#10#9'SUM(CASE WHEN ' +
      'ArrearsNo = 2 THEN ArrearsAmt ELSE 0 END) AS Days60,'#13#10#9'SUM(CASE ' +
      'WHEN ArrearsNo = 3 THEN ArrearsAmt ELSE 0 END) AS Days90,'#13#10#9'SUM(' +
      'CASE WHEN ArrearsNo = 4 THEN ArrearsAmt ELSE 0 END) AS Days120,'#13 +
      #10#9'SUM(CASE WHEN ArrearsNo = 5 THEN ArrearsAmt ELSE 0 END) AS Day' +
      's150,'#13#10#9'SUM(CASE WHEN ArrearsNo = 6 THEN ArrearsAmt ELSE 0 END) ' +
      'AS Days180,'#13#10#9'SUM(CASE WHEN ArrearsNo = 7 THEN ArrearsAmt ELSE 0' +
      ' END) AS Days210,'#13#10#9'SUM(CASE WHEN ArrearsNo = 8 THEN ArrearsAmt ' +
      'ELSE 0 END) AS Days240,'#13#10#9'SUM(CASE WHEN ArrearsNo = 9 THEN Arrea' +
      'rsAmt ELSE 0 END) AS Days270,'#13#10#9'SUM(CASE WHEN ArrearsNo = 10 THE' +
      'N ArrearsAmt ELSE 0 END) AS Days300,'#13#10#9'SUM(CASE WHEN ArrearsNo =' +
      ' 11 THEN ArrearsAmt ELSE 0 END) AS Days330,'#13#10#9'SUM(CASE WHEN Arre' +
      'arsNo >= 12 THEN ArrearsAmt ELSE 0 END) AS Days360'#13#10#9'FROM lsLoan' +
      'Detail'#13#10#9'WHERE Status <> 40)TD,'#13#10'lsMESummaryTotals ME4, lsMESumm' +
      'aryTotals ME3, lsMESummaryTotals ME2, lsMESummaryTotals ME1, lsM' +
      'ESummaryTotals ME0'#13#10'WHERE ME4.MEID = @Month4'#13#10'AND ME3.MEID = @Mo' +
      'nth3'#13#10'AND ME2.MEID = @Month2'#13#10'AND ME1.MEID = @Month1'#13#10'AND ME0.ME' +
      'ID = @Month0'#13#10
    Parameters = <>
    Left = 272
    Top = 200
  end
  object cdsLoanBook: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 200
    object cdsLoanBookDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object cdsLoanBookToDate2: TBCDField
      FieldName = 'ToDate'
      currency = True
    end
    object cdsLoanBookToDate: TBCDField
      FieldName = 'ToCurrentME'
      currency = True
      Size = 0
    end
    object cdsLoanBookMonth4: TBCDField
      FieldName = 'Month4'
      currency = True
    end
    object cdsLoanBookMonth3: TBCDField
      FieldName = 'Month3'
      currency = True
    end
    object cdsLoanBookMonth2: TBCDField
      FieldName = 'Month2'
      currency = True
    end
    object cdsLoanBookMonth1: TBCDField
      FieldName = 'Month1'
      currency = True
    end
  end
  object dtsLoanBook: TDataSource
    DataSet = cdsLoanBook
    Left = 352
    Top = 216
  end
  object DBGridExporter1: TDBGridExporter
    DBGrid = grdLoanBook
    Left = 536
    Top = 152
  end
end
