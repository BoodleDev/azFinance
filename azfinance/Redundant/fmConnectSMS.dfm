object frmConnectSMS: TfrmConnectSMS
  Tag = 1075
  Left = 291
  Top = 222
  BorderStyle = bsNone
  ClientHeight = 89
  ClientWidth = 244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlM: TPanel
    Left = 0
    Top = 0
    Width = 244
    Height = 89
    Align = alClient
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 0
    object lblStatus: TLabel
      Left = 2
      Top = 18
      Width = 240
      Height = 13
      Alignment = taCenter
      AutoSize = False
    end
    object pbSMS: TProgressBar
      Left = 48
      Top = 48
      Width = 150
      Height = 16
      Min = 0
      Max = 100
      Step = 1
      TabOrder = 0
    end
  end
  object cs: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = 'www.graytech.co.za'
    Port = 6565
    OnConnecting = csConnecting
    OnConnect = csConnect
    OnDisconnect = csDisconnect
    OnRead = csRead
    OnError = csError
  end
end
