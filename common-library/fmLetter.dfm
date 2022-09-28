object frmLetter: TfrmLetter
  Tag = 29
  Left = 191
  Top = 130
  Width = 544
  Height = 373
  Caption = 'Letters'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object redbLetter: TDBRichEdit
    Left = 0
    Top = 170
    Width = 536
    Height = 174
    Align = alClient
    DataField = 'LetterBody'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    Visible = False
  end
  object reMemLetter: TRichEdit
    Left = 0
    Top = 170
    Width = 536
    Height = 174
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
    TabOrder = 1
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object grdDataset: TDBGrdClr
      Left = 0
      Top = 0
      Width = 536
      Height = 89
      Align = alClient
      DataSource = dtmLetter.dtsLetters
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OddColor = clInfoBk
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 89
    Width = 536
    Height = 81
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 3
    object Label3: TLabel
      Left = 6
      Top = 9
      Width = 34
      Height = 14
      Caption = 'Letters'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnPrepare: TSpeedButton
      Left = 463
      Top = 1
      Width = 72
      Height = 39
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Prepare letter'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
        1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
        1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
        193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
        11155557F755F777777555000755033305555577755F75F77F55555555503335
        0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
        05555757F75F75557F5505000333555505557F777FF755557F55000000355557
        07557777777F55557F5555000005555707555577777FF5557F55553000075557
        0755557F7777FFF5755555335000005555555577577777555555}
      Layout = blGlyphTop
      NumGlyphs = 2
      Spacing = 2
      OnClick = btnPrepareClick
    end
    object btnPrint: TSpeedButton
      Left = 463
      Top = 40
      Width = 72
      Height = 39
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Print letter'
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
      Layout = blGlyphTop
      NumGlyphs = 2
      Spacing = 2
      OnClick = btnPrintClick
    end
    object cbxLetterList: TComboBox
      Left = 56
      Top = 6
      Width = 193
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      Sorted = True
      TabOrder = 0
      OnChange = cbxLetterListChange
    end
  end
end
