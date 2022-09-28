unit rptLoanAgree;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, dmLetter, StdCtrls, ComCtrls, DBCtrls;

type
  TrepLoanAgree = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    reMemLetter: TQRRichText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repLoanAgree: TrepLoanAgree;

implementation


{$R *.DFM}



{Loop the codes get the fieldname of the replace data by using the "FieldName" field
in the Lettercodes query and replace the <<text>> with the field value}
{procedure TrepLoanAgree.DoReplacements;
var
  TheFindStr,ReplaceStr : String;
begin
  dtmData.qryLetterFld.First;
  while not dtmData.qryLetterFld.Eof do
  begin
    TheFindStr := Trim(dtmData.qryLetterFld.FieldByName('Name').AsString);
    ReplaceStr := Trim(LUDataset.FieldByName(Trim(
      dtmData.qryLetterFld.FieldByName('FieldName').AsString)).AsString);
    ReplaceREMem(TheFindStr,ReplaceStr,reMemLetter);
    dtmData.qryLetterfld.Next;
  end;
  //Custom values
  ReplaceCustomValue('1',edtCust1.Text);
  ReplaceCustomValue('2',edtCust2.Text);
  ReplaceCustomValue('3',edtCust3.Text);
  ReplaceCustomValue('4',edtCust4.Text);
end;

procedure TrepLoanAgree.ReplaceCustomValue(inNo, inText: string);
begin
  if Trim(inText)<>'' then
    ReplaceREMem('<<CUST'+inNo+'>>',inText,reMemLetter);
end;
end;        }

end.
