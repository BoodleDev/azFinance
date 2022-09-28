inherited frmEntCheck: TfrmEntCheck
  Tag = 24
  Left = 363
  Top = 298
  Width = 646
  Height = 315
  Caption = 'Entity check'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 592
    Width = 38
    Height = 258
    ButtonWidth = 38
    object btnCheck: TToolButton
      Left = 0
      Top = 36
      Caption = 'Check'
      ImageIndex = 8
      Wrap = True
      OnClick = btnCheckClick
    end
    object btnSel: TToolButton
      Left = 0
      Top = 72
      Caption = 'Select'
      ImageIndex = 4
      Wrap = True
      OnClick = btnSelClick
    end
    object btnNew: TToolButton
      Left = 0
      Top = 108
      Caption = 'New'
      Enabled = False
      ImageIndex = 3
      OnClick = btnNewClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 592
    Height = 258
    object Label4: TLabel
      Left = 0
      Top = 125
      Width = 592
      Height = 14
      Align = alTop
      Caption = '   Possible matches'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Layout = tlBottom
    end
    object grdSearch: TDBGrdClr
      Left = 0
      Top = 139
      Width = 592
      Height = 119
      Align = alClient
      DataSource = dtmEntCheck.dtsSearch
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = btnSelClick
      OddColor = clInfoBk
    end
    object pnlTop: TPanel
      Left = 0
      Top = 28
      Width = 592
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object lblRegNo: TLabel
        Left = 8
        Top = 10
        Width = 73
        Height = 14
        Caption = 'ID no. / Reg. no'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblName: TLabel
        Left = 8
        Top = 37
        Width = 27
        Height = 14
        Caption = 'Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object imgPerson: TImage
        Left = 328
        Top = 32
        Width = 16
        Height = 16
        AutoSize = True
        Picture.Data = {
          07544269746D617036040000424D360400000000000036000000280000001000
          0000100000000100200000000000000400000000000000000000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF00000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FF000000FF000000000000000000
          000000000000FF00000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000C0C0C000FFFF
          FF00C0C0C000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000C0C0
          C000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FF00000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00}
        Transparent = True
        Visible = False
      end
      object imgCompany: TImage
        Left = 344
        Top = 32
        Width = 16
        Height = 16
        AutoSize = True
        Picture.Data = {
          07544269746D617036040000424D360400000000000036000000280000001000
          0000100000000100200000000000000400000000000000000000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0010254A001025
          4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0010254A002961BF00153B
          790010254A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0010254A003A73D7002961BF001A51
          A800153B790010254A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0010254A003A73D7002961BF002961BF001A51
          A8001A51A800153B790010254A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0010254A002961BF001A51A8004782EE00437DE500407A
          E0001A51A8001A51A800153B790010254A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0010254A00153B79002961BF001A51A800437DE500407AE000407A
          E000407AE0001A51A8001A51A800153B790010254A00FF00FF00FF00FF00FF00
          FF0010254A001A51A800598BEE004782EE00437DE5001A51A8003A73D700407A
          E000407AE000407AE0001A51A8001A51A800153B790010254A00FF00FF00FF00
          FF00FF00FF006B94EE00437DE500437DE500437DE500437DE5001A51A8003A73
          D700407AE000407AE000407AE0001A51A8001A51A800153B790010254A00FF00
          FF00FF00FF00FF00FF006B94EE00437DE500437DE500437DE500437DE5001A51
          A8005391CD003A73D700407AE000407AE0001A51A8001A51A800153B79001025
          4A00FF00FF00FF00FF001A51A8006B94EE00437DE500437DE500437DE5002961
          BF00ACEDFF005391CD003A73D700407AE000407AE0001A51A8001A51A800153B
          7900FF00FF00FF00FF001A51A80010254A006B94EE00437DE500437DE500437D
          E5002961BF001A51A8003A73D700407AE000407AE000407AE0001A51A800153B
          7900FF00FF00FF00FF001A51A800153B7900FF00FF006B94EE00437DE500437D
          E500437DE500437DE5001A51A8003A73D700407AE0004782EE006B94EE00153B
          7900FF00FF00FF00FF00FF00FF001A51A800153B790010254A006B94EE00437D
          E500437DE500437DE500437DE5001A51A8003A73D700265DBA00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF001A51A8001A51A8001A51A8006B94
          EE00437DE5004782EE006B94EE00265DBA00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF006B94EE00265DBA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00}
        Transparent = True
        Visible = False
      end
      object lblIDError: TLabel
        Left = 277
        Top = 11
        Width = 115
        Height = 13
        Caption = 'Required for new entries'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object edtRegNo: TEdit
        Left = 104
        Top = 7
        Width = 169
        Height = 21
        TabOrder = 0
        OnChange = edtRegNoChange
        OnKeyDown = edtRegNoKeyDown
      end
      object edtName: TEdit
        Left = 104
        Top = 34
        Width = 169
        Height = 21
        TabOrder = 1
      end
    end
    object pnlSname: TPanel
      Left = 0
      Top = 85
      Width = 592
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object lblName2: TLabel
        Left = 8
        Top = 8
        Width = 89
        Height = 14
        Caption = 'Surname / Contact'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object edtName2: TEdit
        Left = 104
        Top = 5
        Width = 169
        Height = 21
        TabOrder = 0
      end
    end
    object pnlEntType: TPanel
      Left = 0
      Top = 0
      Width = 592
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object lblEntType: TLabel
        Left = 8
        Top = 9
        Width = 52
        Height = 14
        Caption = 'Entity Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cmbEntType: TComboBox
        Left = 104
        Top = 6
        Width = 169
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = cmbEntTypeChange
        OnDrawItem = cmbEntTypeDrawItem
        Items.Strings = (
          'Person'
          'Company')
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 258
    Width = 630
    Height = 19
    Panels = <>
  end
end
