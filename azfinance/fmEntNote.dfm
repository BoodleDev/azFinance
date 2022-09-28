inherited frmEntNote: TfrmEntNote
  Tag = 1017
  Left = 284
  Top = 82
  HorzScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'Entity notes'
  ClientHeight = 407
  ClientWidth = 392
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 334
    Width = 58
    Height = 407
    ButtonWidth = 58
    inherited btnDelete: TToolButton
      Wrap = True
      Visible = False
    end
    object btnNoteDone: TToolButton
      Left = 0
      Top = 216
      Caption = 'Note done'
      ImageIndex = 24
      Wrap = True
      OnClick = btnNoteDoneClick
    end
    object btnFilter2: TToolButton
      Left = 0
      Top = 252
      Caption = 'Filter notes'
      ImageIndex = 8
      Wrap = True
      OnClick = btnFilter2Click
    end
    object btnPreview: TToolButton
      Left = 0
      Top = 288
      Caption = 'Preview'
      ImageIndex = 0
      Wrap = True
      OnClick = btnPreviewClick
    end
    object btnPrint: TToolButton
      Left = 0
      Top = 324
      Caption = 'Print'
      ImageIndex = 1
      Wrap = True
      OnClick = btnPrintClick
    end
    object btnAttach: TToolButton
      Left = 0
      Top = 360
      Caption = 'Attach'
      ImageIndex = 22
      Wrap = True
      OnClick = btnAttachClick
    end
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 334
    Height = 407
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object lblCharsLeft: TLabel
      Left = 0
      Top = 264
      Width = 334
      Height = 21
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'lblCharsLeft'
      Transparent = True
      Layout = tlCenter
    end
    object memNote: TDBMemo
      Left = 0
      Top = 285
      Width = 334
      Height = 122
      Align = alClient
      DataField = 'TheNote'
      DataSource = dtmMain.dtsEntNote
      MaxLength = 250
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = memNoteChange
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 334
      Height = 57
      Align = alTop
      ParentColor = True
      TabOrder = 1
      object Label11: TLabel
        Left = 6
        Top = 5
        Width = 25
        Height = 14
        Caption = 'Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dbtCode: TDBText
        Left = 58
        Top = 5
        Width = 40
        Height = 14
        AutoSize = True
        DataField = 'EntCode'
        DataSource = dtmMain.dtsEntDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 6
        Top = 23
        Width = 43
        Height = 14
        Caption = 'Surname'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dbtSurname: TDBText
        Left = 58
        Top = 23
        Width = 58
        Height = 14
        AutoSize = True
        DataField = 'Name2'
        DataSource = dtmMain.dtsEntDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 182
        Top = 5
        Width = 25
        Height = 14
        Caption = 'ID nr.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dbtIDnum: TDBText
        Left = 216
        Top = 5
        Width = 44
        Height = 14
        AutoSize = True
        DataField = 'RegNo'
        DataSource = dtmMain.dtsEntDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 182
        Top = 23
        Width = 27
        Height = 14
        Caption = 'Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dbtName: TDBText
        Left = 216
        Top = 23
        Width = 42
        Height = 14
        AutoSize = True
        DataField = 'Name'
        DataSource = dtmMain.dtsEntDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object btnFilter: TSpeedButton
        Left = -2
        Top = 40
        Width = 117
        Height = 17
        Caption = '>> Filter notes'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = btnFilterClick
      end
      object Bevel1: TBevel
        Left = 1
        Top = 38
        Width = 372
        Height = 2
        Hint = '0'
        Style = bsRaised
      end
    end
    object pnlFilter: TPanel
      Left = 0
      Top = 57
      Width = 334
      Height = 47
      Align = alTop
      ParentColor = True
      TabOrder = 2
      Visible = False
      object Label2: TLabel
        Left = 5
        Top = 2
        Width = 46
        Height = 14
        Caption = 'Filter field'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 117
        Top = 2
        Width = 44
        Height = 14
        Caption = 'Filter text'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cbxFilter: TComboBox
        Left = 5
        Top = 18
        Width = 87
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbxFilterChange
        Items.Strings = (
          'None'
          'Note no'
          'Note date'
          'User ID')
      end
      object edtFilter: TEdit
        Left = 117
        Top = 18
        Width = 87
        Height = 21
        TabOrder = 2
      end
      object pnlFilterDate: TPanel
        Left = 105
        Top = 1
        Width = 225
        Height = 45
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        Visible = False
        object Label4: TLabel
          Left = 4
          Top = 2
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
          Left = 124
          Top = 2
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
          Left = 4
          Top = 18
          Width = 97
          Height = 21
          CalAlignment = dtaLeft
          Date = 36560.4779306713
          Time = 36560.4779306713
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 0
        end
        object dtpTo: TDateTimePicker
          Left = 124
          Top = 18
          Width = 97
          Height = 21
          CalAlignment = dtaLeft
          Date = 36560.4779306713
          Time = 36560.4779306713
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 1
        end
      end
    end
    object pnlNoteDet: TPanel
      Left = 0
      Top = 104
      Width = 334
      Height = 160
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object lblNoteDet: TLabel
        Left = 0
        Top = 25
        Width = 334
        Height = 17
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
      object lblNoteType: TLabel
        Left = 0
        Top = 0
        Width = 334
        Height = 25
        Align = alTop
        AutoSize = False
        Caption = '  Note type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object grdNoteDet: TDBGrdClr
        Left = 0
        Top = 42
        Width = 334
        Height = 88
        Align = alClient
        DataSource = dtmMain.dtsEntNote
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdNoteDetDrawColumnCell
        OnKeyDown = grdNoteDetKeyDown
        OddColor = clInfoBk
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NoteNo'
            ReadOnly = True
            Title.Caption = 'Note no'
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RefNo'
            Title.Alignment = taCenter
            Title.Caption = 'Ref. no'
            Width = 49
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NoteDate'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Note date'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UserID'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'User ID'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DueDate'
            Title.Caption = 'Due date'
            Width = 67
            Visible = True
          end>
      end
      object edtNoteNo: TDBEdit
        Left = 296
        Top = 2
        Width = 25
        Height = 21
        DataField = 'NoteNo'
        TabOrder = 1
        Visible = False
        OnChange = edtNoteNoChange
      end
      object pnlREM: TPanel
        Left = 0
        Top = 130
        Width = 334
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        Color = clInfoBk
        TabOrder = 2
        object chbRemind: TCheckBox
          Left = 8
          Top = 6
          Width = 72
          Height = 17
          Caption = 'Remind me'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = chbRemindClick
        end
        object dtmRmeD: TDateTimePicker
          Left = 88
          Top = 4
          Width = 89
          Height = 21
          CalAlignment = dtaLeft
          Date = 37293
          Time = 37293
          DateFormat = dfShort
          DateMode = dmComboBox
          Enabled = False
          Kind = dtkDate
          ParseInput = False
          TabOrder = 1
          OnChange = dtmRmeDChange
        end
        object dtmRmeT: TDateTimePicker
          Left = 180
          Top = 4
          Width = 87
          Height = 21
          CalAlignment = dtaLeft
          Date = 37293
          Time = 37293
          DateFormat = dfShort
          DateMode = dmComboBox
          Enabled = False
          Kind = dtkTime
          ParseInput = False
          TabOrder = 2
          OnChange = dtmRmeDChange
        end
      end
      object cmbNoteCat: TComboBox
        Left = 104
        Top = 1
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        OnChange = cmbNoteCatChange
      end
    end
  end
  inherited ppmDBBase: TPopupMenu
    Left = 256
    Top = 360
  end
end
