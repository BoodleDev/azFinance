inherited frmEntityDetail: TfrmEntityDetail
  Tag = 26
  Left = 207
  Top = 131
  Width = 385
  Height = 348
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Entity detail'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 337
    Height = 295
    inherited btnNew: TToolButton
      Visible = False
    end
    inherited btnDelete: TToolButton
      Wrap = True
      Visible = False
    end
  end
  object pnlMB: TPanel [1]
    Left = 0
    Top = 0
    Width = 337
    Height = 295
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 337
      Height = 29
      Align = alTop
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 0
      object lblCode: TLabel
        Left = 8
        Top = 8
        Width = 25
        Height = 13
        Caption = 'Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtCode: TDBText
        Left = 40
        Top = 8
        Width = 40
        Height = 13
        AutoSize = True
        DataField = 'EntCode'
        DataSource = dtsEntity
      end
      object lblN1: TLabel
        Left = 144
        Top = 8
        Width = 28
        Height = 13
        Caption = 'Name'
        FocusControl = edtName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtN1: TDBText
        Left = 176
        Top = 8
        Width = 29
        Height = 13
        AutoSize = True
        DataField = 'Name'
        DataSource = dtsEntity
      end
    end
    object pcEntity: TPageControl
      Left = 0
      Top = 29
      Width = 337
      Height = 266
      ActivePage = tsMain
      Align = alClient
      Style = tsButtons
      TabOrder = 1
      object tsMain: TTabSheet
        Caption = 'Main data'
        object dbtUser: TDBText
          Left = 224
          Top = 141
          Width = 37
          Height = 13
          AutoSize = True
          DataField = 'UserID'
          DataSource = dtsEntity
        end
        object lblN: TLabel
          Left = 8
          Top = 12
          Width = 28
          Height = 13
          Caption = 'Name'
          FocusControl = edtName
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblS: TLabel
          Left = 8
          Top = 37
          Width = 42
          Height = 13
          Caption = 'Surname'
          FocusControl = edtName2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblT1: TLabel
          Left = 8
          Top = 62
          Width = 65
          Height = 13
          Caption = 'Tel. no. home'
          FocusControl = edtTel1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblT2: TLabel
          Left = 8
          Top = 88
          Width = 65
          Height = 13
          Caption = 'Tel. no. office'
          FocusControl = edtTel2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblF: TLabel
          Left = 8
          Top = 139
          Width = 55
          Height = 13
          Caption = 'Fax number'
          FocusControl = edtFax
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblM: TLabel
          Left = 8
          Top = 113
          Width = 49
          Height = 13
          Caption = 'Mobile no.'
          FocusControl = edtTel3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblE: TLabel
          Left = 8
          Top = 189
          Width = 65
          Height = 13
          Caption = 'Email address'
          FocusControl = edtEmail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbtName: TDBText
          Left = 96
          Top = 11
          Width = 43
          Height = 13
          AutoSize = True
          DataField = 'Name'
          DataSource = dtsEntity
        end
        object dbtName2: TDBText
          Left = 96
          Top = 37
          Width = 49
          Height = 13
          AutoSize = True
          DataField = 'Name2'
          DataSource = dtsEntity
        end
        object dbtTel1: TDBText
          Left = 96
          Top = 62
          Width = 36
          Height = 13
          AutoSize = True
          DataField = 'TelNo1'
          DataSource = dtsEntity
        end
        object dbtTel2: TDBText
          Left = 96
          Top = 88
          Width = 36
          Height = 13
          AutoSize = True
          DataField = 'TelNo2'
          DataSource = dtsEntity
        end
        object dbtFax: TDBText
          Left = 96
          Top = 139
          Width = 32
          Height = 13
          AutoSize = True
          DataField = 'FaxNo'
          DataSource = dtsEntity
        end
        object dbtTel3: TDBText
          Left = 96
          Top = 113
          Width = 36
          Height = 13
          AutoSize = True
          DataField = 'TelNo3'
          DataSource = dtsEntity
        end
        object lblTelEg: TLabel
          Left = 216
          Top = 61
          Width = 93
          Height = 14
          Caption = '(eg. 012-123 4567)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 165
          Width = 50
          Height = 13
          Caption = 'Reference'
          FocusControl = edtFax
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbtRefFld2: TDBText
          Left = 96
          Top = 165
          Width = 52
          Height = 13
          AutoSize = True
          DataField = 'RefFld2'
          DataSource = dtsEntity
        end
        object dbtEmail: TDBHyperLink
          Left = 96
          Top = 189
          Width = 40
          Height = 13
          Cursor = crHandPoint
          AutoSize = True
          DataField = 'Email'
          DataSource = dtsEntity
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = dbtEmailClick
        end
        object edtName: TDBEdit
          Left = 96
          Top = 8
          Width = 214
          Height = 21
          DataField = 'Name'
          DataSource = dtsEntity
          TabOrder = 0
        end
        object edtName2: TDBEdit
          Left = 96
          Top = 33
          Width = 214
          Height = 21
          DataField = 'Name2'
          DataSource = dtsEntity
          TabOrder = 1
        end
        object edtTel1: TDBEdit
          Left = 96
          Top = 58
          Width = 113
          Height = 21
          DataField = 'TelNo1'
          DataSource = dtsEntity
          TabOrder = 2
        end
        object edtTel2: TDBEdit
          Left = 96
          Top = 84
          Width = 113
          Height = 21
          DataField = 'TelNo2'
          DataSource = dtsEntity
          TabOrder = 3
        end
        object edtFax: TDBEdit
          Left = 96
          Top = 135
          Width = 113
          Height = 21
          DataField = 'FaxNo'
          DataSource = dtsEntity
          TabOrder = 5
        end
        object edtTel3: TDBEdit
          Left = 96
          Top = 109
          Width = 113
          Height = 21
          DataField = 'TelNo3'
          DataSource = dtsEntity
          TabOrder = 4
        end
        object edtEmail: TDBEdit
          Left = 96
          Top = 185
          Width = 214
          Height = 21
          DataField = 'Email'
          DataSource = dtsEntity
          TabOrder = 6
        end
        object edtRefFld2: TDBEdit
          Left = 96
          Top = 161
          Width = 113
          Height = 21
          DataField = 'RefFld2'
          DataSource = dtsEntity
          TabOrder = 7
        end
      end
      object tsAddress: TTabSheet
        Caption = 'Address detail'
        ImageIndex = 1
        object btnPost: TBitBtn
          Left = 8
          Top = 8
          Width = 145
          Height = 41
          Caption = 'Postal address'
          TabOrder = 0
          OnClick = btnPostClick
          Glyph.Data = {
            36080000424D3608000000000000360400002800000020000000200000000100
            080000000000000400000000000000000000000100000000000000000000B3A1
            B900B3A1B900BBADB900B9A1B300D685BA00D596B600C9A6B700BE9FAC00C18A
            9E00D09AAB00BDAEB300C599A100BEA8AC00C79A9F00CC999900B68D8D00AF89
            8900C99F9F00A8858500D6ACAC00A1818100997D7D00937979008C7575008471
            7100C4ABAB007D6D6D00766969006F65650067616100605D5D00CE9B9900BE92
            9100CFACAB00E3C8C700CF9C9900D09D9900D29F9900D19E9900D6ACA800DEBC
            B800D3A09900D2A39D00D6ACA600D9B3AE00D5A29900D4A19900D6ACA500D6A3
            9900D6A59B00D6AAA100D6ACA300DAA79900D9A69900D9A99C00D9AC9F00D9AF
            A300D9B3A900EDDBD600DBA89900DDAA9900D9B3A600E0AD9900DFB09D00E3B0
            9900E2AF9900DFB5A200DEB6A500DDBAAB00E5B29900DFB9A600E9B69900ECB9
            9900EBB89900E4C9B800F0BD9900E6BEA400EBD7C900F4EAE300F3C09900F2BF
            9900F1BE9900F7C49900FBC89900F8C59900FDCA9900FECC9A00FCCC9C00FCCB
            9C00EFCCA900FFCE9B00FFCF9C00FFD19E00F9D2A600FFD4A100FFD5A200FFD7
            A400FFD8A500FFD9A600EBD6BB00FFDAA700FFDBA800FFDDAA00FFDFAC00FFE0
            AD00F2D9B300FFE1AE00FFE2AF00FFE3B000FFE5B200FFE6B300FFE8B500FFE9
            B600FFEBB800FFEFBC00FFF2BF00F5ECC900FFF4C100FCF2C300F9F2D300FFF5
            C200F9F2C900FFF8C500FCF9E400FFF9C600FCF6C700FCF9DD00FCF9E000FFFA
            C700FFFBC800FCF9D500FCF9D900FFFCC900FCF9D100FFFDCA00FFFECB00FFFF
            CC00FFFFCE00FFFFD100FFFFD200FFFFD500FFFFD600FFFFD900FFFFDA00FFFF
            DD00FFFFDF00FFFFE000FFFFE200FFFFE400FFFFE700FFFFE900FFFFEB00FFFF
            ED00FFFFEE00FFFFF100FFFFF600DAFFFF00DEFFFF00E1FFFF00E3FFFF00E6FF
            FF00E8FFFF00EBFFFF00EDFFFF00EFFFFF00F0FFFF00F2FFFF00F5FFFF00F6FF
            FF00F9FFFF00FBFFFF00FDFFFF00A2E9EC00B3F6F90098F8FF009BF3F900A2E6
            EC00AFCDCF0098F5FF00B3F8FF0098F3FF009BEDF900C6F8FF0097EFFF0097F1
            FF00BDF6FF00ADF2FF00A6D6DF008EE5F90093EAFF0097ECFF0097EAFF00AAEE
            FF00B2F1FF0096E5FF0096E6FF0095E4FF0092D1E60095E1FF0095DDFF0098D9
            F900AAC9D90080D0FB0095DAFF0093C0D900B2C3CC0094D7FF0096C6E400BDE3
            FB00A4BDCC0079C8FB0094D4FF0089C3E90097D4FD00A1BBCC00C8E5F80058AF
            F10088C9F70093D0FF0094D1FF0063B8FB0069AEE70073B6EB0083BEEE0092CD
            FF007EB2DC0093CEFF00A4D4FB00B6DAF6008FC9FF0091CCFF0091CBFF0091C4
            F0008CC6FF0092C5F900F2F8FE00559AE50087C0FF0089C2FF008BC4FF0083BB
            FF009AB7D90088B9F900A5BEDF00B1B7BF0083B4F90094B1E6008CA8E6008FA0
            D3009CA7D400979BD500A5A6C9005959590059595900FFFFFF00050505050505
            050505050505050505050505050505050505050505050505050505050509171C
            FDFD1805050505050505050505050505050505050505050505050505050F2631
            2711171B1FFD1805050505050505050505050505050505050505050505242049
            51483F36261015191EFD1E180505050505050505050505050505050505264227
            585B5455524942362A2113181DFDFD1805050505050505050505050505315046
            3763605D5C575455524941352F2011171CFDFD18180505050505050505365756
            424D6C696663605D5C5754534C4A413C2E2010161B1EFD1E050505050537615F
            5D326A72716E6C696663605D5C5754534C4A413C2E2421160905050505386D6B
            675E2B7779747372716E6C696663605D5C5754534C4824110905050505397372
            716F5A458987827D79747372706E6C686662605D5931251109050505053E827B
            76747347648C8A8A8987827D79747372706E6C68323D411109050505053E8A89
            8987827733758F8E8D8C8A8A8987827D797473444853511109050505053A8C8C
            8B8A8A8975307F9391918F8E8D8C8A8A898745405D5C571109050505053A8F8E
            8E8D8C8C8B6429979695949391918F8E8D4B43696765611109050505053A9291
            91908F8E8E8D3A4E9B9A9897969594934E447372716F6C1109050505052D9594
            9493929178450B0D3B9C9C9B9B9A984E347E817B7674731109050505052D9796
            9695804B1ABCBBBDF522233B4F4F3B0F7A8A8A898885811109050505052D9A99
            984E22B2B4A2A39FBABEC6D2D7D7D7F230868C8C8B8A8A1109050505052D9C4F
            2DF5AEA4A9A8A6A4A3A1A0B7B7BBBAC1CD30838E8E8D8C11090505050514290B
            D0D1FFACABAAA8A7A5A3A2A19F9E9D9DC2CD2C8490908F1109050505050F12CE
            CAE5FFFFFFACAAA9A8A6A4A3A2A19F9E9DC2CD2C7F93911109050505050512BC
            CEE4FFFFFFFFFFACAAA9A7A6A4A3A1A09F9EC2CD28809511090505050505051A
            B6D6FFFFFFFFFFFFACABAAA8A7D8E5E2D5DEDEEDF9287C110905050505050505
            07DAFFFFFFECD8E5E9E0DFDED9E2FC040804FCFAF8FA28110905050505050505
            05FBDDD3D9DDD3CBCCCFDCE3E7E6EAEFEEF3F7FAFC040E090505050505050505
            05050AB1B9B8C0C3C7C8CFD4DBE1E6EAEFEEF1F1F60105050505050505050505
            0505050AB1B3B8C0C4C7C8CCD4DBE1E6EAF0EEF20C0505050505050505050505
            050505050AB1B3B9BFC4C5C7CCCFDCE3E8EB0105050505050505050505050505
            05050505050AADB3B9BFC0C3C7C8CFDCF40C0505050505050505050505050505
            0505050505050AADAFB5B8C0C4C7C90305050505050505050505050505050505
            0505050505050506B2B0B3B8BFCA0C0505050505050505050505050505050505
            050505050505050523141A0B1423050505050505050505050505}
        end
        object btnPhysical: TBitBtn
          Left = 160
          Top = 8
          Width = 145
          Height = 41
          Caption = 'Physical address'
          TabOrder = 1
          OnClick = btnPhysicalClick
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC5C5
            C56F6F6F474D45333D31616161F0F0F0FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF0F0F0A8A8A83D423C4C62
            4788B87EA2DD96A2DD96779F6F2E332DB6B6B6FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFF0F0F08B8B8B2E332D5D7B5799D08EA2DD
            96A2DD96A2DD96A2DD96A2DD9699D08E43573F616161F0F0F0FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA8A8A82E332D5D7B5799D08EA2DD96A2DD96A2DD
            96A2DD9691C5875D7B5799D08EA2DD96A2DD96779F6F2E332DB6B6B6FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFC5C5C5353535546E4F99D08EA2DD96A2DD969DD89196D18A80B2
            764C6247272C27272C272F332E779F6FA2DD96A2DD9691C5873A4A37616161F0
            F0F0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            F0F0F06161613A4A3788BC7E91CC8588C37C80BB7474AF68699D5E3A50361919
            19748F7A91B89A374038F1F1F16161613A4A3791C587A2DD96A2DD96779F6F2E
            332DB6B6B6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC5C5C5
            43563F618C5877B26B74AF6874AF6874AF685E8A552F3D2C191919707070272C
            2791B89A91B89A374038FFFFFFFFFFFFC5C5C53D423C5D7B57A2DD96A2DD9699
            D08E43573F525252E2E2E2FF00FFFF00FFFF00FFFF00FFFF00FFB3BBB257814F
            74AF6874AF6874AF6874AF685E8A552F3D2C191919616161444444FFFFFF3740
            3891B89A91B89A374038FFFFFFFFFFFFFFFFFFF1F1F18C8C8C2A312881AC78A2
            DD96A2DD9681AC78383E368B8B8BFF00FFFF00FFFF00FFFF00FF4E684A74AF68
            74AF6874AF6874AF682F3D2C4654492E3730B7B7B77070704444444444443740
            3891B89A91B89A374038FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E26161613A
            4A3788B87EA2DD96A2DD965D7B573D423CA8A8A8FF00FFFF00FFA8A8A84B6E44
            74AF6874AF6863925946544991B89A374038535353363636363636F1F1F13740
            3891B89A7B9A82444444FFFFFFFFFFFFFFFFFFFFFFFFD4D4D4A8A8A8FFFFFFC5
            C5C55353535D7B57A2DD96A2DD9691C5874C6247525252F0F0F0FF00FFD3D3D3
            51654D6FA5645E8A5555685991B89A374038A8A8A88C8C8C535353E2E2E22123
            22272C27707070535353FFFFFFFFFFFFFFFFFFFFFFFFC5C5C58C8C8CFFFFFFFF
            FFFFFFFFFF3A4A37A2DD965D7B57A2DD9691C5876F9368525252FF00FFFF00FF
            F0F0F0747873415A3C55685991B89A374038A8A8A84444442727276161618C8C
            8C8C8C8C444444535353FFFFFFFFFFFFFFFFFFFFFFFF9A9A9AA8A8A8FFFFFFFF
            FFFFFFFFFF3A4A375D7B57242A233A4A37333D3181AC78383E36FF00FFFF00FF
            FF00FFFF00FF8B8B8B4D5E50637C6A272C274342427C7B7C8C8C8C4444443636
            36616161E2E2E2535353FFFFFFFFFFFFFFFFFFFFFFFFD4D4D4E2E2E2FFFFFFFF
            FFFFFFFFFF383E3729352774AF681D221C466440353535C5C5C5FF00FFFF00FF
            FF00FFFF00FF8B8B8B333132786F73797375424242424142514F4FB4B2B3C4C3
            C38C8C8CFFFFFF535353FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF5353532F3D2C74AF68242A236FA564525252FF00FFFF00FFFF00FF
            FF00FFFF00FF8B8B8B333132262526766D71413C3EF4E1EA857F82BFB6BABFB8
            BB8A8587FBF9FA535353FFFFFFFFFFFFFFFFFFFFFFFF9A9A9AC5C5C5FFFFFFFF
            FFFFFFFFFF5353532F3D2C74AF682F3D2C5E8A557E7E7EFF00FFFF00FFFF00FF
            FF00FFFF00FF8B8B8BA88F9C826F7AB79FAD4C4649EED5E4857780BCADB4BCAE
            B7868082CEC3CA535353FFFFFFFFFFFFFFFFFFFFFFFF8C8C8CC5C5C5FEFEFEFD
            FEFEFBFDFC52525244444474AF6829352752774A999999FF00FFFF00FFFF00FF
            FF00FFFF00FF616161B191A3655660B398A84E434AEAC8DA82717BB8A4AFB9A5
            B1857981BCABB4616161FEFFFFFDFEFEFCFDFDFAFCFB898A8ABFC1C1F2F7F6EF
            F5F4EEF3F24E4F4F6161615E8A551919193A5036C5C5C5FF00FFFF00FFFF00FF
            FF00FFFF00FF525252AE899D4B3F46E2B5CE4C4047E6BCD47F6C778E7B844C45
            48333132323031888989F3F8F6F0F6F4EFF4F3ECF2F19D9F9FCDD6D3E6EFECE4
            EDEAE2EDE74C4D4D999999364732272727191919E2E2E2FF00FFFF00FFFF00FF
            FF00FFFF00FF525252CE9BB7493D44A17D91302B304C40473D363864535C6556
            606759603F393C828483E6EFEDE5EEEBE2EDEAE0EBE8C6CFCCDDE9E3DBE7E1D7
            E5E0D5E4DC494B4BB6B6B6191919C5C5C5D3D3D3FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF5252523D32393C31386C5261614D57624F583E35393740385568
            59748F7A748F7A79807EDAE8E1D8E6DFD6E4DDD4E2DD464B49CFE0D7CDE0D6CA
            DED4C8DCD4444947C5C5C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF4444446B4D5D4738412E37304D5E506B867389AE9291B89A91B8
            9A91B89A748F7A747B79CDE0D6CBDED4C9DDD3C8DBD1434947C4D9CEC0D8CCBE
            D7C9BFD4C9414742D3D3D3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF272C276B867389AE9291B89A91B89A91B89A91B89A91B89A91B8
            9A91B89A748F7A6E7A73C1D9CBBFD7CBBED6C8BCD4C869756EB8D1C3B6D0C0B5
            CFBEB3CEBD3F4540FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF37403891B89A91B89A91B89A91B89A91B89A91B89A92B79B94B9
            9D97BBA194B49C404641B7D0C2B5D0BFB4CEBEB1CCBCB0CBBAAEC9B8ABC9B6AA
            C8B5A8C7B43C433FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF353A3591B89A91B89A92B79B94B99D97BBA19BBFA6A1C0ABA4C4
            B0A9C8B5ADCBB82B302EABC9B7AAC8B5A8C7B4A6C6B24E5952A3C3AFA2C2ABA0
            C0AC9FBFA8353535FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF5252528EB2989BBFA6A1C1AAA5C4AFA9C8B5ADCBB8B3CDBDB7D0
            C2BCD4C8C0D8CA5A605B7F9987A1C1AA9FBFAB9CC0A739423B99BDA397BCA096
            BAA07D9B866F6F6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF8B8B8B738679ADCBB9B3CEBDB7D1C1BCD4C8C0D8CCC6DAD0CBDE
            D4D0E1D9D6E4DDABB4B139423A96BB9F95B99F93B89C3F4B4291B89A91B89A91
            B89A465449B6B6B6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFE2E2E23C3D3CB6CBC0C7DAD0CBDED4D0E1D9D6E4DFDDE9E3E1EC
            E6E6EFECECF2F0F1F6F57B7C7C46544991B89A91B89A91B89A91B89A91B89A74
            8F7A444444FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFA8A8A83C3E3ED0DCD6E2EBE8E6F1EEECF2F0F1F7F5F9FA
            FAFCFCFCFEFEFEFFFFFFFFFFFF8C8C8C383A394D5E50637C6A6B867346544944
            4444F0F0F0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB6B6B6343434878888DFE0E0FEFEFEFFFFFFFFFF
            FFFFFFFFFFFFFFF1F1F1C5C5C59A9A9A7070701919195252527E7E7EA8A8A8FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFF0F0F0A8A8A86161613535355353535353
            535353534444445252527E7E7EA8A8A8D3D3D3FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object rgpDefAddress: TDBRadioGroup
          Left = 8
          Top = 64
          Width = 297
          Height = 34
          Caption = 'Default documents address'
          Columns = 2
          DataField = 'DefAdr'
          DataSource = dtsEntity
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Items.Strings = (
            'Postal'
            'Physical')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            '1'
            '2')
        end
        object rgpDelAdr: TDBRadioGroup
          Left = 8
          Top = 200
          Width = 297
          Height = 34
          Caption = 'Delivery address'
          Columns = 2
          DataField = 'DelAdr'
          DataSource = dtsEntity
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Items.Strings = (
            'Postal'
            'Physical')
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            '1'
            '2')
        end
        object rgpDocAdr: TDBRadioGroup
          Left = 8
          Top = 132
          Width = 297
          Height = 34
          Caption = 'Statements / Mail send to address '
          Columns = 2
          DataField = 'DocAdr'
          DataSource = dtsEntity
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Items.Strings = (
            'Default address'
            'E-mail')
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            '1'
            '2')
        end
      end
    end
  end
  object StatusBar1: TStatusBar [2]
    Left = 0
    Top = 295
    Width = 377
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = ' User ID:'
  end
  inherited ppmDBBase: TPopupMenu
    Left = 256
    Top = 24
  end
  object dtsEntity: TDataSource
    Left = 60
    Top = 64
  end
end
