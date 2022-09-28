inherited frmSendSMS: TfrmSendSMS
  Tag = 1080
  Left = 113
  Top = 96
  Caption = 'frmSendSMS'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited tlbDBBase: TToolBar
    Left = 478
    Width = 56
    ButtonWidth = 56
    object ToolButton1: TToolButton
      Left = 0
      Top = 36
      Caption = 'Accept 1'
      ImageIndex = 4
      Wrap = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 0
      Top = 72
      Caption = 'Accept all'
      ImageIndex = 5
      Wrap = True
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 0
      Top = 108
      Caption = 'Decline 1'
      ImageIndex = 6
      Wrap = True
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 0
      Top = 144
      Caption = 'Decline all'
      ImageIndex = 7
      Wrap = True
      OnClick = ToolButton4Click
    end
    object btnSend: TToolButton
      Left = 0
      Top = 180
      Caption = 'Send'
      ImageIndex = 3
      OnClick = btnSendClick
    end
  end
  inherited pnlBBase: TPanel
    Width = 478
    object DBGrdClr1: TDBGrdClr
      Left = 0
      Top = 0
      Width = 478
      Height = 339
      Align = alClient
      DataSource = dtmSms.dtsSMS
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OddColor = clInfoBk
      Columns = <
        item
          Expanded = False
          FieldName = 'Status'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SmsDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CellNo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SMS'
          Visible = True
        end>
    end
  end
end
