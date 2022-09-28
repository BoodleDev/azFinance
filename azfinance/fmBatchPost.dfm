inherited frmBatchPost: TfrmBatchPost
  Tag = 1004
  Left = 251
  Top = 204
  Width = 653
  Height = 426
  Caption = 'Process batch'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 564
    Width = 73
    Height = 388
    ButtonWidth = 75
    inherited btnExit: TToolButton
      Wrap = False
    end
    object btnAcceptAll: TToolButton
      Left = 75
      Top = 0
      Caption = 'Accept all'
      ImageIndex = 23
      Wrap = True
      OnClick = btnAcceptAllClick
    end
    object btnAccept: TToolButton
      Left = 0
      Top = 36
      Caption = 'Accept'
      ImageIndex = 25
      Wrap = True
      OnClick = btnAcceptClick
    end
    object btnDeclineAll: TToolButton
      Left = 0
      Top = 72
      Caption = 'Decline all'
      ImageIndex = 7
      Wrap = True
      OnClick = btnDeclineAllClick
    end
    object btnDecline: TToolButton
      Left = 0
      Top = 108
      Caption = 'Decline'
      ImageIndex = 24
      Wrap = True
      OnClick = btnDeclineClick
    end
    object btnDeclineBatch: TToolButton
      Left = 0
      Top = 144
      Caption = 'Decline batch'
      ImageIndex = 7
      Wrap = True
      OnClick = btnDeclineBatchClick
    end
    object btnBatchNote: TToolButton
      Left = 0
      Top = 180
      Caption = 'Batch Note'
      ImageIndex = 20
      Wrap = True
      OnClick = btnBatchNoteClick
    end
    object btnVerfiyBatch: TToolButton
      Left = 0
      Top = 216
      Caption = 'Verfiy batch'
      ImageIndex = 26
      Wrap = True
      OnClick = btnVerfiyBatchClick
    end
    object btnAcceptBatch: TToolButton
      Left = 0
      Top = 252
      Caption = 'Accept batch'
      ImageIndex = 4
      Wrap = True
      OnClick = btnAcceptBatchClick
    end
    object btnPost: TToolButton
      Left = 0
      Top = 288
      Caption = 'Process batch'
      ImageIndex = 15
      OnClick = btnPostClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 564
    Height = 388
    TabOrder = 2
  end
  object pnlBack: TPanel
    Left = 0
    Top = 0
    Width = 564
    Height = 388
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Label3: TLabel
      Left = 11
      Top = 10
      Width = 73
      Height = 13
      Caption = 'Closed batches'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbxBatches: TComboBox
      Left = 88
      Top = 6
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbxBatchesChange
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 26
      Width = 564
      Height = 362
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentColor = True
      TabOrder = 1
      object splBatch: TSplitter
        Left = 1
        Top = 218
        Width = 562
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clBtnFace
        ParentColor = False
      end
      object grdBachDet: TDBStyleGrid
        Left = 1
        Top = 1
        Width = 562
        Height = 217
        Align = alClient
        DataSource = dtmBatchTrans.dtsBatchT
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdBachDetDrawColumnCell
        AllowSort = False
        ColumnsResize = False
        ColumnsMove = False
        Columns = <
          item
            Expanded = False
            FieldName = 'AccountNo'
            Title.Caption = 'Account No.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StatusDescription'
            Title.Caption = 'Status'
            Width = 80
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'TransCode'
            Title.Caption = 'Trans. code'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransLookup'
            Title.Caption = 'Transaction Description'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EffectDate'
            Title.Caption = 'Effective date'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taRightJustify
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Title.Caption = 'Reference 1'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo2'
            Title.Caption = 'Reference 2'
            Width = 80
            Visible = True
          end>
      end
      object pnlVerify: TPanel
        Left = 1
        Top = 221
        Width = 562
        Height = 140
        Align = alBottom
        BevelOuter = bvLowered
        ParentColor = True
        TabOrder = 1
        object gugProg: TGauge
          Left = 1
          Top = 120
          Width = 560
          Height = 19
          Align = alBottom
          ForeColor = clBlue
          Progress = 0
        end
        object Label1: TLabel
          Left = 5
          Top = 8
          Width = 56
          Height = 13
          Caption = 'Verify batch'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object memErrors: TMemo
          Left = 1
          Top = 24
          Width = 560
          Height = 96
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
end
