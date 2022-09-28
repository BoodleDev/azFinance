inherited frmLDStruc: TfrmLDStruc
  Tag = 1023
  Left = 193
  Top = 116
  Width = 556
  Height = 446
  Caption = 'Restructure loan'
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 505
    Width = 43
    Height = 412
    ButtonWidth = 43
    object btnAddST: TToolButton
      Left = 0
      Top = 36
      Caption = 'Add ST'
      ImageIndex = 4
      Wrap = True
      OnClick = btnAddSTClick
    end
    object btnReset: TToolButton
      Left = 0
      Top = 72
      Caption = 'Reset'
      ImageIndex = 6
      Wrap = True
      OnClick = btnResetClick
    end
    object btnSave: TToolButton
      Left = 0
      Top = 108
      Caption = 'Save'
      ImageIndex = 5
      Wrap = True
      OnClick = btnSaveClick
    end
    object btnRate: TToolButton
      Left = 0
      Top = 144
      Caption = 'Rate'
      ImageIndex = 31
      Wrap = True
      Visible = False
      OnClick = btnRateClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 505
    Height = 412
    object pnlReStruc: TPanel
      Left = 0
      Top = 0
      Width = 505
      Height = 66
      Align = alTop
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 8
        Width = 44
        Height = 14
        Caption = 'Add type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 8
        Top = 33
        Width = 47
        Height = 14
        Caption = 'Start date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 256
        Top = 8
        Width = 37
        Height = 14
        Caption = 'Amount'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 256
        Top = 33
        Width = 47
        Height = 14
        Caption = 'Period for'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 8
        Top = 50
        Width = 76
        Height = 14
        Caption = 'New installment'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object lblNewI: TLabel
        Left = 88
        Top = 51
        Width = 35
        Height = 13
        Caption = 'lblNewI'
        Visible = False
      end
      object cbxType: TComboBox
        Left = 88
        Top = 4
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          'Fixed instalment'
          'Extend contract')
      end
      object dtpDate: TDateTimePicker
        Left = 88
        Top = 26
        Width = 113
        Height = 21
        CalAlignment = dtaLeft
        Date = 37700
        Time = 37700
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 1
      end
      object edtAmt: TNoEdit
        Left = 336
        Top = 5
        Width = 89
        Height = 21
        TabOrder = 2
        Text = '0.00'
      end
      object edtPrdFor: TNoEdit
        Left = 336
        Top = 30
        Width = 41
        Height = 21
        TabOrder = 3
        Text = '3'
      end
      object edtDate: TDBEdit
        Left = 416
        Top = 40
        Width = 73
        Height = 21
        DataField = 'EffectDate'
        TabOrder = 4
        Visible = False
        OnChange = edtDateChange
      end
    end
    object grdContract: TDBGrdClr
      Left = 0
      Top = 156
      Width = 505
      Height = 256
      Align = alClient
      Color = 15919841
      DataSource = dtmLCST.dtsContract
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdContractDrawColumnCell
      OddColor = 14995913
      Columns = <
        item
          Expanded = False
          FieldName = 'Type'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PayNo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EffectDate'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Alignment = taRightJustify
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Interest'
          Title.Alignment = taRightJustify
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Balance'
          Title.Alignment = taRightJustify
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IntRate'
          Title.Alignment = taRightJustify
          Width = 58
          Visible = True
        end>
    end
    object pnlStruc: TPanel
      Left = 0
      Top = 66
      Width = 505
      Height = 90
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 505
        Height = 16
        Align = alTop
        AutoSize = False
        Caption = '   Structures'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object grdStruc: TDBGrdClr
        Left = 0
        Top = 16
        Width = 505
        Height = 74
        Align = alClient
        DataSource = dtmLCST.dtsStruc
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdStrucDrawColumnCell
        OddColor = clInfoBk
        Columns = <
          item
            Expanded = False
            FieldName = 'EffectDate'
            Title.Caption = 'Effective date'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Type'
            Width = 151
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taRightJustify
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TypeCnt'
            Title.Caption = 'Type count'
            Width = 73
            Visible = True
          end>
      end
    end
  end
end
