unit rptSettlement;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls, jpeg, StdCtrls, ComCtrls,
  QRExport, DB, ADODB;

type
  TrepSettlement = class(TrepBasePort)
    QRChildBand1: TQRChildBand;
    rdtImportant: TRichEdit;
    QRLabel23: TQRLabel;
    QRImage1: TQRImage;
    QRHTMLFilter1: TQRHTMLFilter;
    QRLabel19: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape6: TQRShape;
    lblFinalTitle: TQRLabel;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel17: TQRLabel;
    qlFullname: TQRExpr;
    QRLabel25: TQRLabel;
    qlBankName: TQRLabel;
    qlBranchName: TQRLabel;
    qlBranchCode: TQRLabel;
    qlAcountNo: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    qlSettlementAmount: TQRLabel;
    QRDBText13: TQRDBText;
    dsSettlementDetails: TADODataSet;
    qlSettleDate2: TQRLabel;
    qlSettleDate1: TQRLabel;
    QRLabel1: TQRLabel;
    dsSettlementDetailsEntCode: TStringField;
    dsSettlementDetailsName: TStringField;
    dsSettlementDetailsName2: TStringField;
    dsSettlementDetailsRegNo: TStringField;
    dsSettlementDetailsRefFld1: TStringField;
    dsSettlementDetailsAddress1: TStringField;
    dsSettlementDetailsAddress2: TStringField;
    dsSettlementDetailsAddress3: TStringField;
    dsSettlementDetailsAddress4: TStringField;
    dsSettlementDetailsAddressCode: TStringField;
    dsSettlementDetailsRefNo: TStringField;
    dsSettlementDetailsCreateUser: TStringField;
    dsSettlementDetailsCreateDate: TDateTimeField;
    dsSettlementDetailsExpiryDate: TDateTimeField;
    dsSettlementDetailsEmployer: TStringField;
    dsSettlementDetailsDescription: TStringField;
    dsSettlementDetailsAmount: TBCDField;
    QRLabel20: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel22: TQRLabel;
    qlQuoteDate: TQRLabel;
    QRLabel24: TQRLabel;
    qlUserID: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel18: TQRLabel;
    procedure QuickReportNeedData(Sender: TObject; var MoreData: Boolean);
    procedure repTitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    LoanRef: String;
  end;


implementation

uses dmMain, dmLS, dmSettlementQuotes;

{$R *.DFM}

procedure TrepSettlement.QuickReportNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  inherited;
  (*memSettle.Lines.Clear;
  memSettle.Lines.Add('I, '+ dtmMain.qryEntDet.FieldByName('Name').AsString + ' '
     + dtmMain.qryEntDet.FieldByName('Name2').AsString + ' the undersigned herewith give'+
     ' notice that I will on _______________ redeem and settle in full the abovementioned ');
  memSettle.Lines.Add('loan '+ dtmMain.qryEntDet.FieldByName('EntCode').AsString+ ' '+
     'advanced to me by '+dtmMain.SysCpyName+' by paying, in cash, the full amount shown above as the Final');
  memSettle.Lines.Add('settlement amount  as determined by '+dtmMain.SysCpyName+
     ' in accordance with the terms of the loan agreement of this loan.');
  MemSettle.Lines.Add('');
  MemSettle.Lines.Add('');
  MemSettle.Lines.Add('Signed at _______________________ on _____________________________');
  MemSettle.Lines.Add('');
  MemSettle.Lines.Add('');
  MemSettle.Lines.Add('');
  MemSettle.Lines.Add('______________________');
  MemSettle.Lines.Add(dtmMain.qryEntDet.FieldByName('Name').AsString + ' '
                      + dtmMain.qryEntDet.FieldByName('Name2').AsString);  *)
end;

procedure TrepSettlement.repTitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  rdtImportant.Text := StringReplace(rdtImportant.Text,'1234', LoanRef,[]);

  rdtImportant.SelStart := Pos(LoanRef,rdtImportant.Text)-1;
  rdtImportant.SelLength := Length(LoanRef);
  rdtImportant.SelAttributes.Style := rdtImportant.SelAttributes.Style + [fsBold];

  rdtImportant.SelStart := 0;//Pos('Important:',rdtImportant.Text)-1;
  rdtImportant.SelLength := 10;//Length('Important:');
  rdtImportant.SelAttributes.Style := rdtImportant.SelAttributes.Style + [fsBold];
end;

end.
