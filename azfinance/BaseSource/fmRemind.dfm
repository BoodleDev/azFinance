inherited frmRemind: TfrmRemind
  Tag = 34
  Left = 93
  Top = 151
  Width = 637
  Height = 284
  Caption = 'Reminders'
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 586
    Width = 43
    Height = 255
    ButtonWidth = 43
    object btnView: TToolButton
      Left = 0
      Top = 36
      Caption = 'View'
      ImageIndex = 8
      Wrap = True
      Visible = False
    end
    object btnAmend: TToolButton
      Left = 0
      Top = 72
      Caption = 'Amend'
      ImageIndex = 4
      Wrap = True
      Visible = False
    end
    object btnSnooze: TToolButton
      Left = 0
      Top = 108
      Caption = 'Snooze'
      ImageIndex = 15
      Wrap = True
      OnClick = btnSnoozeClick
    end
    object btnDismiss: TToolButton
      Left = 0
      Top = 144
      Caption = 'Dismiss'
      ImageIndex = 9
      OnClick = btnDismissClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 586
    Height = 255
    object spl: TSplitter
      Left = 0
      Top = 151
      Width = 586
      Height = 4
      Cursor = crVSplit
      Align = alBottom
      Beveled = True
    end
    object grdRE: TDBGrdClr
      Left = 0
      Top = 0
      Width = 586
      Height = 151
      Align = alClient
      DataSource = dtmRemind.dtsRemind
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OddColor = clInfoBk
      Columns = <
        item
          Expanded = False
          FieldName = 'NoteNo'
          Title.Caption = 'Note no.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EntCode'
          Title.Caption = 'Code'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 171
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NoteName'
          Title.Caption = 'Note name'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TelNo1'
          Title.Caption = 'Tel. no. home'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TelNo2'
          Title.Caption = 'Tel. no. office'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TelNo3'
          Title.Caption = 'Mobile no.'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DueDate'
          Title.Caption = 'Due date'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RefNo'
          Title.Caption = 'Ref no.'
          Visible = True
        end>
    end
    object pnlNote: TPanel
      Left = 0
      Top = 155
      Width = 586
      Height = 100
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object lblNd: TLabel
        Left = 0
        Top = 0
        Width = 586
        Height = 16
        Align = alTop
        AutoSize = False
        Caption = '  Note detail'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object memNote: TDBMemo
        Left = 0
        Top = 16
        Width = 586
        Height = 84
        Align = alClient
        DataField = 'TheNote'
        DataSource = dtmRemind.dtsNote
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
