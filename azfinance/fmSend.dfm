object frmSend: TfrmSend
  Left = 525
  Top = 292
  Width = 563
  Height = 288
  Caption = 'Send'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    555
    254)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 111
    Width = 41
    Height = 13
    Caption = 'Send via'
  end
  object lblEmail: TLabel
    Left = 24
    Top = 143
    Width = 66
    Height = 13
    Caption = 'Email Address'
  end
  object lblFax: TLabel
    Left = 24
    Top = 173
    Width = 38
    Height = 13
    Caption = 'Fax No.'
  end
  object Label4: TLabel
    Left = 24
    Top = 8
    Width = 21
    Height = 13
    Caption = 'Files'
  end
  object btnAdd: TSpeedButton
    Left = 515
    Top = 8
    Width = 23
    Height = 89
    Anchors = [akTop, akRight]
    Caption = '+'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddClick
  end
  object btnEmail: TSpeedButton
    Left = 414
    Top = 122
    Width = 23
    Height = 20
    Caption = '...'
  end
  object lblNotes: TLabel
    Left = 24
    Top = 200
    Width = 28
    Height = 13
    Caption = 'Notes'
    Visible = False
  end
  object memNotes: TMemo
    Left = 104
    Top = 200
    Width = 415
    Height = 65
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 8
    Visible = False
  end
  object cmbMethod: TComboBox
    Left = 104
    Top = 107
    Width = 414
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 0
    OnChange = cmbMethodChange
    Items.Strings = (
      'Fax')
  end
  object edtEmail: TEdit
    Left = 104
    Top = 139
    Width = 414
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object edtFax: TEdit
    Left = 104
    Top = 169
    Width = 414
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    MaxLength = 10
    TabOrder = 2
    OnKeyPress = edtFaxKeyPress
  end
  object lvwFile: TListView
    Left = 104
    Top = 8
    Width = 412
    Height = 90
    Anchors = [akLeft, akTop, akRight]
    Columns = <>
    LargeImages = imlFiles
    PopupMenu = ppmFiles
    ShowColumnHeaders = False
    TabOrder = 5
    OnDblClick = lvwFileDblClick
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 235
    Width = 555
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 170
      end
      item
        Width = 110
      end
      item
        Width = 50
      end>
  end
  object btnCancel: TButton
    Left = 445
    Top = 201
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object btnOK: TButton
    Left = 365
    Top = 201
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 4
    OnClick = btnOKClick
  end
  object btnAddNotes: TButton
    Left = 24
    Top = 201
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Add Notes'
    TabOrder = 7
    OnClick = btnAddNotesClick
  end
  object imlFiles: TImageList
    BkColor = clWhite
    Height = 32
    Width = 32
    Left = 184
    Top = 16
  end
  object ppmFiles: TPopupMenu
    Left = 152
    Top = 16
    object Open1: TMenuItem
      Caption = 'Open'
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
    end
  end
  object dlgAttachment: TOpenDialog
    Left = 120
    Top = 16
  end
  object SMTP: TIdSMTP
    OnStatus = SMTPStatus
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atNone
    Left = 88
    Top = 16
  end
  object MailMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 56
    Top = 16
  end
  object dbData: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=bfSA714;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=Bruma;Data Source=10.11.0.104'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 40
  end
  object dsUser: TADODataSet
    Connection = dbData
    CommandText = 
      'SELECT DomainName, Email, FaxNo'#13#10'FROM SecurityTbl'#13#10'WHERE DomainN' +
      'ame = :DomainName'
    Parameters = <
      item
        Name = 'DomainName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    Left = 56
    Top = 40
  end
end
