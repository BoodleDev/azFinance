inherited frmSetLoanStatus: TfrmSetLoanStatus
  Tag = 1036
  Left = 81
  Top = 128
  Width = 665
  Height = 326
  Caption = 'Set loan status'
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 602
    Width = 55
    Height = 292
    ButtonWidth = 55
    object btnOpenLoan: TToolButton
      Left = 0
      Top = 36
      Caption = 'Open'
      ImageIndex = 29
      Wrap = True
      OnClick = btnOpenLoanClick
    end
    object btnCloseLoan: TToolButton
      Left = 0
      Top = 72
      Caption = 'Close'
      ImageIndex = 30
      Wrap = True
      OnClick = btnCloseLoanClick
    end
    object btnBadDebt: TToolButton
      Left = 0
      Top = 108
      Caption = 'Bad Debt.'
      ImageIndex = 32
      Wrap = True
      OnClick = btnBadDebtClick
    end
    object btnFroze: TToolButton
      Left = 0
      Top = 144
      Caption = 'Freeze'
      ImageIndex = 31
      OnClick = btnFrozeClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 602
    Height = 292
    TabOrder = 2
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 602
    Height = 292
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object grdMain: TDBGrid
      Left = 0
      Top = 28
      Width = 602
      Height = 264
      Align = alClient
      DataSource = dtmLoanMan.dtsLoanStatus
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdMainDrawColumnCell
      OnEnter = grdMainEnter
      OnKeyPress = grdMainKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'EntCode'
          Title.Caption = 'Client code'
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'LoanKey'
          Title.Caption = 'Loan'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Surname'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDno'
          Title.Caption = 'ID number'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AmtToFin'
          Title.Alignment = taRightJustify
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PayIns'
          Title.Alignment = taRightJustify
          Title.Caption = 'Pay inst.'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoanType'
          Width = 16
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StartDate'
          Title.Caption = 'Start date'
          Width = 68
          Visible = True
        end>
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 602
      Height = 28
      Align = alTop
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 1
      object shpOpen: TShape
        Left = 8
        Top = 8
        Width = 12
        Height = 12
        Brush.Color = clAqua
      end
      object Shape1: TShape
        Left = 360
        Top = 8
        Width = 12
        Height = 12
        Brush.Color = clGray
      end
      object Label44: TLabel
        Left = 23
        Top = 7
        Width = 103
        Height = 14
        Caption = 'Open / Extended loan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 376
        Top = 7
        Width = 56
        Height = 14
        Caption = 'Closed loan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape2: TShape
        Left = 464
        Top = 8
        Width = 12
        Height = 12
        Brush.Color = clRed
      end
      object Label2: TLabel
        Left = 483
        Top = 7
        Width = 46
        Height = 14
        Caption = 'Bad debt.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape3: TShape
        Left = 152
        Top = 8
        Width = 12
        Height = 12
        Brush.Color = clFuchsia
      end
      object Label3: TLabel
        Left = 167
        Top = 7
        Width = 56
        Height = 14
        Caption = 'Settled loan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape4: TShape
        Left = 248
        Top = 8
        Width = 12
        Height = 12
        Brush.Color = clTeal
      end
      object Label4: TLabel
        Left = 263
        Top = 7
        Width = 57
        Height = 14
        Caption = 'Frozen loan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object edtLID: TDBEdit
        Left = 533
        Top = 5
        Width = 41
        Height = 21
        DataField = 'EntityID'
        TabOrder = 0
        Visible = False
        OnChange = edtLIDChange
      end
    end
  end
  object TimerType: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = TimerTypeTimer
    Left = 16
    Top = 120
  end
end
