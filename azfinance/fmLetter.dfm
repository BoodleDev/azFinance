object frmLetter: TfrmLetter
  Tag = 1024
  Left = 218
  Top = 199
  Width = 637
  Height = 373
  Caption = 'Letters'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 137
    Width = 629
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object redbLetter: TDBRichEdit
    Left = -8
    Top = 145
    Width = 629
    Height = 202
    DataField = 'LetterBody'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    Visible = False
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 629
    Height = 137
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object grdDataset: TDBGrdClr
      Left = 0
      Top = 59
      Width = 629
      Height = 78
      Align = alClient
      DataSource = dtmLS.dtsEntLoan
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdDatasetDrawColumnCell
      OddColor = clInfoBk
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'LoanID'
          Title.Caption = 'Loan ID'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanType'
          Title.Caption = 'LT'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanPeriod'
          Title.Caption = 'Period'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AmtToFin'
          Title.Caption = 'Loan amount'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PayIns'
          Title.Caption = 'Instalment'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IntRate'
          Title.Caption = 'Rate'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotInterest'
          Title.Caption = 'Total int.'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StartDate'
          Title.Caption = 'Start date'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FirstInsDate'
          Title.Caption = 'Instalment date'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          Visible = False
        end>
    end
    object pnlCurrentDetail: TPanel
      Tag = 9
      Left = 0
      Top = 0
      Width = 629
      Height = 59
      Align = alTop
      BevelOuter = bvNone
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
        Left = 270
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
        Width = 66
        Height = 14
        Caption = 'Home number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 512
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
        Left = 512
        Top = 40
        Width = 41
        Height = 14
        AutoSize = True
        DataField = 'TelNo2'
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
        Width = 64
        Height = 14
        Caption = 'Work number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 141
    Width = 629
    Height = 198
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 629
      Height = 88
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentColor = True
      TabOrder = 0
      object Label3: TLabel
        Left = 6
        Top = 9
        Width = 34
        Height = 14
        Caption = 'Letters'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnPrepare: TSpeedButton
        Left = 556
        Top = 1
        Width = 72
        Height = 42
        Anchors = [akTop, akRight, akBottom]
        Caption = 'Prepare letter'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
          1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
          1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
          193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
          11155557F755F777777555000755033305555577755F75F77F55555555503335
          0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
          05555757F75F75557F5505000333555505557F777FF755557F55000000355557
          07557777777F55557F5555000005555707555577777FF5557F55553000075557
          0755557F7777FFF5755555335000005555555577577777555555}
        Layout = blGlyphTop
        NumGlyphs = 2
        Spacing = 2
        OnClick = btnPrepareClick
      end
      object btnPrint: TSpeedButton
        Left = 556
        Top = 43
        Width = 72
        Height = 42
        Anchors = [akTop, akRight, akBottom]
        Caption = 'Print letter'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        Layout = blGlyphTop
        NumGlyphs = 2
        Spacing = 2
        OnClick = btnPrintClick
      end
      object lblCust1: TLabel
        Left = 8
        Top = 39
        Width = 74
        Height = 14
        Caption = 'Custom value 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblCust2: TLabel
        Left = 8
        Top = 63
        Width = 74
        Height = 14
        Caption = 'Custom value 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblCust3: TLabel
        Left = 293
        Top = 39
        Width = 74
        Height = 14
        Caption = 'Custom value 3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblCust4: TLabel
        Left = 293
        Top = 63
        Width = 74
        Height = 14
        Caption = 'Custom value 4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object cbxLetterList: TComboBox
        Left = 56
        Top = 6
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        Sorted = True
        TabOrder = 0
        OnChange = cbxLetterListChange
      end
      object edtCustom1: TEdit
        Left = 99
        Top = 36
        Width = 150
        Height = 21
        TabOrder = 1
      end
      object edtCustom2: TEdit
        Left = 99
        Top = 60
        Width = 150
        Height = 21
        TabOrder = 2
      end
      object edtCustom3: TEdit
        Left = 379
        Top = 36
        Width = 150
        Height = 21
        TabOrder = 3
      end
      object edtCustom4: TEdit
        Left = 379
        Top = 60
        Width = 150
        Height = 21
        TabOrder = 4
      end
    end
    object reMemLetter: TRichEdit
      Left = 0
      Top = 88
      Width = 629
      Height = 110
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        'Letter to be printed ...')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object dlgPrint: TPrintDialog
    Left = 456
    Top = 149
  end
end
