unit fmJudgementDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ComCtrls, DBDateTimePicker;

type
  TfrmJudgementDetail = class(TForm)
    btnOK: TButton;
    btnCancel: TButton;
    GroupBox1: TGroupBox;
    DBDateTimePicker1: TDBDateTimePicker;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBDateTimePicker2: TDBDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJudgementDetail: TfrmJudgementDetail;

implementation

uses dmLegal;

{$R *.dfm}

procedure TfrmJudgementDetail.btnOKClick(Sender: TObject);
begin
  if (dtmLegal.dsJudgementBatch.FieldByName('JDDate').IsNull) or
    (dtmLegal.dsJudgementBatch.FieldByName('JDAmount').IsNull) or
    (dtmLegal.dsJudgementBatch.FieldByName('JDInstalment').IsNull) or
    (dtmLegal.dsJudgementBatch.FieldByName('FirstInstalDate').IsNull) or
    (dtmLegal.dsJudgementBatch.FieldByName('CaseNumber').IsNull) or
    (dtmLegal.dsJudgementBatch.FieldByName('CaseNumber').AsString = '') or
    (dtmLegal.dsJudgementBatch.FieldByName('Magistrate').AsInteger = 0) then
    MessageDlg('Not all entries have been properly completed.', mtError, [mbOK],0)
  else
  begin
    if dtmLegal.dsJudgementBatch.FieldByName('HODate').AsDateTime >
      dtmLegal.dsJudgementBatch.FieldByName('JDDate').AsDateTime then
      MessageDlg('The judgement date cannot be before the handover date (' +
        dtmLEgal.dsJudgementBatch.FieldByName('HODate').AsString + ').', mtError, [mbOK], 0)
    else if dtmLegal.dsJudgementBatch.FieldByName('JDDate').AsDateTime >
      dtmLegal.dsJudgementBatch.FieldByName('FirstInstalDate').AsDateTime then
      MessageDlg('The first instalment date cannot be before the judgement date.', mtError, [mbOK], 0)
    else if dtmLegal.dsJudgementBatch.FieldByName('HOAmount').AsCurrency <>
      dtmLegal.dsJudgementBatch.FieldByName('JDAmount').AsCurrency then
      MessageDlg('The original handover amount (' +
        FloatToStrF(dtmLegal.dsJudgementBatch.FieldByName('HOAmount').AsCurrency, ffCurrency, 15,2) +
        ') and the judgement amount (' +
        FloatToStrF(dtmLegal.dsJudgementBatch.FieldByName('JDAmount').AsCurrency, ffCurrency, 15,2) +
        ') are not the same.', mtError, [mbOK], 0)
    else
      ModalResult := mrOK;
  end;
end;

end.
