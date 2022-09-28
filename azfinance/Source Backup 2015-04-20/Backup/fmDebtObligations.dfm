object frmDebtObligations: TfrmDebtObligations
  Left = 271
  Top = 268
  Width = 1097
  Height = 529
  Caption = 'Debt Obligations'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl3: TPageControl
    Left = 0
    Top = 0
    Width = 1081
    Height = 491
    ActivePage = tsDebt
    Align = alClient
    TabOrder = 0
    object tsDebt: TTabSheet
      Caption = 'Debt Obligations'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 458
        Width = 1073
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        Beveled = True
      end
      object pnlEnabled: TPanel
        Left = 0
        Top = 0
        Width = 1073
        Height = 458
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1073
          458)
        object btnPrintBureau1: TButton
          Left = 756
          Top = 431
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Print'
          TabOrder = 0
          Visible = False
          OnClick = btnPrintBureau1Click
        end
        object btnAddBureau1: TButton
          Left = 836
          Top = 431
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Add'
          TabOrder = 1
          Visible = False
          OnClick = btnAddBureau1Click
        end
        object btnEditBureau1: TButton
          Left = 916
          Top = 431
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Edit'
          TabOrder = 2
          Visible = False
          OnClick = btnAddBureau1Click
        end
        object btnDeleteBureau1: TButton
          Left = 996
          Top = 431
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Delete'
          TabOrder = 3
          Visible = False
        end
        object btnEnableBureau1: TButton
          Left = 672
          Top = 429
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Enable'
          TabOrder = 4
          Visible = False
          OnClick = btnDisableBureau1Click
        end
        object clbrOptions: TCoolBar
          Left = 0
          Top = 0
          Width = 1073
          Height = 30
          AutoSize = True
          BandBorderStyle = bsNone
          Bands = <
            item
              Control = tlbrOptions
              ImageIndex = -1
              MinHeight = 26
              Width = 1071
            end>
          EdgeBorders = [ebLeft, ebTop, ebBottom]
          object tlbrOptions: TToolBar
            Left = 9
            Top = 0
            Width = 1058
            Height = 26
            AutoSize = True
            BorderWidth = 1
            ButtonWidth = 61
            Caption = 'tlbrOptions'
            EdgeBorders = []
            Flat = True
            Images = dtmMain.imglstMain
            List = True
            ShowCaptions = True
            TabOrder = 0
            object btnAddBureau: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Add'
              Enabled = False
              ImageIndex = 3
              OnClick = btnAddBureau1Click
            end
            object btnEditBureau: TToolButton
              Left = 50
              Top = 0
              AutoSize = True
              Caption = 'Edit'
              Enabled = False
              ImageIndex = 4
              OnClick = btnAddBureau1Click
            end
            object btnEnableBureau: TToolButton
              Left = 99
              Top = 0
              AutoSize = True
              Caption = 'Enable'
              Enabled = False
              ImageIndex = 6
              OnClick = btnDisableBureau1Click
            end
            object btnDisableBureau: TToolButton
              Left = 162
              Top = 0
              AutoSize = True
              Caption = 'Disable'
              Enabled = False
              ImageIndex = 25
              OnClick = btnDisableBureau1Click
            end
            object btnDelete: TToolButton
              Left = 227
              Top = 0
              Caption = 'Delete'
              Enabled = False
              ImageIndex = 7
              OnClick = btnDeleteClick
            end
            object btnPrintBureau: TToolButton
              Left = 288
              Top = 0
              Caption = 'Print'
              Enabled = False
              ImageIndex = 1
              OnClick = btnPrintBureau1Click
            end
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 318
          Width = 1073
          Height = 105
          Caption = 'Notes'
          TabOrder = 6
          object Splitter2: TSplitter
            Left = 2
            Top = 15
            Height = 88
          end
          object Notes: TMemo
            Left = 5
            Top = 15
            Width = 1066
            Height = 88
            Align = alClient
            Lines.Strings = (
              'Memo1')
            ReadOnly = True
            TabOrder = 0
          end
        end
        object TGroupBox
          Left = 0
          Top = 30
          Width = 1073
          Height = 283
          Align = alTop
          TabOrder = 7
          object grdBUAccEnabled: TDBGrid
            Left = 2
            Top = 15
            Width = 1069
            Height = 266
            Align = alClient
            DataSource = dtmLoanC.dtsBureauAccounts
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = grdBUAccEnabledDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Source'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Subscriber'
                Title.Caption = 'Company Name'
                Width = 170
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AccountNo'
                Title.Caption = 'Account No.'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AccountType'
                Title.Caption = 'Account Type'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OriginalInstalment'
                Title.Alignment = taRightJustify
                Title.Caption = 'Original Instalment'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Instalment'
                Title.Alignment = taRightJustify
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'OpenDate'
                Title.Alignment = taCenter
                Title.Caption = 'Date Opened'
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Period'
                Title.Alignment = taCenter
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CurrentBalance'
                Title.Alignment = taRightJustify
                Title.Caption = 'Balance'
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'LastUpdateDate'
                Title.Alignment = taCenter
                Title.Caption = 'Last Update Date'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 106
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Action'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ActionBy'
                Title.Caption = 'Action By'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ActionDate'
                Title.Alignment = taCenter
                Title.Caption = 'Action Date'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Notes'
                Visible = False
              end>
          end
          object GroupBox2: TGroupBox
            Left = 320
            Top = -16
            Width = 185
            Height = 17
            Caption = 'GroupBox2'
            TabOrder = 1
          end
        end
      end
    end
    object tsDebtNotes: TTabSheet
      Caption = 'Notes'
      object CoolBar10: TCoolBar
        Left = 0
        Top = 0
        Width = 1081
        Height = 30
        BandBorderStyle = bsNone
        Bands = <
          item
            Control = ToolBar10
            ImageIndex = -1
            MinHeight = 23
            Width = 1073
          end>
        BorderWidth = 1
        object ToolBar10: TToolBar
          Left = 9
          Top = 0
          Width = 1060
          Height = 23
          ButtonWidth = 86
          Caption = 'ToolBar1'
          EdgeBorders = []
          Flat = True
          Images = dtmMain.imglstMain
          List = True
          ShowCaptions = True
          TabOrder = 0
          object btnNewDebtNote: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = 'New Note'
            ImageIndex = 3
            OnClick = btnNewDebtNoteClick
          end
          object btnEditDebtNotes: TToolButton
            Left = 78
            Top = 0
            AutoSize = True
            Caption = 'Amend Note'
            ImageIndex = 4
            OnClick = btnEditDebtNotesClick
          end
        end
      end
      object rdtDebt: TRichEdit
        Left = 0
        Top = 30
        Width = 1081
        Height = 437
        Align = alClient
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
  end
  object edtSource: TDBEdit
    Left = 168
    Top = 88
    Width = 97
    Height = 21
    DataField = 'Source'
    DataSource = dtmLoanC.dtsBureauAccounts
    TabOrder = 1
    Visible = False
    OnChange = edtSourceChange
  end
  object imlOverride: TImageList
    Left = 220
    Top = 380
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B5A6B00734A5A00734A5A007B526300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5949C00C6ADB500CEB5B500C6ADAD00BD9C9C00A5848400845A6B008C6B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010841000189C
      180031A5310039AD390039AD3900107B100031942900217318005A524200736B
      5A0000000000000000000000000000000000000000000000000000000000D6CE
      CE00E7E7E700E7DEDE00DED6D600D6BDBD00BDA5A500A56B6B00BD8C8C008C63
      6B00CEB5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000021A5210031AD
      31004ABD4A0052C65200399C39008CBD7B0052BD520042BD4200217318004A42
      2900000000000000000000000000000000000000000000000000E7D6D600EFEF
      EF00F7F7F700EFEFEF00E7DEDE00D6C6C600BD8C8C009C5A5A00B5848400B584
      8C00CEB5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000299C29004ABD
      4A006BCE6B006BC66B00F7FFEF00F7FFEF0063C6630063CE630031A531004A6B
      390000000000000000000000000000000000000000000000000000000000EFEF
      EF00EFE7E700F7F7F700E7E7E700D6B5B500A56363009C525200B5848400B58C
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004ABD
      4A0073CE730052A54A00FFFFFF00FFFFFF006BC66B0073CE7300319C31000000
      000000000000000000000000000000000000000000000000000000000000E7D6
      D600CE9C8C00DEB5B500D6A5A500CE9494009C4242009C4242009C636B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018734A003984AD00217BBD00428CAD0063BD6300399C3900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7A56300FFB53100F7C67B00DEADA500BD6B6B00A5424200845A63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000187BC600218CE700298CE700218CE700296B520000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEC6
      C600EFA55A00FFB53100FFB53100FFB53900F7BD7300E7AD8C00B57B7B008C5A
      6300947384000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000297B
      AD00399CFF00399CFF00399CFF00399CFF00298CE70039525200000000000000
      000000000000000000000000000000000000000000000000000000000000D6BD
      BD00EFAD5200FFBD4A00FFC65200FFC65200FFC65200FFBD4A00FFB54A00DE8C
      6B008C6B73000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002184
      C60042A5FF0042A5FF0042A5FF0042A5FF00399CF700315A6B00000000000000
      000000000000000000000000000000000000000000000000000000000000CEAD
      AD00FFC65200FFCE6300FFCE6B00FFCE6B00FFCE6B00FFCE6300FFC65200E794
      5A00947B84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006BA5C60042A5
      F7004AB5FF0052B5FF0052BDFF0052B5FF004AADFF0039739400000000000000
      000000000000000000000000000000000000000000000000000000000000E7C6
      B500FFCE6B00FFD67300FFDE8400FFDE8400FFDE8400FFD67B00FFCE6B00C684
      6300BD9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005294BD0042A5
      EF005ABDFF005ABDFF0052B5F7004AB5EF0052B5F70039738C00000000000000
      0000000000000000000000000000000000000000000000000000DECED600EFCE
      A500FFD67300FFE78C00FFE79C00FFEF9C00FFE79C00FFE78C00FFD67B00BD84
      6B00D6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063849C002173
      A5004A94C6006BADD60063ADF7004A9CE700216BA50000000000000000000000
      0000000000000000000000000000000000000000000000000000D6CECE00EFCE
      9C00FFDE8C00FFEF9C00FFF7AD00FFF7B500FFF7AD00FFEFA500FFE78C00A56B
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002173
      A5006BADD6008CBDE70073BDE7005AADDE00316B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000D6CECE00B5A5
      8C00D6BD9400E7D6A500FFF7BD00FFFFCE00FFFFC600FFF7AD00FFE79C009C6B
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BA5BD004A94B5004A8CAD0063849C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D6D600D6D6
      D600CEC6C600D6C6C600C6ADAD00BDA5A500CEB59C00DEC69C00DEBD9400A57B
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7DEDE00DECECE00D6BDBD00C69C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFC3F00000000FFFFF00F00000000
      C00FE00700000000C00FC00700000000C00FE00F00000000E01FE01F00000000
      F03FF01F00000000F07FE00700000000E03FE00700000000E03FE00700000000
      C03FE00700000000C03FC00700000000C07FC00F00000000E07FC00F00000000
      F0FFC00F00000000FFFFFE1F0000000000000000000000000000000000000000
      000000000000}
  end
  object ADOQueryGetSales: TADOQuery
    Connection = dtmMain.dbData
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP(1)Username'
      '  FROM SEC_UserSubDepartment US'
      
        '  INNER JOIN SEC_SubDepartment SD ON US.SubDepartmentID = SD.Sub' +
        'DepartmentID'
      '  AND SD.DepartmentID = 8 --- *** Sales'
      '  INNER JOIN SEC_User SU ON US.UserID = SU.UserID'
      '  WHERE SU.UserID =:UserID'
      '  ORDER BY US.EffectiveDate DESC')
    Left = 429
    Top = 24
  end
  object ADOQueryGetAccountStatus: TADOQuery
    Connection = dtmMain.dbData
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
      'SELECT LD.[status] AS Status '
      ' FROM lsLoanDetail LD '
      'WHERE LD.LoanID =:LoanID')
    Left = 469
    Top = 24
  end
end
