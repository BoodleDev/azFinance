inherited frmNLRToDo: TfrmNLRToDo
  Tag = 1077
  Left = 223
  Top = 81
  Width = 655
  Height = 454
  Caption = 'NLR Transaction'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 607
    Height = 420
    ButtonWidth = 47
    inherited btnNew: TToolButton
      Visible = False
    end
    inherited btnAmend: TToolButton
      Visible = False
    end
    inherited btnSave: TToolButton
      Visible = False
    end
    inherited btnCancel: TToolButton
      Visible = False
    end
    inherited btnDelete: TToolButton
      Wrap = True
      Visible = False
    end
    object btnAdd: TToolButton
      Left = 0
      Top = 216
      Caption = 'Add'
      ImageIndex = 18
      Wrap = True
      OnClick = btnAddClick
    end
    object btnAddAll: TToolButton
      Left = 0
      Top = 252
      Caption = 'Add all'
      ImageIndex = 26
      Wrap = True
      OnClick = btnAddAllClick
    end
    object btnRemove: TToolButton
      Left = 0
      Top = 288
      Caption = 'Remove'
      ImageIndex = 9
      Wrap = True
      OnClick = btnRemoveClick
    end
    object btnClear: TToolButton
      Left = 0
      Top = 324
      Caption = 'Clear'
      ImageIndex = 7
      OnClick = btnClearClick
    end
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 607
    Height = 420
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 201
      Width = 607
      Height = 219
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      ParentColor = True
      TabOrder = 0
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 607
        Height = 19
        Align = alTop
        AutoSize = False
        Caption = 'NLR queued transactions'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object grdNLRToDo: TDBGrdClr
        Left = 0
        Top = 19
        Width = 607
        Height = 200
        Align = alClient
        DataSource = dtmNLR.dtsNLRToDo
        FixedColor = clInfoBk
        Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdNLRToDoDrawColumnCell
        OnDblClick = grdNLRToDoDblClick
        OddColor = clInfoBk
        Columns = <
          item
            Expanded = False
            FieldName = 'LUCode'
            Title.Caption = 'Client code'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LULoanKey'
            Title.Caption = 'Loan code'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LUPayIns'
            Title.Caption = 'Amount to finance'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransType'
            Title.Caption = 'Transaction type'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StatusCode'
            Title.Caption = 'Status'
            Width = 79
            Visible = True
          end>
      end
      object cbShowALL: TCheckBox
        Left = 128
        Top = 2
        Width = 63
        Height = 15
        Caption = 'Show all'
        TabOrder = 1
        OnClick = cbShowALLClick
      end
      object DBEdit1: TDBEdit
        Left = 224
        Top = 0
        Width = 121
        Height = 21
        DataField = 'EntityID'
        DataSource = dtmMain.dtsEntID
        TabOrder = 2
        Visible = False
        OnChange = DBEdit1Change
      end
    end
    object grdPSN: TDBGrdClr
      Left = 0
      Top = 0
      Width = 607
      Height = 201
      Align = alTop
      DataSource = dtmNLR.dtsData
      FixedColor = clInfoBk
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = grdPSNDblClick
      OddColor = clInfoBk
      Columns = <
        item
          Expanded = False
          FieldName = 'EntCode'
          Title.Caption = 'Client code'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanKey'
          Title.Caption = 'LC'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 193
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name2'
          Title.Caption = 'Surname'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RefFld1'
          Title.Caption = 'Ref Fld'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ActiveInd'
          Title.Caption = 'Status'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QryNo'
          Title.Caption = 'Query no'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RegNo'
          Title.Caption = 'Registration'
          Visible = True
        end>
    end
  end
  inherited ppmDBBase: TPopupMenu
    Left = 488
    Top = 224
  end
end
