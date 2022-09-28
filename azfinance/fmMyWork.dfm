object frmMyWork: TfrmMyWork
  Left = 248
  Top = 119
  Width = 945
  Height = 517
  Caption = 'My Work'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 464
    Width = 937
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 200
      end>
  end
  object pcMyWork: TPageControl
    Left = 0
    Top = 0
    Width = 937
    Height = 464
    ActivePage = tsWorkflow
    Align = alClient
    TabOrder = 1
    object tsWorkflow: TTabSheet
      Caption = 'Workflow'
      DesignSize = (
        929
        436)
      object CoolBar1: TCoolBar
        Left = 0
        Top = 0
        Width = 929
        Height = 48
        AutoSize = True
        Bands = <
          item
            Control = ToolBar1
            ImageIndex = -1
            MinHeight = 44
            Width = 925
          end>
        object ToolBar1: TToolBar
          Left = 9
          Top = 0
          Width = 912
          Height = 44
          AutoSize = True
          ButtonHeight = 44
          ButtonWidth = 65
          Caption = 'ToolBar1'
          EdgeBorders = []
          Flat = True
          Images = ImageList1
          ShowCaptions = True
          TabOrder = 0
          object btnFind: TToolButton
            Left = 0
            Top = 0
            Caption = 'Find'
            ImageIndex = 2
            OnClick = btnFindClick
          end
          object btnNotifications: TToolButton
            Left = 65
            Top = 0
            Caption = 'Notifications'
            ImageIndex = 0
            OnClick = btnNotificationsClick
          end
          object btnClose: TToolButton
            Left = 130
            Top = 0
            Caption = 'Close'
            ImageIndex = 1
            Visible = False
            OnClick = btnCloseClick
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 54
        Width = 924
        Height = 61
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Working On'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 25
          Width = 39
          Height = 13
          Caption = 'Account'
          Transparent = True
        end
        object imgNew: TImage
          Left = 576
          Top = 1
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617036050000424D360500000000000036040000280000001000
            000010000000010008000000000000010000220B0000220B0000000100000001
            00000073A500007BAD00087BAD001084AD001884AD000884B5001084B5001884
            B500218CB500088CBD00108CBD00298CBD002194BD002994BD00219CC60018A5
            CE0031A5CE0039ADCE0042ADCE005AB5D60063B5D60042BDDE0084CEDE0029BD
            E7004AC6E70052C6E7005ACEEF0063D6EF0073D6EF007BDEEF0063DEF70073DE
            F70073E7F7009CE7F700CEEFF700FF00FF0010D6FF0018D6FF0021D6FF0029D6
            FF0029DEFF0031DEFF004ADEFF005ADEFF0063DEFF004AE7FF0052E7FF005AE7
            FF0063E7FF0073E7FF0063EFFF006BEFFF0073EFFF008CEFFF007BF7FF008CF7
            FF0094F7FF009CF7FF00ADF7FF00B5F7FF00BDF7FF00C6F7FF00A5FFFF00CEFF
            FF00DEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
            FF002323230C0223232323232305062323232323041C1802232323230E210F04
            2323232323123619022323103B2B12232323232323041E331B06113D331E0023
            232323232323042E311F3B392F04232323232323232323042A31353904232323
            2323232323020426272A31381D040423232323000D1C302925292B3139351515
            00230816403F38332925292F363E3E1E16000000000000001C27251700000000
            00002323232323230030270923232323232323232323232300352A0623232323
            2323232323232323003A1A02232323232323232323232323003C130023232323
            232323232323232300221400232323232323232323232323230B042323232323
            2323}
          Transparent = True
          Visible = False
        end
        object imgSelected: TImage
          Left = 560
          Top = 1
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617036050000424D360500000000000036040000280000001000
            000010000000010008000000000000010000230B0000230B0000000100000001
            00004242420000848400848484008C8C8C00426BB500C6C6C60000E7F70000EF
            F700FF00FF00006BFF000084FF0000ADFF0010B5FF005ABDFF0000CEFF0000DE
            FF0000E7FF0000EFFF0029EFFF0000F7FF0000FFFF0008FFFF0018FFFF0021FF
            FF0031FFFF006BFFFF0073FFFF00C6FFFF00E7FFFF00FFFFFF00FFFFFF00FFFF
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
            FF000808080808080800000000080808080808080808080803051D0202000808
            08080808080808080300000000000808080808080808080803051D0202000808
            080808080B0808080302020202000808080B08080809080A0114140E14010408
            0908080808080B0A140610100614040B0808080B08080D1410111110100F1404
            08080808090D1B121113141410100F1404090808080D1B19171414141411100E
            04080808090D1B1C18151414141310140409080B080D1B1C191814141413140E
            0408080808080D1B1C1A171414140E04080808080808090D1B1C1C14140E0409
            08080808090B08080D0D0C0C0C0C08080B090808080808080808080808080808
            0808}
          Transparent = True
          Visible = False
        end
        object imgAccept: TImage
          Left = 520
          Top = 2
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617036050000424D360500000000000036040000280000001000
            000010000000010008000000000000010000120B0000120B0000000100001800
            00000085420091F8EE003CE9BD0000B79B00CCCCCC00FFFFFF000BE9AB005FF2
            D40000CC990072F3DB004EF0CD001DE9B00000C59B000089490083F4E4002DEB
            B9005EF2D40000D89D003CEFC40000BD9B006BF7DE004FF0CB0042EFC5000000
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
            0000050505050505050505050505050505050505050505040405050505050505
            050505050505040D0D0405050505050505050505050400060600040505050505
            0505050504000611110600040505050505050504000B111111110B0004050505
            050504000F0808080808080F0004050505050D12080808020208080812000405
            05050D0A0C0C150000150C0C0C15000405050500101000050500070C0C0C0700
            040505050D0D050505050009131313070004050505050505050505000E030303
            090D05050505050505050505000E03030E0D0505050505050505050505000101
            00050505050505050505050505050D0D05050505050505050505050505050505
            0505}
          Stretch = True
          Transparent = True
          Visible = False
        end
        object imgReject: TImage
          Left = 536
          Top = 2
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            000010000000010018000000000000030000C40E0000C40E0000000000000000
            0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC4C4C4A8A8
            A8C4C4C4FF00FFFF00FFFF00FFC4C4C4A8A8A8C4C4C4FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFC4C4C4878793212155878793C4C4C4FF00FFC4C4C4878793
            212155878793C4C4C4FF00FFFF00FFFF00FFFF00FFC4C4C48888943131685D5D
            A9323268888894BDBDBD8888943232695D5DAA323268888894C4C4C4FF00FFFF
            00FFFF00FF8C8C9736366E6666B34F4FB26969B637376F6D6D8537376F6A6AB7
            5151B46767B536366E8C8C97FF00FFFF00FFFF00FF2F2F677878D95555B94F4F
            B55555B96E6EBC4949816F6FBC5656BA5252B85757BB8080E02F2F67FF00FFFF
            00FFFF00FFACACB83838917C7CEF5B5BC05858BE5C5CC07878CB5D5DC15959BF
            5E5EC27F7FF0383891ACACB8FF00FFFF00FFFF00FFFF00FFADADBA42429A8686
            F16464C86060C66161C76161C76666CA8B8BF142429AADADBAFF00FFFF00FFFF
            00FFFF00FFFF00FFC4C4C47878914848A88383DB6666CC6868CF6868CF8686DC
            4848A8787891C4C4C4FF00FFFF00FFFF00FFFF00FFC4C4C490909C3C3C7F5D5D
            BD6D6DD47171D87373DB7373DB7171D86262C33D3D7F90909CC4C4C4FF00FFFF
            00FFFF00FF9393A04242846060BF7070D77676DE8383E6C8C8F68585E87B7BE4
            7676DE6666C64242849393A0FF00FFFF00FFFF00FF50508C9595E77676D97878
            E08787E9C0C0F87777D6C3C3F98C8CEF7F7FE88080E29C9CE950508CFF00FFFF
            00FFFF00FFB3B3C06B6BBAAFAFF68D8DE9C3C3F96E6EBC9A9AB36E6EBCC9C9FA
            9494F1BABAF76C6CBAB3B3C0FF00FFFF00FFFF00FFFF00FFB4B4C17373BFB0B0
            FF7474C0B4B4C1FF00FFB4B4C17474C0B8B8FF7373BFB4B4C1FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFB6B6C36C6CABB6B6C3FF00FFFF00FFFF00FFB6B6C3
            6C6CABB6B6C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF}
          Transparent = True
          Visible = False
        end
        object edtLoanRef: TEdit
          Left = 56
          Top = 22
          Width = 449
          Height = 21
          ReadOnly = True
          TabOrder = 0
        end
        object btnMarkComplete: TBitBtn
          Left = 611
          Top = 20
          Width = 98
          Height = 25
          Caption = 'Mark Complete'
          TabOrder = 1
          OnClick = btnMarkCompleteClick
          Glyph.Data = {
            BA020000424DBA02000000000000BA0100002800000010000000100000000100
            08000000000000010000660B0000660B00006100000061000000AB380000B640
            0000CA5000009831030058230600A1380600B6400600C0480600CA5806004823
            0B006A310B00AB480B00381C110048231100582A11006A311100402A16008438
            1600B6501600E073160040311C00CA6A1C007B482300B6582300B6602A00C060
            2A00C0732A0031313100B66A3100C06A3100FF984000FFB6400073604800CA7B
            480050505000846A500098735000AB7B50007B7B5800E0985800F4A158007B73
            6000D498600040406A006A6A6A008F846A00F4AB6A00FFCA6A0073737300847B
            7300EAA173007B7B7B008F847B00E0AB7B00F4AB7B00FFC07B002A3184009884
            8400988F8400D4A1840098988F00ABAB8F00ABA19800E0B698003138A100E0C0
            A100FFD4A100238FAB00FFE0AB00EAC0B600FFD4B600FFE0B6000084C0003198
            C000C0CAC000FFEAC0001C40CA002A50CA002398CA0098CACA00FFE0CA00FFEA
            CA00ABCAD400D4E0D400F4EAD400FFF4D400C0E0E000F4EAE000FFF4E000CAEA
            EA00F4F4EA00FFF4EA00FFFFEA00FFF4F400FFFFF400FF00FF00FFFFFF005F3C
            30223E5F5F5F5F5F5F5F5F5F5F5F5F3A110F0E0D1B3E5F5F5F5F5F5F5F5F5F34
            032A3218110D1B3E5F5F5F5F5F5F5F3105355146422E1C110C5F5F5F5F5F5F29
            053F504642442F1E04335F5F5F5F5F290B41514A48421F280D2C5F5F5F5F5F29
            0B465348483D26210A2C335F5F5F5F2312504E524F482D32371C1622335F5F23
            12575A58534347271C3737252B225F23125B5D5858495435092032394C405F23
            195D605D5B4F56360C2C5F3E4D385F24195D60606059562E0C2C5F5F5F5F5F3A
            0717213B45576035102C5F5F5F5F5F3E130101010006181714335F5F5F5F5F5F
            5F3E3A311A150802335F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F}
        end
        object btnGoToLoan: TBitBtn
          Left = 508
          Top = 20
          Width = 95
          Height = 25
          Caption = 'Jump to Loan'
          TabOrder = 2
          OnClick = btnFindClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF044906055B09066C0C066C0C055E0A044C06FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05600905600908911309B01809
            B31A09B31909B11907961405680C05680CFF00FFFF00FFFF00FFFF00FFFF00FF
            0A6A150A7F150BB61C09B91A08B41807B21609B31909B41909B81A09B91A0783
            10044D06FF00FFFF00FFFF00FF0B6A150F852216BD3411B7270BB21C07B11608
            B11709B21909B21909B21909B41909BA1A07841006670CFF00FFFF00FF0B6A15
            20BE491BBD4014B7300AB21F28BC36DFF5E1EEFAEF63CE6D09B21909B21909B3
            1909BA1A06670CFF00FF0872101B9A3A2AC65B1DBB450EB4250BB31B11B4219A
            DFA0FFFFFFF7FDF85ACB6509B21909B21909B81A089413045D090872102AB65B
            2CC56522BD4D0FB4220AB21A0CB31C0AB2198DDB95FDFEFDF6FCF758CB6309B2
            1909B51A08AB17045D090F821C37C26C33C76CCDF1DAC9EFD3C7EED0C8EFD2C5
            EED0C7EECFF8FDF9FFFFFFF2FBF36FD27908B41909B31905650B138D2358CC83
            42C977FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDFFFFFFFFFFFFBCEA
            C10AB41A09B319066D0D0F911D6FD2935FD38D6DD49572D69971D69872D69964
            D28C92DFA8FBFEFBFFFFFFACE5B82EBF4C11B82B08B11905610A0F911D67CC83
            9BE5BA38C67030C36938C56F38C56F70D697E8F8EEFFFFFF9FE2B120BD481AB9
            3E10BA2908A31705610AFF00FF25AE39BCEDD282DBA428C0632FC26753CD82F7
            FDF9FFFFFF9CE2B222BC4B1DBA4118B73614C0300A8517FF00FFFF00FF25AE39
            71D28CD2F4E180DAA336C46D39C56FBCECCEABE6C22DC26324BE5623BC4D1FC1
            4616AE340A8517FF00FFFF00FFFF00FF25AE3984D89FDBF7EAAFE8C66BD49352
            CC8144C97849CA7B48CB7839CB6A21B6490F7C1FFF00FFFF00FFFF00FFFF00FF
            FF00FF25AE3925AE39ADE8C5CCF2DEBAEDD1A6E7C291E2B364D4922FB1572FB1
            57FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32B74E25AE3925
            AE3925AE3925AE3924A342FF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object btnRedirect: TBitBtn
          Left = 715
          Top = 20
          Width = 98
          Height = 25
          Caption = 'Redirect'
          TabOrder = 3
          OnClick = btnRedirectClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FF00FFB2B2B2
            A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3B2B2B2FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF897A7279615579615579615579615579615579
            6155796155796155897A72FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF81675B
            9A7C6D81675B81675B81675B81675B81675B81675B9A7C6D81675BFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF886D61A08374886D616D574E6D574E6D574E6D
            574E6D574E80695D6D574EA3A3A3FF00FFFF00FFFF00FFFF00FFFF00FF907467
            A68B7C90746700754E00523600523600523600523600523600543800704BFF00
            FFFF00FFFF00FFFF00FFFF00FF987A6CAD9282987A6C00795135D8B435AD7E35
            AD7E35AD7E35AD7E1AA171087F58A3A3A3A3A3A3A3A3A3B2B2B2FF00FF9F8172
            B29A899F8172007F5500D1AA009F6C009F6C009F6C009B69068359434E3F5444
            3B54443B54443B897A72FF00FFA78778B99F90A7877800855900DAB400B27F00
            B27F00B27F5CC198257153B7BAB4ECE5E0EFE8E3FFFFFF81675BFF00FFAF8E7E
            BFA597AF8E7E008B5D00E3BF00C59200C79500C59214C9985CCCA22B7E61B9BC
            B7EFE8E4FFFFFF886D61FF00FFB79484C5A99DC5A99D00926100ECCB00D4A300
            E4C000E0B300D8A514DBA95CD6AC2D8C6BC8CDC7FFFFFF907467FF00FFC4ADA3
            BF9B8ABF9B8A00986500EDC400A87516B08500EECD00F0C400ECB914F0C535D6
            A85BB898FFFFFF987A6CFF00FFFF00FFFF00FFFF00FF00996600A673638A6DEF
            F9F52ABF9800F6D600FFD900F6D62ABC95E9F0EBFFFFFF9F8172FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFA78778FFFFFFEBF4EF2BBF9800EDCB2BBF98EBF4
            EFFBFAF8FFFFFFA78778FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAF8E7EFF
            FFFFFEFDFDEEF7F45FC2A3EEF7F4FEFDFDFEFDFDFFFFFFAF8E7EFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB79484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFB79484FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC4ADA3BF
            9B8ABF9B8ABF9B8ABF9B8ABF9B8ABF9B8ABF9B8ABF9B8AC4ADA3}
        end
        object btnAddRequest: TBitBtn
          Left = 819
          Top = 20
          Width = 98
          Height = 25
          Caption = 'New Request'
          TabOrder = 4
          OnClick = btnAddRequestClick
          Glyph.Data = {
            66030000424D6603000000000000360000002800000010000000110000000100
            18000000000030030000C40E0000C40E00000000000000000000A449A3A449A3
            A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449A3A449
            A3A449A3A449A3A449A3BEA58FB3977DB3977DB3977DB3977DB3977DB3977DB3
            977D78996A41A55A41A65A41A65A41A65A9CCAA8A449A3A449A3B3977DF5EDE4
            F4EDE2F3EBDFF2EADDF2E8DBF1E7D9F0E5D64E9E6141DF6D41E36E42E36E41DF
            6D4FA064A449A3A449A3B3977DF7F2EAF6F0E8F5EEE5F4EEE3F3ECE0F3EADEF2
            E9DD4E9F6251E77D51EB7F51EC7F50E77D4FA064A449A3A449A3B3977DF9F6F0
            F9F4EEF8F3EBF6F1EAF5F0E7F5EEE5F4EDE34E9F6262EC8C64F18F64F18F62EC
            8C4FA064A449A3A449A3B3977DFBF9F6FBF7F4FAF7F2F9F5EFF8F4EEAACCAC5F
            A770449A5A77F09B7AF4A07AF59F76F09B449A5A74B485C1DEC9B3977DFDFCFA
            FCFAF9FCFAF6FBF8F5EBF0E64AA26184E9A18FF7AF8FF7AE90F7AF8FF7AF8FF6
            AE8FF6AE7CDF98469C5CB3977DFEFEFDFEFDFDFEFDFBFCFCFAFCFAF8ABD0B24E
            A46497EDAFA3F8BCA3F9BBA3F9BCA3F9BC91E6AA4AA060C1DEC9B3977DFFFFFF
            FFFFFFFFFEFEFFFEFDFDFDFCFDFCFBA8CEB054A86AA8F0BDB5FAC8B4FAC8A5EC
            B94DA263B4D7BDA449A3B3977DFDFCFCFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFE
            FDFCA4CDAE5BAB70BAF3CAB9F2CA56A86BABD2B5A449A3A449A3B3977DF9F6F3
            FCFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEA0CBAB60AD745FAC737B99
            6BA449A3A449A3A449A3B3977DF2ECE5F6F3EFFDFCF9FFFFFEFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFDAEBDEDBEBDFB3977DA449A3A449A3A449A3B3977DE9DED3
            ECE4D9F9F6F0FDFBF9FFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB397
            7DA449A3A449A3A449A3B3977DB3977DB3977DB3977DF8F1ECFDFAF7FFFEFBFF
            FEFCFFFFFDFFFFFEFFFFFFFFFFFFB3977DA449A3A449A3A449A3DBCDC1B3977D
            FFFBF5B3977DEEE3D8F8F2EAFDF9F4FFFDF9FFFDFAFFFEFBFFFEFCFFFFFEB397
            7DA449A3A449A3A449A3A449A3DDD0C4B3977DB3977DDCCBB8EBDFD2F7F0E6FD
            F8F1FFFCF7FFFCF8FFFCF9FFFEFAB3977DA449A3A449A3A449A3A449A3A449A3
            E7DED6B3977DB09378AF9276B19479B2967BB3977DB3977DB3977DB3977DBEA5
            8FA449A3A449A3A449A3}
        end
      end
      object tcProcesses: TTabControl
        Left = 3
        Top = 116
        Width = 922
        Height = 318
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        Tabs.Strings = (
          'All'
          'Data Capture')
        TabIndex = 0
        OnChange = tcProcessesChange
        object grdMyWork: TDBStyleGrid
          Left = 4
          Top = 24
          Width = 914
          Height = 134
          Hint = 'Double-click to start working'
          Align = alClient
          DataSource = dtmMain.dtsWorkLU
          Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = grdMyWorkDrawColumnCell
          OnDblClick = grdMyWorkDblClick
          AllowSort = True
          ColumnsResize = False
          ColumnsMove = False
          SortField = dtmMain.qryWorkLUCreateDate
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'RefNo'
              Title.Alignment = taCenter
              Title.Caption = 'Account No.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LastNoteDate'
              Title.Caption = 'Last Note'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Status'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Description'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SubProcess'
              Title.Caption = 'Sub-Process'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StartDate'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OrderDate'
              Title.Caption = 'Duration'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CreateDate'
              Title.Caption = 'Start Date'
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NewDocument'
              Title.Alignment = taCenter
              Title.Caption = 'Doc'
              Width = 40
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NewNote'
              Title.Alignment = taCenter
              Title.Caption = 'Note'
              Width = 40
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NewAHV'
              Title.Alignment = taCenter
              Title.Caption = 'AHV'
              Width = 40
              Visible = True
            end>
        end
        object edtLoanID: TDBEdit
          Left = 160
          Top = 112
          Width = 121
          Height = 21
          DataField = 'LoanID'
          DataSource = dtmMain.dtsWorkLU
          TabOrder = 1
          Visible = False
          OnChange = edtLoanIDChange
        end
        object rdtNotes: TRichEdit
          Left = 4
          Top = 176
          Width = 914
          Height = 138
          Align = alBottom
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object pnlNotesHeader: TPanel
          Left = 4
          Top = 158
          Width = 914
          Height = 18
          Align = alBottom
          Alignment = taLeftJustify
          BevelOuter = bvLowered
          Caption = ' Notes'
          Color = 14211288
          TabOrder = 3
        end
      end
    end
    object tsRequests: TTabSheet
      Caption = 'Requests'
      ImageIndex = 1
      OnShow = tsRequestsShow
      object Splitter1: TSplitter
        Left = 0
        Top = 232
        Width = 929
        Height = 4
        Cursor = crVSplit
        Align = alBottom
      end
      object pcRequests: TPageControl
        Left = 0
        Top = 0
        Width = 929
        Height = 232
        ActivePage = tsCurrentRequests
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 0
        OnChange = pcRequestsChange
        object tsCurrentRequests: TTabSheet
          Caption = 'Pending'
          object grdCurrentRequests: TDBGrid
            Left = 0
            Top = 30
            Width = 921
            Height = 171
            Align = alClient
            DataSource = dtmWorkFlow.dtsRequests
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'RequestType'
                Title.Caption = 'Request Type'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CreateDate'
                Title.Caption = 'Request Date'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AccountNo'
                Title.Caption = 'Account No.'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RequestPriority'
                Title.Caption = 'Priority'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CurrentUser'
                Title.Caption = 'Current User'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CurrentProcess'
                Title.Caption = 'Current Process'
                Width = 200
                Visible = True
              end>
          end
          object edtRequestID: TDBEdit
            Left = 56
            Top = 200
            Width = 121
            Height = 21
            DataField = 'RequestID'
            DataSource = dtmWorkFlow.dtsRequests
            TabOrder = 1
            Visible = False
            OnChange = edtRequestIDChange
          end
          object CoolBar3: TCoolBar
            Left = 0
            Top = 0
            Width = 921
            Height = 30
            BandBorderStyle = bsNone
            Bands = <
              item
                Control = ToolBar3
                ImageIndex = -1
                MinHeight = 23
                Width = 913
              end
              item
                Control = CheckBox2
                ImageIndex = -1
                Width = 913
              end>
            BorderWidth = 1
            object ToolBar3: TToolBar
              Left = 9
              Top = 0
              Width = 900
              Height = 23
              ButtonWidth = 60
              Caption = 'ToolBar1'
              EdgeBorders = []
              Flat = True
              Images = dtmMain.imglstMain
              List = True
              ShowCaptions = True
              TabOrder = 0
              object ToolButton1: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Cancel'
                ImageIndex = 7
                OnClick = ToolButton1Click
              end
            end
            object CheckBox2: TCheckBox
              Left = 9
              Top = 23
              Width = 900
              Height = 25
              Caption = 'CheckBox1'
              TabOrder = 1
            end
          end
        end
        object tsCompleteRequests: TTabSheet
          Caption = 'Complete'
          ImageIndex = 1
          object grdCompleteRequests: TDBGrid
            Left = 0
            Top = 26
            Width = 921
            Height = 175
            Align = alClient
            DataSource = dtmWorkFlow.dtsRequests
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = grdCompleteRequestsDrawColumnCell
            Columns = <
              item
                Expanded = False
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ProcessType'
                Title.Caption = 'Process Type'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ProcessDate'
                Title.Caption = 'Process Date'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ProcessUser'
                Title.Caption = 'Process User'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RequestType'
                Title.Caption = 'Request Type'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CreateDate'
                Title.Caption = 'Request Date'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AccountNo'
                Title.Caption = 'Account No.'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RequestPriority'
                Title.Caption = 'Priority'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CurrentUser'
                Title.Caption = 'Current User'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CurrentProcess'
                Title.Caption = 'Current Process'
                Width = 200
                Visible = True
              end>
          end
          object CoolBar2: TCoolBar
            Left = 0
            Top = 0
            Width = 921
            Height = 26
            AutoSize = True
            Bands = <
              item
                Control = ToolBar2
                ImageIndex = -1
                MinHeight = 22
                Width = 917
              end>
            object ToolBar2: TToolBar
              Left = 9
              Top = 0
              Width = 904
              Height = 22
              AutoSize = True
              ButtonWidth = 94
              Caption = 'ToolBar2'
              EdgeBorders = []
              Flat = True
              Images = dtmMain.imglstMain
              List = True
              ShowCaptions = True
              TabOrder = 0
              object btnReadRequests: TToolButton
                Left = 0
                Top = 0
                Caption = 'Mark as Read'
                ImageIndex = 23
                OnClick = btnReadRequestsClick
              end
            end
          end
        end
      end
      object rdtRequestNotes: TRichEdit
        Left = 0
        Top = 287
        Width = 929
        Height = 149
        Align = alBottom
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 0
        Top = 236
        Width = 929
        Height = 21
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object lblRequestNotes: TLabel
          Left = 8
          Top = 5
          Width = 43
          Height = 13
          Caption = 'Notes (0)'
        end
      end
      object clbRequestNotes: TCoolBar
        Left = 0
        Top = 257
        Width = 929
        Height = 30
        Align = alBottom
        BandBorderStyle = bsNone
        Bands = <
          item
            Control = ToolBar11
            ImageIndex = -1
            MinHeight = 23
            Width = 921
          end
          item
            Control = CheckBox1
            ImageIndex = -1
            Width = 921
          end>
        BorderWidth = 1
        object ToolBar11: TToolBar
          Left = 9
          Top = 0
          Width = 908
          Height = 23
          ButtonWidth = 86
          Caption = 'ToolBar1'
          EdgeBorders = []
          Flat = True
          Images = dtmMain.imglstMain
          List = True
          ShowCaptions = True
          TabOrder = 0
          object btnNewRequestNote: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = 'New Note'
            ImageIndex = 3
            OnClick = btnNewRequestNoteClick
          end
          object btnEditRequestNote: TToolButton
            Left = 79
            Top = 0
            AutoSize = True
            Caption = 'Amend Note'
            ImageIndex = 4
            OnClick = btnEditRequestNoteClick
          end
        end
        object CheckBox1: TCheckBox
          Left = 9
          Top = 23
          Width = 908
          Height = 25
          Caption = 'CheckBox1'
          TabOrder = 1
        end
      end
    end
  end
  object tmrWork: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = tmrWorkTimer
    Left = 560
    Top = 16
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 432
    Top = 192
    Bitmap = {
      494C010103000400040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001001000000000000012
      00000000000000000000000000000000000000000000000000000000E155E155
      0000000000000000000000000000000000000000E155E1550000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000006B2DAC39784A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000245A0C738666
      E15500000000000000000000000000000000E255A46AE572E255000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B552C751C4590E4A794A00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000035A707BAE7F
      C86AE155000000000000000000000000025A0773FF7F0677E155000000000000
      0000000000009901990199019901990199019901990199019901990199019901
      9901990199019901990199019901000000004C5A877E2476C4590F4A794A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E155CA6A8D7F
      8E7FE86EE1550000000000000000035A2977FF7F887F6362E155000000000000
      0000000000009901FF7FDF77DF77DF73BF6BBF6FBF6BBF6B9F679F639F637F5F
      7F5B7F5B5F575F575F535F53990100000000C97EEB7E887E2476C4590F4A794A
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E1556E7B
      8B7FAF7F0A73E15500000000245A6D7BFF7F887F0677E2550000000000000000
      0000000000009901FF7FFF7FFF7FDF77DF77DF73BF6FBF6FBF6B9F679F679F63
      7F5F7F5B7F5B5F575F575F53990100000000867EEA7EEB7E887E2476C4590F4A
      794A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E1550C73
      8A7F8C7FAF7F2C73025A235E6E7BFF7F8B7F897FA46AE1550000000000000000
      0000000000009901FF7FFF7FFF7FFF7FFF7BFF7BDF77DF73DF73BF6FBF679F63
      9F637F5F7F5B7F5B5F575F579901000000000000867EEA7EEB7E887E2476C459
      104A794A00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006762
      8C7F697F8C7FB07F6E7B8F7BFF7FAF7F8D7F6A7F225A00000000000000000000
      0000000000009901FF7FFF7FFF7FFF7FFF7FFF7FFF7BDF77DF77DF73BF6BBF6B
      9F679F637F5F7F5B7F5B5F5799010000000000000000867EEA7EEB7E887E2476
      C459104A794A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E255
      2C73687F697F8C7FB07FB27FB37FB17FAF7F0973E15500000000000000000000
      0000000000009901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7BDF77DF73BF6F
      BF6B9F639F639F5F7F5F7F5B990100000000000000000000867EEA7EEB7E887E
      2476C459104A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      E155697F677F6A7F8C7FAF7FB27FB37FB07FE155000000000000000000000000
      0000000000009901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7BDF77DF73
      BF6FBF6B9F679F639F637F5B9901000000000000000000000000867EEA7EEB7E
      877E066A8A3500000000B3353642994EDA52BA52794E584A0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E155025A
      C46E447F457F687F6A7F8D7FB07FB27FB27FA866E15500000000000000000000
      0000000000009901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7BDF77
      DF73BF6FBF6BBF679F639F6399010000000000000000000000000000867EEA7E
      0F7F386F734EB03535425C5FDF67FF6BFF6FFF6BFF6B7D63994E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C05545622A77
      687F447F237F457F687F6A7F8D7FB07FB37FB37F0C73235A0000000000000000
      0000000000009901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      DF77DF73BF6FBF6B9F679F639901000000000000000000000000000000000000
      0000BD73B856994ADF67FF6BFF6FFF6BFF6BFF6BFF6FFF6FFF6FDA52D4390000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E155035AEC6E917F8E7F
      6A7F677F447F437F457F687F8B7F8D7FB07FB37FD37F8F7B8666E15500000000
      0000000000009901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7BDF77DF73BF6BBF6B9F639901000000000000000000000000000000000000
      0000B856994ABF5F9F5FDF67FF6BFF6BFF6BFF6FFF6FFF73FF7FFF7F98520000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E1558862957BF97FD57F917F
      8D7F6A7F677F447F437F457F687F8B7F8E7F917FB37FB27FB07F0A73E1550000
      0000000000009901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7BDF77DF77DF73BF6BBF6B9901000000000000000000000000000000000000
      000037467D5B9F5B5E57DF67FF6BFF6BFF6FFF73FF77FF7BFF7FFF7FBE6FF439
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2553173FB7FFB7FFA7FF97FD67F
      B37FB07F8C7F677F437F437F667F697F8C7F8E7FB27FB37FB17FB07F8C7FE155
      0000000000009901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7BFF7BFF7F
      FF7BFF7BDF77DF77BF6FBF6B9901000000000000000000000000000000000000
      0000DA52BF5F3E4F5E53DF67FF6BFF6BFF6FFF77FF7BFF7FFF7BFF77FF6F974A
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E155E155E155E155E155E155
      E155E155EE6E8E7F457F437F437FA46AE155E155E155E155E155E155E1550000
      0000000000009901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7BFF7BFF7FDF77DF77BF6B9901000000000000000000000000000000000000
      584A3C57BF5F1E473E4FBF63FF6BFF6BFF6FFF77FF7BFF7BFF77FF6FFF6F1A57
      584A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E155917F697F667F237F015A00000000000000000000000000000000
      0000000000009901FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7BFF7BDF77DF77DF77BF6B9901000000000000000000000000000000000000
      584A5D5B9F5BFD421E477E5BFF6BFF6BFF6FFF73FF77FF77FF73FF6FFF6F5C5F
      7746000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E155937F8C7F697F257BE15500000000000000000000000000000000
      000000000000BA01FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7BDF77DF77DF77DF77DF779901000000000000000000000000000000000000
      584A5D5BBF5FFE46FD423E4FBF63FF6BFF6FFF6FFF6FFF6FFF6FFF6BFF6F5C5F
      7746000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E155737BB07F8C7F0773E15500000000000000000000000000000000
      000000000000BA01FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      DF77FF7BDF77DF73DF73DF779901000000000000000000000000000000000000
      584A3C57BF5F3E4FFD421E4B5E53BF63FF6BFF6FFF6BFF6BFF6BFF6BFF6F1A57
      584A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E1555373B37FAF7FC76EE15500000000000000000000000000000000
      000000000000DA01FB01FB01FB01FB01FB01FB01FB01FB01FB01FB01FB01FB01
      FB01FB01FB01FB01FB01FB019901000000000000000000000000000000000000
      0000BA52BF5F9F5F7E573E4F3E4F5E539E5FDF67FF6BFF6BFF6BFF6BFF6B7746
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E155E155D87FB27FE155E15500000000000000000000000000000000
      0000000000009901990199019901990199019901990199019901990199019901
      9901990199019901990199019C32000000000000000000000000000000000000
      000037467D5BFF6FFF77BE6F3E4F3E4B1E4B5E579E5F9E5FBF63FF6B7D63D439
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E155FB7FD57FE155000000000000000000000000000000000000
      0000000000000000DA09DA09DA09DA09DA09DA09DA09DA09DA09DA09DA09DA09
      DA09DA09DA09DA09DA05FA110000000000000000000000000000000000000000
      000000007846DF73FF7FFF7F7E5F1E4BFD42FE461E4B5E57BF5FBF6377460000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E155FE7FD87FE155000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000774EBD73FF77DF679F5B7E577E579F5BBF5F9E5F784A00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1553373EE6EE155000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000F439FA529E5FBF5FBF5FBF5F9E5F1C57584A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000E155E1550000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000153E7846994E994E784A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00F9FF9FFFFFFF8FFFFF000000F0FF0FFF
      FFFF07FFFF000000F07E0FC0000303FFFF000000F03C0FC0000301FFFF000000
      F8181FC0000300FFFF000000F8001FC00003807FFF000000FC003FC00003C03F
      FF000000FC003FC00003E03FFF000000FE007FC00003F0301F000000F8003FC0
      0003F8000F000000F0001FC00003FF0003000000C00007C00003FF0003000000
      800003C00003FF0001000000000001C00003FF0001000000800003C00003FE00
      00000000FF81FFC00003FE0000000000FF81FFC00003FE0000000000FF81FFC0
      0003FE0000000000FF81FFC00003FF0001000000FF81FFC00003FF0001000000
      FFC3FFE00007FF8003000000FFC3FFFFFFFFFFC007000000FFC3FFFFFFFFFFE0
      0F000000FFE7FFFFFFFFFFF83F00000000000000000000000000000000000000
      000000000000}
  end
  object tmrNotify: TTimer
    Enabled = False
    Interval = 300000
    OnTimer = tmrNotifyTimer
    Left = 409
    Top = 16
  end
end
