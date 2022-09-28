inherited frmBatchNote: TfrmBatchNote
  Tag = 1003
  Left = 229
  HorzScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'Batch note'
  ClientHeight = 316
  ClientWidth = 354
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 314
    Height = 316
    inherited btnNew: TToolButton
      Visible = False
    end
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 314
    Height = 316
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Label11: TLabel
      Left = 6
      Top = 4
      Width = 67
      Height = 14
      Caption = 'Batch number'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 1
      Top = 21
      Width = 311
      Height = 2
      Hint = '0'
      Style = bsRaised
    end
    object lblNoteDet: TLabel
      Left = 6
      Top = 25
      Width = 50
      Height = 14
      Caption = 'Note detail'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 6
      Top = 42
      Width = 79
      Height = 14
      Caption = 'Last modified by'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbtUserID: TDBText
      Left = 91
      Top = 42
      Width = 47
      Height = 14
      AutoSize = True
      DataField = 'UserID'
      DataSource = dtmBatchTrans.dtsBatchNote
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 166
      Top = 42
      Width = 65
      Height = 14
      Caption = 'Date modified'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbtDate: TDBText
      Left = 237
      Top = 42
      Width = 37
      Height = 14
      AutoSize = True
      DataField = 'NoteDate'
      DataSource = dtmBatchTrans.dtsBatchNote
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblCharsLeft: TLabel
      Left = 0
      Top = 60
      Width = 314
      Height = 13
      Align = alBottom
      Alignment = taCenter
      Caption = 'lblCharsLeft'
      Transparent = True
    end
    object lblCurBatch: TLabel
      Left = 80
      Top = 5
      Width = 64
      Height = 13
      Caption = 'Current batch'
    end
    object memNote: TDBMemo
      Left = 0
      Top = 73
      Width = 314
      Height = 243
      Align = alBottom
      DataField = 'TheNote'
      DataSource = dtmBatchTrans.dtsBatchNote
      MaxLength = 215
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = memNoteChange
    end
  end
end
