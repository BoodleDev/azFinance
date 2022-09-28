unit rptCodes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, Qrctrls, QuickRpt, ExtCtrls, DB;

type
  TrepCodes = class(TrepBasePort)
    txtName: TQRDBText;
    txtSub: TQRDBText;
    lblCode: TQRLabel;
    lblName: TQRLabel;
    lblSub: TQRLabel;
    txtCode: TQRDBText;
    QRShape1: TQRShape;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetProperties(qrySource :TDataSet; Report,Code,Name,Sub :String);
  end;

implementation

uses dmCodes;

{$R *.DFM}

procedure TrepCodes.FormCreate(Sender: TObject);
begin
  inherited;
  // Bank=1 Address=2
  case dtmCodes.BankOrAddr of
    1 : SetProperties(dtmCodes.qryBank, 'List of Banks', 'BranchCode',
          'BankName', 'BranchName');
    2 : SetProperties(dtmCodes.qryAddress, 'List of Postal Codes',
           'PostCode', 'TownName', 'SuburbName');
  end;
end;

procedure TrepCodes.SetProperties(qrySource: TDataSet; Report,Code,Name,
  Sub :String);
begin
   qlRepName.Caption   := Report;
   Quickreport.DataSet := qrySource;
   txtCode.DataSet     := qrySource;
   txtCode.DataField   := Code;
   lblCode.Caption     := Code;
   txtName.DataSet     := qrySource;
   txtName.DataField   := Name;
   lblName.Caption     := Name;
   txtSub.DataSet      := qrySource;
   txtSub.DataField    := Sub;
   lblSub.Caption      := Sub;
end;

end.
