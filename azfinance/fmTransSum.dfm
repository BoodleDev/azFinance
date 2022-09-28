inherited frmTransSum: TfrmTransSum
  Tag = 1038
  Left = 130
  Top = 132
  Width = 645
  Height = 397
  Caption = 'Transaction summary'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 601
    Height = 363
    object btnFilter: TToolButton
      Left = 0
      Top = 36
      Caption = 'Filter'
      ImageIndex = 8
      OnClick = btnFilterClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 601
    Height = 363
    TabOrder = 2
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 363
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object lblFromDate: TLabel
      Left = 16
      Top = 12
      Width = 47
      Height = 13
      Caption = 'From date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblToDate: TLabel
      Left = 226
      Top = 12
      Width = 37
      Height = 13
      Caption = 'To date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 39
      Width = 40
      Height = 13
      Caption = 'Order by'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblOrdFilter: TLabel
      Left = 226
      Top = 39
      Width = 49
      Height = 13
      Caption = 'Filter order'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object grdTSum: TDBGrdClr
      Left = 0
      Top = 61
      Width = 601
      Height = 302
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtmReports.dtsTSum
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OddColor = clInfoBk
      Columns = <
        item
          Expanded = False
          FieldName = 'TsYear'
          Title.Caption = 'Year'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TsMonth'
          Title.Caption = 'Month'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TransType'
          Title.Caption = 'Type'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TransDescription'
          Title.Caption = 'Trans type description'
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TransCode'
          Title.Caption = 'Code'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Description'
          Title.Caption = 'Trans code description'
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Alignment = taRightJustify
          Width = 99
          Visible = True
        end>
    end
    object cbFrom: TComboBox
      Left = 69
      Top = 8
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbFromChange
    end
    object cbTo: TComboBox
      Left = 280
      Top = 8
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbFromChange
    end
    object cbxOrder: TComboBox
      Left = 69
      Top = 35
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = cbxOrderChange
      Items.Strings = (
        'Year-Month'
        'Type'
        'Code')
    end
    object edtFilter: TEdit
      Left = 280
      Top = 35
      Width = 105
      Height = 21
      TabOrder = 3
    end
  end
end
