object frmGLTransDet: TfrmGLTransDet
  Tag = 1019
  Left = 293
  Top = 119
  Width = 1189
  Height = 620
  Caption = 'Transaction details'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tlbGL: TToolBar
    Left = 1112
    Top = 0
    Width = 69
    Height = 586
    Align = alRight
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 69
    Caption = 'tlbGL'
    EdgeBorders = []
    Flat = True
    Images = dtmMain.imglstMain
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    object btnExit1: TToolButton
      Left = 0
      Top = 0
      Caption = 'Exit'
      ImageIndex = 2
      Wrap = True
      OnClick = btnExit1Click
    end
    object btnStart: TToolButton
      Left = 0
      Top = 36
      Caption = 'Start request'
      ImageIndex = 27
      Wrap = True
      OnClick = btnStartClick
    end
    object btnStop: TToolButton
      Left = 0
      Top = 72
      Caption = 'Stop request'
      ImageIndex = 28
      Wrap = True
      OnClick = btnStopClick
    end
    object btnGetDet: TToolButton
      Left = 0
      Top = 108
      Caption = 'Get detail'
      ImageIndex = 16
      Wrap = True
      OnClick = btnGetDetClick
    end
    object btnExportQry: TToolButton
      Left = 0
      Top = 144
      Caption = 'Export Group'
      ImageIndex = 18
      Wrap = True
      OnClick = btnExportQryClick
    end
    object ToolButton1: TToolButton
      Left = 0
      Top = 180
      Caption = 'Export Detail'
      ImageIndex = 18
      OnClick = ToolButton1Click
    end
  end
  object TPanel
    Left = 0
    Top = 0
    Width = 1112
    Height = 586
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object spTrans: TSplitter
      Left = 0
      Top = 210
      Width = 1112
      Height = 5
      Cursor = crVSplit
      Align = alTop
      Beveled = True
      Color = clBtnFace
      ParentColor = False
    end
    object grdTransDet: TcdsSortGrd
      Left = 0
      Top = 266
      Width = 1112
      Height = 292
      Align = alClient
      DataSource = dtmLS2GL.dtsTransDet
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OddColor = clInfoBk
      SelColor = clNavy
      SelColorFont = clWhite
      SortLabel = lblSort
      Columns = <
        item
          Expanded = False
          FieldName = 'TransNo'
          Title.Caption = 'Trans. no'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BatchNo'
          Title.Caption = 'Batch no'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EntCode'
          Title.Caption = 'Client code'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountNo'
          Title.Caption = 'Loan Ref.'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TransCode'
          Title.Caption = 'Trans. code'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EffectDate'
          Title.Caption = 'Effect. date'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PostDate'
          Title.Caption = 'Post date'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RefNo'
          Title.Caption = 'Ref. no'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RefNo2'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UserID'
          Title.Caption = 'User ID'
          Visible = True
        end>
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1112
      Height = 90
      Align = alTop
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 1
      object edtTransCode: TDBEdit
        Left = 472
        Top = 8
        Width = 65
        Height = 21
        DataField = 'TransCode'
        DataSource = dtmLS2GL.dtsTransGrp
        TabOrder = 0
        Visible = False
        OnChange = edtTransCodeChange
      end
      object chbTransNo: TCheckBox
        Left = 216
        Top = 8
        Width = 121
        Height = 17
        Caption = 'Use transaction no.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = chbTransNoClick
      end
      object pnlDates: TPanel
        Left = 8
        Top = 26
        Width = 158
        Height = 60
        BevelInner = bvLowered
        ParentColor = True
        TabOrder = 2
        object Label1: TLabel
          Left = 32
          Top = 35
          Width = 12
          Height = 14
          Caption = 'To'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 32
          Top = 9
          Width = 24
          Height = 14
          Caption = 'From'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object dtpTo: TDateTimePicker
          Left = 64
          Top = 32
          Width = 89
          Height = 21
          Date = 37155.500000000000000000
          Time = 37155.500000000000000000
          TabOrder = 0
        end
        object dtpFrom: TDateTimePicker
          Left = 64
          Top = 6
          Width = 89
          Height = 21
          Date = 37155.000000000000000000
          Time = 37155.000000000000000000
          TabOrder = 1
        end
        object chbFrom: TCheckBox
          Left = 8
          Top = 8
          Width = 14
          Height = 17
          Checked = True
          State = cbChecked
          TabOrder = 2
          Visible = False
        end
      end
      object chbDates: TCheckBox
        Left = 8
        Top = 8
        Width = 116
        Height = 17
        Caption = 'Use effective dates'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 3
        OnClick = chbDatesClick
      end
      object pnlTransR: TPanel
        Left = 216
        Top = 26
        Width = 146
        Height = 60
        BevelInner = bvLowered
        ParentColor = True
        TabOrder = 4
        Visible = False
        object Label13: TLabel
          Left = 8
          Top = 35
          Width = 12
          Height = 14
          Caption = 'To'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object From: TLabel
          Left = 8
          Top = 9
          Width = 24
          Height = 14
          Caption = 'From'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object edtTo: TNoEdit
          Left = 48
          Top = 32
          Width = 91
          Height = 21
          TabOrder = 0
          Text = '0'
        end
        object edtFrom: TNoEdit
          Left = 48
          Top = 6
          Width = 91
          Height = 21
          TabOrder = 1
          Text = '0'
        end
      end
    end
    object pnlDetTop: TPanel
      Left = 0
      Top = 215
      Width = 1112
      Height = 51
      Align = alTop
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 2
      object lblAllFor: TLabel
        Left = 280
        Top = 11
        Width = 57
        Height = 14
        Caption = 'All trans for'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblTransD: TLabel
        Left = 8
        Top = 11
        Width = 88
        Height = 14
        Caption = 'Transaction range'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblTransR: TLabel
        Left = 104
        Top = 11
        Width = 24
        Height = 14
        Caption = 'none'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 29
        Width = 58
        Height = 14
        Caption = 'Current sort'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblSort: TLabel
        Left = 104
        Top = 29
        Width = 24
        Height = 14
        Caption = 'none'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cbxAllFor: TComboBox
        Left = 344
        Top = 8
        Width = 105
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          'Trans code'
          'Trans type'
          'GL acc no')
      end
      object edtAllFor: TNoEdit
        Left = 456
        Top = 8
        Width = 95
        Height = 21
        TabOrder = 1
        Text = '0'
      end
    end
    object grdTransGrp: TDBGrdClr
      Left = 0
      Top = 90
      Width = 1112
      Height = 120
      Align = alTop
      DataSource = dtmLS2GL.dtsTransGrp
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdTransGrpDrawColumnCell
      OddColor = clInfoBk
      Columns = <
        item
          Expanded = False
          FieldName = 'TransCode'
          Title.Caption = 'Trans. code'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Description'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Caption = 'Debit'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Caption = 'Credit'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GLAccNo'
          Title.Caption = 'GL acc no'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DC'
          Visible = False
        end>
    end
    object pnlBot: TPanel
      Left = 0
      Top = 558
      Width = 1112
      Height = 28
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 4
      object Label3: TLabel
        Left = 8
        Top = 7
        Width = 29
        Height = 14
        Caption = 'Totals'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 104
        Top = 7
        Width = 38
        Height = 14
        Caption = 'records'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 344
        Top = 7
        Width = 35
        Height = 14
        Caption = 'amount'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dbtTotCnt: TDBText
        Left = 152
        Top = 7
        Width = 46
        Height = 14
        AutoSize = True
        DataField = 'recCnt'
        DataSource = dtmLS2GL.dtsSumTots
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbtTotAmt: TDBText
        Left = 392
        Top = 7
        Width = 49
        Height = 14
        AutoSize = True
        DataField = 'TotSum'
        DataSource = dtmLS2GL.dtsSumTots
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
