inherited frmUpdDtl: TfrmUpdDtl
  Left = 206
  Top = 156
  Width = 438
  Height = 323
  Caption = 'Import'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 390
    Width = 40
    Height = 270
    ButtonWidth = 40
    object btnOK: TToolButton [0]
      Left = 0
      Top = 0
      Caption = 'OK'
      ImageIndex = 24
      Wrap = True
      OnClick = btnOKClick
    end
    object btnCancel: TToolButton [1]
      Left = 0
      Top = 36
      Caption = 'Cancel'
      ImageIndex = 7
      Wrap = True
      OnClick = btnCancelClick
    end
    object btnFile: TToolButton [2]
      Left = 0
      Top = 72
      Caption = 'File'
      ImageIndex = 22
      Wrap = True
      OnClick = btnFileClick
    end
    inherited btnExit: TToolButton
      Top = 108
      Wrap = False
      Visible = False
    end
  end
  inherited pnlBBase: TPanel
    Width = 390
    Height = 270
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Map To'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 0
      Top = 48
      Width = 390
      Height = 222
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = Memo1Change
    end
    object cbxMap: TComboBox
      Left = 16
      Top = 22
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbxMapChange
      Items.Strings = (
        'LoanID'
        'RefNo')
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 270
    Width = 430
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object dlgFile: TOpenDialog
    Left = 240
    Top = 16
  end
end
