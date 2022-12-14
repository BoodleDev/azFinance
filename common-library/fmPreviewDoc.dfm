object frmPreviewDoc: TfrmPreviewDoc
  Left = 187
  Top = 104
  Width = 686
  Height = 407
  Caption = 'Preview Documents'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 156
    Width = 678
    Height = 6
    Cursor = crVSplit
    Align = alTop
  end
  object pnlClient: TPanel
    Left = 0
    Top = 162
    Width = 678
    Height = 191
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 678
      Height = 153
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        678
        153)
      object grpPreview: TGroupBox
        Left = 5
        Top = 1
        Width = 670
        Height = 149
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Preview'
        TabOrder = 0
        DesignSize = (
          670
          149)
        object pnlPreview: TPanel
          Left = 10
          Top = 15
          Width = 650
          Height = 124
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 0
          object clbNavigate: TCoolBar
            Left = 0
            Top = 0
            Width = 650
            Height = 26
            AutoSize = True
            Bands = <
              item
                Control = tlbPreview
                ImageIndex = -1
                MinHeight = 22
                Width = 646
              end>
            object tlbPreview: TToolBar
              Left = 9
              Top = 0
              Width = 633
              Height = 22
              AutoSize = True
              ButtonWidth = 74
              Caption = 'tlbPreview'
              EdgeBorders = []
              Flat = True
              Images = imlTools
              List = True
              ShowCaptions = True
              TabOrder = 0
              object btnFirst: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'First'
                ImageIndex = 2
                OnClick = btnFirstClick
              end
              object btnPrior: TToolButton
                Left = 52
                Top = 0
                AutoSize = True
                Caption = 'Prior'
                ImageIndex = 4
                OnClick = btnPriorClick
              end
              object Panel3: TPanel
                Left = 105
                Top = 0
                Width = 111
                Height = 22
                TabOrder = 0
                object cmbPages: TComboBox
                  Left = 1
                  Top = 1
                  Width = 107
                  Height = 20
                  Style = csOwnerDrawFixed
                  ItemHeight = 14
                  TabOrder = 0
                  OnChange = cmbPagesChange
                end
              end
              object btnNext: TToolButton
                Left = 216
                Top = 0
                AutoSize = True
                Caption = 'Next'
                ImageIndex = 3
                OnClick = btnNextClick
              end
              object btnLast: TToolButton
                Left = 270
                Top = 0
                AutoSize = True
                Caption = 'Last'
                ImageIndex = 1
                OnClick = btnLastClick
              end
              object btnPrint: TToolButton
                Left = 321
                Top = 0
                AutoSize = True
                Caption = 'Print'
                ImageIndex = 0
                OnClick = btnPrintClick
              end
              object btnZoomIn: TToolButton
                Left = 374
                Top = 0
                Caption = 'Zoom In'
                ImageIndex = 6
                OnClick = btnZoomInClick
              end
              object btnZoomOut: TToolButton
                Left = 448
                Top = 0
                AutoSize = True
                Caption = 'Zoom Out'
                ImageIndex = 5
                OnClick = btnZoomInClick
              end
              object ToolButton1: TToolButton
                Left = 526
                Top = 0
                Caption = 'Other'
                ImageIndex = 6
              end
            end
          end
        end
      end
    end
    object pnlTools: TPanel
      Left = 0
      Top = 153
      Width = 678
      Height = 38
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        678
        38)
      object btnOK: TButton
        Left = 517
        Top = 5
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'OK'
        ModalResult = 1
        TabOrder = 0
        OnClick = btnOKClick
      end
      object btnCancel: TButton
        Left = 597
        Top = 5
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Cancel'
        ModalResult = 2
        TabOrder = 1
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 678
    Height = 156
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      678
      156)
    object grdDocuments: TDBGrid
      Left = 4
      Top = 26
      Width = 668
      Height = 129
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtsDocuments
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdDocumentsDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'Rejected'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Description'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Pages'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CreateDate'
          Title.Alignment = taCenter
          Title.Caption = 'Date Received'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CreateUser'
          Title.Caption = 'Received By'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reason'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Notes'
          Visible = True
        end>
    end
    object CoolBar1: TCoolBar
      Left = 0
      Top = 0
      Width = 678
      Height = 26
      AutoSize = True
      Bands = <
        item
          Control = ToolBar1
          ImageIndex = -1
          MinHeight = 22
          Width = 676
        end>
      EdgeBorders = [ebLeft, ebTop, ebBottom]
      object ToolBar1: TToolBar
        Left = 9
        Top = 0
        Width = 663
        Height = 22
        AutoSize = True
        ButtonWidth = 96
        Caption = 'ToolBar1'
        EdgeBorders = []
        Flat = True
        Images = imlTools
        List = True
        ShowCaptions = True
        TabOrder = 0
        object btnEditDocument: TToolButton
          Left = 0
          Top = 0
          AutoSize = True
          Caption = 'Edit Document'
          ImageIndex = 7
          Visible = False
          OnClick = btnEditDocumentClick
        end
        object btnView: TToolButton
          Left = 100
          Top = 0
          AutoSize = True
          Caption = 'View'
          ImageIndex = 8
          OnClick = btnViewClick
        end
      end
    end
  end
  object dsDocuments: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    AfterOpen = dsDocumentsAfterOpen
    AfterScroll = dsDocumentsAfterScroll
    CommandText = 
      'SELECT DocumentID, IDNumber, DC.DocType, Rejected,'#13#10'DT.Descripti' +
      'on + '#13#10'CASE '#13#10'WHEN Authorised = 1 THEN '#39' (Authorised) '#39#13#10'ELSE '#39#39 +
      ' END AS Description, LoanID, Pages, Authorised,'#13#10'CreateDate, Cre' +
      'ateUser, ISNULL(RD.Description + CHAR(13) + CHAR(10),'#39#39') + ISNUL' +
      'L(Notes,'#39#39') AS Rejection,'#13#10'RD.Description AS Reason, Notes, NewF' +
      'older'#13#10'FROM dtDocs DC'#13#10'LEFT JOIN dtDocumentTypes DT ON DC.DocTyp' +
      'e = DT.DocType'#13#10'LEFT JOIN dtRejections RJ ON DC.RejectID = RJ.Re' +
      'jectID AND Rejected = 1'#13#10'LEFT JOIN CodeTable RD ON RJ.Reason = R' +
      'D.TypeKey'#13#10'WHERE LoanID = :LoanID'#13#10'ORDER BY Description'#13#10
    Parameters = <
      item
        Name = 'LoanID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 392
    Top = 248
  end
  object dtsDocuments: TDataSource
    DataSet = dsDocuments
    Left = 392
    Top = 264
  end
  object imlTools: TImageList
    BlendColor = clWindow
    BkColor = clWhite
    Left = 448
    Top = 64
    Bitmap = {
      494C01010C000E00040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001001000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FD65AAE354B259452FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FB556524A524A524A524A3146AD35
      EF3D524A8D317A1E1A16E918F75EFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524A9C739C739C739C7332423722
      0D19734EF039BC365C2AA910A5143146FF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524A9C739C739C739C73B0291E3B
      9419A514AD35C7184C258C3184108410B556FF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524ABD77BD777B734A518528AF31
      8E2D2925A514C61884104A298C31630C6B2DFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524ABD77BD77BD77BD7742404228
      C618AD354A292B1D6B2D6B2DE71CCE39C618FF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524ABD77BD77BD77BD7763480044
      293529256B2DB12929254B29082108219452FF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524ABD77BD77BD77BD7763540050
      105ED65A29254A296B2D2925CE39B556FF7FFF7FFF7FFF7FF1398E29810E810E
      810EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E2900680068
      0068FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E2997319731
      9731FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524ADE7BDE7BDE7BDE7BE7604260
      1062DE7BBD775A6B9452EF3D9452FF7FFF7FFF7FFF7FFF7FF1398E29810EC41A
      C41A810E810EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E2900582170
      217000680068FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E2976011C0E
      1C0E97319731FF7FFF7FFF7FFF7FFF7FFF7F524ADE7BBD7BDE7BDE7BCE71EF75
      736ADE7BDE7FDE7FD65AFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29810EC41A
      441FC41AC41A810E810E810EFF7FFF7FFF7FFF7FFF7FFF7FF1398E2900582170
      227821702170006800680068FF7FFF7FFF7FFF7FFF7FFF7FF1398E2976011C0E
      9D2A1C0E1C0E973197319731FF7FFF7FFF7F524ABD77CE757B6F7B73317A737A
      EF65F76E8C69FF7FD65AFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29810EC41A
      441F441FC41AC41A441FC41A810E810EFF7FFF7FFF7FFF7FF1398E2900582170
      22782278217000682278217000680068FF7FFF7FFF7FFF7FF1398E2976011C0E
      9D2A9D2A1C0E1C0E9D2A1C0E97319731FF7F524ABD77107E947AEF75B57E187F
      EF791076317ADE7FD65AFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29810EC41A
      441F441FC41AC41A441FC41AC41A041B810EFF7FFF7FFF7FF1398E2900582170
      227822782170006822782170006821700068FF7FFF7FFF7FF1398E2976011C0E
      9D2A9D2A1C0E1C0E9D2A1C0E1C0EDA0D97319452D65AF75EF75EFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FD65AFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29810EC41A
      441F441FC41AC41A810E810E810E810EFF7FFF7FFF7FFF7FF1398E2900582170
      22782278217021700068006800680068FF7FFF7FFF7FFF7FF1398E2976011C0E
      9D2A9D2A1C0E1C0E9731973197319731FF7FFF7F734E9C73F75EDE7BFF7FFF7F
      FF7FFF7FFF7FFF7FD65AFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29810EC41A
      441F810E810E810EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E2900582170
      2278006800680068FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E2976011C0E
      9D2A973197319731FF7FFF7FFF7FFF7FFF7FFF7FFF7F734E1863BD77DE7BFF7F
      FF7FFF7FFF7FFF7FD65AFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E29810E810E
      810EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E2900680068
      0068FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF1398E2997319731
      9731FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F94529452B556B556
      B556B556B556B5569452FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F893D574AFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F893D574AFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FD8567842373A373A17361636
      F631F631F631D52DD52DD529B84EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7F10421042FF7FFF7FFF7FFF7FFF7FFF7F6D622372E951584AFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6D622372E951584AFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1636DE7BBD779C739C739C73
      9C739D73BE779C73954E744AD52DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      100010001042FF7FFF7FFF7FFF7FFF7FFF7FC97ECA7E2476E951584AFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FC97ECA7E2476E951584AFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1636FF7F3D5B3C5B3D5F3C5F
      3C5B3C5B5D5F7E637E63D55AD52DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1000
      100010001042FF7FFF7FFF7FFF7FFF7FFF7FFF7FCA7ECA7E0372E951584AFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCA7ECA7E0372E951584AFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1636FF7FBD77DE7BDE7BBD77
      BD77DD7BDD7BDE7BFF7F9C73D52DFF7FFF7FFF7FFF7FFF7FFF7FFF7F10001000
      100010001042104210421042104210421042FF7FFF7FCA7EC97E2372E951574A
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCA7EC97E2372E951574A
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1636FF7F3E5B3D573D573D57
      3D573D573D573D573D57DE7BF52DFF7FFF7FFF7FFF7FFF7FFF7F100010001000
      100010001000100010001000100010001000FF7FFF7FFF7FCA7EC97E046EAB39
      FF7FF539984EDA52994EFF7FFF7FFF7FFF7FFF7FFF7FFF7FCA7EC97E046EAB39
      FF7FF539984EDA52994EFF7FFF7FFF7FFF7FFF7F1636FF7FFF7FFF7FFF7FFF7F
      620CA318F75EFF7FFF7F9C73F52DFF7FFF7FFF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001000FF7FFF7FFF7FFF7FEA7E56775446
      76469E67FF6BFF6BFF6B7C5FB952FF7FFF7FFF7FFF7FFF7FFF7FEA7E56775446
      76469E67FF6BFF6BFF6B7C5FB952FF7FFF7FFF7F1636FF7F5E5B5E5F5E5F5E5F
      E41CA36E216AA26E5E5F9C73F631FF7FFF7FFF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001000FF7FFF7FFF7FFF7FFF7FD95ADA52
      BF63FF6BFF6BFF6BFF6FFF77DE773646FF7FFF7FFF7FFF7FFF7FFF7FD95ADA52
      BF63FF6BFF6BFF6BFF6FFF77DE773646FF7FFF7F1636FF7FFF7FFF7FFF7FFF7F
      DE7FF47F687F206EA1729C73F631FF7FFF7FFF7FFF7FFF7FFF7F100010001000
      100010001000100010001000100010001000FF7FFF7FFF7FFF7FFF7F58467E5B
      5E53DF67FF6BFF6FFF77FF7BFF7F5B5FFF7FFF7FFF7FFF7FFF7FFF7F58467E5B
      5E53DF67FF6B760DFF77FF7BFF7F5B5FFF7FFF7F1636FF7F3E5B5E5B5E5B5E5B
      5E5B5E5BB27F4E7B216AA16EF631FF7FFF7FFF7FFF7FFF7FFF7FFF7F10001000
      100010001863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFB529F57
      3E4B5C635C635C635C635C63FF77BE6B784AFF7FFF7FFF7FFF7FFF7FFB529F57
      3E4BDF675C63760D5C635C63FF77BE6B784AFF7F1636FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FD27F6D7B006A836AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1000
      100010001042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1C577F57
      FD42760D760D760D760D760DFF6FDE6BB84EFF7FFF7FFF7FFF7FFF7F1C577F57
      FD42760D760D760D760D760DFF6FDE6BB84EFF7F1636FF7F3E5B5E5B5E5B5E5B
      5E5B5E5B5E5B5E5B966F6E7B92528D45F762FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      100010001042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFB569F5B
      FD423E4BBF63FF6FFF6FFF6FFF6FBE6B984EFF7FFF7FFF7FFF7FFF7FFB569F5B
      FD423E4BBF63760DBF63FF6FFF6FBE6B984EFF7F163AFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FB57B544A4A7D4B6DFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F784ABF63
      BF635E533E4F9E5BDF67DF6BFF6B7C5FFF7FFF7FFF7FFF7FFF7FFF7F784ABF63
      BF635E533E4F760DDF67DF6BFF6B7C5FFF7FFF7F1636FF7FFF7F514A3146524A
      524A524A524AEF3DB6569B73F631EF75CE71FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1B57
      FF7FDF773E4BFD423E4F9F5BDF637746FF7FFF7FFF7FFF7FFF7FFF7FFF7F1B57
      FF7FDF773E4BFD423E4F9F5BDF637746FF7FFF7F373AFB56DA52764A9552734E
      945294529452744A5542FB52F631FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FA5EBE6BBF639F579F5B7E5BB94EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FA5EBE6BBF639F579F5B7E5BB94EFF7FFF7FFF7F3A67B94A9946994A78461042
      524AEF41CF39163617361736F862FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FB94AB94EFB52FB52FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FB94AB94EFB52FB52FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F3967F762
      3967B556B55A3967FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10421042FF7F
      FF7F10421042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F100010001042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1000
      10001042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1042F75ED65A1042
      10421042BD77104210421042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1000100010001042FF7FFF7FFF7FFF7FFF7FFF7FFF7F10001000
      10001042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F10421042FF7FFF7FFF7FFF7FFF7FFF7F10429C73D65AD65AD65A
      4A29292510423967BD771863104210421042FF7FFF7FFF7F1042104210421042
      10421042186310001000100010001042FF7FFF7FFF7FFF7FFF7F100010001000
      100010421042104210421042104210421042FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F100010001042FF7FFF7FFF7FFF7F10427B6F5A6B945294529452
      4A2942084208630C4208524A39671042FF7FFF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001042FF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001042FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1000100010001042FF7FFF7F10425A6B5A6B94527C6F5B6B3967
      1863D65A734ECF3942084208420810423146FF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001000FF7FFF7F10001000100010001000
      100010001000100010001000100010001042FF7FFF7FFF7F1042104210421042
      10421042186310001000100010001042FF7F10425A6B9452DE7BFF7FFF7F9D77
      9C739C737B6F3967F75E9452CE39524A3146FF7FFF7FFF7F1000100010001000
      10001000100010001000100010001000FF7FFF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001042FF7FFF7FFF7F1000100010001000
      10001000100010001000100010001000104210429452FF7FFF7FFF7F7B6F9556
      B656F85E3A679C739C735A6B186394521042FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F18631000100010001000FF7FFF7FFF7FFF7FFF7FFF7F100010001000
      10001863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001000FF7F10421042DE7BF85E3246744E
      B5569552B656B556B65639677B6F5A6B1042FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1000100010001042FF7FFF7FFF7FFF7FFF7FFF7FFF7F10001000
      10001042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001000FF7FFF7FFF7F1042994A7742343E
      123EF13D324A9452D75A5A6B39671042FF7FFF7FFF7FFF7F1042104210421042
      10421042186310001000100010001042FF7FFF7FFF7FFF7FFF7F100010001000
      100010421042104210421042104210421042FF7FFF7FFF7F1000100010001000
      10001000100010001000100010001000FF7FFF7FFF7FFF7FFF7F794EBF637F5B
      1D4FBA469942794E534A10421042FF7FFF7FFF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001042FF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001042FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1000100010001000FF7FFF7FFF7FFF7FFF7FFF7F794E9F677F5F
      7F5B7F535F4F794EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001000FF7FFF7F10001000100010001000
      100010001000100010001000100010001042FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F100010001000FF7FFF7FFF7FFF7FFF7FFF7F794EBF6F9F679F63
      7F5F7F57794EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1000100010001000
      10001000100010001000100010001000FF7FFF7FFF7FFF7F1000100010001000
      100010001000100010001000100010001042FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F10001000FF7FFF7FFF7FFF7FFF7FFF7FFF7F794EDF73BF6F9F67
      9F637F5B794EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1000100010001000FF7FFF7FFF7FFF7FFF7FFF7F100010001000
      10001863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F794EFF7BFF7BDF73BF6B
      BF675E5F794EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F100010001000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10001000
      10001042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F794E794E794EDF77BF6F
      9F6B794EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F10001000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1000
      10001042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F794E794E
      794EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF87FFFFFFFFFFFF0003E7FFE7FFE7FF
      0001E7FFE7FFE7FF0000E7FFE7FFE7FF0000E7FFE7FFE7FF0000E7FFE7FFE7FF
      0000E7FFE7FFE7FF0001E0FFE0FFE0FF0003E03FE03FE03F000FE007E007E007
      000FE001E001E001000FE000E000E000000FE001E001E001800FE01FE01FE01F
      C00FE0FFE0FFE0FFE00FFFFFFFFFFFFFFFFF9FFF9FFF8003FF3F0FFF0FFF8003
      FE3F07FF07FF8003FC3F83FF83FF8003F800C1FFC1FF8003F000E10FE10F8003
      E000F003F0038003C000F801F8018003C000F801F8018003E000F800F8008003
      F03FF800F8008000F83FF800F8008000FC7FF801F8018000FFFFFC01FC018003
      FFFFFE03FE038003FFFFFF0FFF0FF81FF33FFF87FC7FFFFFE007FF83F87FFFCF
      C000E001F000FF878001C000E000FF830000C0008000E0010000C0018000C000
      0000C003C001C0008000FF83E07FC000E001E001F000C001F003C000E000C003
      F01FC0008000FF87E03FC0018000FF8FE03FC003C001FF9FC03FFF87E07FFFFF
      C07FFF8FF07FFFFFF8FFFF9FF8FFFFFF00000000000000000000000000000000
      000000000000}
  end
  object MainMenu1: TMainMenu
    Left = 176
    Top = 72
    object File1: TMenuItem
      Caption = 'File'
      object Print1: TMenuItem
        Caption = 'Print'
        OnClick = btnPrintClick
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
  end
  object dsPages: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'SELECT PageID, OrderID'#13#10'FROM dtPages'#13#10'WHERE DocumentID = :Docume' +
      'ntID'#13#10'ORDER BY OrderID'
    DataSource = dtsDocuments
    Parameters = <
      item
        Name = 'DocumentID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 328
    Top = 248
  end
  object ppmView: TPopupMenu
    Left = 248
    Top = 72
    object Accepted1: TMenuItem
      Caption = 'Only Accepted'
      OnClick = Accepted1Click
    end
    object Rejected1: TMenuItem
      Caption = 'Only Rejected'
      OnClick = Rejected1Click
    end
    object AcceptedRejected1: TMenuItem
      Caption = 'Accepted && Rejected'
      OnClick = AcceptedRejected1Click
    end
  end
  object dsDocPath: TADODataSet
    Connection = dtmMain.dbData
    CursorType = ctStatic
    CommandText = 
      'DECLARE @DocPath VARCHAR(100)'#13#10#13#10'EXEC bsLoanDocPath :LoanID, @Do' +
      'cPath OUTPUT'#13#10#13#10'SELECT @DocPath'
    Parameters = <
      item
        Name = 'LoanID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 440
    Top = 248
  end
end
