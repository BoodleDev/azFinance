�
 TFRMBANKDETAILS 0O  TPF0TfrmBankDetailsfrmBankDetailsTagLeftfTop�HelpContextBorderIconsbiSystemMenu BorderStylebsSingleCaptionBank DetailsClientHeight ClientWidthKColor	clBtnFaceFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OldCreateOrderPositionpoScreenCenter
PrintScalepoPrintToFitOnCreate
FormCreate
DesignSizeK  PixelsPerInch`
TextHeight TLabelLabel1LeftTopWidthHeightCaptionBank  TLabelLabel2LeftTop0Width?HeightCaptionBranch Name  TLabelLabel3LeftTopuWidthEHeightCaptionAccount Name  TLabelLabel4LeftTop� WidthOHeightCaptionAccount Number  TLabelLabel5LeftTop� WidthBHeightCaptionAccount Type  TLabelLabel6LeftTopYWidth=HeightCaptionBranch Code  TLabelLabel7LeftjTopDWidthHeightCaptionOR  TDBEdit
edtAccNameLefthTopqWidth� Height	DataFieldAccName
DataSourcedtmBankDet.dtsBankDetTabOrder  TDBEditedtAccNoLefthTop� Width� Height	DataFieldAccNo
DataSourcedtmBankDet.dtsBankDetTabOrderOnChangeedtAccNoChange  	TComboBox	cbAccTypeLefthTop� Width� HeightStylecsDropDownList
ItemHeightTabOrderOnChangecbAccTypeChangeItems.StringsCheque / Current accountSavings accountTransmission accountBond accountCredit card account   TDBLookupComboBoxcbxBankLefthTopWidth� Height	DataFieldBName
DataSourcedtmBankDet.dtsBankDetKeyFieldBankName	ListFieldBankName
ListSourcedtmBankDet.dtsBanksTabOrder   TDBLookupComboBox	cbxBrNameLefthTop,Width� Height	DataFieldBrecID
DataSourcedtmBankDet.dtsBankDetKeyFieldIDVal	ListField
BranchName
ListSourcedtmBankDet.dtsBranchNTabOrder  TDBLookupComboBox	cbxBrCodeLefthTopUWidth� Height	DataFieldBrecID
DataSourcedtmBankDet.dtsBankDetKeyFieldRecID	ListField
BranchCode
ListSourcedtmBankDet.dtsBranchCTabOrder  TBitBtn	btnLUBankLeftVTop.WidthHeightTabOrderOnClickbtnLUBankClick
Glyph.Data
B  >  BM>      6   (                 �  �          ��������������������������������������� ��������������������������������������� ��������������������������������������� ��������������� � ��������������������� ������������ �  �  � ������������������ ��������� �  �  �  �  � ��������������� ��������� �  � ��� �  �  � ������������ ��������� � ��������� �  �  � ��������� ������������������������ �  � ��������� ��������������������������� � ��������� ��������������������������������������� ��������������������������������������� ��������������������������������������� Spacing   TBitBtn	btnCancelLeft� Top� WidthKHeightAnchorsakRightakBottom CaptionCancelModalResultTabOrder  TBitBtnbtnOKLeft� Top� WidthKHeightAnchorsakRightakBottom CaptionOKTabOrderOnClick
btnOKClick  TDBEditedtBankLeftTop� WidthQHeight	DataFieldBName
DataSourcedtmBankDet.dtsBankDetTabOrder	VisibleOnChangeedtBankChange  TButtonbtnValidateLeft Top� WidthKHeightCaptionValidateTabOrder
VisibleOnClickbtnValidateClick   