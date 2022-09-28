inherited frmSuspAllocate: TfrmSuspAllocate
  Tag = 1082
  Left = 202
  Top = 200
  Width = 822
  Height = 512
  Caption = 'Suspense Allocation'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 750
    Width = 64
    Height = 459
    ButtonWidth = 64
    inherited btnExit: TToolButton
      Caption = '    Exit    '
    end
    inherited btnNew: TToolButton
      Visible = False
    end
    inherited btnAmend: TToolButton
      Visible = False
    end
    inherited btnSave: TToolButton
      Visible = False
    end
    inherited btnCancel: TToolButton
      Visible = False
    end
    inherited btnDelete: TToolButton
      Wrap = True
      Visible = False
    end
    object btnAllocate: TToolButton
      Left = 0
      Top = 216
      Caption = 'Allocate'
      ImageIndex = 31
      Wrap = True
      OnClick = btnAllocateClick
    end
    object btnDelete1: TToolButton
      Left = 0
      Top = 252
      Caption = 'Delete'
      ImageIndex = 7
      Wrap = True
      OnClick = btnDelete1Click
    end
    object btnClear: TToolButton
      Left = 0
      Top = 288
      Caption = 'Clear Batch'
      ImageIndex = 18
      Wrap = True
      OnClick = btnClearClick
    end
    object btnClose: TToolButton
      Left = 0
      Top = 324
      Caption = 'Close Batch'
      ImageIndex = 19
      Wrap = True
      OnClick = btnCloseClick
    end
    object btnNewBatch: TToolButton
      Left = 0
      Top = 360
      Caption = 'New Batch'
      Enabled = False
      ImageIndex = 16
      Wrap = True
      OnClick = btnNewBatchClick
    end
    object ToolButton1: TToolButton
      Left = 0
      Top = 396
      Caption = 'Export'
      ImageIndex = 18
      OnClick = ToolButton1Click
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 750
    Height = 459
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 0
      Top = 225
      Width = 750
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 750
      Height = 225
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object imgRed: TImage
        Left = 288
        Top = 15
        Width = 19
        Height = 19
        AutoSize = True
        Center = True
        Picture.Data = {
          07544269746D6170AA040000424DAA0400000000000036000000280000001300
          0000130000000100180000000000740400000000000000000000000000000000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C07B7B9439396310104A08084A1818523939637B7B
          94C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C031316300004A00005A00006B00006B00006300005A00004A313163
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C01818
          6308087308089408089408089408088408087300007300006B000063181852C0
          C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C031317B08089C1010AD
          0808A50808A50808A508089C08089408088408087300007300006331315AC0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C07B7B9C0808941010BD1010BD1010BD10
          10BD1010BD1010AD1010AD08089C08089408087300007300004A7B7B94C0C0C0
          C0C0C0000000C0C0C0C0C0C039399C1818BD1818CE2121CE2121CE2121CE2121
          CE1818BD1818BD1010B50808A508089408088400005A393963C0C0C0C0C0C000
          0000C0C0C0C0C0C02121AD1818D62929D62929DE3939E73939E73131DE2929D6
          2121CE1818BD1010B50808A5080894080873181852C0C0C0C0C0C0000000C0C0
          C0C0C0C01818BD2121E73939EF3939EF4242E74242E74242E73939E73131DE29
          29D61818BD1010B508089C080884080852C0C0C0C0C0C0000000C0C0C0C0C0C0
          2929D63131EF4242EF4A4AF75252FF5A5AF75252F74A4AEF4242E73131DE2121
          CE1818BD1010AD08089418185AC0C0C0C0C0C0000000C0C0C0C0C0C04242E731
          31FF4A4AF75A5AFF7373FF7373FF6B6BFF5A5AFF5252F74242E73131DE2121CE
          1010B5080884393973C0C0C0C0C0C0000000C0C0C0C0C0C07B7BCE3131FF5252
          FF6B6BFF8C8CFFADADFF8C8CFF6B6BFF5A5AF74A4AEF3939E72121D61818BD08
          08737B7B9CC0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C04A4AF74A4AF76B6BFF
          8C8CFFADADFF9C9CFF7373FF5A5AFF4A4AF73939E72929D61010B531318CC0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C04242FF5A5AFF7373FF84
          84FF7B7BFF6B6BFF5A5AFF4A4AF73939EF2121D62121A5C0C0C0C0C0C0C0C0C0
          C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05252F75252FF6363FF6363
          FF5A5AFF5252FF3939F72121E73939BDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08484DE5252F74A4AF74242FF
          3939F74A4AE77B7BCEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000}
        Transparent = True
        Visible = False
      end
      object imgGreen: TImage
        Left = 314
        Top = 15
        Width = 19
        Height = 19
        AutoSize = True
        Center = True
        Picture.Data = {
          07544269746D6170AA040000424DAA0400000000000036000000280000001300
          000013000000010018000000000074040000C40E0000C40E0000000000000000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0849484395A39184A18084208184A18395A397B8C
          7BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0316331004200005200086B08086B08086B08004A00004200315A31
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C01863
          18087B08088C08088C08088408087B08087308086B08086B08005200184A18C0
          C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0317B3108940808A508
          10A51010A510109C10089408088C08087B08087308086B08005200315231C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C084A58408940818BD1818BD1818BD1821
          BD2118B51818AD1810A510089408088408087308086B08004200849484C0C0C0
          C0C0C0000000C0C0C0C0C0C0399C3910C61018CE1829CE2921D62129CE2929CE
          2921C62121BD2118AD18109C10088C08087308005200395A39C0C0C0C0C0C000
          0000C0C0C0C0C0C021AD2121D62129DE2931E73139DE3939E73939DE3931D631
          29CE2921BD2118AD18109C10088408087308184A18C0C0C0C0C0C0000000C0C0
          C0C0C0C018CE1821DE2131EF3142EF424AEF4A4AEF4A4AEF4A42E74239DE3931
          D63121C62118AD18109C10088408084A08C0C0C0C0C0C0000000C0C0C0C0C0C0
          29DE2931F7314AEF4A52FF525AFF5A63F7635AF75A52EF524AEF4A39DE3929CE
          2921BD2110A510088C08185218C0C0C0C0C0C0000000C0C0C0C0C0C042E74231
          FF314AFF4A5AFF5A73FF737BFF7B73FF7363F76352EF5242E74231D63121C621
          18B518087B08396B39C0C0C0C0C0C0000000C0C0C0C0C0C084D68431FF3152FF
          526BFF6B8CFF8CADFFAD94FF9473FF735AF75A4AEF4A39E73929CE2918BD1808
          6B087B9C7BC0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C04AEF4A4AFF4A6BFF6B
          8CFF8CADFFAD9CFF9C7BFF7B63FF634AF74A39E73929DE2918B518318C31C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C042F7425AFF5A73FF737B
          FF7B7BFF7B6BFF6B5AFF5A4AF74A31EF3121D621219C21C0C0C0C0C0C0C0C0C0
          C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052EF524AFF4A63FF6363FF
          635AFF5A4AFF4A39FF3921DE2139BD39C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08CDE8C52EF5242F74239FF39
          39FF3942E74284C684C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000}
        Transparent = True
        Visible = False
      end
      object imgY: TImage
        Left = 360
        Top = 16
        Width = 15
        Height = 15
        AutoSize = True
        Picture.Data = {
          07544269746D617006030000424D060300000000000036000000280000000F00
          00000F0000000100180000000000D0020000C40E0000C40E0000000000000000
          0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00
          0000FF00FFFFFFFF808080808080808080808080808080808080808080808080
          808080808080808080FFFFFFFF00FF000000FF00FFFFFFFF808080FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFF00FF00
          0000FF00FFFFFFFF808080FFFFFFFFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF808080FFFFFFFF00FF000000FF00FFFFFFFF808080FFFFFFFFFF
          FF008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFF00FF00
          0000FF00FFFFFFFF808080FFFFFF008000008000008000008000008000FFFFFF
          FFFFFFFFFFFF808080FFFFFFFF00FF000000FF00FFFFFFFF808080FFFFFF0080
          00008000FFFFFF008000008000008000FFFFFFFFFFFF808080FFFFFFFF00FF00
          0000FF00FFFFFFFF808080FFFFFF008000FFFFFFFFFFFFFFFFFF008000008000
          008000FFFFFF808080FFFFFFFF00FF000000FF00FFFFFFFF808080FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF008000008000FFFFFF808080FFFFFFFF00FF00
          0000FF00FFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          008000FFFFFF808080FFFFFFFF00FF000000FF00FFFFFFFF808080FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFF00FF00
          0000FF00FFFFFFFF808080808080808080808080808080808080808080808080
          808080808080808080FFFFFFFF00FF000000FF00FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00
          0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF000000}
        Visible = False
      end
      object imgN: TImage
        Left = 384
        Top = 16
        Width = 15
        Height = 15
        AutoSize = True
        Picture.Data = {
          07544269746D617006030000424D060300000000000036000000280000000F00
          00000F0000000100180000000000D0020000C40E0000C40E0000000000000000
          0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00
          0000FF00FFFFFFFF808080808080808080808080808080808080808080808080
          808080808080808080FFFFFFFF00FF000000FF00FFFFFFFF808080FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFF00FF00
          0000FF00FFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF808080FFFFFFFF00FF000000FF00FFFFFFFF808080FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFF00FF00
          0000FF00FFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF808080FFFFFFFF00FF000000FF00FFFFFFFF808080FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFF00FF00
          0000FF00FFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF808080FFFFFFFF00FF000000FF00FFFFFFFF808080FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFF00FF00
          0000FF00FFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF808080FFFFFFFF00FF000000FF00FFFFFFFF808080FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFF00FF00
          0000FF00FFFFFFFF808080808080808080808080808080808080808080808080
          808080808080808080FFFFFFFF00FF000000FF00FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00
          0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF000000}
        Visible = False
      end
      object grdSuspense: TDBGrid
        Left = 0
        Top = 40
        Width = 750
        Height = 185
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dtmBatchSusp.dtsBatchHistory
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdSuspenseDrawColumnCell
        OnDblClick = btnAllocateClick
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'TransNo'
            Title.Caption = 'Trans. No.'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransDate'
            Title.Caption = 'Transaction Date'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EffectDate'
            Title.Caption = 'Effective Date'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Title.Caption = 'Reference 1'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Refno2'
            Title.Caption = 'Reference 2'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BatchNo'
            Title.Caption = 'Batch No.'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end>
      end
      object btnFilter: TBitBtn
        Left = 8
        Top = 8
        Width = 105
        Height = 25
        Caption = 'Set Filter'
        TabOrder = 1
        Visible = False
        OnClick = btnFilterClick
      end
      object btnDetail: TBitBtn
        Left = 116
        Top = 8
        Width = 105
        Height = 25
        Caption = 'Filter Detail'
        TabOrder = 2
        Visible = False
        Layout = blGlyphRight
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 228
      Width = 750
      Height = 231
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 750
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 8
          Top = 8
          Width = 77
          Height = 13
          Caption = 'Allocation Batch'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cbxBatches: TComboBox
          Left = 95
          Top = 3
          Width = 162
          Height = 22
          Style = csOwnerDrawFixed
          ItemHeight = 16
          TabOrder = 0
          OnChange = cbxBatchesChange
          OnDrawItem = cbxBatchesDrawItem
        end
        object DBEdit1: TDBEdit
          Left = 560
          Top = 6
          Width = 73
          Height = 21
          DataField = 'TransNo'
          DataSource = dtmBatchSusp.dtsAlTrans
          TabOrder = 1
          Visible = False
          OnChange = DBEdit1Change
        end
        object DBEdit2: TDBEdit
          Left = 480
          Top = 6
          Width = 73
          Height = 21
          DataField = 'TransNo'
          DataSource = dtmBatchSusp.dtsBatchHistory
          TabOrder = 2
          Visible = False
          OnChange = DBEdit2Change
        end
      end
      object grdAllocate: TDBGrid
        Left = 0
        Top = 27
        Width = 750
        Height = 204
        Align = alClient
        DataSource = dtmBatchSusp.dtsAlTrans
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'LinkID1'
            Title.Caption = 'Trans. No.'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanID'
            Title.Caption = 'Loan ID'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EntCode'
            Title.Caption = 'Client Code'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanCode'
            Title.Caption = 'Trans. Code'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SuspCode'
            Title.Caption = 'Suspense Code'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransDate'
            Title.Caption = 'Trans. Date'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EffectDate'
            Title.Caption = 'Effective Date'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValueDate'
            Title.Caption = 'Value Date'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Title.Caption = 'Reference 1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo2'
            Title.Caption = 'Reference 2'
            Visible = True
          end>
      end
    end
  end
  object StatusBar2: TStatusBar [2]
    Left = 0
    Top = 459
    Width = 814
    Height = 19
    Panels = <>
  end
  inherited ppmDBBase: TPopupMenu
    Left = 528
    Top = 168
  end
  object expSuspense: TDBGridExporter
    DBGrid = grdSuspense
    Left = 352
    Top = 96
  end
end
