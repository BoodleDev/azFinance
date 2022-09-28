object frmDecisionLT: TfrmDecisionLT
  Tag = 1012
  Left = 157
  Top = 151
  Width = 637
  Height = 256
  Caption = 'Decision cubes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object azLoans: TDecisionPivot
    Left = 0
    Top = 49
    Width = 629
    Height = 41
    ButtonAutoSize = True
    GroupLayout = xtHorizontal
    Groups = [xtRows, xtColumns, xtSummaries]
    ButtonSpacing = 0
    ButtonWidth = 64
    ButtonHeight = 24
    GroupSpacing = 10
    BorderWidth = 0
    BorderStyle = bsNone
    Align = alTop
    ParentColor = True
    TabOrder = 0
  end
  object pcDecision: TPageControl
    Left = 0
    Top = 90
    Width = 589
    Height = 132
    ActivePage = tsDecGraph
    Align = alClient
    Style = tsButtons
    TabOrder = 1
    object tsDecGrid: TTabSheet
      Caption = 'Grid view'
      object dGrdLoans: TDecisionGrid
        Left = 0
        Top = 0
        Width = 581
        Height = 101
        DefaultColWidth = 100
        DefaultRowHeight = 20
        CaptionColor = clActiveCaption
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clCaptionText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        DataColor = clInfoBk
        DataSumColor = clNone
        DataFont.Charset = DEFAULT_CHARSET
        DataFont.Color = clWindowText
        DataFont.Height = -11
        DataFont.Name = 'MS Sans Serif'
        DataFont.Style = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        LabelColor = clBtnFace
        LabelSumColor = clInactiveCaption
        Dimensions = <
          item
            FieldName = 'LoanType'
            Color = clNone
            Alignment = taCenter
            Subtotals = True
          end
          item
            FieldName = 'ArrearsNo'
            Color = clNone
            Alignment = taCenter
            Subtotals = True
          end
          item
            FieldName = 'LastMPay'
            Color = clNone
            Alignment = taCenter
            Subtotals = True
          end
          item
            FieldName = 'SumArr'
            Color = clNone
            Alignment = taCenter
            Subtotals = True
          end
          item
            FieldName = 'SumLA'
            Color = clNone
            Alignment = taCenter
            Subtotals = True
          end
          item
            FieldName = 'cntLN'
            Color = clNone
            Alignment = taCenter
            Subtotals = True
          end
          item
            FieldName = 'Average of '
            Color = clNone
            Alignment = taCenter
            Subtotals = True
          end>
        Totals = True
        ShowCubeEditor = True
        Align = alClient
        GridLineWidth = 1
        GridLineColor = clWindowText
        ParentColor = True
        TabOrder = 0
      end
    end
    object tsDecGraph: TTabSheet
      Caption = 'Graph view'
      DragMode = dmAutomatic
      ImageIndex = 1
      object dcGraphLT: TDecisionGraph
        Left = 0
        Top = 0
        Width = 581
        Height = 101
        DecisionSource = dtmGraphs.dsrcLoanType
        AllowPanning = pmHorizontal
        BottomWall.Brush.Color = clWhite
        Gradient.EndColor = 16744448
        Gradient.Visible = True
        LeftWall.Brush.Color = clWhite
        LeftWall.Color = 16777088
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        BackColor = clSilver
        Align = alClient
        DragKind = dkDock
        DragMode = dmAutomatic
        TabOrder = 0
        OnUnDock = dcGraphLTUnDock
        object btnPrintGraph: TSpeedButton
          Left = 8
          Top = 5
          Width = 61
          Height = 22
          Caption = 'Print'
          Flat = True
          OnClick = btnPrintGraphClick
        end
      end
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 629
    Height = 49
    Align = alTop
    BevelInner = bvLowered
    ParentColor = True
    TabOrder = 2
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 57
      Height = 14
      Caption = 'Select cube'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 256
      Top = 8
      Width = 129
      Height = 14
      Caption = 'Month-end date (mm/yyyy)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblMY: TLabel
      Left = 392
      Top = 30
      Width = 24
      Height = 13
      Caption = 'none'
    end
    object cbxCubes: TComboBox
      Left = 72
      Top = 5
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbxCubesChange
      Items.Strings = (
        'none'
        'Loan information'
        'Arrears frequency'
        'Delinquency rates')
    end
    object edtMonthEnd: TMaskEdit
      Left = 392
      Top = 5
      Width = 49
      Height = 21
      EditMask = '!99/0000;1;_'
      MaxLength = 7
      TabOrder = 1
      Text = '  /    '
    end
    object btnGetD: TButton
      Left = 448
      Top = 5
      Width = 113
      Height = 21
      Caption = 'Get arrears freq .data'
      TabOrder = 2
      OnClick = btnGetDClick
    end
  end
  object tlbPrint: TToolBar
    Left = 589
    Top = 90
    Width = 40
    Height = 132
    Align = alRight
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 40
    Caption = 'tlbPrint'
    EdgeInner = esNone
    EdgeOuter = esNone
    Flat = True
    Images = dtmMain.imglstMain
    ShowCaptions = True
    TabOrder = 3
    object btnPrint: TToolButton
      Left = 0
      Top = 0
      Caption = '  Print  '
      ImageIndex = 1
      Wrap = True
      OnClick = btnPrintClick
    end
    object btnSumDellRate: TToolButton
      Left = 0
      Top = 36
      Caption = 'Sum '
      ImageIndex = 1
      Wrap = True
      Visible = False
      OnClick = btnSumDellRateClick
    end
  end
  object cdsCube: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 468
    Top = 56
    object cdsCubeRecID: TAutoIncField
      FieldName = 'RecID'
    end
    object cdsCubeFld0: TStringField
      FieldName = 'Fld0'
      Size = 30
    end
    object cdsCubeFld1: TStringField
      Alignment = taRightJustify
      FieldName = 'Fld1'
    end
    object cdsCubeFld2: TStringField
      Alignment = taRightJustify
      FieldName = 'Fld2'
    end
    object cdsCubeFld3: TStringField
      Alignment = taRightJustify
      FieldName = 'Fld3'
    end
    object cdsCubeFld4: TStringField
      Alignment = taRightJustify
      FieldName = 'Fld4'
    end
    object cdsCubeFld5: TStringField
      Alignment = taRightJustify
      FieldName = 'Fld5'
    end
    object cdsCubeFld6: TStringField
      Alignment = taRightJustify
      FieldName = 'Fld6'
    end
    object cdsCubeFld7: TStringField
      Alignment = taRightJustify
      FieldName = 'Fld7'
    end
    object cdsCubeFld8: TStringField
      Alignment = taRightJustify
      FieldName = 'Fld8'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsCube
    Left = 500
    Top = 57
  end
end
