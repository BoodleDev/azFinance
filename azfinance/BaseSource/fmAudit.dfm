inherited frmAudit: TfrmAudit
  Left = 80
  Top = 60
  Width = 637
  Height = 443
  Caption = 'Audit'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 581
    Width = 48
    Height = 414
    ButtonWidth = 48
    inherited btnExit: TToolButton
      Caption = '    Exit    '
    end
    object btnDelete: TToolButton
      Left = 0
      Top = 36
      Caption = 'Delete'
      ImageIndex = 7
      Wrap = True
      Visible = False
      OnClick = btnDeleteClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 581
    Height = 414
    object Splitter1: TSplitter
      Left = 0
      Top = 193
      Width = 581
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object pnlT: TPanel
      Left = 0
      Top = 0
      Width = 581
      Height = 57
      Align = alTop
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 3
        Width = 69
        Height = 14
        Caption = 'Audit details'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 38
        Top = 20
        Width = 44
        Height = 14
        Caption = 'Category'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblFilter: TLabel
        Left = 280
        Top = 4
        Width = 24
        Height = 13
        Caption = 'Filter'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbxAuditCat: TComboBox
        Left = 88
        Top = 17
        Width = 169
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbxAuditCatChange
      end
      object edtFilter: TEdit
        Left = 280
        Top = 17
        Width = 145
        Height = 21
        TabOrder = 1
        OnChange = edtFilterChange
      end
    end
    object pnlClientDtl: TPanel
      Left = 0
      Top = 57
      Width = 581
      Height = 136
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object pnlCurrentDtl: TPanel
        Tag = 9
        Left = 0
        Top = 73
        Width = 581
        Height = 63
        Align = alBottom
        BevelInner = bvLowered
        ParentColor = True
        TabOrder = 0
        Visible = False
        object Label8: TLabel
          Left = 9
          Top = 3
          Width = 37
          Height = 14
          Caption = 'Details'
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
      object grdEntLst: TADOgrdCFS
        Left = 0
        Top = 0
        Width = 581
        Height = 73
        Align = alClient
        DataSource = dtmAudit.dtsEntList
        Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OddColor = clWhite
        SelFldLbl = lblFilter
        SelColor = clNavy
        SelColorFont = clWhite
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 196
      Width = 581
      Height = 218
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object Splitter2: TSplitter
        Left = 0
        Top = 73
        Width = 581
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Panel2: TPanel
        Left = 0
        Top = 76
        Width = 581
        Height = 142
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 581
          Height = 14
          Align = alTop
          Caption = '  Audit Record\s'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object grdAdt: TADOgrdCFS
          Left = 0
          Top = 14
          Width = 581
          Height = 128
          Align = alClient
          DataSource = dtmAudit.dtsAudit
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = grdAdtDrawColumnCell
          OnEnter = grdAdtEnter
          OnExit = grdAdtExit
          OddColor = clInfoBk
          SelColor = clNavy
          SelColorFont = clWhite
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 581
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 581
          Height = 14
          Align = alTop
          Caption = '  Current Record\s'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object grdCurr: TADOgrdCFS
          Left = 0
          Top = 14
          Width = 581
          Height = 59
          Align = alClient
          DataSource = dtmAudit.dtsCurrData
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OddColor = clInfoBk
          SelColor = clNavy
          SelColorFont = clWhite
        end
      end
    end
  end
end
