object frmIntToDate: TfrmIntToDate
  Tag = 1021
  Left = 117
  Top = 98
  Width = 637
  Height = 425
  Caption = 'Interest to date'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pbIntToDate: TpbBackGround
    Left = 0
    Top = 0
    Width = 581
    Height = 391
    Align = alClient
    Visible = False
    Active = False
  end
  object tbrIntToDate: TToolBar
    Left = 581
    Top = 0
    Width = 48
    Height = 391
    Align = alRight
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 48
    Caption = 'tbrIntToDate'
    EdgeBorders = []
    Flat = True
    Images = dtmMain.imglstMain
    ShowCaptions = True
    TabOrder = 0
    object btnExit: TToolButton
      Left = 0
      Top = 0
      Caption = '   Exit   '
      ImageIndex = 2
      Wrap = True
      OnClick = btnExitClick
    end
    object btnGetData: TToolButton
      Left = 0
      Top = 36
      Caption = 'Get data'
      ImageIndex = 27
      OnClick = btnGetDataClick
    end
  end
  object pnlIntToDate: TPanel
    Left = 140
    Top = 0
    Width = 294
    Height = 398
    Anchors = [akTop, akBottom]
    TabOrder = 1
    object Label13: TLabel
      Left = 8
      Top = 8
      Width = 85
      Height = 14
      Caption = 'Select date range'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = FormCreate
    end
    object Label1: TLabel
      Left = 8
      Top = 32
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
    object Label2: TLabel
      Left = 176
      Top = 32
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
    object dtpFrom: TDateTimePicker
      Left = 40
      Top = 29
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 37179
      Time = 37179
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object dtpTo: TDateTimePicker
      Left = 197
      Top = 29
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 37179.5
      Time = 37179.5
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 64
      Width = 292
      Height = 333
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtmReports.dtsIntToDate
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DateRun'
          Title.Caption = 'Date run'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IntForDay'
          Title.Caption = 'Interest for day'
          Visible = True
        end>
    end
  end
end
