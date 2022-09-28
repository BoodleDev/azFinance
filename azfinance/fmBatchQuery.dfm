inherited frmBatchQuery: TfrmBatchQuery
  Tag = 1005
  Left = 219
  Top = 242
  Width = 654
  Height = 321
  Caption = 'Batch queries'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 579
    Width = 67
    Height = 287
    ButtonWidth = 67
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
    object btnExportQry: TToolButton
      Left = 0
      Top = 108
      Caption = 'Export query'
      ImageIndex = 18
      OnClick = btnExportQryClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 579
    Height = 287
    TabOrder = 2
  end
  object pnlBack: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 287
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object lblClient: TLabel
      Left = 3
      Top = 91
      Width = 53
      Height = 13
      Caption = 'Client code'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblBatch: TLabel
      Left = 3
      Top = 12
      Width = 39
      Height = 13
      Caption = 'Batches'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblTransCode: TLabel
      Left = 3
      Top = 65
      Width = 114
      Height = 13
      Caption = 'Transaction type / code'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblUser: TLabel
      Left = 3
      Top = 38
      Width = 36
      Height = 13
      Caption = 'User ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 235
      Top = 91
      Width = 65
      Height = 13
      Caption = 'Reference no'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 3
      Top = 115
      Width = 54
      Height = 13
      Caption = 'Current sort'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblSort: TLabel
      Left = 72
      Top = 115
      Width = 26
      Height = 13
      Caption = 'None'
    end
    object Label2: TLabel
      Left = 272
      Top = 11
      Width = 28
      Height = 14
      Caption = 'Dates'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Panel1: TPanel
      Left = 0
      Top = 130
      Width = 579
      Height = 157
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Panel1'
      TabOrder = 0
      object grdBatch: TDBGrdClr
        Left = 1
        Top = 1
        Width = 577
        Height = 155
        Align = alClient
        DataSource = dtmBatchQuery.dtsBatchQry
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = grdBatchTitleClick
        OddColor = clInfoBk
        Columns = <
          item
            Expanded = False
            FieldName = 'BatchNo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EntCode'
            Title.Caption = 'Code'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanID'
            Title.Caption = 'Loan ID'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransCode'
            Title.Caption = 'Trans code'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EffectDate'
            Title.Caption = 'Effect date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValueDate'
            Title.Caption = 'Value date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PostDate'
            Title.Caption = 'Post date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UserID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo2'
            Visible = True
          end>
      end
    end
    object cbxBatches: TComboBox
      Left = 87
      Top = 8
      Width = 82
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'All'
        'One')
    end
    object cbxUser: TComboBox
      Left = 88
      Top = 34
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'All'
        'One')
    end
    object pnlEffDate: TPanel
      Left = 272
      Top = 37
      Width = 249
      Height = 36
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object Label4: TLabel
        Left = 4
        Top = 9
        Width = 23
        Height = 13
        Caption = 'From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 137
        Top = 9
        Width = 13
        Height = 13
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dtpFrom: TDateTimePicker
        Left = 41
        Top = 5
        Width = 90
        Height = 21
        Date = 36560.000000000000000000
        Time = 36560.000000000000000000
        TabOrder = 0
      end
      object dtpTo: TDateTimePicker
        Left = 155
        Top = 5
        Width = 90
        Height = 21
        Date = 36560.000000000000000000
        Time = 36560.000000000000000000
        TabOrder = 1
      end
    end
    object edtClient: TEdit
      Left = 88
      Top = 87
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edtRefNo: TEdit
      Left = 313
      Top = 87
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object edtBatchNo: TEdit
      Left = 88
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object edtTransTC: TNoEdit
      Left = 128
      Top = 61
      Width = 81
      Height = 21
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = '0'
      OnMouseMove = edtTransTCMouseMove
    end
    object cbxDates: TComboBox
      Left = 312
      Top = 8
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 8
      Items.Strings = (
        'None'
        'Effective date'
        'Value date'
        'Posted date')
    end
  end
end
