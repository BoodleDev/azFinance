object frmRepFilter: TfrmRepFilter
  Tag = 1034
  Left = 207
  Top = 158
  Width = 449
  Height = 743
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Report filter detail'
  Color = 14283502
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLDSc: TPanel
    Left = 0
    Top = 0
    Width = 441
    Height = 16
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Loan details'
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object pnlBtn: TPanel
    Left = 0
    Top = 677
    Width = 441
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
    object btnOK: TBitBtn
      Left = 278
      Top = 4
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = btnOKClick
      Kind = bkOK
    end
    object btnCancel: TBitBtn
      Left = 358
      Top = 4
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object pnl6: TPanel
    Left = 0
    Top = 450
    Width = 441
    Height = 93
    Align = alTop
    BevelOuter = bvNone
    Color = 14283502
    TabOrder = 9
    Visible = False
    object lblInd1: TLabel
      Left = 144
      Top = 22
      Width = 24
      Height = 14
      Caption = 'none'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblInd2: TLabel
      Left = 144
      Top = 46
      Width = 24
      Height = 14
      Caption = 'none'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblLnInd: TLabel
      Left = 8
      Top = 22
      Width = 68
      Height = 14
      Caption = 'Loan indicator'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblEnInd: TLabel
      Left = 8
      Top = 46
      Width = 70
      Height = 14
      Caption = 'Client indicator'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bvl1: TBevel
      Left = 0
      Top = 91
      Width = 441
      Height = 2
      Align = alBottom
    end
    object lblActInd: TLabel
      Left = 8
      Top = 70
      Width = 75
      Height = 14
      Caption = 'Action indicator'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblActionInd: TLabel
      Left = 144
      Top = 70
      Width = 24
      Height = 14
      Caption = 'none'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnInd1: TButton
      Left = 112
      Top = 19
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 0
      OnClick = btnInd1Click
    end
    object btnInd2: TButton
      Left = 112
      Top = 43
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 1
      OnClick = btnInd2Click
    end
    object pnlIndc: TPanel
      Left = 0
      Top = 0
      Width = 441
      Height = 16
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Indicators'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btnActInd: TButton
      Left = 112
      Top = 67
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 3
      OnClick = btnActIndClick
    end
  end
  object pnl8: TPanel
    Left = 0
    Top = 610
    Width = 441
    Height = 67
    Align = alTop
    BevelOuter = bvNone
    Color = 14283502
    TabOrder = 11
    Visible = False
    object Label7: TLabel
      Left = 8
      Top = 23
      Width = 76
      Height = 14
      Caption = 'Arrears amount'
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
      Top = 45
      Width = 71
      Height = 14
      Caption = 'Arrears period'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel2: TBevel
      Left = 0
      Top = 65
      Width = 441
      Height = 2
      Align = alBottom
    end
    object cbxArrPrd: TComboBox
      Tag = 101
      Left = 112
      Top = 42
      Width = 40
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'n'
        '='
        '<'
        '>')
    end
    object cbxArrAmt: TComboBox
      Tag = 101
      Left = 112
      Top = 20
      Width = 40
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'n'
        '='
        '<'
        '>')
    end
    object edtarrAmt: TNoEdit
      Left = 160
      Top = 20
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '0.00'
    end
    object edtArrPrd: TNoEdit
      Left = 160
      Top = 42
      Width = 41
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object pnlArrc: TPanel
      Left = 0
      Top = 0
      Width = 441
      Height = 16
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Arrears details'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlLDS: TPanel
    Left = 0
    Top = 16
    Width = 441
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 2
      Width = 57
      Height = 14
      Caption = 'Loan status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object pnlLSt: TPanel
      Left = 112
      Top = 2
      Width = 320
      Height = 113
      BevelInner = bvLowered
      TabOrder = 0
      object clbStatus: TCheckListBox
        Left = 2
        Top = 2
        Width = 316
        Height = 109
        OnClickCheck = clbStatusClickCheck
        Align = alClient
        BorderStyle = bsNone
        Columns = 2
        ItemHeight = 15
        Items.Strings = (
          'Approved'
          'Auto-Pay'
          'Bad Debt'
          'Cancelled'
          'Closed'
          'Declined'
          'Frozen'
          'Imex-Pay'
          'Inactive'
          'No Debits'
          'Open'
          'Pre-approved'
          'Settled'
          'Zero Interest')
        PopupMenu = ppmMain
        Style = lbOwnerDrawFixed
        TabOrder = 0
      end
    end
  end
  object pnl7: TPanel
    Left = 0
    Top = 543
    Width = 441
    Height = 67
    Align = alTop
    BevelOuter = bvNone
    Color = 14283502
    TabOrder = 10
    Visible = False
    object lblL1: TLabel
      Left = 238
      Top = 22
      Width = 24
      Height = 14
      Caption = 'none'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblL1s: TLabel
      Left = 8
      Top = 22
      Width = 28
      Height = 14
      Caption = 'Link 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 8
      Top = 45
      Width = 28
      Height = 14
      Caption = 'Link 2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblL2: TLabel
      Left = 238
      Top = 45
      Width = 24
      Height = 14
      Caption = 'none'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 0
      Top = 65
      Width = 441
      Height = 2
      Align = alBottom
    end
    object cbxLink1: TComboBox
      Left = 112
      Top = 19
      Width = 90
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      Sorted = True
      TabOrder = 0
      OnChange = cbxLink1Change
      Items.Strings = (
        ' none'
        'Filter field list ffl in const')
    end
    object cbxLink2: TComboBox
      Left = 112
      Top = 42
      Width = 90
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      Sorted = True
      TabOrder = 1
      OnChange = cbxLink1Change
    end
    object btnL1: TButton
      Left = 206
      Top = 19
      Width = 21
      Height = 20
      Caption = '...'
      TabOrder = 2
      OnClick = btnL1Click
    end
    object btnL2: TButton
      Left = 206
      Top = 42
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 3
      OnClick = btnL2Click
    end
    object pnlLc: TPanel
      Left = 0
      Top = 0
      Width = 441
      Height = 16
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Linked key details'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlFil: TPanel
    Left = 0
    Top = 258
    Width = 441
    Height = 70
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object Label11: TLabel
      Left = 8
      Top = 2
      Width = 29
      Height = 14
      Caption = 'Filters'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel3: TBevel
      Left = 0
      Top = 68
      Width = 441
      Height = 2
      Align = alBottom
    end
    object Panel6: TPanel
      Left = 112
      Top = 1
      Width = 320
      Height = 65
      BevelInner = bvLowered
      TabOrder = 0
      object ckbFilter: TCheckListBox
        Left = 2
        Top = 2
        Width = 316
        Height = 61
        OnClickCheck = ckbFilterClickCheck
        Align = alClient
        BorderStyle = bsNone
        Columns = 2
        ItemHeight = 15
        Items.Strings = (
          'Client code'
          'Loan type'
          'Est. remain prd.'
          'Balances'
          'Dates'
          'Indicators'
          'Links'
          'Arrears details')
        Style = lbOwnerDrawFixed
        TabOrder = 0
      end
    end
    object ckbPrev: TCheckListBox
      Left = 8
      Top = 16
      Width = 97
      Height = 41
      ItemHeight = 13
      Items.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7')
      TabOrder = 1
      Visible = False
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 376
    Width = 441
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Color = 13430505
    TabOrder = 6
    Visible = False
    object Label12: TLabel
      Left = 8
      Top = 5
      Width = 75
      Height = 14
      Caption = 'Est. remain prd.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cbxRprd: TComboBox
      Tag = 101
      Left = 112
      Top = 2
      Width = 40
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        '='
        '<'
        '>')
    end
    object edtRPrd: TNoEdit
      Left = 154
      Top = 2
      Width = 41
      Height = 21
      TabOrder = 1
      Text = '0'
    end
  end
  object pnl5: TPanel
    Left = 0
    Top = 424
    Width = 441
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    Color = 13430505
    TabOrder = 8
    Visible = False
    object Label6: TLabel
      Left = 8
      Top = 5
      Width = 28
      Height = 14
      Caption = 'Dates'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cbxDate: TComboBox
      Left = 112
      Top = 2
      Width = 90
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbxDateChange
      Items.Strings = (
        ' none'
        'First ins. date'
        'Start date')
    end
    object pnlStartDate: TPanel
      Left = 206
      Top = 1
      Width = 237
      Height = 23
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      Visible = False
      object lbldFrom: TLabel
        Tag = 101
        Left = 5
        Top = 6
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
      object lbldTo: TLabel
        Tag = 101
        Left = 127
        Top = 6
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
        Tag = 101
        Left = 31
        Top = 2
        Width = 90
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
        Tag = 101
        Left = 143
        Top = 2
        Width = 90
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
  object pnl4: TPanel
    Left = 0
    Top = 400
    Width = 441
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Color = 14283502
    TabOrder = 7
    Visible = False
    object Label5: TLabel
      Left = 8
      Top = 5
      Width = 45
      Height = 14
      Caption = 'Balances'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cbxBal: TComboBox
      Left = 112
      Top = 2
      Width = 90
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbxLink1Change
      Items.Strings = (
        ' none'
        'Loan bal.'
        'Account bal.'
        'Avl bal.'
        'Deposit bal.')
    end
    object cbxBalOp: TComboBox
      Tag = 101
      Left = 205
      Top = 2
      Width = 40
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        '='
        '<'
        '>')
    end
    object edtBalV: TNoEdit
      Left = 248
      Top = 2
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '0.00'
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 352
    Width = 441
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Color = 14283502
    TabOrder = 5
    Visible = False
    object lblLT: TLabel
      Left = 8
      Top = 5
      Width = 48
      Height = 14
      Caption = 'Loan type'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtLT: TEdit
      Tag = 101
      Left = 112
      Top = 2
      Width = 49
      Height = 21
      MaxLength = 3
      TabOrder = 0
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 328
    Width = 441
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Color = 13430505
    TabOrder = 4
    Visible = False
    object lblCode: TLabel
      Left = 8
      Top = 5
      Width = 53
      Height = 14
      Caption = 'Client code'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtCode: TEdit
      Tag = 101
      Left = 112
      Top = 2
      Width = 105
      Height = 21
      TabOrder = 0
    end
  end
  object pnlClientStatus: TPanel
    Left = 0
    Top = 137
    Width = 441
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 12
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 2
      Width = 59
      Height = 14
      Caption = 'Client status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 112
      Top = 2
      Width = 320
      Height = 113
      BevelInner = bvLowered
      TabOrder = 0
      object CheckListBox1: TCheckListBox
        Left = 2
        Top = 2
        Width = 316
        Height = 109
        Align = alClient
        BorderStyle = bsNone
        Columns = 2
        ItemHeight = 15
        Style = lbOwnerDrawFixed
        TabOrder = 0
      end
    end
  end
  object ppmMain: TPopupMenu
    Left = 64
    Top = 177
    object Selectall1: TMenuItem
      Caption = 'Select all'
      OnClick = Selectall1Click
    end
    object Deselectall1: TMenuItem
      Caption = 'Deselect all'
    end
  end
end
