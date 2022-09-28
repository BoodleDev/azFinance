inherited frmEntityList: TfrmEntityList
  Tag = 1015
  Left = 95
  Top = 70
  Width = 637
  Height = 398
  Caption = 'azLoans - Companies'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 577
    Top = 41
    Width = 52
    Height = 323
    ButtonWidth = 52
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
    object btnView: TToolButton
      Left = 0
      Top = 216
      Caption = 'View'
      ImageIndex = 8
      Wrap = True
      OnClick = btnViewClick
    end
    object btnNewL: TToolButton
      Left = 0
      Top = 252
      Caption = 'New loan'
      ImageIndex = 9
    end
  end
  inherited pnlMBase: TPanel
    Top = 41
    Width = 577
    Height = 323
    inherited grdBase: TDBGrdClr
      Top = 0
      Width = 577
      Height = 115
      Align = alClient
      DataSource = dtsGrdBase
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      OnColEnter = grdBaseColEnter
      OnColExit = grdBaseColExit
      OnDblClick = btnAmendClick
    end
    object pnlCompany: TPanel
      Left = 0
      Top = 209
      Width = 577
      Height = 114
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentColor = True
      TabOrder = 1
      object DBText1: TDBText
        Left = 120
        Top = 30
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'Name'
      end
      object DBText2: TDBText
        Left = 397
        Top = 30
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'TelNo1'
      end
      object DBText3: TDBText
        Left = 120
        Top = 51
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'Name2'
      end
      object DBText4: TDBText
        Left = 397
        Top = 51
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'TelNo2'
      end
      object DBText6: TDBText
        Left = 120
        Top = 73
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'FaxNo'
      end
      object DBText7: TDBText
        Left = 397
        Top = 73
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'Email'
      end
      object Label2: TLabel
        Left = 8
        Top = 30
        Width = 73
        Height = 13
        Caption = 'Company name'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 51
        Width = 72
        Height = 13
        Caption = 'Contact person'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 8
        Top = 73
        Width = 55
        Height = 13
        Caption = 'Fax number'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 284
        Top = 30
        Width = 78
        Height = 13
        Caption = 'Telephone no. 1'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 284
        Top = 51
        Width = 78
        Height = 13
        Caption = 'Telephone no. 2'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 284
        Top = 73
        Width = 65
        Height = 13
        Caption = 'Email address'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblWebsite: TLabel
        Left = 31
        Top = 94
        Width = 39
        Height = 13
        Caption = 'Website'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbtWebsite: TDBText
        Left = 120
        Top = 94
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'WebSite'
      end
      object Label9: TLabel
        Left = 8
        Top = 8
        Width = 71
        Height = 13
        Caption = 'Company code'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText8: TDBText
        Left = 120
        Top = 8
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'EntCode'
      end
      object btnWebsite: TButton
        Left = 8
        Top = 92
        Width = 18
        Height = 17
        Caption = 'go'
        TabOrder = 0
        OnClick = btnWebsiteClick
      end
    end
    object pnlPerson: TPanel
      Left = 0
      Top = 115
      Width = 577
      Height = 94
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentColor = True
      TabOrder = 2
      object DBText5: TDBText
        Left = 120
        Top = 8
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'Name'
      end
      object DBText10: TDBText
        Left = 120
        Top = 51
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'TelNo1'
      end
      object DBText11: TDBText
        Left = 120
        Top = 29
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'Name2'
      end
      object DBText12: TDBText
        Left = 397
        Top = 51
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'TelNo2'
      end
      object DBText13: TDBText
        Left = 120
        Top = 72
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'TelNo3'
      end
      object DBText14: TDBText
        Left = 397
        Top = 29
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'Email'
      end
      object Label8: TLabel
        Left = 8
        Top = 8
        Width = 62
        Height = 13
        Caption = 'Person name'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 8
        Top = 29
        Width = 76
        Height = 13
        Caption = 'Person surname'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 8
        Top = 72
        Width = 69
        Height = 13
        Caption = 'Mobile number'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 8
        Top = 51
        Width = 78
        Height = 13
        Caption = 'Telephone no. 1'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 284
        Top = 51
        Width = 78
        Height = 13
        Caption = 'Telephone no. 2'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 284
        Top = 29
        Width = 65
        Height = 13
        Caption = 'Email address'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 284
        Top = 72
        Width = 55
        Height = 13
        Caption = 'Fax number'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText15: TDBText
        Left = 397
        Top = 72
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'FaxNo'
      end
    end
  end
  object ToolBar1: TToolBar [2]
    Left = 0
    Top = 0
    Width = 629
    Height = 41
    ButtonHeight = 36
    ButtonWidth = 76
    Caption = 'ToolBar1'
    Images = imglstMain
    TabOrder = 2
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 73
      Caption = 'ToolButton4'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 73
      Top = 2
      Width = 9
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsDivider
    end
    object pnlFilter: TPanel
      Left = 82
      Top = 2
      Width = 139
      Height = 36
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 2
        Top = 0
        Width = 23
        Height = 14
        Caption = 'Filter'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblFldFilter: TLabel
        Left = 31
        Top = 0
        Width = 24
        Height = 14
        Caption = 'none'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object edtFilter: TEdit
        Left = 2
        Top = 14
        Width = 135
        Height = 21
        TabOrder = 0
        OnChange = edtFilterChange
      end
    end
    object ToolButton1: TToolButton
      Left = 221
      Top = 2
      Width = 9
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsDivider
    end
  end
  inherited ppmDBBase: TPopupMenu
    Left = 200
  end
  object imglstMain: TImageList
    Left = 16
    Top = 74
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF0008101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00ADB5AD00636363004A5252000000000063636300081010000000
      000000000000000000004A4A2900000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF0073737B004A5252004A52520073737B00A5A59C00EFEFEF00F7F7
      EF00CECECE00ADB5AD006363630000000000000000000000000000FFFF000000
      00000000000000FFFF0000000000000000000000000000FFFF00000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A59C00081010000008000000080000000800000008000018211800D6CE
      CE00DEE7DE0084848C00000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021292100000000007373
      7B00000800000008000000080000000800000008000000080000000800000008
      0000DEDEDE0039312100000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000FFFFFF000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF0073737B000008
      0000000800000008000000080000000800000008000000080000000800000008
      000008101000081010000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF007B7B7B00FFFFFF000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE0084848C000008
      0000000800000008000000080000000800000008000000080000000800000008
      0000000800004A5252000000000000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF0000FFFF007B7B7B0000FFFF00FFFFFF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073737B000008
      0000000800000008000000080000000800000008000000080000000800000008
      00000008000084848C00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF00FFFFFF007B7B7B00FFFFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEE7DE0073737B000008
      0000000800000008000000080000000800000008000000080000000800000008
      000000080000DEDEDE004A52520000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6BD00A5ADA5000008
      0000000800000008000000080000000800000008000000080000000800000008
      000039312100DEE7DE003931210000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF0000FFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600FFFFFF009494
      9400000800000008000000080000000800000008000000080000000800000008
      000094949400EFEFEF00DEE7DE000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CED6CE000008000000080000000800000008000000080000000800004A4A
      29006363630000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADB5AD004A4A2900212921000810100021292100ADB5AD009CA5
      9C0029313900000000000000000000000000000000000000000000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00949494004A525200000000000000000000000000FFFF
      FF00182118000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEE7DE0000000000000000000000000000000000000000000000
      0000ADADAD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FDFFFEFF00000000F9FFFC7F00000000
      F09DFC7F00000000F001D83700000000F003E00F00000000A003E00F00000000
      8003C007000000008003C00700000000C0030001000000008001C00700000000
      8001C007000000008001E00F00000000F007E00F00000000F807D83700000000
      F8E7FEFF00000000FBF7FEFF0000000000000000000000000000000000000000
      000000000000}
  end
  object dtsGrdBase: TDataSource
    Left = 320
    Top = 81
  end
end
