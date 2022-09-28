inherited frmAddSettlementWizard: TfrmAddSettlementWizard
  Left = 405
  Top = 288
  Caption = 'Add Settlement Wizard'
  ClientHeight = 293
  ClientWidth = 529
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcWizard: TPageControl
    Width = 529
    Height = 188
    inherited tsMain: TTabSheet
      Caption = 'Loan Ref && Settlement Date'
      object Label1: TLabel
        Left = 8
        Top = 17
        Width = 47
        Height = 13
        Caption = 'Loan Ref.'
      end
      object Label2: TLabel
        Left = 8
        Top = 41
        Width = 78
        Height = 13
        Caption = 'Settlement Date'
      end
      object Label3: TLabel
        Left = 252
        Top = 17
        Width = 63
        Height = 13
        Caption = 'Loan Balance'
      end
      object Label4: TLabel
        Left = 252
        Top = 41
        Width = 94
        Height = 13
        Caption = 'Settlement Interest'
      end
      object Label5: TLabel
        Left = 252
        Top = 65
        Width = 128
        Height = 13
        Caption = 'Future Dated Transactions'
      end
      object Label6: TLabel
        Left = 252
        Top = 89
        Width = 76
        Height = 13
        Caption = 'Deposit Balance'
      end
      object Label7: TLabel
        Left = 252
        Top = 113
        Width = 90
        Height = 13
        Caption = 'Additional Charges'
      end
      object Label8: TLabel
        Left = 252
        Top = 137
        Width = 119
        Height = 13
        Caption = 'Total Settlement Amount'
      end
      object Bevel1: TBevel
        Left = 232
        Top = 13
        Width = 50
        Height = 145
        Shape = bsLeftLine
      end
      object btnChangeSettleDate: TSpeedButton
        Left = 206
        Top = 36
        Width = 23
        Height = 22
        Hint = 'Change Settlement Date'
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          1800000000000006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B9A9A9A
          9494949494949494949494949494949494949494949494949898988F8F8FFFFF
          FFFFFFFFFFFFFFFFFFFFA6A6A6A6A6A6A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
          A0A0A0A0A0A0A0A0A4A4A49B9B9BFFFFFFFFFFFFFFFFFFFFFFFFA2A2A2FFFFFF
          F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F5FFFFFF9B9B9BFFFF
          FFFFFFFFFFFFFFFFFFFFADADADFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
          FDFDFDFDFDFCFCFCFFFFFFA5A5A5FFFFFFFFFFFFFFFFFFFFFFFF9E9E9EFFFFFF
          E1E1E0E1E1E0E1E1E0E1E1E0E1E1E0E1E1E0E1E1E0E1E1E0FFFFFF9F9F9FFFFF
          FFFFFFFFFFFFFFFFFFFFA8A8A8FFFFFFE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
          E7E7E7E7E7E7E7E7FFFFFFA9A9A9FFFFFFFFFFFFFFFFFFFFFFFF9E9E9EFFFFFF
          E4E4E3E4E4E3E4E4E3E4E4E3E4E4E3E4E4E3E4E4E3E4E4E3FFFFFF9F9F9FFFFF
          FFFFFFFFFFFFFFFFFFFFA9A9A9FFFFFFEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
          EAEAEAEAEAEAEAEAFFFFFFA9A9A9FFFFFFFFFFFFFFFFFFFFFFFF9F9E9EFFFFFF
          E8E6E6E8E8E6E8E8E6E8E6E610181B182A31ADB1B2E8E8E6FFFFFFA0A0A0FFFF
          FFFFFFFFFFFFFFFFFFFFA9A9A9FFFFFFEDEDEDEDEDEDEDEDEDEDEDED2B2B2B39
          3939BABABAEDEDEDFFFFFFA9A9A9FFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFFF
          EBE9E9EBE9E9EBE9E9E9EBE923393F19B0E0088DD915AFE0FFFFFFA0A0A0FFFF
          FFFFFFFFFFFFFFFFFFFFABABABFFFFFFF0F0F0F0F0F0F0F0F0F0F0F04545458A
          8A8A808080888888FFFFFFA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFA0A0A0FFFFFF
          EDEDECEDEDECEDEDECEDEDECE1E6E8A2FFFE40D9FF068DD90AACE0A0A0A0FFFF
          FFFFFFFFFFFFFFFFFFFFABABABFFFFFFF2F2F2F2F2F2F2F2F2F2F2F2EBEBEBD9
          D9D9ABABAB7F7F7F848484A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFA0A0A0FFFFFF
          F1F1EFF1F1EFEFF1EFF1F1EFF1F1EFF1F1EF93F1FE77D3F00F8BD905A7DAFFFF
          FFFFFFFFFFFFFFFFFFFFABABABFFFFFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6D1D1D1BEBEBE838383808080FFFFFFFFFFFFFFFFFFFFFFFF9E9E9EFFFFFF
          F4F4F4F4F4F2F4F4F2F4F4F2F4F2F2F4F4F2F4F4F295F0FD6EDFF60084D722AE
          DCFFFFFFFFFFFFFFFFFFA9A9A9FFFFFFFAFAFAF9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9D1D1D1BCBCBC7A7A7A8D8D8DFFFFFFFFFFFFFFFFFF9C9C9CFFFFFF
          F9F9F9F9F7F7F5F7F5F7F5F5F5F5F5F7F7F5F7F7F5F9F9F7BAF6FE69D5ED95A6
          A4776F9BEBEBF4FFFFFFA7A7A7FFFFFFFEFEFEFDFDFDFBFBFBFBFBFBFAFAFAFB
          FBFBFBFBFBFDFDFDE2E2E2B5B5B5AAAAAA919191F1F1F1FFFFFF9C9C9CFFFFFF
          E6E6E6F9F9F9FAFAFAF9F9F9F9F9F9F9F9F9F9F9F9FAFAFAFFFFFF92CCD3B7B7
          BF5752FB605DE3FFFFFFA7A7A7FFFFFFECECECFEFEFEFFFFFFFEFEFEFEFEFEFE
          FEFEFEFEFEFFFFFFFFFFFFBCBCBCC3C3C3B2B2B2ABABABFFFFFFB9B9B9B0AFB0
          B8B8B8B3B3B3FFFFFFFCFDFCFCFCFCFCFCFCFCFCFCFDFDFDFFFFFFA0A0A0FFFF
          FF8783F38582F4FFFFFFC1C1C1BABABAC2C2C2BDBDBDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFA9A9A9FFFFFFC3C3C3C3C3C3FFFFFFFFFFFFBDBDBD
          FAFAFAC6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9CFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C5FDFDFDCFCFCFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFA6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          BEBEBEB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6C0C0C0FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF9B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAFAFAF8E8E8E8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E8E8E959595FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B89A9A9A9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9A9A9AA0A0A0FFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btnChangeSettleDateClick
      end
      object edtSettlementDate: TEdit
        Left = 91
        Top = 37
        Width = 113
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 1
      end
      object dtpSettleDate: TDateTimePicker
        Left = 91
        Top = 37
        Width = 113
        Height = 21
        Date = 39325.000000000000000000
        Time = 39325.000000000000000000
        TabOrder = 8
        OnChange = dtpSettleDateChange
      end
      object cmbLoanRef: TComboBox
        Left = 91
        Top = 12
        Width = 113
        Height = 22
        Style = csOwnerDrawFixed
        ItemHeight = 16
        TabOrder = 0
        OnChange = cmbLoanRefChange
        OnDrawItem = cmbLoanRefDrawItem
      end
      object edtLoanBalance: TEdit
        Left = 406
        Top = 13
        Width = 97
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 2
      end
      object edtSettlementInterest: TEdit
        Left = 406
        Top = 37
        Width = 97
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 3
      end
      object edtFutureTrans: TEdit
        Left = 406
        Top = 61
        Width = 97
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 4
      end
      object edtDepositBalance: TEdit
        Left = 406
        Top = 85
        Width = 97
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 5
      end
      object edtAdditionalCharges: TEdit
        Left = 406
        Top = 109
        Width = 97
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 6
      end
      object edtSettlementAmount: TEdit
        Left = 406
        Top = 133
        Width = 97
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Method of Delivery'
      ImageIndex = 2
      object lblFaxNo: TLabel
        Left = 96
        Top = 50
        Width = 38
        Height = 13
        Caption = 'Fax No.'
      end
      object radFax: TRadioButton
        Left = 32
        Top = 48
        Width = 57
        Height = 17
        Caption = 'Fax'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = radFaxClick
      end
      object radEmail: TRadioButton
        Left = 32
        Top = 72
        Width = 57
        Height = 17
        Caption = 'Email'
        Enabled = False
        TabOrder = 1
        OnClick = radFaxClick
      end
      object radSMS: TRadioButton
        Left = 32
        Top = 96
        Width = 57
        Height = 17
        Caption = 'SMS'
        Enabled = False
        TabOrder = 2
        OnClick = radFaxClick
      end
      object RadioButton1: TRadioButton
        Left = 32
        Top = 25
        Width = 57
        Height = 17
        Caption = 'None'
        TabOrder = 3
        OnClick = radFaxClick
      end
      object edtFaxNo: TNumEdit
        Left = 144
        Top = 46
        Width = 121
        Height = 21
        MaxLength = 10
        TabOrder = 4
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Complete'
      ImageIndex = 3
      object Label10: TLabel
        Left = 32
        Top = 16
        Width = 280
        Height = 13
        Caption = 'Click Finish to complete and send this settlement quotation'
      end
    end
  end
  inherited Panel1: TPanel
    Top = 237
    Width = 529
    inherited btnBack: TButton
      Left = 275
    end
    inherited btnNext: TButton
      Left = 356
    end
    inherited btnClose: TButton
      Left = 435
    end
    inherited btnFinish: TButton
      Left = 195
    end
  end
  inherited Panel2: TPanel
    Width = 529
    inherited Shape1: TShape
      Width = 529
    end
    inherited imgTitle: TImage
      Left = 459
    end
    inherited Image1: TImage
      Width = 529
    end
  end
  inherited ImageList1: TImageList
    Left = 372
    Top = 159
  end
  object dlgPrint: TPrintDialog
    Left = 188
    Top = 177
  end
end
