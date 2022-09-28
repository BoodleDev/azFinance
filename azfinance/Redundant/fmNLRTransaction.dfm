object frmNLRTransaction: TfrmNLRTransaction
  Tag = 1078
  Left = 178
  Top = 96
  Width = 640
  Height = 444
  Caption = 'NLR transaction queue'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tlbDBBase: TToolBar
    Left = 564
    Top = 0
    Width = 68
    Height = 410
    Align = alRight
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 68
    Color = clBtnFace
    EdgeBorders = []
    Flat = True
    Images = dtmMain.imglstMain
    ParentColor = False
    ShowCaptions = True
    TabOrder = 0
    object btnExit: TToolButton
      Tag = 9
      Left = 0
      Top = 0
      Caption = 'Exit'
      ImageIndex = 2
      Wrap = True
      OnClick = btnExitClick
    end
    object btnConnect: TToolButton
      Left = 0
      Top = 36
      Caption = 'Connect'
      ImageIndex = 21
      Wrap = True
      OnClick = btnConnectClick
    end
    object btnDelete: TToolButton
      Tag = 9
      Left = 0
      Top = 72
      Caption = 'Remove one'
      ImageIndex = 25
      Wrap = True
      OnClick = btnDeleteClick
    end
    object btnClearAll: TToolButton
      Left = 0
      Top = 108
      Caption = 'Remove all'
      ImageIndex = 7
      Wrap = True
      OnClick = btnClearAllClick
    end
    object btnViewResult: TToolButton
      Left = 0
      Top = 144
      Caption = 'View result'
      ImageIndex = 8
      OnClick = btnViewResultClick
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 564
    Height = 410
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object pbMain: TpbBackGround
      Left = 0
      Top = 0
      Width = 564
      Height = 410
      Align = alClient
      Visible = False
      Active = False
    end
    object Panel1: TPanel
      Left = 24
      Top = 56
      Width = 521
      Height = 313
      ParentColor = True
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 519
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 5
          Width = 113
          Height = 14
          Caption = 'NLR Transaction queue'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object grdNLRToDo: TDBGrdClr
        Left = 1
        Top = 25
        Width = 519
        Height = 287
        Align = alClient
        DataSource = dtmNLR.dtsNLRToDo
        FixedColor = clInfoBk
        Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdNLRToDoDrawColumnCell
        OddColor = clInfoBk
        Columns = <
          item
            Expanded = False
            FieldName = 'LUCode'
            Title.Caption = 'Entity code'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LULoanKey'
            Title.Caption = 'Loan key'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransType'
            Title.Caption = 'Transaction type'
            Width = 109
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
    end
  end
end
