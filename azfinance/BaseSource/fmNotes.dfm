inherited frmNotes: TfrmNotes
  Tag = 33
  Left = 143
  Top = 206
  HorzScrollBar.Range = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Notes'
  ClientHeight = 334
  ClientWidth = 666
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  inherited tlbDBBase: TToolBar
    Left = 625
    Width = 41
    Height = 334
    ButtonHeight = 37
    ButtonWidth = 41
    inherited btnNew: TToolButton
      Top = 37
    end
    inherited btnAmend: TToolButton
      Top = 74
    end
    inherited btnSave: TToolButton
      Top = 111
    end
    inherited btnCancel: TToolButton
      Top = 148
      Visible = False
    end
    inherited btnDelete: TToolButton
      Top = 185
      Wrap = True
      Visible = False
    end
    object btnView: TToolButton
      Left = 0
      Top = 222
      Caption = 'View'
      ImageIndex = 8
      Wrap = True
      OnClick = btnViewClick
    end
    object btnPrint: TToolButton
      Left = 0
      Top = 259
      Caption = 'Print'
      ImageIndex = 1
      OnClick = btnPrintClick
    end
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 625
    Height = 334
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 625
      Height = 37
      Align = alTop
      BevelInner = bvLowered
      ParentColor = True
      TabOrder = 0
      object lblEC: TLabel
        Left = 8
        Top = 4
        Width = 53
        Height = 14
        Caption = 'Client code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblEN: TLabel
        Left = 8
        Top = 20
        Width = 27
        Height = 14
        Caption = 'Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblEN2: TLabel
        Left = 240
        Top = 20
        Width = 89
        Height = 14
        Caption = 'Surname / Contact'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object imgClip: TImage
        Left = 240
        Top = 8
        Width = 16
        Height = 16
        Picture.Data = {
          07544269746D6170A6000000424DA60000000000000076000000280000000800
          00000C0000000100040000000000300000000000000000000000100000000000
          0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
          C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00FFFFFFFFFF8000FFF88FF00FF8F0FF0FF80F0F0FF80F0F0FF80F0F0FF80F
          0F0FFF0F0F0FFF0F0F0FFF0FFF0FFFF000FF}
        Stretch = True
        Transparent = True
        Visible = False
      end
      object lblEntC: TLabel
        Left = 88
        Top = 4
        Width = 32
        Height = 14
        Caption = 'lblEntC'
      end
      object lblEntN: TLabel
        Left = 88
        Top = 20
        Width = 32
        Height = 14
        Caption = 'lblEntN'
      end
      object lblEntN2: TLabel
        Left = 336
        Top = 20
        Width = 38
        Height = 14
        Caption = 'lblEntN2'
      end
    end
    object pnlFilter: TPanel
      Left = 0
      Top = 55
      Width = 625
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object lblFilter: TLabel
        Left = 8
        Top = 8
        Width = 23
        Height = 14
        Caption = 'Filter'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblFilterType: TLabel
        Left = 40
        Top = 8
        Width = 60
        Height = 14
        Caption = 'Not selected'
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
        Transparent = True
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
        Transparent = True
        Visible = False
      end
      object spdAdvanced: TSpeedButton
        Tag = 1
        Left = 240
        Top = 5
        Width = 97
        Height = 23
        AllowAllUp = True
        GroupIndex = 1
        Caption = 'Advanced'
        Flat = True
        OnClick = spdAdvancedClick
      end
      object imgUrgent: TImage
        Left = 512
        Top = 8
        Width = 15
        Height = 16
        AutoSize = True
        Picture.Data = {
          07544269746D6170F6000000424DF60000000000000076000000280000000F00
          0000100000000100040000000000800000000000000000000000100000000000
          0000000000000000800000800000008080008000000080008000808000008080
          8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00FFFFFFFFFFFFFFF0FFFFFFF9FFFFFFF0FFFFFF999FFFFFF0FFFFFFF9FFFF
          FFF0FFFFFFFFFFFFFFF0FFFFFFF9FFFFFFF0FFFFFF999FFFFFF0FFFFFF999FFF
          FFF0FFFFFF999FFFFFF0FFFFF99999FFFFF0FFFFF99999FFFFF0FFFFF99999FF
          FFF0FFFFFF999FFFFFF0FFFFFFF9FFFFFFF0FFFFFFFFFFFFFFF0FFFFFFFFFFFF
          FFF0}
        Stretch = True
        Transparent = True
        Visible = False
      end
      object edtFilter: TEdit
        Left = 112
        Top = 4
        Width = 121
        Height = 22
        TabOrder = 0
        OnChange = edtFilterChange
      end
    end
    object grdNotes: TDBGrdClr
      Left = 0
      Top = 145
      Width = 625
      Height = 73
      Align = alClient
      DataSource = dtmNotes.dtsNotes
      Options = [dgTitles, dgIndicator, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnColEnter = grdNotesColEnter
      OnDrawDataCell = grdNotesDrawDataCell
      OnDrawColumnCell = grdNotesDrawColumnCell
      OnDblClick = grdNotesDblClick
      OddColor = clInfoBk
      Columns = <
        item
          Expanded = False
          FieldName = 'NoteNo'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NoteName'
          Width = 127
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'NTAction'
          Title.Caption = 'Print'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RefNo'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NoteDate'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DueDate'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RemindMe'
          Title.Caption = 'Remind date'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UserID'
          Title.Caption = 'User ID'
          Visible = True
        end>
    end
    object pcNotes: TPageControl
      Left = 0
      Top = 218
      Width = 625
      Height = 116
      ActivePage = tbsNote
      Align = alBottom
      Style = tsButtons
      TabOrder = 3
      object tbsNote: TTabSheet
        Caption = 'Note '
        object memNotes: TDBMemo
          Left = 0
          Top = 0
          Width = 617
          Height = 84
          Align = alClient
          DataField = 'TheNote'
          DataSource = dtmNotes.dtsNotes
          ReadOnly = True
          TabOrder = 0
        end
      end
      object tbsAttach: TTabSheet
        Caption = 'Attachments'
        ImageIndex = 1
        object grdAttach: TDBGrdClr
          Left = 0
          Top = 0
          Width = 487
          Height = 84
          Align = alClient
          DataSource = dtmNotes.dtsAttach
          Options = [dgTitles, dgIndicator, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnCellClick = grdAttachCellClick
          OnDrawColumnCell = grdAttachDrawColumnCell
          OddColor = clInfoBk
          Columns = <
            item
              Expanded = False
              FieldName = 'RefNo'
              Title.Caption = 'Ref no'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DocName'
              Title.Caption = 'Document name'
              Width = 161
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DateAdded'
              Title.Caption = 'Date added'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UserID'
              Title.Caption = 'Added by'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Attach'
              Width = 43
              Visible = True
            end>
        end
      end
    end
    object pnlSub: TPanel
      Left = 0
      Top = 37
      Width = 625
      Height = 18
      Align = alTop
      ParentColor = True
      TabOrder = 4
      object lblSubCi: TLabel
        Left = 8
        Top = 2
        Width = 46
        Height = 14
        Caption = 'Sub code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblSubNi: TLabel
        Left = 240
        Top = 2
        Width = 48
        Height = 14
        Caption = 'Sub name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblSubC: TLabel
        Left = 88
        Top = 2
        Width = 36
        Height = 14
        Caption = 'lblSubC'
      end
      object lblSubN: TLabel
        Left = 336
        Top = 2
        Width = 36
        Height = 14
        Caption = 'lblSubN'
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 87
      Width = 625
      Height = 58
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 5
      Visible = False
      object imgRed: TImage
        Left = 568
        Top = 16
        Width = 19
        Height = 19
        AutoSize = True
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
        Left = 544
        Top = 16
        Width = 19
        Height = 19
        AutoSize = True
        Picture.Data = {
          07544269746D6170AA040000424DAA0400000000000036000000280000001300
          000013000000010018000000000074040000C40E0000C40E0000000000000000
          0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF849484395A39184A18084208184A18395A397B8C
          7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF
          00FFFF00FF316331004200005200086B08086B08086B08004A00004200315A31
          FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FF1863
          18087B08088C08088C08088408087B08087308086B08086B08005200184A18FF
          00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF317B3108940808A508
          10A51010A510109C10089408088C08087B08087308086B08005200315231FF00
          FFFF00FFFF00FF000000FF00FFFF00FF84A58408940818BD1818BD1818BD1821
          BD2118B51818AD1810A510089408088408087308086B08004200849484FF00FF
          FF00FF000000FF00FFFF00FF399C3910C61018CE1829CE2921D62129CE2929CE
          2921C62121BD2118AD18109C10088C08087308005200395A39FF00FFFF00FF00
          0000FF00FFFF00FF21AD2121D62129DE2931E73139DE3939E73939DE3931D631
          29CE2921BD2118AD18109C10088408087308184A18FF00FFFF00FF000000FF00
          FFFF00FF18CE1821DE2131EF3142EF424AEF4A4AEF4A4AEF4A42E74239DE3931
          D63121C62118AD18109C10088408084A08FF00FFFF00FF000000FF00FFFF00FF
          29DE2931F7314AEF4A52FF525AFF5A63F7635AF75A52EF524AEF4A39DE3929CE
          2921BD2110A510088C08185218FF00FFFF00FF000000FF00FFFF00FF42E74231
          FF314AFF4A5AFF5A73FF737BFF7B73FF7363F76352EF5242E74231D63121C621
          18B518087B08396B39FF00FFFF00FF000000FF00FFFF00FF84D68431FF3152FF
          526BFF6B8CFF8CADFFAD94FF9473FF735AF75A4AEF4A39E73929CE2918BD1808
          6B087B9C7BFF00FFFF00FF000000FF00FFFF00FFFF00FF4AEF4A4AFF4A6BFF6B
          8CFF8CADFFAD9CFF9C7BFF7B63FF634AF74A39E73929DE2918B518318C31FF00
          FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FF42F7425AFF5A73FF737B
          FF7B7BFF7B6BFF6B5AFF5A4AF74A31EF3121D621219C21FF00FFFF00FFFF00FF
          FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF52EF524AFF4A63FF6363FF
          635AFF5A4AFF4A39FF3921DE2139BD39FF00FFFF00FFFF00FFFF00FFFF00FF00
          0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8CDE8C52EF5242F74239FF39
          39FF3942E74284C684FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000}
        Transparent = True
        Visible = False
      end
      object dtpStartDate: TDateTimePicker
        Tag = 2
        Left = 24
        Top = 16
        Width = 89
        Height = 22
        CalAlignment = dtaLeft
        Date = 38303
        Time = 38303
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 0
      end
      object dtpEndDate: TDateTimePicker
        Tag = 3
        Left = 120
        Top = 16
        Width = 89
        Height = 22
        CalAlignment = dtaLeft
        Date = 38303
        Time = 38303
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 1
      end
      object btnOK: TBitBtn
        Left = 422
        Top = 15
        Width = 97
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Set Filter'
        TabOrder = 2
        OnClick = btnOKClick
      end
      object cmbNoteCat: TComboBox
        Left = 216
        Top = 16
        Width = 185
        Height = 22
        Style = csOwnerDrawFixed
        ItemHeight = 16
        TabOrder = 3
        OnDrawItem = cmbNoteCatDrawItem
      end
    end
  end
  inherited ppmDBBase: TPopupMenu
    Left = 312
    Top = 224
  end
  object odlDocs: TOpenDialog
    Left = 309
    Top = 192
  end
  object dtsInfo: TDataSource
    Left = 184
    Top = 20
  end
  object MainMenu1: TMainMenu
    Left = 140
    Top = 136
    object File1: TMenuItem
      Caption = 'File'
      object Securitysetup1: TMenuItem
        Caption = 'Security setup'
        OnClick = Securitysetup1Click
      end
    end
  end
end
