inherited frmPersonLoan: TfrmPersonLoan
  Tag = 1032
  Left = 399
  Top = 195
  Width = 831
  Height = 577
  Caption = 'Client detail'
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 766
    Width = 49
    Height = 519
    ButtonWidth = 49
    inherited btnExit: TToolButton
      Caption = '    Exit    '
    end
  end
  inherited pnlMB: TPanel
    Width = 766
    Height = 519
    inherited pnlTop: TPanel
      Width = 766
      inherited dbtCode: TDBText
        Width = 41
      end
      inherited dbtN1: TDBText
        DataField = 'FullName'
      end
    end
    inherited pcEntity: TPageControl
      Width = 766
      Height = 490
      ActivePage = tsBankDet
      OnChanging = pcEntityChanging
      inherited tsMain: TTabSheet
        Caption = 'Personal Details'
        OnShow = tsMainShow
        inherited dbtUser: TDBText
          Left = 400
          Top = 48
          Width = 38
          Anchors = [akLeft]
          Visible = False
        end
        inherited lblN: TLabel
          Left = 17
          Top = 77
          Width = 51
          Caption = 'First Name'
          ParentFont = True
        end
        inherited lblS: TLabel
          Left = 17
          Top = 175
          ParentFont = True
        end
        inherited lblT1: TLabel
          Left = 17
          Top = 225
          Width = 48
          Caption = 'Tel. Home'
          ParentFont = True
        end
        inherited lblT2: TLabel
          Left = 17
          Top = 250
          Width = 46
          Caption = 'Tel. Work'
          ParentFont = True
        end
        inherited lblF: TLabel
          Left = 17
          Top = 301
          Width = 38
          Caption = 'Fax No.'
          ParentFont = True
        end
        inherited lblM: TLabel
          Left = 17
          Top = 276
          Width = 38
          Caption = 'Tel. Cell'
          ParentFont = True
        end
        object Label3: TLabel [7]
          Left = 17
          Top = 200
          Width = 31
          Height = 13
          Caption = 'ID No.'
        end
        object Label6: TLabel [8]
          Left = 17
          Top = 27
          Width = 20
          Height = 13
          Caption = 'Title'
        end
        inherited lblTelEg: TLabel
          Left = 240
          Top = 224
          Width = 94
          Height = 13
          ParentFont = True
        end
        object lblStatus: TLabel [10]
          Left = 16
          Top = 352
          Width = 31
          Height = 13
          Caption = 'Status'
          Visible = False
        end
        inherited Label2: TLabel
          Left = 17
          Top = 326
          ParentFont = True
        end
        object Label25: TLabel [12]
          Left = 17
          Top = 126
          Width = 58
          Height = 13
          Caption = 'Other Name'
          FocusControl = edtCallName
        end
        object lblCreateBy: TLabel [13]
          Left = 368
          Top = 72
          Width = 57
          Height = 13
          Caption = 'Created by :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblCreateUser: TDBText [14]
          Left = 368
          Top = 124
          Width = 65
          Height = 13
          Anchors = [akLeft]
          AutoSize = True
          DataField = 'UserAdd'
          DataSource = dtsEntity
        end
        object lblUpdateBy: TLabel [15]
          Left = 368
          Top = 88
          Width = 82
          Height = 13
          Caption = 'Last updated by :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblUpdateUser: TDBText [16]
          Left = 368
          Top = 143
          Width = 67
          Height = 13
          Anchors = [akLeft]
          AutoSize = True
          DataField = 'UpdateDetails'
          DataSource = dtsEntity
        end
        object Label20: TLabel [17]
          Left = 17
          Top = 150
          Width = 64
          Height = 13
          Caption = 'Maiden Name'
          FocusControl = edtMaidenName
        end
        object Label22: TLabel [18]
          Left = 17
          Top = 102
          Width = 65
          Height = 13
          Caption = 'Second Name'
          FocusControl = edtSecondName
        end
        object Label7: TLabel [19]
          Left = 17
          Top = 53
          Width = 35
          Height = 13
          Caption = 'Gender'
        end
        object imgPass: TImage [20]
          Left = 376
          Top = 208
          Width = 16
          Height = 16
          AutoSize = True
          ParentShowHint = False
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            0000100000000100180000000000000300000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
            FC7F867D3C4A331C310E1F321039432D6C7068DFDFDFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFABADAB253C1D173E101E6021276E362A7540267535
            24512028391A8C8E8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B4B20F2C061C4B
            161260200967231186371FA7561DA76021A4642C753E1D350E8B8E8BFFFFFFFF
            FFFFFFFFFFF1F1F11A31121A461308520F277E368EB89C377A4F0A743023A25A
            24B86A1CB36D2B703B1A2D0DD7D7D7FFFFFFFFFFFF7A8179173E0F053D031760
            1BB5C2BAFFF4FFE9DBE62F794A0A793222A15923AE621D97572757235B6154FF
            FFFFFFFFFF364732295B1F1C5917A5B1A6EFD2F1DFD2E0FDE8FAE1DAE02A7446
            0A763020974F1C9F5227743729371EFFFFFFFFFFFF1D3A16356429C7DBC3FFFF
            FF8DA68F2B7334AFC8B8FFEFFFDAD4D827703F0B702A1A914121763A1F3B17FF
            FFFFFFFFFF2A48213B642A7AA16ECCDFCA3B743B074D0B418A4DEDECF2FFF7FF
            D6D4D43579481A7C331E6E301F3D17FFFFFFFFFFFF374A35476F352E5F203365
            2A366F324780482B70305A9963F1EDF5FFF4FFCCCACD498B58317135263A1FF8
            F8F8FFFFFF667065416935385F263563273A6A303B70363B743A266829619A66
            F4EFFAFFFFFF9CB6A12A5924556051FFFFFFFFFFFFDFDFDF2845244D703A345F
            2039662A3A692F3B6D333A70352561237BAA7BC8E1C8527B4B1B3915D5D5D5FF
            FFFFFFFFFFFFFFFF898F893A5F334D6E3A365D23356324376629396A2D386E2D
            34682B3E6936284E207F847EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8086803450
            304C733E4C7339476B34456B354871393E673326431F727A72FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C95E6A5D3B4F383D5A353B5832344831
            566354C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF}
          ShowHint = False
          Transparent = True
          Visible = False
        end
        object imgFail: TImage [21]
          Left = 400
          Top = 208
          Width = 16
          Height = 16
          AutoSize = True
          ParentShowHint = False
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            0000100000000100180000000000000300000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
            FC8181843D3D421717141A1A153A3A3A6D6D6DDFDFDFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFABABAE22222D0A0A300909630C0C830F0F930F0F80
            1717442525278C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B50909160606
            460000970000CC0000E90000FA0000FF0000F413137B1818198C8C8DFFFFFFFF
            FFFFFFFFFFF1F1F115152104043F0000930C0CAD0B0B980000AD0000D00808D2
            0D0DDB0000FF0E0E75171718D7D7D7FFFFFFFFFFFF7A7A7D0505280000721F1F
            9CFFFFE6FFFFE606068E0302B1FFFFE6FFFFE62424C80000DA1212455B5B5BFF
            FFFFFFFFFF32323F1919600000755253ACFFFFE6FFFFE6A7AAC7A7AACAFFFFE6
            FFFFE66767CC0000D7080876242427FFFFFFFFFFFF1010242F2F861A1A880101
            764645AAAEB1ADC7CEB3FFFFE6FFFFE65C5CC00000AD0000BE0303950F0F1FFF
            FFFFFFFFFF17172E2B2B8227278B0808732D2D9DFFFFE6FFFFE6FFFFE6FFFFE6
            3C3BAA0404930A0AB600008B0A0A1FFFFFFFFFFFFF2F2E432A296F11117B6363
            ADFFFFE6FFFFE6C8C8C4D2D4CDFFFFE6FFFFE66969AE1818B31818701A1A28FF
            FFFFFFFFFF61616A24245415157A5E5EA7FFFFF7F5F5DB4B4BA54545A9E8E9D7
            FFFFEB6364BA16169F20204F4F4F55FFFFFFFFFFFFDFDFDF15152B2E2E6F1010
            775555A16161A90E0E730D0D775757AD5757AA15159C23236B0C0C1ED5D5D5FF
            FFFFFFFFFFFFFFFF87878D1D1D3D30307115157710107420207E202080131382
            16168A25256912122D7B7B82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7D851919
            3029295D2C2C732E2E802C2C7F27276E1E1E500E0E226E6E77FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C954545F2B2B411C1C3119192E232339
            4C4C57C0C0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF}
          ShowHint = False
          Transparent = True
          Visible = False
        end
        object imgInformation: TImage [22]
          Left = 424
          Top = 208
          Width = 16
          Height = 16
          AutoSize = True
          ParentShowHint = False
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            0000100000000100180000000000000300000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
            E77B7377513F3D5B2F21613526513E3F6B636BCCCCCCFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFA39FA04B2D276739118E4F079F5A00B86D01C4750E
            995E1E533431847F82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A4A44C231A5F30
            04925300A55A00A76503A96300D87E00FF9F00BC740D65372E867F82FFFFFFFF
            FFFFFFFFFFE8E7E747251F522602804800803F00B5883AECEBE6D8D4CAAA7111
            DB7C00FF9F009C5E094A282BC9C8C8FFFFFFFFFFFF80757554240B592F007640
            00743600D0B37EFFFFFFFFFFFFB6872EBC6400DD8400CC7E007E441964555CFF
            FFFFFFFFFF533732673C18693A01653300713500C2A167FFFFFFF7FFFFAC7B25
            AE5C00BE7100DA83008B4C054A2B2DFFFFFFFFFFFF5C2E2073532D7E521C6B3B
            06652C00B69762F4FFFFEDF9FFA4772A9F5300AE6500BC6A008B5200502619FF
            FFFFFFFFFF6736266E4F287C5424815923744108BDA275F2FFFFF4FCFFB38D48
            A2670EB1751AB26E0B7E47004E2313FFFFFFFFFFFF593B306F4827754F207A53
            2383591F946B30C2A981AF976B95661EA67322A77527BC86297E4C154A2820FF
            FFFFFFFFFF74646076482D6A4B21734D21724815936D37CECCC4C3BEB6926D34
            8F5D179968209F74237C4926644F4DFFFFFFFFFFFFCECDCD5F35266A4927714B
            20663E12937145E9F7FFE3EBF7936F397F50159D6F26764F1E54291CC3C1C1FF
            FFFFFFFFFFFFFFFF89817D70402D6A4B27724E226E461A916F448A67377A4D17
            8E642774501E61301D796D6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D73715935
            276F4A2B704C266742166D4719754F236B441F502A1A796D6BFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFBBB9B96556534F35284E30204D2F1F482F22
            5E4F4BB7B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF}
          ShowHint = False
          Transparent = True
          Visible = False
        end
        inherited edtName: TDBEdit
          Left = 123
          Top = 73
          TabOrder = 2
        end
        inherited edtName2: TDBEdit
          Left = 123
          Top = 171
          TabOrder = 6
        end
        inherited edtTel1: TDBEdit
          Left = 123
          Top = 221
          TabOrder = 8
        end
        inherited edtTel2: TDBEdit
          Left = 123
          Top = 246
          TabOrder = 9
        end
        inherited edtFax: TDBEdit
          Left = 123
          Top = 297
          TabOrder = 11
        end
        inherited edtTel3: TDBEdit
          Left = 123
          Top = 272
          TabOrder = 10
        end
        inherited edtRefFld2: TDBEdit
          Left = 123
          Top = 322
          TabOrder = 12
        end
        object cmbTitle: TDBComboBox [30]
          Left = 123
          Top = 24
          Width = 65
          Height = 21
          DataField = 'Title'
          DataSource = dtsEntity
          ItemHeight = 13
          Items.Strings = (
            'Adv'
            'Dr'
            'Miss'
            'Mr'
            'Mrs'
            'Ms'
            'Pas'
            'Prof')
          Sorted = True
          TabOrder = 0
          OnChange = cmbTitleChange
        end
        object cmbStatus: TDBLookupComboBox [31]
          Left = 122
          Top = 348
          Width = 145
          Height = 21
          DataField = 'Status'
          DataSource = dtsEntity
          KeyField = 'TypeKey'
          ListField = 'Description'
          ListSource = dtmEntityLoan.dtsLUStatus
          TabOrder = 13
          Visible = False
        end
        object edtCallName: TDBEdit [32]
          Left = 123
          Top = 122
          Width = 214
          Height = 21
          DataField = 'CallName'
          DataSource = dtsEntity
          TabOrder = 4
        end
        object edtRegNo: TDBEdit [33]
          Left = 123
          Top = 196
          Width = 113
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'RegNo'
          DataSource = dtsEntity
          ReadOnly = True
          TabOrder = 7
        end
        inherited edtCell: TEdit
          Left = 240
          Top = 261
          TabStop = False
          TabOrder = 14
        end
        object edtMaidenName: TDBEdit
          Left = 123
          Top = 146
          Width = 214
          Height = 21
          DataField = 'MaidenName'
          DataSource = dtsEntity
          TabOrder = 5
        end
        object edtSecondName: TDBEdit
          Left = 123
          Top = 98
          Width = 214
          Height = 21
          DataField = 'SecondName'
          DataSource = dtsEntity
          TabOrder = 3
        end
        object cmbGender: TDBComboBox
          Left = 123
          Top = 48
          Width = 118
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'Gender'
          DataSource = dtsEntity
          ItemHeight = 16
          Items.Strings = (
            'N'
            'M'
            'F')
          TabOrder = 1
          OnDrawItem = cmbGenderDrawItem
        end
      end
      object tsAddOn: TTabSheet [1]
        Caption = 'Additional Details'
        ImageIndex = 8
        OnShow = tsAddOnShow
        object Label33: TLabel
          Left = 21
          Top = 209
          Width = 51
          Height = 13
          Caption = 'Nationality'
        end
        object Label10: TLabel
          Left = 21
          Top = 79
          Width = 66
          Height = 13
          Caption = 'Marital Status'
        end
        object Label11: TLabel
          Left = 21
          Top = 183
          Width = 93
          Height = 13
          Caption = 'No. Of Dependants'
        end
        object Label21: TLabel
          Left = 302
          Top = 259
          Width = 19
          Height = 13
          Caption = 'Age'
        end
        object Label9: TLabel
          Left = 21
          Top = 259
          Width = 63
          Height = 13
          Caption = 'Date Of Birth'
        end
        object lblAge: TLabel
          Left = 329
          Top = 259
          Width = 18
          Height = 13
          Caption = 'age'
        end
        object Label29: TLabel
          Left = 21
          Top = 106
          Width = 77
          Height = 13
          Caption = 'Marital Contract'
        end
        object Label37: TLabel
          Left = 21
          Top = 28
          Width = 96
          Height = 13
          Caption = 'Preferred Language'
        end
        object Label38: TLabel
          Left = 21
          Top = 53
          Width = 77
          Height = 13
          Caption = 'Home Language'
        end
        object Label39: TLabel
          Left = 21
          Top = 157
          Width = 88
          Height = 13
          Caption = 'Level of Education'
        end
        object Label75: TLabel
          Left = 21
          Top = 130
          Width = 126
          Height = 13
          Caption = 'Written Consent Obtained'
        end
        object Label83: TLabel
          Left = 21
          Top = 233
          Width = 24
          Height = 13
          Caption = 'Race'
        end
        object edtNumDep: TDBEdit
          Left = 154
          Top = 179
          Width = 55
          Height = 21
          DataField = 'NoDepend'
          DataSource = dtsEntity
          MaxLength = 10
          TabOrder = 5
        end
        object cmbMaritalStatus: TDBLookupComboBox
          Left = 154
          Top = 75
          Width = 177
          Height = 21
          DataField = 'MaritalStatus'
          DataSource = dtsEntity
          KeyField = 'TypeKey'
          ListField = 'Description'
          ListSource = dtmEntCode.dtsMaritialStats
          TabOrder = 2
        end
        object cblNationality: TDBLookupComboBox
          Left = 154
          Top = 205
          Width = 145
          Height = 21
          DataField = 'Nationality'
          DataSource = dtsEntity
          KeyField = 'TypeKey'
          ListField = 'Description'
          ListSource = dtmEntCode.dtsNationality
          TabOrder = 6
        end
        object dtpDOB: TDBDateTimePicker
          Left = 154
          Top = 255
          Width = 145
          Height = 21
          Date = 38329.000000000000000000
          Time = 38329.000000000000000000
          TabOrder = 7
          OnChange = dtpDOBChange
          DataField = 'DOB'
          DataSource = dtsEntity
          ReadOnly = False
        end
        object cmbMaritalContract: TDBComboBox
          Left = 154
          Top = 101
          Width = 177
          Height = 21
          Style = csDropDownList
          DataField = 'MaritalContract'
          DataSource = dtsEntity
          ItemHeight = 13
          Items.Strings = (
            'ANC'
            'Contract'
            'COP'
            'No Contract'
            'Traditional')
          TabOrder = 3
        end
        object cmbPrefLanguage: TDBLookupComboBox
          Left = 154
          Top = 24
          Width = 177
          Height = 21
          DataField = 'PrefLanguage'
          DataSource = dtsEntity
          KeyField = 'TypeKey'
          ListField = 'Description'
          ListSource = dtmEntityLoan.dtsLanguages
          TabOrder = 0
        end
        object cmbHomeLanguage: TDBLookupComboBox
          Left = 154
          Top = 49
          Width = 177
          Height = 21
          DataField = 'HomeLanguage'
          DataSource = dtsEntity
          KeyField = 'TypeKey'
          ListField = 'Description'
          ListSource = dtmEntityLoan.dtsLanguages
          TabOrder = 1
        end
        object cmbEducationLevel: TDBLookupComboBox
          Left = 154
          Top = 153
          Width = 177
          Height = 21
          DataField = 'EducationLevel'
          DataSource = dtsEntity
          KeyField = 'TypeKey'
          ListField = 'Description'
          ListSource = dtmEntityLoan.dtsEducationLevel
          TabOrder = 4
        end
        object chkUnderApplied: TDBCheckBox
          Left = 19
          Top = 281
          Width = 148
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Under / Applied for Admin'
          DataField = 'UnderAdmin'
          DataSource = dtsEntity
          TabOrder = 8
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object cmbMaritalConsent: TDBComboBox
          Left = 154
          Top = 126
          Width = 177
          Height = 20
          Style = csOwnerDrawFixed
          DataField = 'MaritalConsent'
          DataSource = dtsEntity
          ItemHeight = 14
          Items.Strings = (
            'True'
            'False')
          TabOrder = 9
          OnDrawItem = cmbMaritalConsentDrawItem
        end
        object cmdRace: TDBComboBox
          Left = 154
          Top = 230
          Width = 145
          Height = 21
          Style = csDropDownList
          DataField = 'Race'
          DataSource = dtsEntity
          ItemHeight = 13
          Items.Strings = (
            ''
            'Black'
            'Coloured'
            'Indian'
            'White')
          Sorted = True
          TabOrder = 10
          OnChange = cmbTitleChange
        end
      end
      inherited tsAddress: TTabSheet
        Caption = 'Address Details'
        inherited lblE: TLabel
          Left = 20
          Top = 25
          Width = 66
          Caption = 'Email Address'
          ParentFont = True
        end
        object GroupBox10: TGroupBox [1]
          Left = 336
          Top = 161
          Width = 273
          Height = 137
          Caption = 'Previous Address'
          TabOrder = 14
        end
        object GroupBox9: TGroupBox [2]
          Left = 336
          Top = 17
          Width = 273
          Height = 137
          Caption = 'Current Addresses'
          TabOrder = 13
        end
        inherited btnPost: TBitBtn
          Left = 364
          Top = 46
          Width = 221
          Caption = 'Postal Address'
        end
        inherited btnPhysical: TBitBtn
          Left = 364
          Top = 94
          Width = 221
          Caption = 'Physical Address'
        end
        inherited rgpDefAddress: TDBRadioGroup
          Left = 20
          Top = 60
          Height = 43
          Caption = 'Default Documents Address'
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          TabOrder = 3
        end
        inherited rgpDelAdr: TDBRadioGroup
          Left = 380
          Top = 306
          Width = 149
          TabOrder = 10
          Visible = False
        end
        inherited rgpDocAdr: TDBRadioGroup
          Left = 20
          Top = 104
          Width = 298
          Height = 43
          Caption = 'Method of Correspondence'
          Columns = 3
          DataField = 'Correspondence'
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Items.Strings = (
            'Post'
            'Email')
          Values.Strings = (
            'Post'
            'Email'
            'Fax')
        end
        object rgpPresOR: TDBRadioGroup [8]
          Left = 21
          Top = 241
          Width = 296
          Height = 61
          Caption = 'Current Property'
          Columns = 3
          DataField = 'ResidenceStatus'
          DataSource = dtsEntity
          Items.Strings = (
            'Bond'
            'Rent'
            'Own'
            'Board'
            'Hostel')
          TabOrder = 6
          Values.Strings = (
            'Bond'
            'Rent'
            'Own'
            'Board'
            'Hostel')
        end
        object btnNewHAdr: TBitBtn [9]
          Left = 324
          Top = 330
          Width = 145
          Height = 41
          Caption = 'New house address'
          TabOrder = 8
          Visible = False
          OnClick = btnNewHAdrClick
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
        object btnPreResAdr: TBitBtn [10]
          Left = 364
          Top = 194
          Width = 221
          Height = 41
          Caption = 'Physical Address'
          TabOrder = 9
          OnClick = btnPreResAdrClick
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
        inherited edtEmail: TDBEdit
          Left = 92
          Top = 21
          TabOrder = 11
        end
        object rgdStatementFreq: TDBRadioGroup
          Left = 20
          Top = 196
          Width = 298
          Height = 43
          Caption = 'Frequency of Statements'
          Columns = 2
          DataField = 'StatementPeriod'
          DataSource = dtsEntity
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Monthly'
            'Quarterly')
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            'M'
            'Q')
        end
        object GroupBox4: TGroupBox
          Left = 20
          Top = 13
          Width = 297
          Height = 45
          Caption = 'Email Address'
          TabOrder = 2
          object edtEmailAddress: TDBEdit
            Left = 8
            Top = 16
            Width = 279
            Height = 21
            DataField = 'Email'
            DataSource = dtsEntity
            TabOrder = 0
          end
        end
        object GroupBox5: TGroupBox
          Left = 21
          Top = 308
          Width = 295
          Height = 73
          Caption = 'Period of Residence'
          TabOrder = 7
          object Label24: TLabel
            Left = 9
            Top = 25
            Width = 79
            Height = 13
            Caption = 'Current Address'
          end
          object Label34: TLabel
            Left = 9
            Top = 49
            Width = 83
            Height = 13
            Caption = 'Previous Address'
          end
          object Label49: TLabel
            Left = 111
            Top = 25
            Width = 27
            Height = 13
            Caption = 'Years'
          end
          object Label53: TLabel
            Left = 187
            Top = 25
            Width = 35
            Height = 13
            Caption = 'Months'
          end
          object Label54: TLabel
            Left = 187
            Top = 49
            Width = 35
            Height = 13
            Caption = 'Months'
          end
          object Label67: TLabel
            Left = 111
            Top = 49
            Width = 27
            Height = 13
            Caption = 'Years'
          end
          object edtCurrAddrYears: TEdit
            Left = 140
            Top = 21
            Width = 37
            Height = 21
            TabOrder = 0
            OnExit = edtCurrAddrYearsExit
          end
          object edtCurrAddrMonths: TEdit
            Left = 223
            Top = 21
            Width = 37
            Height = 21
            TabOrder = 1
            OnExit = edtCurrAddrYearsExit
          end
          object edtPrevAddrMonths: TEdit
            Left = 223
            Top = 45
            Width = 37
            Height = 21
            TabOrder = 3
            OnExit = edtCurrAddrYearsExit
          end
          object edtPrevAddrYears: TEdit
            Left = 140
            Top = 45
            Width = 37
            Height = 21
            TabOrder = 2
            OnExit = edtCurrAddrYearsExit
          end
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 20
          Top = 152
          Width = 298
          Height = 43
          Caption = 'Send Statements via'
          Columns = 3
          DataField = 'StatementSent'
          DataSource = dtsEntity
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Post'
            'Email'
            'Fax')
          ParentFont = False
          TabOrder = 12
          Values.Strings = (
            'Post'
            'Email'
            'Fax')
        end
      end
      object tsBankDet: TTabSheet
        Caption = 'Bank Details'
        ImageIndex = 2
        OnHide = tsBankDetHide
        OnShow = tsBankDetShow
        DesignSize = (
          758
          462)
        object btnBank: TBitBtn
          Left = 600
          Top = 392
          Width = 145
          Height = 41
          Caption = 'Bank details'
          TabOrder = 0
          Visible = False
          OnClick = btnBankClick
          Glyph.Data = {
            36080000424D3608000000000000360400002800000020000000200000000100
            080000000000000400000000000000000000000100000001000000000000FFFF
            FF008000000080800000008000000080800000008000C0C0C000C0DCC000F0CA
            A60080808000FF00FF00FF000000FFFF000000FF000000FFFF000000FF00FFFF
            FF00F0FBFF00A4A0A000CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCC
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
            44002222220011111100770000005500000044000000220000000101019A9A01
            0101010101010101010101010101010101010101019A9A01010101019A70709A
            01010101010101010101010101010101010101019A70709A0101010170707070
            707070707070707070707070707070707070707070707070010101701C1C1C1C
            1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C7001701C1C1C1C23
            232323232323232323232323232323232323232323231C1C1C70701C1C1C7070
            7070709A709A709A709A9A9A9A9A9A9A9A9A9A9A9A9A231C1C70701C1C9A1C1C
            1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C9A231C70701C70707070
            7070701C1C1C1C1C7070707023231C1C1C1C1C1C1C1C9A231C70701C11161616
            1616701C1C1C1C00000000007070231C1C1C1C1C1C1C9A231C70701C11111111
            1111701C1C00001107070707000070231C1C1C1C1C7070701C70701C23161C1C
            1C1C1C1CFA1111F9F9F9F9F907070070231C1C1C1C1116701C70701C23161C1C
            1C1C1CFA11F9F9F9F911F9F9F9F9070070231C1C1C1111701C70701C23161C1C
            1C1CF611F9F911F9F9FAFAF911F9F9070023231C1C1C9A231C70701C23161C1C
            1C1CF611F9F9F9F9000000FAF9F9F9070070231C1C1C9A231C70701623161C1C
            1CF611F9F9F9F9F911111100FAF9F9F90700701C1C1C9A231C70701C23161C1C
            1CF611F9F9F9F9110707071100FAF9F90700701C1C1C9A231C70701623161C1C
            1CF711F911F9F9110707071100FA11F90700701C1C1C9A231C70701C23161C1C
            1CF711F9F9F9F9110707071100F9F9F90700701C1C1C9A231C70701623161C1C
            1CF711F9F9F9F9F9111111F9F9F9F9F907001C1C1C1C9A231C70701623161C1C
            1C1CF711F911F9F9F9F9F9F9F911F90700231C1C1C1C9A231C70701623161C1C
            1C1CF711F9F9F9F9F9F9F9F9F9F9F907001C1C1C1C1C9A231C70701623161C1C
            1C1C1CF711F9F9F9F911F9F9F9F90700231C1C1C1C1C9A231C70701123161C1C
            1C1C1C1CF71111F9F9F9F9F9070700231C1C1C1C1C7070701C70701623161C1C
            1C1C1C1C1CF7F71111111111FAFA1C1C1C1C1C1C1C1116701C70701123161C1C
            1C1C1C1C1C1C1CF7F6F6F6FA1C1C1C1C1C1C1C1C1C1111701C70701623161C1C
            1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C70231C70701123161C1C
            1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C70231C7070111C231616
            16161616161616161616161616161616161616161616231C1C7070111C1C2323
            232323232323232323232323232323232323232323231C1C1C70017011111111
            111611161116161616161C161C161C1C1C1C1C1C1C1C1C1C7001010170707070
            7070707070707070707070707070707070707070707070700101010101010101
            0101010101010101010101010101010101010101010101010101}
        end
        object tlbBank: TToolBar
          Left = 715
          Top = 0
          Width = 43
          Height = 462
          Align = alRight
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 43
          Color = clBtnFace
          EdgeBorders = []
          Flat = True
          Images = dtmMain.imglstMain
          ParentColor = False
          PopupMenu = ppmDBBase
          ShowCaptions = True
          TabOrder = 1
          Visible = False
          Wrapable = False
          object ToolButton1: TToolButton
            Tag = 9
            Left = 0
            Top = 0
            Caption = '   Exit   '
            ImageIndex = 2
            Wrap = True
            Visible = False
            OnClick = btnExitClick
          end
          object btnBankNew: TToolButton
            Tag = 9
            Left = 0
            Top = 36
            Caption = 'New'
            ImageIndex = 3
            Wrap = True
            Visible = False
          end
          object btnBankAmend: TToolButton
            Tag = 9
            Left = 0
            Top = 72
            Caption = 'Amend'
            ImageIndex = 4
            Wrap = True
            OnClick = btnBankAmendClick
          end
          object btnBankSave: TToolButton
            Tag = 9
            Left = 0
            Top = 108
            Caption = 'Save'
            ImageIndex = 5
            Wrap = True
            OnClick = btnBankSaveClick
          end
          object btnBankCancel: TToolButton
            Tag = 9
            Left = 0
            Top = 144
            Caption = 'Cancel'
            ImageIndex = 6
            Wrap = True
            OnClick = btnBankCancelClick
          end
          object btnBankDelete: TToolButton
            Tag = 9
            Left = 0
            Top = 180
            Caption = 'Clear'
            ImageIndex = 7
            Visible = False
            OnClick = btnBankDeleteClick
          end
        end
        object pcBankDetails: TPageControl
          Left = 4
          Top = 44
          Width = 738
          Height = 425
          ActivePage = TabSheet1
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          OnChange = pcBankDetailsChange
          object TabSheet1: TTabSheet
            Caption = 'Bank Account'
            DesignSize = (
              730
              397)
            object GroupBox1: TGroupBox
              Left = 10
              Top = 0
              Width = 708
              Height = 193
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Bank Details (Current)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label15: TLabel
                Left = 15
                Top = 40
                Width = 23
                Height = 13
                Caption = 'Bank'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 15
                Top = 64
                Width = 33
                Height = 13
                Caption = 'Branch'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 15
                Top = 92
                Width = 69
                Height = 13
                Caption = 'Account Name'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 15
                Top = 118
                Width = 79
                Height = 13
                Caption = 'Account Number'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 15
                Top = 144
                Width = 66
                Height = 13
                Caption = 'Account Type'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label1: TLabel
                Left = 424
                Top = 16
                Width = 105
                Height = 13
                Alignment = taCenter
                AutoSize = False
                Caption = 'ACTIVE'
                Color = 11457198
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object edtAccName: TDBEdit
                Left = 106
                Top = 88
                Width = 423
                Height = 21
                Color = clBtnFace
                DataField = 'AccName'
                DataSource = dtmBankDet.dtsBankDet
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
              object edtAccNo: TDBEdit
                Left = 106
                Top = 114
                Width = 423
                Height = 21
                Color = clBtnFace
                DataField = 'AccNo'
                DataSource = dtmBankDet.dtsBankDet
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object btnAddBank: TBitBtn
                Left = 543
                Top = 36
                Width = 75
                Height = 25
                Caption = 'Add'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = btnAddBankClick
              end
              object btnEditBank: TBitBtn
                Left = 543
                Top = 68
                Width = 75
                Height = 25
                Caption = 'Edit'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = btnAddBankClick
              end
              object edtBank: TDBEdit
                Left = 106
                Top = 36
                Width = 423
                Height = 21
                Color = clBtnFace
                DataField = 'BName'
                DataSource = dtmBankDet.dtsBankDet
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 4
              end
              object edtBankBranch: TDBEdit
                Left = 106
                Top = 62
                Width = 423
                Height = 21
                Color = clBtnFace
                DataField = 'Branch'
                DataSource = dtmBankDet.dtsBankDet
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 5
              end
              object edtAccType: TDBEdit
                Left = 106
                Top = 140
                Width = 423
                Height = 21
                Color = clBtnFace
                DataField = 'sAccType'
                DataSource = dtmBankDet.dtsBankDet
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 6
              end
              object btnSubmitAHVActive: TButton
                Left = 456
                Top = 164
                Width = 75
                Height = 25
                Caption = 'Submit AHV'
                TabOrder = 7
                OnClick = btnSubmitAHVActiveClick
              end
            end
            object GroupBox12: TGroupBox
              Left = 10
              Top = 196
              Width = 708
              Height = 201
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Bank Details (New)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object Label77: TLabel
                Left = 15
                Top = 40
                Width = 23
                Height = 13
                Caption = 'Bank'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label78: TLabel
                Left = 15
                Top = 64
                Width = 33
                Height = 13
                Caption = 'Branch'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label79: TLabel
                Left = 15
                Top = 92
                Width = 69
                Height = 13
                Caption = 'Account Name'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label80: TLabel
                Left = 15
                Top = 118
                Width = 79
                Height = 13
                Caption = 'Account Number'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label81: TLabel
                Left = 15
                Top = 144
                Width = 66
                Height = 13
                Caption = 'Account Type'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label82: TLabel
                Left = 15
                Top = 168
                Width = 36
                Height = 13
                Caption = 'User ID'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label23: TLabel
                Left = 424
                Top = 16
                Width = 105
                Height = 13
                Alignment = taCenter
                AutoSize = False
                Caption = 'INACTIVE'
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 106
                Top = 88
                Width = 423
                Height = 21
                Color = clBtnFace
                DataField = 'AccName'
                DataSource = dtmBankDet.dtsBankInactive
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit3: TDBEdit
                Left = 106
                Top = 114
                Width = 423
                Height = 21
                Color = clBtnFace
                DataField = 'AccNo'
                DataSource = dtmBankDet.dtsBankInactive
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object edtBankInactive: TDBEdit
                Left = 106
                Top = 36
                Width = 423
                Height = 21
                Color = clBtnFace
                DataField = 'BName'
                DataSource = dtmBankDet.dtsBankInactive
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit5: TDBEdit
                Left = 106
                Top = 62
                Width = 423
                Height = 21
                Color = clBtnFace
                DataField = 'Branch'
                DataSource = dtmBankDet.dtsBankInactive
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdit6: TDBEdit
                Left = 106
                Top = 140
                Width = 423
                Height = 21
                Color = clBtnFace
                DataField = 'sAccType'
                DataSource = dtmBankDet.dtsBankInactive
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 4
              end
              object DBEdit7: TDBEdit
                Left = 106
                Top = 164
                Width = 127
                Height = 21
                Color = clBtnFace
                DataField = 'UserID'
                DataSource = dtmBankDet.dtsBankInactive
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 5
              end
              object btnCopy: TButton
                Left = 296
                Top = 164
                Width = 153
                Height = 25
                Caption = 'Copy to Active Bank Details'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                OnClick = btnCopyClick
              end
              object btnSubmitAHVInactive: TButton
                Left = 456
                Top = 164
                Width = 75
                Height = 25
                Caption = 'Submit AHV'
                TabOrder = 7
                OnClick = btnSubmitAHVActiveClick
              end
              object btnEditBankInactive: TBitBtn
                Left = 543
                Top = 68
                Width = 75
                Height = 25
                Caption = 'Edit'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
                OnClick = btnAddBankClick
              end
              object btnAddBankInactive: TBitBtn
                Left = 543
                Top = 36
                Width = 75
                Height = 25
                Caption = 'Add'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 9
                OnClick = btnAddBankClick
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Account Holder Verification (AHV)'
            ImageIndex = 1
            DesignSize = (
              730
              397)
            object GroupBox13: TGroupBox
              Left = 8
              Top = 0
              Width = 712
              Height = 193
              Anchors = [akLeft, akTop, akRight]
              Caption = 'AHV (Current)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              DesignSize = (
                712
                193)
              object Label88: TLabel
                Left = 593
                Top = 8
                Width = 105
                Height = 13
                Alignment = taCenter
                Anchors = [akTop, akRight]
                AutoSize = False
                Caption = 'ACTIVE'
                Color = 11457198
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object grdAHVActive: TDBGrid
                Left = 8
                Top = 24
                Width = 693
                Height = 158
                Anchors = [akLeft, akTop, akRight, akBottom]
                DataSource = dtmEntityLoan.dtsAHVActive
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = grdAHVActiveDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    Width = 30
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'GroupDescription'
                    Title.Caption = 'Description'
                    Width = 235
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CodeDescription'
                    Title.Caption = 'Result'
                    Width = 235
                    Visible = True
                  end>
              end
            end
            object GroupBox2: TGroupBox
              Left = 8
              Top = 200
              Width = 712
              Height = 193
              Anchors = [akLeft, akTop, akRight]
              Caption = 'AHV (New)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              DesignSize = (
                712
                193)
              object Label89: TLabel
                Left = 593
                Top = 8
                Width = 105
                Height = 13
                Alignment = taCenter
                Anchors = [akTop, akRight]
                AutoSize = False
                Caption = 'INACTIVE'
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object grdAHVInactive: TDBGrid
                Left = 8
                Top = 24
                Width = 693
                Height = 158
                Anchors = [akLeft, akTop, akRight, akBottom]
                DataSource = dtmEntityLoan.dtsAHVInactive
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = grdAHVActiveDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    Width = 30
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'GroupDescription'
                    Title.Caption = 'Description'
                    Width = 235
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CodeDescription'
                    Title.Caption = 'Result'
                    Width = 235
                    Visible = True
                  end>
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'AHV History'
            ImageIndex = 2
            DesignSize = (
              730
              397)
            object grdAHVHistory: TDBGrid
              Left = 0
              Top = 0
              Width = 726
              Height = 193
              Anchors = [akLeft, akTop, akRight]
              DataSource = dtmEntityLoan.dtsAHVHistory
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CreateDate'
                  Title.Caption = 'Create Date'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CreateUser'
                  Title.Caption = 'User ID'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BankName'
                  Title.Caption = 'Bank'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AccountNo'
                  Title.Caption = 'Account No.'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Description'
                  Title.Caption = 'Result'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BankAccountPeriod'
                  Title.Caption = 'Months Open (Client)'
                  Width = 120
                  Visible = True
                end>
            end
            object grdAHVHistoryResult: TDBGrid
              Left = 0
              Top = 200
              Width = 726
              Height = 193
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataSource = dtmEntityLoan.dtsAHVResult
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 1
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = grdAHVActiveDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'GroupDescription'
                  Title.Caption = 'Description'
                  Width = 235
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CodeDescription'
                  Title.Caption = 'Result'
                  Width = 235
                  Visible = True
                end>
            end
          end
        end
        object Panel1: TPanel
          Left = 4
          Top = 1
          Width = 653
          Height = 38
          BevelInner = bvLowered
          TabOrder = 3
          object chkEarlyDeduction: TDBCheckBox
            Left = 16
            Top = 11
            Width = 153
            Height = 17
            Caption = 'Allow Early Deduction'
            DataField = 'AllowEarlyDeduction'
            DataSource = dtmEntityLoan.dtsPersonLoan
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
      object tsEmpDet: TTabSheet
        Caption = 'Employment Details'
        ImageIndex = 5
        OnShow = tsEmpDetShow
        object btnBranchLink: TSpeedButton
          Left = 507
          Top = 70
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000130B0000130B00000001000000010000000000002929
            3100736B630084848400C6C6C600FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
            0505050505050505050505050505050505050303030305030305050505050505
            0503010101010301040505050505050503010403010401040603050505050503
            0104060603000406010505050505030104060303000406010205050505030104
            0601050006060002010505050501040601050503040106030105050503040601
            0303050503010603020505050106030100000303010406020505050501060400
            0303000104060205050505050503000406000104060205050505050503010406
            0101040602050505050505050104060204060602050505050505050305060205
            0202020505050505050505050505050505050505050505050505}
          OnClick = btnBranchLinkClick
        end
        object btnDelBranch: TSpeedButton
          Left = 526
          Top = 70
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = btnDelBranchClick
        end
        object btnViewBranch: TSpeedButton
          Left = 488
          Top = 70
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF004A63
            7B00BD949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC600188C
            E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0052B5
            FF00218CEF004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052B5
            FF0052B5FF001884E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0052B5FF004AB5FF00188CE7004A7BA500BD949400FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0052B5FF004AB5FF002184DE005A6B7300FF00FF00AD7B7300C6A5
            9C00D6B5A500CEA59C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFF
            D600FFFFD600FFFFD600E7DEBD00CEADA500FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00CEB5B500D6B5A500FFEFC600FFFFD600FFFF
            D600FFFFD600FFFFDE00FFFFEF00F7F7EF00B58C8C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C6948C00F7DEB500F7D6A500FFF7CE00FFFF
            D600FFFFDE00FFFFEF00FFFFF700FFFFFF00DED6BD00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00DEBDA500FFE7AD00F7CE9400FFF7CE00FFFF
            DE00FFFFE700FFFFF700FFFFF700FFFFEF00F7EFD600C69C9400FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00E7C6AD00FFDEAD00EFBD8400F7E7B500FFFF
            D600FFFFDE00FFFFE700FFFFE700FFFFDE00F7F7D600C6AD9C00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEF
            C600FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7EFD600C6A59C00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C69C9400FFEFC600FFEFC600F7D6A500F7CE
            9C00F7E7B500FFF7CE00FFF7D600FFFFD600E7DEBD00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00DEC6AD00FFFFFF00FFF7EF00F7CE
            9400EFBD8400F7CE9C00FFE7B500FFF7C600BD9C8C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDBD00F7EFD600FFEF
            C600FFE7AD00FFE7B500F7DEB500CEAD9C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEAD9400CEAD
            9C00DEBDA500DEBDA500FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = btnViewBranchClick
        end
        object btnEmpLink: TSpeedButton
          Left = 507
          Top = 43
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000130B0000130B00000001000000010000000000002929
            3100736B630084848400C6C6C600FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
            0505050505050505050505050505050505050303030305030305050505050505
            0503010101010301040505050505050503010403010401040603050505050503
            0104060603000406010505050505030104060303000406010205050505030104
            0601050006060002010505050501040601050503040106030105050503040601
            0303050503010603020505050106030100000303010406020505050501060400
            0303000104060205050505050503000406000104060205050505050503010406
            0101040602050505050505050104060204060602050505050505050305060205
            0202020505050505050505050505050505050505050505050505}
          OnClick = btnEmpLinkClick
        end
        object btnDelEmp: TSpeedButton
          Left = 526
          Top = 43
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = btnDelEmpClick
        end
        object btnViewEmployer: TSpeedButton
          Left = 488
          Top = 43
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF004A63
            7B00BD949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC600188C
            E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0052B5
            FF00218CEF004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052B5
            FF0052B5FF001884E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0052B5FF004AB5FF00188CE7004A7BA500BD949400FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0052B5FF004AB5FF002184DE005A6B7300FF00FF00AD7B7300C6A5
            9C00D6B5A500CEA59C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFF
            D600FFFFD600FFFFD600E7DEBD00CEADA500FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00CEB5B500D6B5A500FFEFC600FFFFD600FFFF
            D600FFFFD600FFFFDE00FFFFEF00F7F7EF00B58C8C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C6948C00F7DEB500F7D6A500FFF7CE00FFFF
            D600FFFFDE00FFFFEF00FFFFF700FFFFFF00DED6BD00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00DEBDA500FFE7AD00F7CE9400FFF7CE00FFFF
            DE00FFFFE700FFFFF700FFFFF700FFFFEF00F7EFD600C69C9400FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00E7C6AD00FFDEAD00EFBD8400F7E7B500FFFF
            D600FFFFDE00FFFFE700FFFFE700FFFFDE00F7F7D600C6AD9C00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEF
            C600FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7EFD600C6A59C00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C69C9400FFEFC600FFEFC600F7D6A500F7CE
            9C00F7E7B500FFF7CE00FFF7D600FFFFD600E7DEBD00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00DEC6AD00FFFFFF00FFF7EF00F7CE
            9400EFBD8400F7CE9C00FFE7B500FFF7C600BD9C8C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDBD00F7EFD600FFEF
            C600FFE7AD00FFE7B500F7DEB500CEAD9C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEAD9400CEAD
            9C00DEBDA500DEBDA500FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = btnViewEmployerClick
        end
        object Label28: TLabel
          Left = 19
          Top = 46
          Width = 77
          Height = 13
          Caption = 'Linked Employer'
        end
        object Label8: TLabel
          Left = 19
          Top = 73
          Width = 83
          Height = 13
          Caption = 'Linked Workplace'
        end
        object Label27: TLabel
          Left = 19
          Top = 102
          Width = 75
          Height = 13
          Caption = 'Linked Pay Rule'
        end
        object CoolBar2: TCoolBar
          Left = 0
          Top = 0
          Width = 758
          Height = 29
          AutoSize = True
          Bands = <
            item
              Control = ToolBar2
              ImageIndex = -1
              Width = 727
            end>
          object ToolBar2: TToolBar
            Left = 9
            Top = 0
            Width = 714
            Height = 25
            ButtonWidth = 186
            Caption = 'ToolBar2'
            Flat = True
            Images = dtmMain.imglstMain
            List = True
            ShowCaptions = True
            TabOrder = 0
            object btnEmploymentHistory: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Employment History'
              ImageIndex = 43
              Visible = False
            end
            object btnEmploymentConfirmationHistory: TToolButton
              Left = 126
              Top = 0
              AutoSize = True
              Caption = 'Employment Confirmation History'
              ImageIndex = 43
              OnClick = btnEmploymentConfirmationHistoryClick
            end
          end
        end
        object pcEmploymentDetails: TPageControl
          Left = 3
          Top = 127
          Width = 718
          Height = 348
          ActivePage = TabSheet3
          TabOrder = 1
          object TabSheet3: TTabSheet
            Caption = 'Employment Details'
            object Label56: TLabel
              Left = 305
              Top = 21
              Width = 84
              Height = 13
              Caption = 'Employment Date'
            end
            object Label4: TLabel
              Left = 12
              Top = 21
              Width = 86
              Height = 13
              Caption = 'Employee Number'
              FocusControl = edtEmployeeNo
            end
            object Label13: TLabel
              Left = 12
              Top = 75
              Width = 54
              Height = 13
              Caption = 'Occupation'
            end
            object Label12: TLabel
              Left = 12
              Top = 49
              Width = 85
              Height = 13
              Caption = 'Employment Type'
            end
            object Label30: TLabel
              Left = 305
              Top = 49
              Width = 89
              Height = 13
              Caption = 'Contract End Date'
            end
            object Label48: TLabel
              Left = 12
              Top = 102
              Width = 94
              Height = 13
              Caption = 'Method of Payment'
            end
            object Label72: TLabel
              Left = 305
              Top = 75
              Width = 67
              Height = 13
              Caption = 'Last Pay Date'
            end
            object Label76: TLabel
              Left = 12
              Top = 129
              Width = 75
              Height = 13
              Caption = 'Retirement Age'
            end
            object dtpEmpDate: TDBDateTimePicker
              Left = 405
              Top = 18
              Width = 158
              Height = 21
              Date = 38329.000000000000000000
              Time = 38329.000000000000000000
              TabOrder = 0
              DataField = 'EmpDate'
              DataSource = dtsEntity
              ReadOnly = False
            end
            object edtEmployeeNo: TDBEdit
              Left = 112
              Top = 18
              Width = 158
              Height = 21
              DataField = 'RefFld1'
              DataSource = dtsEntity
              TabOrder = 1
            end
            object cmbEmploymentType: TDBLookupComboBox
              Left = 112
              Top = 45
              Width = 158
              Height = 21
              DataField = 'Employment'
              DataSource = dtsEntity
              KeyField = 'TypeKey'
              ListField = 'Description'
              ListSource = dtmEntCode.dtsEmployment
              TabOrder = 2
            end
            object dtpEndDate: TDBDateTimePicker
              Left = 405
              Top = 45
              Width = 158
              Height = 21
              Date = 38329.000000000000000000
              Time = 38329.000000000000000000
              TabOrder = 3
              DataField = 'ContractEndDate'
              DataSource = dtsEntity
              ReadOnly = False
            end
            object cmbPayMethod: TDBComboBox
              Left = 112
              Top = 100
              Width = 158
              Height = 21
              Style = csDropDownList
              DataField = 'PayMethod'
              DataSource = dtsEntity
              ItemHeight = 13
              Items.Strings = (
                'EFT'
                'Cash'
                'Cheque')
              TabOrder = 4
            end
            object DBDateTimePicker2: TDBDateTimePicker
              Left = 405
              Top = 72
              Width = 158
              Height = 21
              Date = 38329.000000000000000000
              Time = 38329.000000000000000000
              TabOrder = 5
              DataField = 'LastPayDate'
              DataSource = dtsEntity
              ReadOnly = False
            end
            object edtRetirementAge: TDBEdit
              Left = 112
              Top = 126
              Width = 158
              Height = 21
              DataField = 'RetirementAge'
              DataSource = dtsEntity
              TabOrder = 6
            end
            object GroupBox3: TGroupBox
              Left = 3
              Top = 166
              Width = 652
              Height = 85
              Caption = 'Pay Rule'
              TabOrder = 7
              object Label65: TLabel
                Left = 14
                Top = 26
                Width = 72
                Height = 13
                Caption = 'Pay Frequency'
              end
              object Label63: TLabel
                Left = 14
                Top = 56
                Width = 40
                Height = 13
                Caption = 'Pay Day'
              end
              object cmbPayDayWeek: TDBComboBox
                Left = 105
                Top = 51
                Width = 240
                Height = 21
                Style = csOwnerDrawFixed
                DataField = 'PayDay'
                DataSource = dtsEntity
                ItemHeight = 15
                Items.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6')
                TabOrder = 2
                OnDrawItem = cmbPayDayWeekDrawItem
              end
              object cmbPayFreq: TDBComboBox
                Left = 105
                Top = 23
                Width = 240
                Height = 22
                Style = csOwnerDrawFixed
                DataField = 'PayFreq'
                DataSource = dtsEntity
                ItemHeight = 16
                Items.Strings = (
                  ' '
                  'M'
                  'W'
                  'T')
                TabOrder = 0
                OnChange = cmbPayFreqChange
                OnDrawItem = cmbPayFreqDrawItem
              end
              object cmbPayDay: TDBComboBox
                Left = 105
                Top = 51
                Width = 240
                Height = 21
                Style = csOwnerDrawFixed
                DataField = 'PayDay'
                DataSource = dtsEntity
                ItemHeight = 15
                Items.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9'
                  '10'
                  '11'
                  '12'
                  '13'
                  '14'
                  '15'
                  '16'
                  '17'
                  '18'
                  '19'
                  '20'
                  '21'
                  '22'
                  '23'
                  '24'
                  '25'
                  '26'
                  '27'
                  '28'
                  '29'
                  '30'
                  '31')
                TabOrder = 1
                OnDrawItem = cmbPayDayDrawItem
              end
            end
            object edtOccupation: TDBEdit
              Left = 112
              Top = 72
              Width = 158
              Height = 21
              DataField = 'Occupation'
              DataSource = dtsEntity
              TabOrder = 8
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Employer Details'
            ImageIndex = 1
            object GroupBox7: TGroupBox
              Left = 3
              Top = 150
              Width = 652
              Height = 167
              Caption = 'Workplace'
              TabOrder = 0
              object Label32: TLabel
                Left = 19
                Top = 68
                Width = 51
                Height = 13
                Caption = 'Supervisor'
              end
              object Label5: TLabel
                Left = 19
                Top = 94
                Width = 57
                Height = 13
                Caption = 'Department'
              end
              object Label43: TLabel
                Left = 19
                Top = 19
                Width = 27
                Height = 13
                Caption = 'Name'
              end
              object Label44: TLabel
                Left = 19
                Top = 45
                Width = 18
                Height = 13
                Caption = 'Tel.'
              end
              object Label68: TLabel
                Left = 355
                Top = 19
                Width = 48
                Height = 13
                Caption = 'Address 1'
              end
              object Label69: TLabel
                Left = 355
                Top = 71
                Width = 34
                Height = 13
                Caption = 'Suburb'
              end
              object Label70: TLabel
                Left = 355
                Top = 95
                Width = 26
                Height = 13
                Caption = 'Town'
              end
              object Label71: TLabel
                Left = 355
                Top = 118
                Width = 41
                Height = 13
                Caption = 'Province'
              end
              object Label40: TLabel
                Left = 355
                Top = 46
                Width = 48
                Height = 13
                Caption = 'Address 2'
              end
              object edtSupervisor: TDBEdit
                Left = 114
                Top = 64
                Width = 197
                Height = 21
                DataField = 'Superior'
                DataSource = dtsEntity
                TabOrder = 0
              end
              object edtDepartment: TDBEdit
                Left = 114
                Top = 87
                Width = 198
                Height = 21
                DataField = 'Department'
                DataSource = dtsEntity
                TabOrder = 1
              end
              object edtWorkName: TDBEdit
                Left = 114
                Top = 16
                Width = 229
                Height = 21
                DataField = 'WorkName'
                DataSource = dtsEntity
                TabOrder = 2
              end
              object edtWorkTel: TDBEdit
                Left = 114
                Top = 40
                Width = 109
                Height = 21
                DataField = 'WorkTel'
                DataSource = dtsEntity
                TabOrder = 3
              end
              object edtWorkAddress1: TDBEdit
                Left = 416
                Top = 16
                Width = 226
                Height = 21
                DataField = 'WorkAddress1'
                DataSource = dtsEntity
                TabOrder = 4
              end
              object edtWorkSuburb: TDBEdit
                Left = 416
                Top = 67
                Width = 226
                Height = 21
                DataField = 'WorkSuburb'
                DataSource = dtsEntity
                TabOrder = 5
              end
              object edtWorkTown: TDBEdit
                Left = 416
                Top = 91
                Width = 226
                Height = 21
                DataField = 'WorkTown'
                DataSource = dtsEntity
                TabOrder = 6
              end
              object edtWorkCode: TDBEdit
                Left = 585
                Top = 114
                Width = 57
                Height = 21
                DataField = 'WorkPostCode'
                DataSource = dtsEntity
                TabOrder = 7
              end
              object cmbWorkProvince: TDBComboBox
                Left = 416
                Top = 114
                Width = 167
                Height = 21
                Style = csDropDownList
                DataField = 'WorkProvince'
                DataSource = dtsEntity
                DropDownCount = 9
                ItemHeight = 13
                Items.Strings = (
                  'Eastern Cape'
                  'Free State'
                  'Gauteng'
                  'KwaZulu-Natal'
                  'Limpopo'
                  'Mpumalanga'
                  'North West'
                  'Northern Cape'
                  'Western Cape')
                TabOrder = 8
              end
              object edtWorkAddress2: TDBEdit
                Left = 416
                Top = 42
                Width = 226
                Height = 21
                DataField = 'WorkAddress2'
                DataSource = dtsEntity
                TabOrder = 9
              end
            end
            object GroupBox6: TGroupBox
              Left = 3
              Top = 1
              Width = 652
              Height = 143
              Caption = 'Employer'
              TabOrder = 1
              object Label41: TLabel
                Left = 19
                Top = 21
                Width = 74
                Height = 13
                Caption = 'Employer Name'
              end
              object Label42: TLabel
                Left = 354
                Top = 94
                Width = 72
                Height = 13
                Caption = 'Company Type'
              end
              object Label46: TLabel
                Left = 19
                Top = 115
                Width = 74
                Height = 13
                Caption = 'Contact Person'
              end
              object Label45: TLabel
                Left = 19
                Top = 91
                Width = 18
                Height = 13
                Caption = 'Tel.'
              end
              object Label47: TLabel
                Left = 228
                Top = 93
                Width = 16
                Height = 13
                Caption = 'Ext'
              end
              object Label74: TLabel
                Left = 19
                Top = 44
                Width = 66
                Height = 13
                Caption = 'Trading Name'
              end
              object Label90: TLabel
                Left = 19
                Top = 68
                Width = 78
                Height = 13
                Caption = 'Registration No.'
              end
              object Label91: TLabel
                Left = 354
                Top = 116
                Width = 97
                Height = 13
                Caption = 'Confirmation Source'
              end
              object edtEmpName: TDBEdit
                Left = 113
                Top = 16
                Width = 229
                Height = 21
                DataField = 'EmpName'
                DataSource = dtsEntity
                TabOrder = 0
              end
              object cmbEmpType: TDBComboBox
                Left = 457
                Top = 89
                Width = 160
                Height = 21
                Style = csOwnerDrawFixed
                DataField = 'EmpType'
                DataSource = dtsEntity
                DropDownCount = 9
                ItemHeight = 15
                Items.Strings = (
                  'Pty'
                  'Ltd'
                  'CC'
                  'Gov'
                  'Inc'
                  'Int'
                  'Trust'
                  'Co-op'
                  'Other')
                TabOrder = 1
                OnDrawItem = cmbEmpTypeDrawItem
              end
              object edtEmpTel: TDBEdit
                Left = 113
                Top = 89
                Width = 109
                Height = 21
                DataField = 'EmpTel'
                DataSource = dtsEntity
                TabOrder = 2
              end
              object edtEmpContact: TDBEdit
                Left = 113
                Top = 113
                Width = 197
                Height = 21
                DataField = 'EmpContact'
                DataSource = dtsEntity
                TabOrder = 3
              end
              object edtEmpExt: TDBEdit
                Left = 248
                Top = 89
                Width = 61
                Height = 21
                DataField = 'EmpExt'
                DataSource = dtsEntity
                TabOrder = 4
              end
              object edtEmpTradingName: TDBEdit
                Left = 113
                Top = 40
                Width = 229
                Height = 21
                DataField = 'EmpTradingName'
                DataSource = dtsEntity
                TabOrder = 5
              end
              object edtEmpRegistrationNo: TDBEdit
                Left = 113
                Top = 65
                Width = 196
                Height = 21
                DataField = 'EmpRegistrationNo'
                DataSource = dtsEntity
                TabOrder = 6
              end
              object btnAddConfirmationText: TButton
                Left = 354
                Top = 14
                Width = 116
                Height = 25
                Caption = 'Add Confirmation'
                TabOrder = 7
                OnClick = btnAddConfirmationLinkClick
              end
              object cmbEmployerConfirmationSource: TDBLookupComboBox
                Left = 457
                Top = 112
                Width = 160
                Height = 21
                DataField = 'EmpConfirmationSource'
                DataSource = dtsEntity
                KeyField = 'TypeKey'
                ListField = 'Description'
                ListSource = dtmEntCode.dtsConfirmationSource
                TabOrder = 8
              end
            end
          end
          object tsEmploymentNotes: TTabSheet
            Caption = 'Notes'
            ImageIndex = 2
            object rdtEmploymentNotes: TRichEdit
              Left = 0
              Top = 27
              Width = 710
              Height = 293
              Align = alClient
              TabOrder = 0
            end
            object too: TCoolBar
              Left = 0
              Top = 0
              Width = 710
              Height = 27
              AutoSize = True
              Bands = <
                item
                  Control = tlbEmploymentNotes
                  ImageIndex = -1
                  MinHeight = 23
                  Width = 654
                end>
              object tlbEmploymentNotes: TToolBar
                Left = 9
                Top = 0
                Width = 641
                Height = 23
                ButtonWidth = 86
                Caption = 'ToolBar1'
                EdgeInner = esNone
                EdgeOuter = esNone
                Flat = True
                Images = dtmMain.imglstMain
                List = True
                ShowCaptions = True
                TabOrder = 0
                object btnNewNoteAll: TToolButton
                  Left = 0
                  Top = 0
                  AutoSize = True
                  Caption = 'New Note'
                  ImageIndex = 3
                  OnClick = btnNewNoteAllClick
                end
                object btnEditNoteAll: TToolButton
                  Left = 78
                  Top = 0
                  AutoSize = True
                  Caption = 'Amend Note'
                  ImageIndex = 4
                  OnClick = btnEditNoteAllClick
                end
              end
            end
          end
        end
        object edtEmployer: TEdit
          Left = 124
          Top = 43
          Width = 360
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 2
        end
        object edtBranch: TEdit
          Left = 124
          Top = 70
          Width = 360
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 368
          Top = 97
          Width = 49
          Height = 21
          DataField = 'PayFreq'
          DataSource = dtsEntity
          TabOrder = 4
          Visible = False
          OnChange = DBEdit2Change
        end
        object cmbEmpPayRule: TDBLookupComboBox
          Left = 124
          Top = 97
          Width = 229
          Height = 21
          DataField = 'PayRuleID'
          DataSource = dtsEntity
          KeyField = 'PayRuleID'
          ListField = 'PayRule'
          ListSource = dtmEntityLoan.dtsPayRules
          TabOrder = 5
        end
        object btnAddConfirmationLink: TButton
          Left = 550
          Top = 39
          Width = 116
          Height = 25
          Caption = 'Add Confirmation'
          TabOrder = 6
          OnClick = btnAddConfirmationLinkClick
        end
      end
      object tsMarketing: TTabSheet
        Caption = 'Other'
        ImageIndex = 8
        object GroupBox8: TGroupBox
          Left = 16
          Top = 160
          Width = 585
          Height = 137
          Caption = 'Sales && Marketing Information'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label31: TLabel
            Left = 30
            Top = 31
            Width = 125
            Height = 13
            Caption = 'How did the client find us?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cmdHowFound: TDBComboBox
            Left = 220
            Top = 27
            Width = 177
            Height = 21
            Style = csDropDownList
            DataField = 'ClientSource'
            DataSource = dtsEntity
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              ''
              'Agent'
              'Friend'
              'Newspaper'
              'Poster'
              'Direct Mail'
              'Internet'
              'Other')
            ParentFont = False
            TabOrder = 0
          end
          object chkDoTelemarket: TDBCheckBox
            Left = 30
            Top = 55
            Width = 203
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Telemarketing Campaigns'
            DataField = 'DoTelemarket'
            DataSource = dtsEntity
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object chkDoDistribute: TDBCheckBox
            Left = 30
            Top = 76
            Width = 203
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Marketing/Customer Distribution Lists'
            DataField = 'DoDistribute'
            DataSource = dtsEntity
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object chkDoEmail: TDBCheckBox
            Left = 30
            Top = 97
            Width = 203
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Email or SMS Messages'
            DataField = 'DoEmailSMS'
            DataSource = dtsEntity
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
        object GroupBox11: TGroupBox
          Left = 16
          Top = 16
          Width = 585
          Height = 137
          Caption = 'Addtional Requirements'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object DBCheckBox1: TDBCheckBox
            Left = 30
            Top = 31
            Width = 531
            Height = 17
            Alignment = taLeftJustify
            Caption = 
              'Do you require the upfront initiation fee to be financed with th' +
              'e principal debt?'
            DataField = 'FinanceFee'
            DataSource = dtsEntity
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 30
            Top = 60
            Width = 531
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Do you require Credit Life insurance offered by Bruma Finance?'
            DataField = 'LifeInsurance'
            DataSource = dtsEntity
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 30
            Top = 88
            Width = 531
            Height = 17
            Alignment = taLeftJustify
            Caption = 
              'Are you aware of any current or previous illness, injury or disa' +
              'bility?'
            DataField = 'Illness'
            DataSource = dtsEntity
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
      object tsRel: TTabSheet
        Caption = 'Relations'
        ImageIndex = 4
        object grdERLink: TDBGrdClr
          Left = 0
          Top = 0
          Width = 691
          Height = 477
          Align = alClient
          DataSource = dtmEntityLoan.dtsERLink
          Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OddColor = clInfoBk
          Columns = <
            item
              Expanded = False
              FieldName = 'Description'
              Title.Caption = 'Relation'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name2'
              Title.Caption = 'Surname'
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TelNo1'
              Title.Caption = 'Tel no. 1'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TelNo3'
              Title.Caption = 'Mobile no'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EntCode'
              Title.Caption = 'Code'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UserId'
              Title.Caption = 'User ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DateAdded'
              Title.Caption = 'Date added'
              Visible = True
            end>
        end
        object tlbERLink: TToolBar
          Left = 691
          Top = 0
          Width = 40
          Height = 477
          Align = alRight
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 40
          EdgeBorders = []
          Flat = True
          Images = dtmMain.imglstMain
          ShowCaptions = True
          TabOrder = 1
          object btnAddRL: TToolButton
            Tag = 9
            Left = 0
            Top = 0
            Caption = 'Add'
            ImageIndex = 3
            Wrap = True
            OnClick = btnAddRLClick
          end
          object btnAmdRel: TToolButton
            Left = 0
            Top = 36
            Caption = 'Amend'
            ImageIndex = 4
            Wrap = True
            OnClick = btnAmdRelClick
          end
          object btnDelRL: TToolButton
            Tag = 9
            Left = 0
            Top = 72
            Caption = 'Delete'
            ImageIndex = 7
            Wrap = True
            OnClick = btnDelRLClick
          end
          object btnViewRel: TToolButton
            Left = 0
            Top = 108
            Caption = 'View'
            ImageIndex = 8
            OnClick = btnViewRelClick
          end
        end
      end
      object tsOther: TTabSheet
        Caption = 'Other'
        ImageIndex = 7
        TabVisible = False
        object Label55: TLabel
          Left = 19
          Top = 17
          Width = 27
          Height = 13
          Caption = 'Link 2'
        end
        object Label60: TLabel
          Left = 19
          Top = 65
          Width = 99
          Height = 13
          Caption = 'Provident Fund Date'
        end
        object Label61: TLabel
          Left = 19
          Top = 42
          Width = 73
          Height = 13
          Caption = 'Provident Fund'
        end
        object Label64: TLabel
          Left = 19
          Top = 91
          Width = 93
          Height = 13
          Caption = 'Provident Fund No.'
        end
        object btnLUnionLink: TSpeedButton
          Left = 507
          Top = 14
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000130B0000130B00000001000000010000000000002929
            3100736B630084848400C6C6C600FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
            0505050505050505050505050505050505050303030305030305050505050505
            0503010101010301040505050505050503010403010401040603050505050503
            0104060603000406010505050505030104060303000406010205050505030104
            0601050006060002010505050501040601050503040106030105050503040601
            0303050503010603020505050106030100000303010406020505050501060400
            0303000104060205050505050503000406000104060205050505050503010406
            0101040602050505050505050104060204060602050505050505050305060205
            0202020505050505050505050505050505050505050505050505}
          OnClick = btnLUnionLinkClick
        end
        object btnDelLUnion: TSpeedButton
          Left = 526
          Top = 14
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = btnDelLUnionClick
        end
        object btnViewLink2: TSpeedButton
          Left = 488
          Top = 14
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF004A63
            7B00BD949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC600188C
            E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0052B5
            FF00218CEF004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052B5
            FF0052B5FF001884E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0052B5FF004AB5FF00188CE7004A7BA500BD949400FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0052B5FF004AB5FF002184DE005A6B7300FF00FF00AD7B7300C6A5
            9C00D6B5A500CEA59C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFF
            D600FFFFD600FFFFD600E7DEBD00CEADA500FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00CEB5B500D6B5A500FFEFC600FFFFD600FFFF
            D600FFFFD600FFFFDE00FFFFEF00F7F7EF00B58C8C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C6948C00F7DEB500F7D6A500FFF7CE00FFFF
            D600FFFFDE00FFFFEF00FFFFF700FFFFFF00DED6BD00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00DEBDA500FFE7AD00F7CE9400FFF7CE00FFFF
            DE00FFFFE700FFFFF700FFFFF700FFFFEF00F7EFD600C69C9400FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00E7C6AD00FFDEAD00EFBD8400F7E7B500FFFF
            D600FFFFDE00FFFFE700FFFFE700FFFFDE00F7F7D600C6AD9C00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEF
            C600FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7EFD600C6A59C00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C69C9400FFEFC600FFEFC600F7D6A500F7CE
            9C00F7E7B500FFF7CE00FFF7D600FFFFD600E7DEBD00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00DEC6AD00FFFFFF00FFF7EF00F7CE
            9400EFBD8400F7CE9C00FFE7B500FFF7C600BD9C8C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDBD00F7EFD600FFEF
            C600FFE7AD00FFE7B500F7DEB500CEAD9C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEAD9400CEAD
            9C00DEBDA500DEBDA500FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = btnViewLink2Click
        end
        object btnPFundLink: TSpeedButton
          Left = 507
          Top = 39
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000130B0000130B00000001000000010000000000002929
            3100736B630084848400C6C6C600FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
            0505050505050505050505050505050505050303030305030305050505050505
            0503010101010301040505050505050503010403010401040603050505050503
            0104060603000406010505050505030104060303000406010205050505030104
            0601050006060002010505050501040601050503040106030105050503040601
            0303050503010603020505050106030100000303010406020505050501060400
            0303000104060205050505050503000406000104060205050505050503010406
            0101040602050505050505050104060204060602050505050505050305060205
            0202020505050505050505050505050505050505050505050505}
          OnClick = btnPFundLinkClick
        end
        object btnDelPFund: TSpeedButton
          Left = 526
          Top = 39
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = btnDelPFundClick
        end
        object btnViewLink1: TSpeedButton
          Left = 488
          Top = 39
          Width = 18
          Height = 21
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF004A63
            7B00BD949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC600188C
            E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0052B5
            FF00218CEF004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052B5
            FF0052B5FF001884E7004A7BA500C6949400FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0052B5FF004AB5FF00188CE7004A7BA500BD949400FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0052B5FF004AB5FF002184DE005A6B7300FF00FF00AD7B7300C6A5
            9C00D6B5A500CEA59C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0052BDFF00B5D6EF00A5948C00B59C8C00F7E7CE00FFFF
            D600FFFFD600FFFFD600E7DEBD00CEADA500FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00CEB5B500D6B5A500FFEFC600FFFFD600FFFF
            D600FFFFD600FFFFDE00FFFFEF00F7F7EF00B58C8C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C6948C00F7DEB500F7D6A500FFF7CE00FFFF
            D600FFFFDE00FFFFEF00FFFFF700FFFFFF00DED6BD00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00DEBDA500FFE7AD00F7CE9400FFF7CE00FFFF
            DE00FFFFE700FFFFF700FFFFF700FFFFEF00F7EFD600C69C9400FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00E7C6AD00FFDEAD00EFBD8400F7E7B500FFFF
            D600FFFFDE00FFFFE700FFFFE700FFFFDE00F7F7D600C6AD9C00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00DEBDAD00FFE7B500EFBD8400F7CE9400FFEF
            C600FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7EFD600C6A59C00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C69C9400FFEFC600FFEFC600F7D6A500F7CE
            9C00F7E7B500FFF7CE00FFF7D600FFFFD600E7DEBD00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00DEC6AD00FFFFFF00FFF7EF00F7CE
            9400EFBD8400F7CE9C00FFE7B500FFF7C600BD9C8C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6BDBD00F7EFD600FFEF
            C600FFE7AD00FFE7B500F7DEB500CEAD9C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CEAD9400CEAD
            9C00DEBDA500DEBDA500FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = btnViewLink1Click
        end
        object lblUnion: TLabel
          Left = 19
          Top = 139
          Width = 67
          Height = 13
          Caption = 'Union Number'
        end
        object Label26: TLabel
          Left = 19
          Top = 115
          Width = 27
          Height = 13
          Caption = 'Union'
        end
        object Label50: TLabel
          Left = 18
          Top = 181
          Width = 71
          Height = 13
          Caption = 'Landlord Name'
        end
        object Label51: TLabel
          Left = 18
          Top = 204
          Width = 58
          Height = 13
          Caption = 'Landlord Tel'
        end
        object dbtLandLord: TDBText
          Left = 104
          Top = 180
          Width = 65
          Height = 17
          DataField = 'LandLord'
          DataSource = dtmEntityLoan.dtsEntPsnAdd
        end
        object dbtLandLordTel: TDBText
          Left = 104
          Top = 203
          Width = 65
          Height = 17
          DataField = 'LandLordTel'
          DataSource = dtmEntityLoan.dtsEntPsnAdd
        end
        object Label66: TLabel
          Left = 13
          Top = 252
          Width = 59
          Height = 13
          Caption = 'NLR ref. no.'
        end
        object Label14: TLabel
          Left = 13
          Top = 276
          Width = 57
          Height = 13
          Caption = 'Mobile Type'
        end
        object Label52: TLabel
          Left = 13
          Top = 302
          Width = 43
          Height = 13
          Caption = 'Indicator'
        end
        object lblEntInd2: TLabel
          Left = 13
          Top = 328
          Width = 52
          Height = 13
          Caption = 'Indicator 2'
        end
        object Label57: TLabel
          Left = 339
          Top = 98
          Width = 75
          Height = 13
          Caption = 'Retirement Age'
        end
        object Label58: TLabel
          Left = 339
          Top = 74
          Width = 79
          Height = 13
          Caption = 'Retirement Date'
        end
        object lblRetireDate: TDBText
          Left = 427
          Top = 74
          Width = 62
          Height = 13
          AutoSize = True
          DataField = 'RetireDate'
          DataSource = dtsEntity
        end
        object Label59: TLabel
          Left = 339
          Top = 145
          Width = 91
          Height = 13
          Caption = 'Work Permit Expiry'
        end
        object Label62: TLabel
          Left = 339
          Top = 122
          Width = 45
          Height = 13
          Caption = 'Pay Point'
        end
        object Label36: TLabel
          Left = 339
          Top = 171
          Width = 71
          Height = 13
          Caption = 'Monthly Salary'
        end
        object lblNetSal: TLabel
          Left = 339
          Top = 195
          Width = 50
          Height = 13
          Caption = 'Net Salary'
        end
        object lblLastPayDate: TLabel
          Left = 331
          Top = 229
          Width = 67
          Height = 13
          Caption = 'Last Pay Date'
        end
        object Label35: TLabel
          Left = 331
          Top = 318
          Width = 79
          Height = 13
          Caption = 'Period employed'
        end
        object edtEmpPeriod: TDBText
          Left = 435
          Top = 318
          Width = 66
          Height = 13
          AutoSize = True
          DataField = 'PeriodEmployed'
          DataSource = dtsEntity
        end
        object edtPFundNo: TDBEdit
          Left = 124
          Top = 88
          Width = 101
          Height = 21
          DataField = 'PFundNo'
          DataSource = dtsEntity
          MaxLength = 10
          TabOrder = 0
        end
        object dtpProvDate: TDBDateTimePicker
          Left = 124
          Top = 62
          Width = 101
          Height = 21
          Date = 38329.000000000000000000
          Time = 38329.000000000000000000
          TabOrder = 1
          DataField = 'PFundDate'
          DataSource = dtsEntity
          ReadOnly = False
        end
        object edtLink2: TEdit
          Left = 124
          Top = 14
          Width = 360
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 2
        end
        object edtProvident: TEdit
          Left = 124
          Top = 39
          Width = 360
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 3
        end
        object edtUnionNo: TDBEdit
          Left = 124
          Top = 136
          Width = 145
          Height = 21
          DataField = 'Union_No'
          DataSource = dtsEntity
          MaxLength = 10
          TabOrder = 4
        end
        object cmbUnion: TDBLookupComboBox
          Left = 124
          Top = 112
          Width = 145
          Height = 21
          DataField = 'Trade_union'
          DataSource = dtsEntity
          KeyField = 'TypeKey'
          ListField = 'Description'
          ListSource = dtmEntCode.dtsUnion
          TabOrder = 5
        end
        object edtLandlord: TDBEdit
          Tag = 12
          Left = 104
          Top = 178
          Width = 209
          Height = 21
          DataField = 'LandLord'
          DataSource = dtsEntity
          TabOrder = 6
        end
        object edtLandlordTel: TDBEdit
          Left = 104
          Top = 201
          Width = 121
          Height = 21
          DataField = 'LandLordTel'
          DataSource = dtsEntity
          TabOrder = 7
        end
        object edtNLR: TDBEdit
          Left = 107
          Top = 249
          Width = 145
          Height = 21
          DataField = 'NLRRefNo'
          DataSource = dtsEntity
          ReadOnly = True
          TabOrder = 8
        end
        object cmbMobileType: TDBComboBox
          Left = 107
          Top = 272
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'Mobile_type'
          DataSource = dtsEntity
          ItemHeight = 16
          Items.Strings = (
            ''
            'P'
            'C')
          TabOrder = 9
          OnDrawItem = cmbMobileTypeDrawItem
        end
        object cblPersonInd: TDBLookupComboBox
          Left = 107
          Top = 299
          Width = 145
          Height = 21
          DataField = 'EntInd'
          DataSource = dtsEntity
          KeyField = 'TypeKey'
          ListField = 'Description'
          ListSource = dtmEntCode.dtsPersonInd
          TabOrder = 10
        end
        object cmbEntInd2: TDBLookupComboBox
          Left = 107
          Top = 325
          Width = 145
          Height = 21
          DataField = 'EntInd2'
          DataSource = dtsEntity
          KeyField = 'TypeKey'
          ListField = 'Description'
          ListSource = dtmEntityLoan.dtsLUEntInd2
          TabOrder = 11
        end
        object edtRetAge: TEdit
          Left = 443
          Top = 94
          Width = 158
          Height = 21
          MaxLength = 3
          TabOrder = 12
          OnExit = edtRetAgeExit
        end
        object edtPayPoint: TDBEdit
          Left = 443
          Top = 118
          Width = 132
          Height = 21
          DataField = 'PayPoint'
          DataSource = dtsEntity
          MaxLength = 10
          TabOrder = 13
        end
        object dbDateTimePicker1: TDBDateTimePicker
          Left = 443
          Top = 142
          Width = 132
          Height = 21
          Date = 38329.000000000000000000
          Time = 38329.000000000000000000
          TabOrder = 14
          DataField = 'WPEDate'
          DataSource = dtsEntity
          ReadOnly = False
        end
        object edtGross: TDBEdit
          Left = 443
          Top = 168
          Width = 158
          Height = 21
          DataField = 'MthGross'
          DataSource = dtsEntity
          TabOrder = 15
        end
        object edtNetSal: TDBEdit
          Left = 443
          Top = 192
          Width = 132
          Height = 21
          DataField = 'NetSal'
          DataSource = dtsEntity
          TabOrder = 16
        end
        object dtpLastPayDate: TDBDateTimePicker
          Left = 435
          Top = 226
          Width = 158
          Height = 21
          Date = 38329.000000000000000000
          Time = 38329.000000000000000000
          TabOrder = 17
          DataField = 'LastPayDate'
          DataSource = dtsEntity
          ReadOnly = False
        end
      end
      object tsStatus: TTabSheet
        Caption = 'Status'
        ImageIndex = 9
        object grpClientStatus: TGroupBox
          Left = 5
          Top = 7
          Width = 716
          Height = 209
          Caption = 'Client Status'
          TabOrder = 0
          DesignSize = (
            716
            209)
          object Label84: TLabel
            Left = 13
            Top = 28
            Width = 37
            Height = 13
            Caption = 'Current'
          end
          object btnClientStatus: TSpeedButton
            Left = 292
            Top = 24
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = btnClientStatusClick
          end
          object Label85: TLabel
            Left = 13
            Top = 56
            Width = 34
            Height = 13
            Caption = 'History'
          end
          object grdClientStatus: TDBGrid
            Left = 8
            Top = 72
            Width = 699
            Height = 129
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = dtmEntityLoan.dtsClientStatusHistory
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = grdClientStatusDrawColumnCell
            Columns = <
              item
                Expanded = False
                Width = 26
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EffectiveDate'
                Title.Caption = 'Effective Date'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Description'
                Width = 170
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CreateUser'
                Title.Caption = 'Added By'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CreateDate'
                Title.Caption = 'Date Added'
                Width = 125
                Visible = True
              end>
          end
          object edtClientStatus: TDBEdit
            Left = 56
            Top = 24
            Width = 233
            Height = 21
            Color = clBtnFace
            DataField = 'luClientStatus'
            DataSource = dtsEntity
            ReadOnly = True
            TabOrder = 1
          end
        end
        object grpEmploymentStatus: TGroupBox
          Left = 5
          Top = 224
          Width = 716
          Height = 209
          Caption = 'Employment Status'
          TabOrder = 1
          Visible = False
          DesignSize = (
            716
            209)
          object Label86: TLabel
            Left = 13
            Top = 28
            Width = 37
            Height = 13
            Caption = 'Current'
          end
          object Label87: TLabel
            Left = 13
            Top = 56
            Width = 34
            Height = 13
            Caption = 'History'
          end
          object btnEmploymentStatus: TSpeedButton
            Left = 292
            Top = 24
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = btnClientStatusClick
          end
          object grdEmploymentStatus: TDBGrid
            Left = 8
            Top = 72
            Width = 699
            Height = 129
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = dtmEntityLoan.dtsEmploymentStatusHistory
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = grdClientStatusDrawColumnCell
            Columns = <
              item
                Expanded = False
                Width = 26
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EffectiveDate'
                Title.Caption = 'Effective Date'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Description'
                Width = 170
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CreateUser'
                Title.Caption = 'Added By'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CreateDate'
                Title.Caption = 'Date Added'
                Width = 125
                Visible = True
              end>
          end
          object edtEmploymentStatus: TDBEdit
            Left = 56
            Top = 24
            Width = 233
            Height = 21
            Color = clBtnFace
            DataField = 'luEmploymentStatus'
            DataSource = dtsEntity
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object tsDocuments: TTabSheet
        Caption = 'Documents'
        ImageIndex = 9
        TabVisible = False
        object Label73: TLabel
          Left = 16
          Top = 9
          Width = 47
          Height = 13
          Caption = 'Loan Ref.'
        end
        object pnlDocuments: TPanel
          Left = 0
          Top = 28
          Width = 723
          Height = 445
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
        end
        object cmbLoans: TComboBox
          Left = 72
          Top = 5
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
          OnChange = cmbLoansChange
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 519
    Width = 815
    Height = 20
    SimpleText = ''
  end
  inherited ppmDBBase: TPopupMenu
    Left = 520
    Top = 0
  end
  inherited dtsEntity: TDataSource
    Left = 484
    Top = 0
  end
  object PopupMenu1: TPopupMenu
    Images = dtmMain.imglstMain
    OnPopup = ppmDBBasePopup
    Left = 456
    object MenuItem1: TMenuItem
      Tag = 9
      Caption = 'View menu'
      ShortCut = 16464
      Visible = False
      OnClick = Viewmenu1Click
    end
    object MenuItem2: TMenuItem
      Tag = 9
      Caption = 'Exit'
      ImageIndex = 2
      ShortCut = 16453
      OnClick = btnExitClick
    end
    object MenuItem3: TMenuItem
      Tag = 9
      Caption = 'New'
      ImageIndex = 3
      ShortCut = 16462
      OnClick = btnNewClick
    end
    object MenuItem4: TMenuItem
      Tag = 9
      Caption = 'Amend'
      ImageIndex = 4
      ShortCut = 16449
      OnClick = btnAmendClick
    end
    object MenuItem5: TMenuItem
      Tag = 9
      Caption = 'Save'
      ImageIndex = 5
      ShortCut = 16467
      OnClick = btnSaveClick
    end
    object MenuItem6: TMenuItem
      Tag = 9
      Caption = 'Cancel'
      ImageIndex = 6
      ShortCut = 16453
      OnClick = btnCancelClick
    end
    object MenuItem7: TMenuItem
      Tag = 9
      Caption = 'Delete'
      ImageIndex = 7
      ShortCut = 16452
      OnClick = btnDeleteClick
    end
    object MenuItem8: TMenuItem
      Tag = 9
      Caption = 'Toggle Menu'
      ShortCut = 16468
      OnClick = ppmToggleClick
    end
  end
end
