object frmMESum: TfrmMESum
  Tag = 1030
  Left = 206
  Top = 126
  Width = 637
  Height = 455
  Caption = 'ME Reports'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 421
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object splScreen: TSplitter
      Left = 0
      Top = 271
      Width = 592
      Height = 3
      Cursor = crVSplit
      Align = alTop
      AutoSnap = False
      Color = 16744448
      ParentColor = False
    end
    object pnlRepSetup: TPanel
      Left = 0
      Top = 0
      Width = 592
      Height = 81
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Label2: TLabel
        Left = 8
        Top = 36
        Width = 81
        Height = 14
        Caption = 'Report templates'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblCurrentSort: TLabel
        Left = 8
        Top = 61
        Width = 58
        Height = 14
        Caption = 'Current sort'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblSort: TLabel
        Left = 96
        Top = 61
        Width = 32
        Height = 14
        Caption = 'normal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnReportMenu: TSpeedButton
        Left = 293
        Top = 33
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        Caption = 'Report menu '
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
          FFF07F3FF3FF3FFF3FF70F00F00F000F00F07F773773777377370FFFFFFFFFFF
          FFF07F3FF3FF33FFFFF70F00F00FF00000F07F773773377777F70FEEEEEFF0F9
          FCF07F33333337F7F7F70FFFFFFFF0F9FCF07F3FFFF337F737F70F0000FFF0FF
          FCF07F7777F337F337370F0000FFF0FFFFF07F777733373333370FFFFFFFFFFF
          FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
          C880733777777777733700000000000000007777777777777777333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = btnReportMenuClick
      end
      object btnPrintSumTot: TSpeedButton
        Left = 461
        Top = 45
        Width = 121
        Height = 24
        Anchors = [akTop, akRight]
        Caption = 'Print Summary totals'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        Visible = False
        OnClick = btnPrintSumTotClick
      end
      object Label3: TLabel
        Left = 8
        Top = 8
        Width = 56
        Height = 14
        Caption = 'Report data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnGetData: TSpeedButton
        Left = 213
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Get data'
        NumGlyphs = 2
        OnClick = btnGetDataClick
      end
      object imgData: TImage
        Left = 357
        Top = 6
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
      object imgRed: TImage
        Left = 412
        Top = 60
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
        Left = 394
        Top = 60
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
      object cbxRepTemplate: TComboBox
        Left = 96
        Top = 33
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbxRepTemplateChange
      end
      object cbxGrpReport: TCheckBox
        Left = 480
        Top = 22
        Width = 82
        Height = 17
        Caption = 'Group report'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object dtpME: TDateTimePicker
        Left = 96
        Top = 5
        Width = 89
        Height = 21
        CalAlignment = dtaLeft
        Date = 37333.6307806713
        Time = 37333.6307806713
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 2
      end
    end
    object pnlRepM: TPanel
      Left = 0
      Top = 81
      Width = 592
      Height = 190
      Align = alTop
      BevelOuter = bvLowered
      ParentColor = True
      TabOrder = 1
      object pnlCurRepFld: TPanel
        Left = 175
        Top = 1
        Width = 192
        Height = 188
        Align = alRight
        ParentColor = True
        TabOrder = 0
        object lnlCurRepFld: TLabel
          Left = 1
          Top = 1
          Width = 190
          Height = 14
          Align = alTop
          Caption = ' Current report'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lbxCurRep: TListBox
          Tag = 9
          Left = 1
          Top = 42
          Width = 190
          Height = 145
          Align = alClient
          DragMode = dmAutomatic
          ItemHeight = 13
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9')
          Style = lbOwnerDrawFixed
          TabOrder = 0
          OnDragDrop = lbxCurRepDragDrop
          OnDragOver = lbxCurRepDragOver
        end
        object pnlBtnCurRep: TPanel
          Left = 1
          Top = 15
          Width = 190
          Height = 27
          Align = alTop
          BevelOuter = bvLowered
          ParentColor = True
          TabOrder = 1
          object btnMovUp: TSpeedButton
            Left = 1
            Top = 1
            Width = 30
            Height = 23
            Flat = True
            Glyph.Data = {
              9A050000424D9A0500000000000036000000280000001E0000000F0000000100
              18000000000064050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF040404040404040404040404040404FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF00808000808000808000808000808000000000000000000000
              00000000000080800080800080800080800080800000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF040404FF9933FF9933FF9933FF6633FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF008080008080008080008080008080000000C0C0C0C0C0C0C0C0C00000
              000080800080800080800080800080800000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF040404FF9933FFCC33FFFF99FF6633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              8080008080008080008080008080000000C0C0C0C0C0C0C0C0C0000000008080
              0080800080800080800080800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404
              FF9933FFCC33FFFF99FF6633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080800080
              80008080008080008080000000C0C0C0C0C0C0C0C0C000000000808000808000
              80800080800080800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF9933FF
              CC33FFFF99FF6633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008080008080008080
              008080008080000000C0C0C0C0C0C0C0C0C00000000080800080800080800080
              800080800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF9933FFCC33FFFF
              99FF6633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00808000808000808000808000
              8080000000C0C0C0C0C0C0C0C0C0000000008080008080008080008080008080
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF9933FFCC33FFFF99FF6633
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080800080800080800080800080800000
              00C0C0C0C0C0C0C0C0C00000000080800080800080800080800080800000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF040404FF9933FFCC33FFFF99FF6633FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF008080008080008080008080008080000000C0C0C0
              C0C0C0C0C0C00000000080800080800080800080800080800000FFFFFF040404
              040404040404040404040404FF9933FFCC33FFFF990404040404040404040404
              04040404FFFFFF008080000000000000000000000000000000C0C0C0C0C0C0C0
              C0C00000000000000000000000000000000080800000FFFFFFFFFFFF040404FF
              9933FF9933FF9933FF9933FFCC33FFFF99FFFF99FFFF99FFFFCCFF6633FFFFFF
              FFFFFF008080008080000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C00000000000000080800080800000FFFFFFFFFFFFFFFFFF040404FF99
              33FFCC33FFCC33FFCC33FFCC33FFFF99FFFFCCFF6633FFFFFFFFFFFFFFFFFF00
              8080008080008080000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
              0000000080800080800080800000FFFFFFFFFFFFFFFFFFFFFFFF040404FF9933
              FFCC33FFCC33FFFF99FFFFCCFF6633FFFFFFFFFFFFFFFFFFFFFFFF0080800080
              80008080008080000000000000C0C0C0C0C0C0C0C0C000000000000000808000
              80800080800080800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF9933FF
              FF99FFFFCCFF6633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008080008080008080
              008080008080000000000000C0C0C00000000000000080800080800080800080
              800080800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FFFFCCFF66
              33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00808000808000808000808000
              8080008080000000000000000000008080008080008080008080008080008080
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080800080800080800080800080800080
              800080800000000080800080800080800080800080800080800080800000}
            NumGlyphs = 2
            OnClick = btnMovUpClick
          end
          object btnMovDown: TSpeedButton
            Left = 159
            Top = 1
            Width = 30
            Height = 23
            Flat = True
            Glyph.Data = {
              9A050000424D9A0500000000000036000000280000001E0000000F0000000100
              18000000000064050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF00808000808000808000808000808000808000808000000000
              80800080800080800080800080800080800080800000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF040404FF6633040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0080800080800080800080800080800080800000000000000000000080
              800080800080800080800080800080800000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF040404FF6633FFCC33FFCC33040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              8080008080008080008080008080000000000000C0C0C0000000000000008080
              0080800080800080800080800000FFFFFFFFFFFFFFFFFFFFFFFF040404FF6633
              FFCC33FFCC33FFFF99FFCC33040404FFFFFFFFFFFFFFFFFFFFFFFF0080800080
              80008080008080000000000000C0C0C0C0C0C0C0C0C000000000000000808000
              80800080800080800000FFFFFFFFFFFFFFFFFF040404FF6633FFCC33FFCC33FF
              CC33FFCC33FFFF99FFCC33040404FFFFFFFFFFFFFFFFFF008080008080008080
              000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000080800080
              800080800000FFFFFFFFFFFF040404FF6633FF9933FF9933FF9933FFCC33FFFF
              CCFFFFCCFFFFCCFFCC33040404FFFFFFFFFFFF008080008080000000000000C0
              C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000008080008080
              0000FFFFFF040404040404040404040404040404FF9933FFCC33FFFFCCFF6633
              FF6633FF6633FF6633FF6633FFFFFF0080800000000000000000000000000000
              00C0C0C0C0C0C0C0C0C00000000000000000000000000000000080800000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF040404FF9933FFCC33FFFFCCFF6633FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF008080008080008080008080008080000000C0C0C0
              C0C0C0C0C0C00000000080800080800080800080800080800000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF040404FF9933FFCC33FFFFCCFF6633FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF008080008080008080008080008080000000C0C0C0C0C0C0C0
              C0C00000000080800080800080800080800080800000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF040404FF9933FFCC33FFFFCCFF6633FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF008080008080008080008080008080000000C0C0C0C0C0C0C0C0C00000
              000080800080800080800080800080800000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF040404FF9933FFCC33FFFFCCFF6633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              8080008080008080008080008080000000C0C0C0C0C0C0C0C0C0000000008080
              0080800080800080800080800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404
              FF9933FFCC33FFFFCCFF6633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080800080
              80008080008080008080000000C0C0C0C0C0C0C0C0C000000000808000808000
              80800080800080800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF9933FF
              CC33FFFFCCFF6633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008080008080008080
              008080008080000000C0C0C0C0C0C0C0C0C00000000080800080800080800080
              800080800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF9933FFFFCCFFFF
              CCFF6633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00808000808000808000808000
              8080000000C0C0C0C0C0C0C0C0C0000000008080008080008080008080008080
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FF6633FF6633FF6633FF6633
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080800080800080800080800080800000
              000000000000000000000000000080800080800080800080800080800000}
            NumGlyphs = 2
            OnClick = btnMovDownClick
          end
          object lblsetFldOrd: TLabel
            Left = 47
            Top = 6
            Width = 95
            Height = 13
            Caption = 'Set report field order'
          end
        end
      end
      object pnlAvlRepFld: TPanel
        Left = 1
        Top = 1
        Width = 174
        Height = 188
        Align = alClient
        ParentColor = True
        TabOrder = 1
        object lblAvlRepFlds: TLabel
          Left = 1
          Top = 1
          Width = 172
          Height = 14
          Align = alTop
          Caption = ' Available fields for report'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lbxRepFlds: TListBox
          Tag = 99
          Left = 1
          Top = 42
          Width = 172
          Height = 145
          Align = alClient
          DragMode = dmAutomatic
          ItemHeight = 13
          Sorted = True
          Style = lbOwnerDrawFixed
          TabOrder = 0
          OnDblClick = lbxRepFldsDblClick
        end
        object pnlBtnAvlFld: TPanel
          Left = 1
          Top = 15
          Width = 172
          Height = 27
          Align = alTop
          BevelOuter = bvLowered
          ParentColor = True
          TabOrder = 1
          object btnAddToRep: TSpeedButton
            Left = 1
            Top = 1
            Width = 100
            Height = 25
            Caption = 'Add to report'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333FF33333333FF333993333333300033377F3333333777333993333333
              300033F77FFF3333377739999993333333333777777F3333333F399999933333
              33003777777333333377333993333333330033377F3333333377333993333333
              3333333773333333333F333333333333330033333333F33333773333333C3333
              330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
              993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
              333333333337733333FF3333333C333330003333333733333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
            OnClick = lbxRepFldsDblClick
          end
        end
      end
      object pnlFilterData: TPanel
        Left = 403
        Top = 1
        Width = 188
        Height = 188
        Align = alRight
        ParentColor = True
        TabOrder = 2
        object memFilter: TMemo
          Left = 1
          Top = 74
          Width = 186
          Height = 113
          Align = alClient
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 186
          Height = 73
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            Left = 0
            Top = 59
            Width = 186
            Height = 14
            Align = alBottom
            Caption = ' Current filter detail'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object btnFilterDet: TSpeedButton
            Tag = 101
            Left = 1
            Top = 37
            Width = 184
            Height = 22
            Caption = 'Filter detail'
            OnClick = btnFilterDetClick
          end
          object btnSetFilter: TSpeedButton
            Tag = 101
            Left = 1
            Top = 15
            Width = 184
            Height = 22
            Caption = 'Set filter'
            Glyph.Data = {
              AA040000424DAA04000000000000360000002800000013000000130000000100
              18000000000074040000C40E0000C40E00000000000000000000C0C0C0C0C0C0
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
            OnClick = btnSetFilterClick
          end
          object lblFilterData: TLabel
            Left = 0
            Top = 0
            Width = 186
            Height = 14
            Align = alTop
            Caption = ' Filter for data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
        end
      end
      object pnlspace: TPanel
        Left = 367
        Top = 1
        Width = 36
        Height = 188
        Align = alRight
        TabOrder = 3
        object imgTrash: TImage
          Left = 2
          Top = 43
          Width = 32
          Height = 32
          AutoSize = True
          Center = True
          DragMode = dmAutomatic
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            0000200000000100080000000000000400000000000000000000000100000001
            000000000000FFFFFF000080000000808000800000008000800080800000C0C0
            C000C0DCC000F0CAA600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCC
            FF0099CCFF0066CCFF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699
            FF003399FF000099FF00FF66FF00CC66FF009966FF006666FF003366FF000066
            FF00FF33FF00CC33FF009933FF006633FF003333FF000033FF00CC00FF009900
            FF006600FF003300FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FF
            CC0000FFCC00FFCCCC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99
            CC00CC99CC009999CC006699CC003399CC000099CC00FF66CC00CC66CC009966
            CC006666CC003366CC000066CC00FF33CC00CC33CC009933CC006633CC003333
            CC000033CC00FF00CC00CC00CC009900CC006600CC003300CC000000CC00FFFF
            9900CCFF990099FF990066FF990033FF990000FF9900FFCC9900CCCC990099CC
            990066CC990033CC990000CC9900FF999900CC99990099999900669999003399
            990000999900FF669900CC66990099669900666699003366990000669900FF33
            9900CC33990099339900663399003333990000339900FF009900CC0099009900
            9900660099003300990000009900FFFF6600CCFF660099FF660066FF660033FF
            660000FF6600FFCC6600CCCC660099CC660066CC660033CC660000CC6600FF99
            6600CC99660099996600669966003399660000996600FF666600CC6666009966
            6600666666003366660000666600FF336600CC33660099336600663366003333
            660000336600FF006600CC00660099006600660066003300660000006600FFFF
            3300CCFF330099FF330066FF330033FF330000FF3300FFCC3300CCCC330099CC
            330066CC330033CC330000CC3300FF993300CC99330099993300669933003399
            330000993300FF663300CC66330099663300666633003366330000663300FF33
            3300CC33330099333300663333003333330000333300FF003300CC0033009900
            3300660033003300330000003300CCFF000099FF000066FF000033FF0000FFCC
            0000CCCC000099CC000066CC000033CC000000CC0000FF990000CC9900009999
            0000669900003399000000990000FF660000CC66000099660000666600000066
            000033660000FF330000CC33000099330000663300003333000000330000CC00
            00009900000066000000330000000000DD000000BB000000AA00000088000000
            770000005500000044000000220000DD000000BB000000AA0000008800000077
            0000005500000044000000220000DDDDDD005555550077777700777777004444
            4400222222001111110077000000550000004400000022000000F0FBFF00A4A0
            A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF00010101010101010101010101010101010000ECECECEC0101010101010101
            0101010101010101010101010101010100002BAC00ECECECEC01010101010101
            010101010101010101010101010100007B7B2BACAC00ECECECEC010101010101
            01010101010101010101010100007B7B7B7B2BACACAC00ECECECEC0101010101
            0101010101010101010101007B7B7B7B7B7B2BACACACAC00ECECECEC01010101
            01010101010101010101007B7B7B7B7B7B7B2BACACACACAC00ECECECEC010101
            01010101010101010101007B7B7B7B7B7B7B2BACACACACAC00ECECECECEC0101
            01010101010101010101007B7B7B7B7B7B7B2BACACACACACAC00ECECECECEC01
            010101010101010101007B7B7B7B7B7B7B7B2BACACACACACAC00ECECECECEC01
            010101010101010101007B7B7B7B7B7B7B7B2BACACACACACAC00ECECEC010101
            010101010101010101007B7B7B7B7B7B7B7B7BACACACACACACAC000101010101
            0101010101010101007B7B7B7B7B7B7BACAC7BACACACACACACAC000101010101
            0101010101010101007B7B7B7B7BACACAC000000ACACACACACAC000101010101
            0101010101010101007B7B7BACACACAC00F0F0F000ACACACACACAC0001010101
            01010101010101007B7BACAC00000000F0EDEDEDF00000ACACACAC0001010101
            0101010101010100ACACAC00F0F0F0F0EDED0707EDF0F000ACACAC0001010101
            0101010101010100ACAC0000F0F0EDED07075DED07EDF000ACACAC0001010101
            01010101010100AC0000F0F0EDED0707EFED5DEDED07EDF00000ACAC00010101
            0101010101010000F0F0EDED070700F1EFED5DEDEDED07EDF0F000AC00010101
            010101010100F0F0EDED0707000000F1EFED5DEDEDEDED07EDF000AC00010101
            010101010100EDED07070000000000F1EFED5DEDEDEDEDED07EDF00000010101
            010101010100070700000000000000F1EFED5DEDEDEDEDEDED07EDF0F0000101
            010101010101000000000000000000F1EFED5DEDEDEDEDEDEDED07EDF0000101
            010101010101010000000000000000F1EFED5DEDEDEDEDEDEDEDED07EDF00001
            010101010101010100000000000000F1EFED5DEDEDEDEDEDEDEDEDED07ED0001
            010101010101010101000000000000F1EFED5DEDEDEDEDEDEDEDEDEDED000001
            010101010101010101010000000000F1EFED5DEDEDEDEDEDEDEDED0000010101
            010101010101010101010100000000F1EFED5DEDEDEDEDEDED00000101010101
            010101010101010101010101000000F1EFED5DEDEDEDED000001010101010101
            010101010101010101010101010000F1EFED5DEDED0000010101010101010101
            010101010101010101010101010100F1EFED5D00000101010101010101010101
            0101010101010101010101010101010000000001010101010101010101010101
            0101}
          Transparent = True
          OnDragDrop = imgTrashDragDrop
          OnDragOver = imgTrashDragOver
        end
      end
    end
    object grdMain: TcdsSortGrd
      Left = 0
      Top = 278
      Width = 592
      Height = 143
      Align = alClient
      DataSource = dtmMESum.dtsMESum
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OddColor = clInfoBk
      SelColor = clNavy
      SelColorFont = clWhite
      SortLabel = lblSort
    end
    object pnlGrd: TPanel
      Left = 0
      Top = 274
      Width = 592
      Height = 4
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
    end
  end
  object tlbBase: TToolBar
    Left = 592
    Top = 0
    Width = 37
    Height = 421
    Align = alRight
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 37
    Caption = 'tlbBase'
    EdgeBorders = []
    Flat = True
    Images = dtmMain.imglstMain
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    object btnExit: TToolButton
      Left = 0
      Top = 0
      Caption = '  Exit  '
      ImageIndex = 2
      Wrap = True
      OnClick = btnExitClick
    end
    object btnPrintRep: TToolButton
      Left = 0
      Top = 36
      Caption = 'Print'
      ImageIndex = 0
      Wrap = True
      OnClick = btnPrintRepClick
    end
    object btnExportToFile: TToolButton
      Left = 0
      Top = 72
      Caption = 'Export'
      ImageIndex = 18
      Wrap = True
      OnClick = btnExportToFileClick
    end
  end
  object pumRepTpml: TPopupMenu
    Left = 305
    Top = 33
    object rtNewRep: TMenuItem
      Caption = 'Save as new report'
      OnClick = rtNewRepClick
    end
    object rtSaveCurRep: TMenuItem
      Caption = 'Save changes to current report'
      OnClick = rtSaveCurRepClick
    end
    object rtChangeRepName: TMenuItem
      Caption = 'Change report name'
      OnClick = rtChangeRepNameClick
    end
    object rtDelRep: TMenuItem
      Caption = 'Delete report'
      OnClick = rtDelRepClick
    end
  end
  object ExportData1: TExportData
    ExportDataSet = dtmMESum.cdsMESum
    RunExport = False
    DoExportLine = False
    VisibleFldOnly = True
    Left = 372
    Top = 178
  end
end
