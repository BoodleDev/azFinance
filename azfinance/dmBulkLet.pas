unit dmBulkLet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TdtmBulkLet = class(TDataModule)
    qryLetters: TADODataSet;
    dtsLetters: TDataSource;
    qryLUEntity: TADODataSet;
    dtsLUEntity: TDataSource;
    qryLoanDet: TADODataSet;
    dtsLoanDet: TDataSource;
    qryLoanDetLoanID: TIntegerField;
    qryLoanDetEntityID: TIntegerField;
    qryLoanDetLoanType: TStringField;
    qryLoanDetLoanPeriod: TSmallintField;
    qryLoanDetIntRate: TBCDField;
    qryLoanDetStartDate: TDateTimeField;
    qryLoanDetEndDate: TDateTimeField;
    qryLoanDetStatus: TSmallintField;
    qryLoanDetLUEntity: TStringField;
    qryLoanType: TADODataSet;
    dtsLoanType: TDataSource;
    qryReplace: TADODataSet;
    qryLetterFld: TADODataSet;
    dtsLetterFld: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetActiveQueries (Ready: Boolean);
    procedure SetBulkLetterQry(inWhere: string);
  end;

implementation

uses dmMain;

{$R *.DFM}

{ TdtmBulkLet }

procedure TdtmBulkLet.SetActiveQueries(Ready: Boolean);
begin
  qryLetters.Active   := Ready;
  qryLUEntity.Active  := Ready;
  qryLoanType.Active  := Ready;
  qryLoanDet.Active   := Ready;
  qryLetterFld.Active := Ready;
  qryReplace.Active   := Ready;
end;

procedure TdtmBulkLet.SetBulkLetterQry(inWhere: string);
var
  tmpSQL : string;
begin
  tmpSQL := 'select LoanID, EntityID, LoanType, LoanPeriod, IntRate, StartDate,'+
   ' EndDate, Status from lsLoanDetail where '+inWhere;
  qryLoanDet.DisableControls;
  qryLoanDet.Close;
  qryLoanDet.CommandText := tmpSQL;
  qryLoanDet.Open;
  qryLoanDet.EnableControls;
end;

end.
