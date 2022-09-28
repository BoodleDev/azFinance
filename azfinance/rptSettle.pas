unit rptSettle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls, jpeg, StdCtrls, ComCtrls,
  QRExport;

type
  TrepSettle = class(TrepBasePort)
    QRLabel1: TQRLabel;
    lblIntToDateTitle: TQRLabel;
    lblArrIntTitle: TQRLabel;
    lblDepBalTitle: TQRLabel;
    lblSettleFeeTitle: TQRLabel;
    lblFinalTitle: TQRLabel;
    lblIntToDate: TQRLabel;
    lblFutureTrans: TQRLabel;
    lblDepBal: TQRLabel;
    lblLoanBal: TQRLabel;
    lblAdditionalCharges: TQRLabel;
    lblFinal: TQRLabel;
    shpBottomLine: TQRShape;
    shpBottomTop: TQRShape;
    qlAccCode: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText22: TQRDBText;
    qdbtPersonKey: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText25: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    qlSettleDate3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel17: TQRLabel;
    QRShape4: TQRShape;
    qlSettleDate1: TQRLabel;
    QRLabel23: TQRLabel;
    qlSettleDate2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    qlUserID: TQRLabel;
    qlFullname: TQRExpr;
    QRLabel25: TQRLabel;
    qlBankName: TQRLabel;
    qlBranchName: TQRLabel;
    qlBranchCode: TQRLabel;
    qlAcountNo: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    qlRefNo: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel30: TQRLabel;
    QRImage1: TQRImage;
    QRMemo1: TQRMemo;
    QRLabel4: TQRLabel;
    QRLabel18: TQRLabel;
    qrImportant: TQRRichText;
    rdtImportant: TRichEdit;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRHTMLFilter1: TQRHTMLFilter;
    qlQuoteDate: TQRLabel;
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

uses dmMain, dmLS;

{$R *.DFM}

procedure TrepSettle.QuickReportNeedData(Sender: TObject;
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

procedure TrepSettle.repTitleBandBeforePrint(Sender: TQRCustomBand;
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
