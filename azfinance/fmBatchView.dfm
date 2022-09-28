inherited frmBatchView: TfrmBatchView
  Tag = 1006
  Left = 399
  Top = 283
  Width = 637
  Height = 304
  Caption = 'Batch Viewer'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 545
    Width = 84
    Height = 270
    ButtonWidth = 84
    object btnBCDet: TToolButton
      Left = 0
      Top = 36
      Caption = 'Get detail for BC'
      ImageIndex = 22
      ParentShowHint = False
      Wrap = True
      ShowHint = True
      OnClick = btnBCDetClick
      OnMouseMove = btnBCDetMouseMove
    end
    object btnBatch: TToolButton
      Left = 0
      Top = 72
      Caption = 'Open batch'
      ImageIndex = 39
      Wrap = True
      OnClick = btnBatchClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 545
    Height = 270
    TabOrder = 2
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 270
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object splitMain: TSplitter
      Left = 0
      Top = 134
      Width = 545
      Height = 5
      Cursor = crVSplit
      Align = alBottom
      Beveled = True
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 545
      Height = 134
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 545
        Height = 20
        Align = alTop
        AutoSize = False
        Caption = '  Batch control detail'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object grdBCdet: TDBStyleGrid
        Left = 0
        Top = 20
        Width = 545
        Height = 114
        Align = alClient
        DataSource = dtmBatchQuery.dtsBatchCtrl
        Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdBCdetDrawColumnCell
        AllowSort = True
        ColumnsResize = False
        ColumnsMove = False
        Columns = <
          item
            Expanded = False
            FieldName = 'BatchNo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BatchDes'
            Title.Caption = 'BatchType'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UserID'
            Title.Caption = 'User ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RequestDate'
            Title.Caption = 'Req. date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HashTotal'
            Title.Caption = 'Hash total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalRecords'
            Title.Caption = 'Tot. records'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalErrors'
            Title.Caption = 'Tot. errors'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AcceptID'
            Title.Caption = 'Accept ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AcceptDate'
            Title.Caption = 'Accept date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProcessedID'
            Title.Caption = 'Process ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProcessedDate'
            Title.Caption = 'Proces Date'
            Visible = True
          end>
      end
    end
    object pnlBatchDet: TPanel
      Left = 0
      Top = 139
      Width = 545
      Height = 131
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 545
        Height = 20
        Align = alTop
        AutoSize = False
        Caption = '  Batch detail'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object grdBatchDet: TDBStyleGrid
        Left = 0
        Top = 20
        Width = 545
        Height = 111
        Align = alClient
        DataSource = dtmBatchQuery.dtsDetForBC
        Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        AllowSort = True
        ColumnsResize = False
        ColumnsMove = False
      end
    end
  end
end
