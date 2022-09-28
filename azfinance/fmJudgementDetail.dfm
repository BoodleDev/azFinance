object frmJudgementDetail: TfrmJudgementDetail
  Left = 425
  Top = 299
  Width = 391
  Height = 322
  BorderIcons = [biSystemMenu]
  Caption = 'Details of Judgement'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    383
    288)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TButton
    Left = 209
    Top = 247
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    TabOrder = 0
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 289
    Top = 247
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 13
    Top = 11
    Width = 359
    Height = 222
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Judgement Details'
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 79
      Height = 13
      Caption = 'Judgement Date'
    end
    object Label2: TLabel
      Left = 24
      Top = 61
      Width = 93
      Height = 13
      Caption = 'Judgement Amount'
    end
    object Label3: TLabel
      Left = 24
      Top = 91
      Width = 91
      Height = 13
      Caption = 'Instalment Amount'
    end
    object Label4: TLabel
      Left = 24
      Top = 120
      Width = 101
      Height = 13
      Caption = 'First Instalment Date'
    end
    object Label5: TLabel
      Left = 24
      Top = 150
      Width = 64
      Height = 13
      Caption = 'Case Number'
    end
    object Label6: TLabel
      Left = 24
      Top = 180
      Width = 86
      Height = 13
      Caption = 'Magistrates Court'
    end
    object DBDateTimePicker1: TDBDateTimePicker
      Left = 131
      Top = 28
      Width = 169
      Height = 21
      Date = 38940.000000000000000000
      Time = 38940.000000000000000000
      TabOrder = 0
      DataField = 'JDDate'
      DataSource = dtmLegal.dtsJudgementBatch
      ReadOnly = False
    end
    object DBEdit1: TDBEdit
      Left = 131
      Top = 57
      Width = 169
      Height = 21
      DataField = 'JDAmount'
      DataSource = dtmLegal.dtsJudgementBatch
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 131
      Top = 87
      Width = 169
      Height = 21
      DataField = 'JDInstalment'
      DataSource = dtmLegal.dtsJudgementBatch
      TabOrder = 2
    end
    object DBDateTimePicker2: TDBDateTimePicker
      Left = 131
      Top = 116
      Width = 169
      Height = 21
      Date = 38940.000000000000000000
      Time = 38940.000000000000000000
      TabOrder = 3
      DataField = 'FirstInstalDate'
      DataSource = dtmLegal.dtsJudgementBatch
      ReadOnly = False
    end
    object DBEdit3: TDBEdit
      Left = 131
      Top = 146
      Width = 169
      Height = 21
      DataField = 'CaseNumber'
      DataSource = dtmLegal.dtsJudgementBatch
      TabOrder = 4
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 131
      Top = 176
      Width = 169
      Height = 21
      DataField = 'Magistrate'
      DataSource = dtmLegal.dtsJudgementBatch
      KeyField = 'TypeKey'
      ListField = 'Description'
      ListSource = dtmLegal.dtsMagistrates
      TabOrder = 5
    end
  end
end
