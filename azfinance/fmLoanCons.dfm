inherited frmLoanCons: TfrmLoanCons
  Tag = 1026
  Left = 247
  Top = 103
  Width = 637
  Height = 385
  Caption = 'Client loans summary'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 593
    Height = 351
  end
  inherited pnlBBase: TPanel
    Width = 593
    Height = 351
    object Splitter1: TSplitter
      Left = 0
      Top = 209
      Width = 593
      Height = 4
      Cursor = crVSplit
      Align = alTop
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 213
      Width = 593
      Height = 138
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 593
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
      object grdPay: TDBGrdClr
        Left = 0
        Top = 20
        Width = 593
        Height = 118
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
        OddColor = clInfoBk
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
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 593
      Height = 209
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label2: TLabel
        Left = 0
        Top = 59
        Width = 593
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
      object grdLoan: TDBGrdClr
        Left = 0
        Top = 79
        Width = 593
        Height = 130
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
        OddColor = clInfoBk
        Columns = <
          item
            Expanded = False
            FieldName = 'Status'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanPrd'
            Title.Caption = 'Prd'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExtendPrd'
            Title.Caption = 'E. prd'
            Width = 24
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
        Width = 593
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
  end
end
