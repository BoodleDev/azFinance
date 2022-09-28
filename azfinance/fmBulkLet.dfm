inherited frmBulkLet: TfrmBulkLet
  Tag = 1008
  Left = 98
  Top = 93
  Width = 637
  Height = 369
  Caption = 'Bulk letters'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 587
    Width = 42
    Height = 340
    ButtonWidth = 42
    object btnOpen: TToolButton
      Left = 0
      Top = 36
      Caption = 'Open'
      ImageIndex = 3
      Wrap = True
      OnClick = btnOpenClick
    end
    object btnPrintCurr: TToolButton
      Left = 0
      Top = 72
      Caption = 'Print'
      ImageIndex = 1
      Wrap = True
      OnClick = btnPrintCurrClick
    end
    object btnPrintAll: TToolButton
      Left = 0
      Top = 108
      Caption = 'Print All'
      ImageIndex = 26
      OnClick = btnPrintAllClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 587
    Height = 340
    object grdClients: TDBGrdClr
      Left = 0
      Top = 104
      Width = 587
      Height = 107
      Align = alTop
      DataSource = dtmBulkLet.dtsLoanDet
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdClientsDrawColumnCell
      OddColor = clInfoBk
    end
    object pnlFilter: TPanel
      Left = 0
      Top = 0
      Width = 587
      Height = 104
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 55
        Height = 14
        Caption = 'Filter report'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 0
        Top = 90
        Width = 587
        Height = 14
        Align = alBottom
        Caption = '  Current filter'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object imgGreen: TImage
        Left = 362
        Top = 7
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
      object imgRed: TImage
        Left = 384
        Top = 7
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
      object memFilter: TMemo
        Left = 0
        Top = 37
        Width = 587
        Height = 53
        Align = alBottom
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object btnSetFilter: TBitBtn
        Left = 72
        Top = 4
        Width = 120
        Height = 28
        Caption = 'Set filter'
        TabOrder = 1
        OnClick = btnSetFilterClick
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000013000000130000000100
          1800000000007404000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C07B7B9439396310104A08084A1818523939637B7B94C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0313163
          00004A00005A00006B00006B00006300005A00004A313163C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C018186308087308089408
          089408089408088408087300007300006B000063181852C0C0C0C0C0C0C0C0C0
          C0C0C0000000C0C0C0C0C0C0C0C0C031317B08089C1010AD0808A50808A50808
          A508089C08089408088408087300007300006331315AC0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C07B7B9C0808941010BD1010BD1010BD1010BD1010BD1010AD
          1010AD08089C08089408087300007300004A7B7B94C0C0C0C0C0C0000000C0C0
          C0C0C0C039399C1818BD1818CE2121CE2121CE2121CE2121CE1818BD1818BD10
          10B50808A508089408088400005A393963C0C0C0C0C0C0000000C0C0C0C0C0C0
          2121AD1818D62929D62929DE3939E73939E73131DE2929D62121CE1818BD1010
          B50808A5080894080873181852C0C0C0C0C0C0000000C0C0C0C0C0C01818BD21
          21E73939EF3939EF4242E74242E74242E73939E73131DE2929D61818BD1010B5
          08089C080884080852C0C0C0C0C0C0000000C0C0C0C0C0C02929D63131EF4242
          EF4A4AF75252FF5A5AF75252F74A4AEF4242E73131DE2121CE1818BD1010AD08
          089418185AC0C0C0C0C0C0000000C0C0C0C0C0C04242E73131FF4A4AF75A5AFF
          7373FF7373FF6B6BFF5A5AFF5252F74242E73131DE2121CE1010B50808843939
          73C0C0C0C0C0C0000000C0C0C0C0C0C07B7BCE3131FF5252FF6B6BFF8C8CFFAD
          ADFF8C8CFF6B6BFF5A5AF74A4AEF3939E72121D61818BD0808737B7B9CC0C0C0
          C0C0C0000000C0C0C0C0C0C0C0C0C04A4AF74A4AF76B6BFF8C8CFFADADFF9C9C
          FF7373FF5A5AFF4A4AF73939E72929D61010B531318CC0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C04242FF5A5AFF7373FF8484FF7B7BFF6B6BFF
          5A5AFF4A4AF73939EF2121D62121A5C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C05252F75252FF6363FF6363FF5A5AFF5252FF39
          39F72121E73939BDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C08484DE5252F74A4AF74242FF3939F74A4AE77B7B
          CEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0000000}
      end
      object btnFilterDet: TBitBtn
        Left = 192
        Top = 4
        Width = 120
        Height = 28
        Caption = 'Filter detail'
        TabOrder = 2
        OnClick = btnFilterDetClick
      end
    end
    object pnlLetter: TPanel
      Left = 0
      Top = 211
      Width = 587
      Height = 44
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object lblChoose: TLabel
        Left = 96
        Top = 16
        Width = 109
        Height = 13
        Caption = 'Choose a letter to print:'
      end
      object cmbLetters: TComboBox
        Left = 232
        Top = 8
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object dbrLetter: TDBRichEdit
      Left = 0
      Top = 255
      Width = 587
      Height = 85
      Align = alClient
      DataField = 'LetterBody'
      DataSource = dtmBulkLet.dtsLetters
      TabOrder = 3
      Visible = False
    end
    object redLetter: TRichEdit
      Left = 0
      Top = 255
      Width = 587
      Height = 85
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        'Letter to be printed ...')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 4
    end
  end
end
