unit fmResultOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TfrmResultOptions = class(TForm)
    Label2: TLabel;
    btnClose: TButton;
    btnOk: TButton;
    GroupBox1: TGroupBox;
    cbxCS: TCheckBox;
    cbxNLR: TCheckBox;
    cbxExperian: TCheckBox;
    cbxSumm: TCheckBox;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResultOptions: TfrmResultOptions;

implementation

uses dmEntityLoan, uBureau, dmBureau;

{$R *.DFM}

procedure TfrmResultOptions.btnOkClick(Sender: TObject);
begin
  btnOk.Enabled := False;
  Screen.Cursor := crHourGlass;
  if (cbxCS.Checked) and (cbxCS.Enabled) then
    OpenEnqResult(dtmBureau.qryEntity.FieldByName('RegNo').AsString,
      dtmBureau.qryEntity.FieldByName('EntCode').AsString,'CC',
      FormatDateTime('ddmmyyyy', dtmBureau.qryEnqHistory.fieldbyname('EnqDate').AsDateTime),
      dtmBureau.qryEnqHistory.FieldByName('TransNo').AsInteger,
      dtmBureau.qryEnqHistory.FieldByName('LoanID').AsInteger);

  if (cbxNLR.Checked) and (cbxNLR.Enabled) then
    OpenEnqResult(dtmBureau.qryEntity.FieldByName('RegNo').AsString,
      dtmBureau.qryEntity.FieldByName('EntCode').AsString, 'NLR',
      FormatDateTime('ddmmyyyy', dtmBureau.qryEnqHistory.fieldbyname('EnqDate').AsDateTime),
      dtmBureau.qryEnqHistory.FieldByName('TransNo').AsInteger,
      dtmBureau.qryEnqHistory.FieldByName('LoanID').AsInteger);

  if (cbxExperian.Checked) and (cbxExperian.Enabled) then
    OpenEnqResult(dtmBureau.qryEntity.FieldByName('RegNo').AsString,
      dtmBureau.qryEntity.FieldByName('EntCode').AsString,
      dtmBureau.qryEnqHistory.FieldByName('TransNo').AsString + '.' +'CON',
      FormatDateTime('ddmmyyyy', dtmBureau.qryEnqHistory.fieldbyname('EnqDate').AsDateTime),
      dtmBureau.qryEnqHistory.FieldByName('TransNo').AsInteger,
      dtmBureau.qryEnqHistory.FieldByName('LoanID').AsInteger);

  if (cbxSumm.Checked) and (cbxSumm.Enabled) then
    OpenEnqResult(dtmBureau.qryEntity.FieldByName('RegNo').AsString,
      dtmBureau.qryEntity.FieldByName('EntCode').AsString,'SUMM',
      FormatDateTime('ddmmyyyy', dtmBureau.qryEnqHistory.fieldbyname('EnqDate').AsDateTime),
      dtmBureau.qryEnqHistory.FieldByName('TransNo').AsInteger,
      dtmBureau.qryEnqHistory.FieldByName('LoanID').AsInteger);
              
  Screen.Cursor := crDefault;
  btnOk.Enabled := True;
  Close;
end;

end.
