object frmLoanView: TfrmLoanView
  Tag = 1028
  Left = 174
  Top = 177
  Width = 646
  Height = 419
  Caption = 'Loan Viewer'
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 638
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object Label2: TLabel
      Left = 376
      Top = 8
      Width = 51
      Height = 14
      Caption = 'Loan view'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object cbxLoanView: TComboBox
      Left = 448
      Top = 5
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Visible = False
      OnChange = cbxLoanViewChange
      Items.Strings = (
        'Loan information view'
        'Loan balance view'
        'Loan age view')
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 561
      Height = 81
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Filter report'
      TabOrder = 1
      object imgRed: TImage
        Left = 492
        Top = 39
        Width = 39
        Height = 19
        AutoSize = True
        Center = True
        Picture.Data = {
          07544269746D61701E090000424D1E0900000000000036000000280000002700
          0000130000000100180000000000E8080000C40E0000C40E0000000000000000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C08C8C8C4A4A4A2929292929293939395A5A5A8C8C8CC0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          7B7B9439396310104A08084A1818523939637B7B94C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04A4A4A39393952
          52525A5A5A5A5A5A5252524A4A4A393939525252C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C031316300004A00005A0000
          6B00006B00006300005A00004A313163C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C04A4A4A6B6B6B7373737373736B6B6B6B6B6B
          6363635A5A5A5252524A4A4A4A4A4AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C018186308087308089408089408089408088408087300
          007300006B000063181852C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C04A4A4A8080808080808080808080808080808080807373736B6B6B6363
          635A5A5A4A4A4A525252C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C031
          317B08089C1010AD0808A50808A50808A508089C080894080884080873000073
          00006331315AC0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C09494945A5A5A9494
          949494949494949494948C8C8C8C8C8C8080808080807373736363635A5A5A39
          3939949494C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07B7B9C0808941010BD1010BD
          1010BD1010BD1010BD1010AD1010AD08089C08089408087300007300004A7B7B
          94C0C0C0C0C0C0000000C0C0C0C0C0C0636363949494A4A0A0A4A0A0A4A0A0A4
          A0A09C9C9C9494948C8C8C8C8C8C8080807373736B6B6B5252525A5A5AC0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C039399C1818BD1818CE2121CE2121CE2121CE2121
          CE1818BD1818BD1010B50808A508089408088400005A393963C0C0C0C0C0C000
          0000C0C0C0C0C0C05A5A5AADADADB5B5B5B5B5B5ADADADADADADADADADA4A0A0
          9C9C9C9494948C8C8C8080807373736363634A4A4AC0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C02121AD1818D62929D62929DE3939E73939E73131DE2929D62121CE18
          18BD1010B50808A5080894080873181852C0C0C0C0C0C0000000C0C0C0C0C0C0
          636363B5B5B5BDBDBDBDBDBDBDBDBDBDBDBDB5B5B5ADADADA4A0A09C9C9C9494
          948C8C8C808080737373393939C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01818BD21
          21E73939EF3939EF4242E74242E74242E73939E73131DE2929D61818BD1010B5
          08089C080884080852C0C0C0C0C0C0000000C0C0C0C0C0C0737373B5B5B5C6C6
          C6C6C6C6C6C6C6C6C6C6BDBDBDBDBDBDB5B5B5ADADADA4A0A09494948C8C8C73
          7373393939C0C0C0C0C0C0C0C0C0C0C0C0C0C0C02929D63131EF4242EF4A4AF7
          5252FF5A5AF75252F74A4AEF4242E73131DE2121CE1818BD1010AD0808941818
          5AC0C0C0C0C0C0000000C0C0C0C0C0C08C8C8CC6C6C6D6D6D6D6D6D6D6D6D6D6
          D6D6D6D6D6C6C6C6B5B5B5B5B5B5ADADADA4A0A0949494737373525252C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C04242E73131FF4A4AF75A5AFF7373FF7373FF6B6B
          FF5A5AFF5252F74242E73131DE2121CE1010B5080884393973C0C0C0C0C0C000
          0000C0C0C0C0C0C0ADADADB5B5B5D6D6D6E7E7E7E7E7E7E7E7E7D6D6D6D6D6D6
          C6C6C6BDBDBDB5B5B5A4A0A09C9C9C5A5A5A8C8C8CC0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C07B7BCE3131FF5252FF6B6BFF8C8CFFADADFF8C8CFF6B6BFF5A5AF74A
          4AEF3939E72121D61818BD0808737B7B9CC0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0A4A0A0D6D6D6E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7D6D6D6BDBDBDBDBD
          BDADADAD9494945A5A5AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04A
          4AF74A4AF76B6BFF8C8CFFADADFF9C9CFF7373FF5A5AFF4A4AF73939E72929D6
          1010B531318CC0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0B5B5
          B5E7E7E7E7E7E7E7E7E7E7E7E7D6D6D6D6D6D6C6C6C6ADADADADADAD636363C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04242FF5A5AFF
          7373FF8484FF7B7BFF6B6BFF5A5AFF4A4AF73939EF2121D62121A5C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B5B5B5D6D6D6E7
          E7E7E7E7E7D6D6D6D6D6D6C6C6C69C9C9C737373C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05252F75252FF6363FF6363
          FF5A5AFF5252FF3939F72121E73939BDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B5B5B5A4A0A0A4A0A0B5B5B5
          A4A0A0A4A0A0B5B5B5C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08484DE5252F74A4AF74242FF3939F74A
          4AE77B7BCEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000}
        Transparent = True
      end
      object imgGreen: TImage
        Left = 492
        Top = 39
        Width = 39
        Height = 19
        AutoSize = True
        Center = True
        Picture.Data = {
          07544269746D61701E090000424D1E0900000000000036000000280000002700
          0000130000000100180000000000E8080000C40E0000C40E0000000000000000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0849484395A39184A18084208184A18395A397B8C7BC0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          8C8C8C4A4A4A2929292929293939395A5A5A8C8C8CC0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C031633100420000
          5200086B08086B08086B08004A00004200315A31C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04A4A4A3939395252525A5A
          5A5A5A5A5252524A4A4A393939525252C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0186318087B08088C08088C08088408087B08
          087308086B08086B08005200184A18C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C04A4A4A6B6B6B7373737373736B6B6B6B6B6B6363635A
          5A5A5252524A4A4A4A4A4AC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0317B3108940808A50810A51010A510109C10089408088C08087B080873
          08086B08005200315231C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04A
          4A4A8080808080808080808080808080808080807373736B6B6B6363635A5A5A
          4A4A4A525252C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C084A58408940818BD
          1818BD1818BD1821BD2118B51818AD1810A510089408088408087308086B0800
          4200849484C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09494945A5A5A949494949494
          9494949494948C8C8C8C8C8C8080808080807373736363635A5A5A3939399494
          94C0C0C0C0C0C0000000C0C0C0C0C0C0399C3910C61018CE1829CE2921D62129
          CE2929CE2921C62121BD2118AD18109C10088C08087308005200395A39C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0636363949494A4A0A0A4A0A0A4A0A0A4A0A09C9C
          9C9494948C8C8C8C8C8C8080807373736B6B6B5252525A5A5AC0C0C0C0C0C000
          0000C0C0C0C0C0C021AD2121D62129DE2931E73139DE3939E73939DE3931D631
          29CE2921BD2118AD18109C10088408087308184A18C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C05A5A5AADADADB5B5B5B5B5B5ADADADADADADADADADA4A0A09C9C9C94
          94948C8C8C8080807373736363634A4A4AC0C0C0C0C0C0000000C0C0C0C0C0C0
          18CE1821DE2131EF3142EF424AEF4A4AEF4A4AEF4A42E74239DE3931D63121C6
          2118AD18109C10088408084A08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0636363B5
          B5B5BDBDBDBDBDBDBDBDBDBDBDBDB5B5B5ADADADA4A0A09C9C9C9494948C8C8C
          808080737373393939C0C0C0C0C0C0000000C0C0C0C0C0C029DE2931F7314AEF
          4A52FF525AFF5A63F7635AF75A52EF524AEF4A39DE3929CE2921BD2110A51008
          8C08185218C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0737373B5B5B5C6C6C6C6C6C6
          C6C6C6C6C6C6BDBDBDBDBDBDB5B5B5ADADADA4A0A09494948C8C8C7373733939
          39C0C0C0C0C0C0000000C0C0C0C0C0C042E74231FF314AFF4A5AFF5A73FF737B
          FF7B73FF7363F76352EF5242E74231D63121C62118B518087B08396B39C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C08C8C8CC6C6C6D6D6D6D6D6D6D6D6D6D6D6D6D6D6
          D6C6C6C6B5B5B5B5B5B5ADADADA4A0A0949494737373525252C0C0C0C0C0C000
          0000C0C0C0C0C0C084D68431FF3152FF526BFF6B8CFF8CADFFAD94FF9473FF73
          5AF75A4AEF4A39E73929CE2918BD18086B087B9C7BC0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0ADADADB5B5B5D6D6D6E7E7E7E7E7E7E7E7E7D6D6D6D6D6D6C6C6C6BD
          BDBDB5B5B5A4A0A09C9C9C5A5A5A8C8C8CC0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C04AEF4A4AFF4A6BFF6B8CFF8CADFFAD9CFF9C7BFF7B63FF634AF74A39E7
          3929DE2918B518318C31C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A4
          A0A0D6D6D6E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7D6D6D6BDBDBDBDBDBDADADAD
          9494945A5A5AC0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C042F7
          425AFF5A73FF737BFF7B7BFF7B6BFF6B5AFF5A4AF74A31EF3121D621219C21C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B5B5B5E7E7E7
          E7E7E7E7E7E7E7E7E7D6D6D6D6D6D6C6C6C6ADADADADADAD636363C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052EF524AFF4A63
          FF6363FF635AFF5A4AFF4A39FF3921DE2139BD39C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B5B5B5D6D6D6E7E7E7E7E7
          E7D6D6D6D6D6D6C6C6C69C9C9C737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08CDE8C52EF5242F74239FF39
          39FF3942E74284C684C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B5B5B5A4A0A0A4A0A0B5B5B5A4A0A0A4
          A0A0B5B5B5C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000}
        Transparent = True
        Visible = False
      end
      object Label10: TLabel
        Left = 32
        Top = 25
        Width = 6
        Height = 14
        Caption = '1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 32
        Top = 49
        Width = 6
        Height = 14
        Caption = '2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object btnFilterData: TSpeedButton
        Left = 383
        Top = 20
        Width = 100
        Height = 25
        Caption = 'Filter'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFB78183A47874A47874A47874A47874A47874A4
          7874A47874A47874A47874A47874A47874986B66FF00FFFF00FFFF00FFB78183
          FDEFD9F6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC97F3D1
          99986B66FF00FFFF00FFFF00FFB48176FEF3E399330099330099330099330099
          3300993300993300993300EECC97F3D199986B66FF00FFFF00FFFF00FFB48176
          FFF7EB993300FEFEFEFEFEFEFEFEFE8EA4FDB8C6FDFEFEFE993300EFCD99F3D1
          98986B66FF00FFFF00FFFF00FFBA8E85FFFCF4993300FEFEFEFAFBFE7E98FC03
          35FB597AFCFEFEFE993300F0D0A1F3D29B986B66FF00FFFF00FFFF00FFBA8E85
          FFFFFD993300D6DEFE4368FC0335FB4066FC0436FBD9E0FE993300F0D4A9F5D5
          A3986B66FF00FFFF00FFFF00FFCB9A82FFFFFF9933005274FC1442FBBCC9FDEF
          F2FE1A47FB4F72FC973304F2D8B2F6D9AC986B66FF00FFFF00FFFF00FFCB9A82
          FFFFFF993300E4EAFED9E0FEFEFEFEFEFEFE98ACFD0335FB643459F4DBB9F8DD
          B4986B66FF00FFFF00FFFF00FFDCA887FFFFFF993300FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFE5677FC0335FBF7E1C2F0DAB7986B66FF00FFFF00FFFF00FFDCA887
          FFFFFF9933009933009933009933009933009933008F33112235C80335FBC6BC
          A9986B66FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFD
          F8F3FDF6ECF1E1D5B481760335FB0335FB0335FBFF00FFFF00FFFF00FFE3B18E
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B48176E8B270ECA5
          4A0335FBFF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE4D4D2B48176FAC577CD9377FF00FFFF00FFFF00FFFF00FFEDBD92
          FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB48176CF9B86FF00
          FFFF00FFFF00FFFF00FFFF00FFEDBD92DAA482DAA482DAA482DAA482DAA482DA
          A482DAA482DAA482B48176FF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = btnFilterDataClick
      end
      object btnClearFilter: TSpeedButton
        Left = 383
        Top = 46
        Width = 100
        Height = 25
        Caption = 'Clear filter'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
          0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
          B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
          0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
          00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
          05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
          00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
          0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = btnClearFilterClick
      end
      object cbxFlds: TComboBox
        Left = 40
        Top = 22
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        Sorted = True
        TabOrder = 0
        OnChange = cbxFldsChange
      end
      object cbxFlds2: TComboBox
        Left = 40
        Top = 46
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        Sorted = True
        TabOrder = 1
        OnChange = cbxFlds2Change
      end
      object cbxOps2: TComboBox
        Left = 187
        Top = 46
        Width = 49
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        Items.Strings = (
          '='
          '<'
          '>'
          '<>'
          '<='
          '>=')
      end
      object cbxOps: TComboBox
        Left = 187
        Top = 22
        Width = 49
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
        Items.Strings = (
          '='
          '<'
          '>'
          '<>'
          '<='
          '>=')
      end
      object edtValue: TComboBox
        Left = 240
        Top = 22
        Width = 137
        Height = 21
        Style = csSimple
        ItemHeight = 13
        TabOrder = 4
        OnDrawItem = edtValueDrawItem
      end
      object edtValue2: TComboBox
        Left = 240
        Top = 46
        Width = 137
        Height = 21
        Style = csSimple
        ItemHeight = 13
        TabOrder = 5
        OnDrawItem = edtValue2DrawItem
      end
    end
  end
  object pcView: TPageControl
    Left = 0
    Top = 97
    Width = 638
    Height = 269
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = pcViewChange
    object TabSheet1: TTabSheet
      Caption = 'Loan Infomation View'
      object grdInformation: TDBGrdClr
        Left = 0
        Top = 0
        Width = 630
        Height = 241
        Align = alClient
        DataSource = dtmLoanMan.dtsLoanView
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColumnMoved = grdInformationColumnMoved
        OnDrawColumnCell = grdInformationDrawColumnCell
        OnEnter = grdInformationEnter
        OnKeyPress = grdInformationKeyPress
        OddColor = clInfoBk
        Columns = <
          item
            Expanded = False
            FieldName = 'StatusName'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EntCode'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Surname'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanType'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AmtToFin'
            Title.Alignment = taRightJustify
            Title.Caption = 'Amt to finance'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PayIns'
            Title.Alignment = taRightJustify
            Title.Caption = 'Pay inst.'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanPeriod'
            Title.Alignment = taRightJustify
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IntRate'
            Title.Alignment = taRightJustify
            Width = 53
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Loan Balance View'
      ImageIndex = 1
      object grdBalance: TDBGrdClr
        Left = 0
        Top = 0
        Width = 630
        Height = 241
        Align = alClient
        DataSource = dtmLoanMan.dtsLoanView
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColumnMoved = grdInformationColumnMoved
        OnDrawColumnCell = grdInformationDrawColumnCell
        OnEnter = grdInformationEnter
        OnKeyPress = grdInformationKeyPress
        OddColor = clInfoBk
        Columns = <
          item
            Expanded = False
            FieldName = 'StatusName'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Surname'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotInterest'
            Title.Alignment = taRightJustify
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccBal'
            Title.Alignment = taRightJustify
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanBal'
            Title.Alignment = taRightJustify
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AvlBal'
            Title.Alignment = taRightJustify
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NoOfPay'
            Title.Alignment = taRightJustify
            Title.Caption = 'No. of pay.'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExtendPrd'
            Width = 55
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Loan Age View'
      ImageIndex = 2
      object grdAge: TDBGrdClr
        Left = 0
        Top = 0
        Width = 630
        Height = 241
        Align = alClient
        DataSource = dtmLoanMan.dtsLoanView
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColumnMoved = grdInformationColumnMoved
        OnDrawColumnCell = grdInformationDrawColumnCell
        OnEnter = grdInformationEnter
        OnKeyPress = grdInformationKeyPress
        OddColor = clInfoBk
        Columns = <
          item
            Expanded = False
            FieldName = 'StatusName'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Surname'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LoanID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccBal'
            Title.Alignment = taRightJustify
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Status'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ArrearsBucket'
            Title.Alignment = taRightJustify
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ArrearsAmt'
            Title.Alignment = taRightJustify
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NoOfPay'
            Title.Alignment = taRightJustify
            Title.Caption = 'No. of pay.'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExtendPrd'
            Width = 55
            Visible = True
          end>
      end
    end
  end
  object stsLoan: TStatusBar
    Left = 0
    Top = 366
    Width = 638
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object TimerType: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = TimerTypeTimer
    Left = 480
    Top = 80
  end
end
