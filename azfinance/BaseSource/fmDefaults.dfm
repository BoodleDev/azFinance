object frmDefaults: TfrmDefaults
  Tag = 38
  Left = 90
  Top = 76
  Width = 596
  Height = 379
  Caption = 'Screen defaults setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 548
    Height = 345
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object bgDefBack: TpbBackGround
      Left = 96
      Top = 57
      Width = 452
      Height = 288
      Align = alClient
      Visible = False
      Active = False
    end
    object shpScreenPnl: TShape
      Left = 0
      Top = 28
      Width = 548
      Height = 29
      Align = alTop
      Brush.Color = 10544881
      Pen.Color = clSilver
      Pen.Style = psClear
    end
    object spPnlColor: TShape
      Left = 0
      Top = 57
      Width = 96
      Height = 288
      Align = alLeft
      Brush.Color = 10544881
    end
    object shpCurFrm: TShape
      Left = 0
      Top = 0
      Width = 548
      Height = 28
      Align = alTop
      Brush.Color = 10544881
      Pen.Color = clSilver
      Pen.Style = psClear
    end
    object btnPnlColor: TSpeedButton
      Left = 5
      Top = 63
      Width = 88
      Height = 25
      Caption = 'Menu bar color'
      Flat = True
      OnClick = btnPnlColorClick
    end
    object btnBackGround: TSpeedButton
      Left = 248
      Top = 63
      Width = 129
      Height = 25
      Caption = 'Background'
      Flat = True
      OnClick = btnBackGroundClick
    end
    object btnGrdColor: TSpeedButton
      Left = 248
      Top = 215
      Width = 129
      Height = 25
      Caption = 'Grid colors'
      Flat = True
      OnClick = btnGrdColorClick
    end
    object btnCurFrm: TSpeedButton
      Left = 248
      Top = 2
      Width = 129
      Height = 25
      Caption = 'Form info bar'
      Flat = True
      OnClick = btnCurFrmClick
    end
    object imgBG: TImage
      Left = 248
      Top = 96
      Width = 97
      Height = 41
      AutoSize = True
      Visible = False
    end
    object shpOneColor: TShape
      Left = 384
      Top = 187
      Width = 25
      Height = 25
      Brush.Color = 10544881
    end
    object btnOneColor: TSpeedButton
      Left = 248
      Top = 187
      Width = 129
      Height = 25
      Caption = 'All one color'
      Flat = True
      OnClick = btnOneColorClick
    end
    object btnRecBar: TSpeedButton
      Left = 380
      Top = 63
      Width = 129
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Record bar color'
      Flat = True
      OnClick = btnRecBarClick
    end
    object btnScreenPnl: TSpeedButton
      Left = 248
      Top = 30
      Width = 129
      Height = 25
      Caption = 'Screen panel color'
      Flat = True
      OnClick = btnScreenPnlClick
    end
    object shpRecBar: TShape
      Left = 516
      Top = 63
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      Brush.Color = 10544881
    end
    object shpGrd: TShape
      Left = 384
      Top = 215
      Width = 25
      Height = 25
    end
    object btnFixGrid: TSpeedButton
      Left = 248
      Top = 244
      Width = 129
      Height = 25
      Caption = 'Grid heading colors'
      Flat = True
      OnClick = btnFixGridClick
    end
    object shpFGrid: TShape
      Left = 384
      Top = 244
      Width = 25
      Height = 25
    end
    object btnGrdOddColors: TSpeedButton
      Left = 248
      Top = 276
      Width = 129
      Height = 25
      Caption = 'Grid line colors'
      Flat = True
      OnClick = btnGrdOddColorsClick
    end
    object shpOddGrdColor: TShape
      Left = 384
      Top = 276
      Width = 25
      Height = 25
    end
    object BitBtn1: TBitBtn
      Left = 416
      Top = 312
      Width = 121
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Restore Defaults'
      TabOrder = 0
      Visible = False
      OnClick = BitBtn1Click
    end
  end
  object tblDefaults: TToolBar
    Left = 548
    Top = 0
    Width = 40
    Height = 345
    Align = alRight
    ButtonHeight = 36
    ButtonWidth = 40
    Caption = 'tblDefaults'
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
      Caption = 'Exit'
      ImageIndex = 2
      Wrap = True
      OnClick = btnExitClick
    end
    object btnSave: TToolButton
      Left = 0
      Top = 36
      Caption = 'Save'
      ImageIndex = 5
      Wrap = True
      OnClick = btnSaveClick
    end
    object btnCancel: TToolButton
      Left = 0
      Top = 72
      Caption = 'Cancel'
      ImageIndex = 6
      Wrap = True
      OnClick = btnCancelClick
    end
    object btnDelete: TToolButton
      Left = 0
      Top = 108
      Caption = 'Delete'
      ImageIndex = 7
    end
  end
  object clrdDef: TColorDialog
    Ctl3D = True
    Left = 168
    Top = 80
  end
  object odBackG: TOpenPictureDialog
    Filter = 'Bitmaps|*.bmp'
    Left = 168
    Top = 120
  end
end
