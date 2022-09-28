inherited frmLinkEmployerWizard: TfrmLinkEmployerWizard
  Left = 377
  Top = 203
  Caption = 'Link Employer Wizard'
  ClientHeight = 417
  ClientWidth = 715
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcWizard: TPageControl
    Width = 715
    Height = 312
    inherited tsMain: TTabSheet
      Caption = 'Search Companies'
      object Label1: TLabel
        Left = 10
        Top = 16
        Width = 74
        Height = 13
        Caption = 'Employer Name'
      end
      object Label2: TLabel
        Left = 10
        Top = 43
        Width = 78
        Height = 13
        Caption = 'Registration No.'
      end
      object lblRecords: TLabel
        Left = 393
        Top = 44
        Width = 49
        Height = 13
        Caption = 'lblRecords'
      end
      object edtCompanyName: TEdit
        Left = 96
        Top = 13
        Width = 596
        Height = 21
        TabOrder = 0
      end
      object edtRegistrationNo: TEdit
        Left = 96
        Top = 40
        Width = 177
        Height = 21
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 77
        Width = 682
        Height = 196
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dtmEmployer.dtsSearch
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CompanyCode'
            Title.Caption = 'Code'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fullname'
            Title.Caption = 'Company Name'
            Width = 390
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'WordsMatched'
            Title.Alignment = taCenter
            Title.Caption = 'Keywords'
            Visible = True
          end>
      end
      object btnSearch: TButton
        Left = 279
        Top = 38
        Width = 98
        Height = 25
        Caption = 'Search Now'
        Default = True
        TabOrder = 3
        OnClick = btnSearchClick
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Confirm Employment Details && Finish'
      ImageIndex = 1
      DesignSize = (
        707
        284)
      object GroupBox1: TGroupBox
        Left = 10
        Top = 11
        Width = 686
        Height = 254
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Employer Details'
        TabOrder = 0
        object Label3: TLabel
          Left = 18
          Top = 26
          Width = 78
          Height = 13
          Caption = 'Registration No.'
        end
        object Label4: TLabel
          Left = 18
          Top = 53
          Width = 75
          Height = 13
          Caption = 'Company Name'
        end
        object Label5: TLabel
          Left = 18
          Top = 80
          Width = 66
          Height = 13
          Caption = 'Trading Name'
        end
        object edtRegistrationNo1: TDBEdit
          Left = 102
          Top = 23
          Width = 163
          Height = 21
          Color = clBtnFace
          DataField = 'RegistrationNo'
          DataSource = dtmEmployer.dtsSearch
          ReadOnly = True
          TabOrder = 0
        end
        object edtCompanyName1: TDBEdit
          Left = 102
          Top = 50
          Width = 355
          Height = 21
          Color = clBtnFace
          DataField = 'CompanyName'
          DataSource = dtmEmployer.dtsSearch
          ReadOnly = True
          TabOrder = 1
        end
        object edtTradingName: TDBEdit
          Left = 102
          Top = 77
          Width = 355
          Height = 21
          Color = clBtnFace
          DataField = 'TradingName'
          DataSource = dtmEmployer.dtsSearch
          ReadOnly = True
          TabOrder = 2
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 361
    Width = 715
    inherited btnBack: TButton
      Left = 461
    end
    inherited btnNext: TButton
      Left = 542
    end
    inherited btnClose: TButton
      Left = 621
    end
    inherited btnFinish: TButton
      Left = 381
    end
  end
  inherited Panel2: TPanel
    Width = 715
    inherited Shape1: TShape
      Width = 715
    end
    inherited imgTitle: TImage
      Left = 645
    end
    inherited Image1: TImage
      Width = 715
    end
  end
  inherited ImageList1: TImageList
    Left = 572
    Top = 273
  end
end
