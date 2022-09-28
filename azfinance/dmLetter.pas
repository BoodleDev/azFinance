unit dmLetter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, uConst;

type
  TdtmLetter = class(TDataModule)
    qryLetterFld: TADODataSet;
    dtsLetterFld: TDataSource;
    qryReplace: TADODataSet;
    qryLetters: TADODataSet;
    dtsLetters: TDataSource;
    qryLoanAgree: TADODataSet;
    dtsLoanAgree: TDataSource;
    qryLoanAgreeLetKey: TIntegerField;
    qryLoanAgreeAppID: TIntegerField;
    qryLoanAgreeLetDescription: TStringField;
    qryLoanAgreeLetterBody: TMemoField;
    qryLoanAgreeUserID: TStringField;
    qryLoanAgreeDateAdded: TDateTimeField;
    qryLoanAgreeLetType: TSmallintField;
    qryLoanAgreeDefaultLA: TBooleanField;
    qryLettersLetKey: TIntegerField;
    qryLettersAppID: TIntegerField;
    qryLettersLetDescription: TStringField;
    qryLettersLetterBody: TMemoField;
    qryLettersUserID: TStringField;
    qryLettersDateAdded: TDateTimeField;
    qryLettersLetType: TSmallintField;
    procedure qryLettersBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetLetterData(Ready : Boolean);
    procedure SetLetterFields;
    procedure SetDBName(ConStr : WideString);
//    procedure LoadLetter;
  end;

implementation

uses dmMain;

{$R *.DFM}

procedure TdtmLetter.SetDBName(ConStr : WideString);
begin
  qryLetters.ConnectionString   := ConStr;
  qryReplace.ConnectionString   := ConStr;
  qryLetterFld.ConnectionString := ConStr;
end;

procedure TdtmLetter.SetLetterData(Ready: Boolean);
begin
  qryLetters.Active   := Ready;
  qryReplace.Active   := Ready;
  if not Ready then
    qryLetterFld.Active := Ready;
end;

procedure TdtmLetter.qryLettersBeforeOpen(DataSet: TDataSet);
begin
  qryLetters.Parameters[0].Value := AppID;
end;

procedure TdtmLetter.SetLetterFields;
begin
  qryLetterFld.Close;
  qryLetterFld.Parameters.ParamByName('LetKey').Value := qryLetters.FieldByName('LetKey').AsInteger;
  qryLetterFld.Open;
end;



end.
