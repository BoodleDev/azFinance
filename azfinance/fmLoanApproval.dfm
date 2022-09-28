object frmLoanApproval: TfrmLoanApproval
  Left = 275
  Top = 196
  Width = 674
  Height = 493
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Loan Approval'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 275
    Width = 666
    Height = 5
    Cursor = crVSplit
    Align = alBottom
  end
  object CoolBar3: TCoolBar
    Left = 0
    Top = 0
    Width = 666
    Height = 30
    BandBorderStyle = bsNone
    Bands = <
      item
        Control = ToolBar3
        ImageIndex = -1
        MinHeight = 26
        Width = 664
      end>
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    object ToolBar3: TToolBar
      Left = 9
      Top = 0
      Width = 651
      Height = 26
      BorderWidth = 1
      ButtonWidth = 60
      Caption = 'ToolBar3'
      EdgeBorders = []
      Flat = True
      Images = dtmMain.imglstMain
      List = True
      ShowCaptions = True
      TabOrder = 0
      object btnClose: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = 'Close'
        ImageIndex = 2
        OnClick = btnCloseClick
      end
      object btnSave: TToolButton
        Left = 57
        Top = 0
        AutoSize = True
        Caption = 'Save'
        ImageIndex = 5
        OnClick = btnSaveClick
      end
      object btnCancel: TToolButton
        Left = 113
        Top = 0
        AutoSize = True
        Caption = 'Cancel'
        ImageIndex = 6
        OnClick = btnCancelClick
      end
    end
  end
  object pnlSettlements: TPanel
    Left = 0
    Top = 97
    Width = 666
    Height = 178
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      666
      178)
    object GroupBox2: TGroupBox
      Left = 15
      Top = 10
      Width = 633
      Height = 160
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Settlements'
      TabOrder = 0
      DesignSize = (
        633
        160)
      object Panel2: TPanel
        Left = 16
        Top = 20
        Width = 601
        Height = 132
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        object CoolBar2: TCoolBar
          Left = 0
          Top = 0
          Width = 601
          Height = 30
          BandBorderStyle = bsNone
          Bands = <
            item
              Control = ToolBar2
              ImageIndex = -1
              MinHeight = 26
              Width = 597
            end>
          object ToolBar2: TToolBar
            Left = 9
            Top = 0
            Width = 584
            Height = 26
            BorderWidth = 1
            ButtonWidth = 60
            Caption = 'ToolBar1'
            EdgeBorders = []
            Flat = True
            Images = dtmMain.imglstMain
            List = True
            ShowCaptions = True
            TabOrder = 0
            object btnNewAffordSettle: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'New'
              ImageIndex = 3
              OnClick = btnNewAffordSettleClick
            end
            object ToolButton2: TToolButton
              Left = 53
              Top = 0
              AutoSize = True
              Caption = 'Amend'
              ImageIndex = 4
              OnClick = ToolButton2Click
            end
            object ToolButton3: TToolButton
              Left = 117
              Top = 0
              Caption = 'Delete'
              ImageIndex = 7
              OnClick = ToolButton3Click
            end
          end
        end
        object grdAffordSettle: TDBStyleGrid
          Left = 0
          Top = 30
          Width = 601
          Height = 102
          Align = alClient
          DataSource = dtmLoanC.dtsAFSettle
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          AllowSort = False
          ColumnsResize = False
          ColumnsMove = False
          Columns = <
            item
              Expanded = False
              FieldName = 'SettleDesc'
              Title.Caption = 'Settlement Type'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Description'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end>
        end
      end
    end
  end
  object pnlNotes: TPanel
    Left = 0
    Top = 280
    Width = 666
    Height = 179
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      666
      179)
    object GroupBox1: TGroupBox
      Left = 16
      Top = 4
      Width = 633
      Height = 160
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Notes'
      TabOrder = 0
      DesignSize = (
        633
        160)
      object Panel1: TPanel
        Left = 16
        Top = 20
        Width = 601
        Height = 128
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        object CoolBar1: TCoolBar
          Left = 0
          Top = 0
          Width = 601
          Height = 30
          BandBorderStyle = bsNone
          Bands = <
            item
              Control = ToolBar1
              ImageIndex = -1
              MinHeight = 26
              Width = 597
            end>
          object ToolBar1: TToolBar
            Left = 9
            Top = 0
            Width = 584
            Height = 26
            BorderWidth = 1
            ButtonWidth = 76
            Caption = 'ToolBar1'
            EdgeBorders = []
            Flat = True
            Images = dtmMain.imglstMain
            List = True
            ShowCaptions = True
            TabOrder = 0
            object btnNewNote: TToolButton
              Left = 0
              Top = 0
              Caption = 'New Entry'
              ImageIndex = 3
              OnClick = btnNewNoteClick
            end
            object btnNewOffer: TToolButton
              Left = 76
              Top = 0
              AutoSize = True
              Caption = 'New Offer'
              ImageIndex = 3
              OnClick = btnNewOfferClick
            end
          end
        end
        object rchNotes: TDBRichEdit
          Left = 0
          Top = 30
          Width = 601
          Height = 98
          Align = alClient
          DataField = 'Notes'
          DataSource = dtmLoanC.dtsAfLoans
          ScrollBars = ssBoth
          TabOrder = 1
        end
      end
    end
  end
  object pnlOffer: TPanel
    Left = 0
    Top = 30
    Width = 666
    Height = 67
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label7: TLabel
      Left = 24
      Top = 16
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Amount'
    end
    object Label45: TLabel
      Left = 180
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Term'
    end
    object Label46: TLabel
      Left = 300
      Top = 16
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Instalment'
    end
    object Label49: TLabel
      Left = 438
      Top = 16
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Action'
    end
    object lblClientReceive: TLabel
      Left = 56
      Top = 51
      Width = 268
      Height = 13
      Caption = 'Client to receive R 1500.00 ( R 2000.00 LESS R 500.00)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Image2: TImage
      Left = 35
      Top = 49
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036050000424D360500000000000036040000280000001000
        000010000000010008000000000000010000F30E0000F30E0000000100000001
        0000080000003110180018394A001042420010424A000842520008525200086B
        7300396B7B00FF00FF0018A5C6004AC6E70073DEF7009CDEEF0094F7FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000090909090909090909090909090909090909090909090909090909090909
        090909090A0A0A0A0A0A0A0A0A0A0A0A0909090D0E0C0C0C0C04030C0C0C0C0B
        0A0909090E0C0C0C0C05020C0C0C0C0A090909090D0E0C0C0C0C0C0C0C0C0B0A
        09090909090E0C0C0C0C0C0C0C0C0A0909090909090D0E0C0C07080C0C0B0A09
        0909090909090E0C0C07080C0C0A09090909090909090D0E0C04010C0B0A0909
        090909090909090E0C00010C0A090909090909090909090D0E06030B0A090909
        09090909090909090E0C0C0A0909090909090909090909090D0E0B0A09090909
        0909090909090909090E0A090909090909090909090909090909090909090909
        0909}
      Transparent = True
    end
    object edtAffAmount: TDBEdit
      Left = 64
      Top = 12
      Width = 105
      Height = 21
      DataField = 'ofAmount'
      DataSource = dtmLoanC.dtsAfLoans
      TabOrder = 0
      OnExit = edtAffAmountExit
    end
    object edtAffTerm: TDBEdit
      Left = 208
      Top = 12
      Width = 73
      Height = 21
      DataField = 'ofTerm'
      DataSource = dtmLoanC.dtsAfLoans
      TabOrder = 1
    end
    object edtAffInstal: TDBEdit
      Left = 352
      Top = 12
      Width = 73
      Height = 21
      DataField = 'ofInstalment'
      DataSource = dtmLoanC.dtsAfLoans
      TabOrder = 2
    end
    object cmbAffAction: TDBLookupComboBox
      Left = 472
      Top = 12
      Width = 137
      Height = 21
      DataField = 'ofAction'
      DataSource = dtmLoanC.dtsAfLoans
      KeyField = 'ActionID'
      ListField = 'Description'
      ListSource = dtmLoanC.dtsAfActions
      TabOrder = 3
    end
  end
  object ppmAffordSettle: TPopupMenu
    Left = 524
    Top = 369
    object LoanSettlement1: TMenuItem
      Tag = 1
      Caption = 'Loan Settlement'
      OnClick = LoanSettlement1Click
    end
    object LoanArrearsSettlement1: TMenuItem
      Tag = 2
      Caption = 'Loan Arrears Settlement'
      OnClick = LoanSettlement1Click
    end
    object N3rdPartySettlement1: TMenuItem
      Tag = 3
      Caption = '3rd Party Settlement'
      OnClick = LoanSettlement1Click
    end
  end
end
