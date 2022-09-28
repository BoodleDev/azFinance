object frmSendFax: TfrmSendFax
  Left = 565
  Top = 281
  BorderStyle = bsSingle
  Caption = 'Send Fax'
  ClientHeight = 398
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    569
    398)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 287
    Top = 8
    Width = 273
    Height = 152
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'From'
    TabOrder = 2
    DesignSize = (
      273
      152)
    object Label1: TLabel
      Left = 16
      Top = 26
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object Label2: TLabel
      Left = 16
      Top = 74
      Width = 38
      Height = 13
      Caption = 'Fax No.'
    end
    object Label3: TLabel
      Left = 16
      Top = 97
      Width = 34
      Height = 13
      Caption = 'Tel No.'
    end
    object Label8: TLabel
      Left = 16
      Top = 50
      Width = 45
      Height = 13
      Caption = 'Company'
    end
    object Label9: TLabel
      Left = 16
      Top = 120
      Width = 24
      Height = 13
      Caption = 'Email'
    end
    object edtFromName: TEdit
      Left = 64
      Top = 23
      Width = 193
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
    object edtFromFaxNo: TEdit
      Left = 64
      Top = 71
      Width = 193
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 1
    end
    object edtFromTelNo: TEdit
      Left = 64
      Top = 94
      Width = 193
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
    object edtFromCompany: TEdit
      Left = 64
      Top = 47
      Width = 193
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 3
    end
    object edtFromEmail: TEdit
      Left = 64
      Top = 117
      Width = 193
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 4
    end
  end
  object btnSend: TButton
    Left = 406
    Top = 366
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Send'
    TabOrder = 3
    OnClick = btnSendClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 273
    Height = 152
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'To'
    TabOrder = 0
    DesignSize = (
      273
      152)
    object Label4: TLabel
      Left = 16
      Top = 27
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object Label5: TLabel
      Left = 16
      Top = 50
      Width = 38
      Height = 13
      Caption = 'Fax No.'
    end
    object edtToName: TEdit
      Left = 64
      Top = 24
      Width = 193
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = edtToNameChange
    end
    object edtToFaxNo: TEdit
      Left = 64
      Top = 47
      Width = 193
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      OnChange = edtToNameChange
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 161
    Width = 554
    Height = 198
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Documents'
    TabOrder = 1
    DesignSize = (
      554
      198)
    object Label6: TLabel
      Left = 10
      Top = 24
      Width = 39
      Height = 13
      Caption = 'To Send'
    end
    object Label7: TLabel
      Left = 298
      Top = 24
      Width = 43
      Height = 13
      Caption = 'Available'
    end
    object btnAdd: TSpeedButton
      Left = 266
      Top = 48
      Width = 23
      Height = 22
      Caption = '<'
      OnClick = btnAddClick
    end
    object btnAddAll: TSpeedButton
      Left = 266
      Top = 73
      Width = 23
      Height = 22
      Caption = '<<'
      OnClick = btnAddClick
    end
    object btnRemove: TSpeedButton
      Left = 266
      Top = 112
      Width = 23
      Height = 22
      Caption = '>'
      OnClick = btnAddClick
    end
    object btnRemoveAll: TSpeedButton
      Left = 266
      Top = 136
      Width = 23
      Height = 22
      Caption = '>>'
      OnClick = btnAddClick
    end
    object lvwAvailable: TListView
      Left = 295
      Top = 40
      Width = 248
      Height = 145
      Anchors = [akLeft, akTop, akRight]
      Columns = <>
      PopupMenu = ppmFiles
      ShowColumnHeaders = False
      SmallImages = imlFiles
      TabOrder = 1
      ViewStyle = vsList
      OnDblClick = lvwAvailableDblClick
    end
    object lvwAttach: TListView
      Left = 8
      Top = 40
      Width = 248
      Height = 145
      Anchors = [akLeft, akTop, akRight]
      Columns = <>
      PopupMenu = ppmFiles
      ShowColumnHeaders = False
      SmallImages = imlFiles
      TabOrder = 0
      ViewStyle = vsList
      OnDblClick = lvwAttachDblClick
    end
  end
  object btnCancel: TButton
    Left = 487
    Top = 366
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object imlFiles: TImageList
    BkColor = clWhite
    Left = 184
    Top = 16
  end
  object ppmFiles: TPopupMenu
    OnPopup = ppmFilesPopup
    Left = 184
    Top = 281
    object Open1: TMenuItem
      Caption = 'Open'
      OnClick = Open1Click
    end
  end
end
