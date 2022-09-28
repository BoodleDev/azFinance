inherited frmClientLoans: TfrmClientLoans
  Top = 158
  Width = 698
  Height = 460
  Caption = 'Client Loans Summary'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 646
    Width = 44
    Height = 426
    ButtonWidth = 44
    object btnReports: TToolButton
      Left = 0
      Top = 36
      Caption = 'Reports'
      ImageIndex = 14
      OnClick = btnReportsClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 646
    Height = 426
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 646
      Height = 219
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 0
        Top = 59
        Width = 646
        Height = 20
        Align = alTop
        AutoSize = False
        Caption = '  Loan summary'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object grdLoan: TDBStyleGrid
        Left = 0
        Top = 79
        Width = 646
        Height = 140
        Align = alClient
        DataSource = dtmLS.dtsLoanCons
        Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdLoanDrawColumnCell
        AllowSort = False
        Columns = <
          item
            Expanded = False
            FieldName = 'Status'
            Width = 68
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'LoanPrd'
            Title.Caption = 'Period'
            Width = 33
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'ExtendPrd'
            Title.Caption = 'Extended'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanCapital'
            Title.Alignment = taRightJustify
            Title.Caption = 'Loan amt.'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AmtToFin'
            Title.Alignment = taRightJustify
            Title.Caption = 'Amt. finance'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ResidualAmt'
            Title.Alignment = taRightJustify
            Title.Caption = 'Res. amt'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotInterest'
            Title.Alignment = taRightJustify
            Title.Caption = 'Tot. int.'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccBal'
            Title.Alignment = taRightJustify
            Title.Caption = 'Acc. bal'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanBal'
            Title.Alignment = taRightJustify
            Title.Caption = 'Loan. bal'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AvLBal'
            Title.Alignment = taRightJustify
            Title.Caption = 'Avl. bal'
            Width = 60
            Visible = True
          end>
      end
      object pnlCurrentDetail: TPanel
        Tag = 9
        Left = 0
        Top = 0
        Width = 646
        Height = 59
        Align = alTop
        BevelInner = bvLowered
        ParentColor = True
        TabOrder = 1
        object Label8: TLabel
          Left = 9
          Top = 3
          Width = 72
          Height = 14
          Caption = 'Client details'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 249
          Top = 40
          Width = 27
          Height = 14
          Caption = 'Name'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 38
          Top = 40
          Width = 43
          Height = 14
          Caption = 'Surname'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 38
          Top = 20
          Width = 25
          Height = 14
          Caption = 'Code'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object dbtCode: TDBText
          Left = 90
          Top = 20
          Width = 40
          Height = 14
          AutoSize = True
          DataField = 'EntCode'
          DataSource = dtmMain.dtsEntDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object dbtName: TDBText
          Left = 304
          Top = 40
          Width = 42
          Height = 14
          AutoSize = True
          DataField = 'Name'
          DataSource = dtmMain.dtsEntDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object dbtSurname: TDBText
          Left = 90
          Top = 40
          Width = 58
          Height = 14
          AutoSize = True
          DataField = 'Name2'
          DataSource = dtmMain.dtsEntDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 249
          Top = 20
          Width = 48
          Height = 14
          Caption = 'ID number'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object dbtIDnum: TDBText
          Left = 304
          Top = 20
          Width = 44
          Height = 14
          AutoSize = True
          DataField = 'RegNo'
          DataSource = dtmMain.dtsEntDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 438
          Top = 20
          Width = 45
          Height = 14
          Caption = 'Home no.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText
          Left = 496
          Top = 20
          Width = 41
          Height = 14
          AutoSize = True
          DataField = 'TelNo1'
          DataSource = dtmMain.dtsEntDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText2: TDBText
          Left = 496
          Top = 40
          Width = 41
          Height = 14
          AutoSize = True
          DataField = 'TelNo3'
          DataSource = dtmMain.dtsEntDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 438
          Top = 40
          Width = 48
          Height = 14
          Caption = 'Mobile no.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object edtID: TDBEdit
          Left = 368
          Top = 8
          Width = 41
          Height = 21
          DataField = 'EntityID'
          DataSource = dtmMain.dtsEntID
          TabOrder = 0
          Visible = False
          OnChange = edtIDChange
        end
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 219
      Width = 646
      Height = 160
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 646
        Height = 20
        Align = alTop
        AutoSize = False
        Caption = '  Payment summary'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object grdPay: TDBStyleGrid
        Left = 0
        Top = 20
        Width = 646
        Height = 140
        Align = alClient
        DataSource = dtmLS.dtsLoanCons
        Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdLoanDrawColumnCell
        AllowSort = False
        Columns = <
          item
            Expanded = False
            FieldName = 'Status'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MthIns'
            Title.Alignment = taRightJustify
            Title.Caption = 'Inst.'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FeeToInsTot'
            Title.Alignment = taRightJustify
            Title.Caption = 'Fees.'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PayIns'
            Title.Alignment = taRightJustify
            Title.Caption = 'Pay. ins.'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ArrearsAmt'
            Title.Alignment = taRightJustify
            Title.Caption = 'Arrears amt'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AmountDue'
            Title.Alignment = taRightJustify
            Title.Caption = 'Amt. due'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LastAmtPay'
            Title.Alignment = taRightJustify
            Title.Caption = 'Last amt pay'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CashDep'
            Title.Alignment = taRightJustify
            Title.Caption = 'Cash dep.'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotSecAmt'
            Title.Alignment = taRightJustify
            Title.Caption = 'Tot. security'
            Width = 60
            Visible = True
          end>
      end
    end
  end
  object ppmReports: TPopupMenu
    Left = 568
    Top = 16
    object ConsolidatedPaymentReport1: TMenuItem
      Caption = 'Consolidated Payment Report'
      OnClick = ConsolidatedPaymentReport1Click
    end
  end
end
