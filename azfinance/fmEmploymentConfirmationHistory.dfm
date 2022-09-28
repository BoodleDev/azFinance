object frmEmploymentConfirmationHistory: TfrmEmploymentConfirmationHistory
  Left = 345
  Top = 250
  Width = 821
  Height = 331
  Caption = 'Employment Confirmation History'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grdHistory: TDBGrid
    Left = 0
    Top = 28
    Width = 813
    Height = 269
    Align = alClient
    DataSource = dtmEmployer.dtsEmploymentConfirmation
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CreateDate'
        Title.Caption = 'Confirmation Date'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CreateUser'
        Title.Caption = 'Confirmed By'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmployerName'
        Title.Caption = 'Employer'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TradingName'
        Title.Caption = 'Trading Name'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RegistrationNo'
        Title.Caption = 'Registration No.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ContactName'
        Title.Caption = 'Contact Person'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ContactNo'
        Title.Caption = 'Contact No.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Position'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Department'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note'
        Visible = True
      end>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 813
    Height = 28
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 24
        Width = 809
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 796
      Height = 24
      AutoSize = True
      ButtonWidth = 53
      Caption = 'ToolBar1'
      Flat = True
      Images = dtmMain.imglstMain
      List = True
      ShowCaptions = True
      TabOrder = 0
      object btnClose: TToolButton
        Left = 0
        Top = 0
        Caption = 'Close'
        ImageIndex = 2
        OnClick = btnCloseClick
      end
    end
  end
end
