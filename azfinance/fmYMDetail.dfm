inherited frmYMDetail: TfrmYMDetail
  Tag = 1039
  Left = 133
  Top = 103
  Width = 645
  Height = 424
  Caption = 'Year/Month details'
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 601
    Top = 38
    Height = 352
    ButtonWidth = 49
    TabOrder = 2
    object btnPrintGrp: TToolButton
      Left = 0
      Top = 36
      Caption = 'Print grp.'
      ImageIndex = 1
      OnClick = btnPrintGrpClick
    end
  end
  inherited pnlBBase: TPanel
    Top = 38
    Width = 601
    Height = 352
    TabOrder = 3
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 637
    Height = 38
    Align = alTop
    BevelInner = bvLowered
    ParentColor = True
    TabOrder = 0
    object lblFromDate: TLabel
      Left = 16
      Top = 12
      Width = 47
      Height = 13
      Caption = 'From date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblToDate: TLabel
      Left = 226
      Top = 12
      Width = 37
      Height = 13
      Caption = 'To date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbFrom: TComboBox
      Left = 69
      Top = 8
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbFromChange
    end
    object cbTo: TComboBox
      Left = 269
      Top = 8
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbFromChange
    end
  end
  object pgMain: TPageControl
    Left = 0
    Top = 38
    Width = 601
    Height = 352
    ActivePage = tsGraphView
    Align = alClient
    Style = tsButtons
    TabOrder = 1
    OnDrawTab = pgMainDrawTab
    object tsDataView: TTabSheet
      Caption = 'Data view'
      object grdYMDet: TDBGrid
        Left = 0
        Top = 0
        Width = 593
        Height = 321
        Align = alClient
        DataSource = dtmGraphs.dtsYMDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdYMDetDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'YMKey'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'YearInd'
            Title.Caption = 'Year'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MonthInd'
            Title.Caption = 'Mth'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LDPayment'
            Title.Caption = 'Actual Payment'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LCPayment'
            Title.Caption = 'Contract Payment'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PayDif'
            Title.Caption = 'Payment dif'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LDInterest'
            Title.Caption = 'Actual Interest'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LCInterest'
            Title.Caption = 'Contract Interest'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IntDif'
            Title.Caption = 'Interest dif'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LCBal'
            Title.Caption = 'Contract bal.'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LDcnt'
            Title.Caption = 'Actual cnt.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LCcnt'
            Title.Caption = 'Contract cnt.'
            Visible = True
          end>
      end
    end
    object tsGraphView: TTabSheet
      Caption = 'Graph view'
      ImageIndex = 1
      object pnlSer: TPanel
        Left = 0
        Top = 0
        Width = 593
        Height = 31
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lblPoints: TLabel
          Left = 463
          Top = 8
          Width = 29
          Height = 13
          Caption = 'Points'
        end
        object Shape1: TShape
          Left = 22
          Top = 4
          Width = 21
          Height = 21
          Brush.Color = clRed
        end
        object Shape2: TShape
          Left = 251
          Top = 4
          Width = 21
          Height = 21
          Brush.Color = clLime
        end
        object cbSer1: TComboBox
          Left = 50
          Top = 4
          Width = 150
          Height = 21
          Style = csDropDownList
          DropDownCount = 12
          ItemHeight = 13
          TabOrder = 0
          OnChange = cbSer1Change
          Items.Strings = (
            'Actual payments'
            'Contract payments'
            'Pay difference'
            'Actual interest'
            'Contract interest'
            'Interest difference'
            'Capital balance'
            'Actual count'
            'Contract count')
        end
        object cbSer2: TComboBox
          Left = 278
          Top = 4
          Width = 150
          Height = 21
          Style = csDropDownList
          DropDownCount = 12
          ItemHeight = 13
          TabOrder = 1
          OnChange = cbSer2Change
        end
        object edtPoints: TEdit
          Left = 497
          Top = 4
          Width = 49
          Height = 21
          TabOrder = 2
          Text = '12'
          OnChange = edtPointsChange
        end
        object UpDown: TUpDown
          Left = 546
          Top = 4
          Width = 15
          Height = 21
          Associate = edtPoints
          Min = 12
          Max = 1000
          Position = 12
          TabOrder = 3
          Wrap = False
        end
      end
      object chartYMDet: TDBChart
        Left = 0
        Top = 31
        Width = 593
        Height = 290
        AllowPanning = pmHorizontal
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BottomWall.Dark3D = False
        BottomWall.Size = 1
        Gradient.EndColor = 16744448
        Gradient.Visible = True
        MarginBottom = 7
        MarginTop = 5
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold, fsItalic]
        Title.Text.Strings = (
          '')
        Title.Visible = False
        ClipPoints = False
        LeftAxis.Axis.Width = 1
        Legend.Alignment = laBottom
        MaxPointsPerPage = 12
        View3D = False
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object btnMoveLeft: TSpeedButton
          Left = 4
          Top = 274
          Width = 23
          Height = 19
          Anchors = [akLeft, akBottom]
          Flat = True
          Glyph.Data = {
            06030000424D060300000000000036000000280000000F0000000F0000000100
            180000000000D0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF040404040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF040404FF9933040404FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFF040404FF9933FF9933040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFF040404FF9933FFCC33FF993304040404
            0404040404040404040404040404040404040404040404000000FFFFFF040404
            FF9933FFCC33FFCC33FF9933FF9933FF9933FF9933FF9933FF9933FF9933FF99
            33FF9933040404000000FF6633FFFFCCFFFF99FFCC33FFCC33FFCC33FFCC33FF
            CC33FFCC33FFCC33FFCC33FFCC33FFCC33FF9933040404000000FFFFFFFF6633
            FFFFCCFFFF99FFCC33FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF
            99FF9933040404000000FFFFFFFFFFFFFF6633FFFFCCFFFF99FFFF99040404FF
            6633FF6633FF6633FF6633FF6633FF6633FF6633040404000000FFFFFFFFFFFF
            FFFFFFFF6633FFFFCCFFFF99040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFFCC040404FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF6633040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000}
          OnClick = btnMoveLeftClick
        end
        object btnMoveRight: TSpeedButton
          Left = 518
          Top = 274
          Width = 23
          Height = 19
          Anchors = [akRight, akBottom]
          Flat = True
          Glyph.Data = {
            06030000424D060300000000000036000000280000000F0000000F0000000100
            180000000000D0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404040404FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF040404FF6633040404FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF9933FF6633040404FFFF
            FFFFFFFFFFFFFF00000004040404040404040404040404040404040404040404
            0404040404FF9933FFCC33FF6633040404FFFFFFFFFFFF000000FF6633FF9933
            FF9933FF9933FF9933FF9933FF9933FF9933FF9933FF9933FFCC33FFCC33FF66
            33040404FFFFFF000000FF6633FFFFCCFFCC33FFCC33FFCC33FFCC33FFCC33FF
            CC33FFCC33FFCC33FFCC33FFCC33FFCC33FF6633040404000000FF6633FFFFCC
            FFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFCC33FFFF99FFCC
            33040404FFFFFF000000FF6633FF6633FF6633FF6633FF6633FF6633FF6633FF
            6633FF6633FFFFCCFFFF99FFCC33040404FFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFFCCFFCC33040404FFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF6633FFCC33040404FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633040404FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF6633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000}
          OnClick = btnMoveRightClick
        end
        object ser1: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = dtmGraphs.qryYMDetail
          SeriesColor = clRed
          XLabelsSource = 'YMKey'
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          XValues.ValueSource = 'SeqNo'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
          YValues.ValueSource = 'LCInterest'
        end
        object ser2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = dtmGraphs.qryYMDetail
          SeriesColor = clLime
          XLabelsSource = 'YMKey'
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          XValues.ValueSource = 'SeqNo'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
          YValues.ValueSource = 'LDInterest'
        end
      end
    end
  end
end
