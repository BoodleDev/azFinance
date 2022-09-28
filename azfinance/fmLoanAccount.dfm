object frmLoanAccount: TfrmLoanAccount
  Tag = 1025
  Left = 160
  Top = 134
  Width = 1034
  Height = 494
  Caption = 'Loan Account'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1026
    Height = 460
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object grdBase: TDBStyleGrid
      Left = 0
      Top = 0
      Width = 1026
      Height = 441
      Align = alClient
      DataSource = dtmLS.dtsAcc
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdBaseDrawColumnCell
      AllowSort = False
      ColumnsResize = False
      ColumnsMove = False
      Columns = <
        item
          Expanded = False
          FieldName = 'EffectDate'
          Title.Caption = 'Effective Date'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValueDate'
          Title.Caption = 'Value Date'
          Width = 80
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'TransCode'
          Title.Caption = 'Code'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TransDesc'
          Title.Caption = 'Transaction'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RefNo'
          Title.Caption = 'Ref. no'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Debit'
          Title.Alignment = taRightJustify
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Credit'
          Title.Alignment = taRightJustify
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bal'
          Title.Alignment = taRightJustify
          Title.Caption = 'Balance'
          Width = 81
          Visible = True
        end>
    end
    object pnlTot: TPanel
      Left = 0
      Top = 441
      Width = 1026
      Height = 19
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        1026
        19)
      object lblTotals: TLabel
        Left = 8
        Top = 2
        Width = 29
        Height = 14
        Caption = 'Totals'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblDR: TLabel
        Left = 420
        Top = 3
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Anchors = [akLeft]
        Caption = '0.00'
        Transparent = True
      end
      object lblCR: TLabel
        Left = 501
        Top = 3
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Anchors = [akLeft]
        Caption = '0.00'
        Transparent = True
      end
    end
  end
end
