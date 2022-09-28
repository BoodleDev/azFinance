unit dmLegal;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs, Controls;

type
  TdtmLegal = class(TDataModule)
    dsMagistrates: TADODataSet;
    dtsMagistrates: TDataSource;
    dsLegalFees: TADODataSet;
    dsFeeCheck: TADODataSet;
    qrySummary: TADOQuery;
    dsApplication: TADODataSet;
    dtsApplication: TDataSource;
    cmdInsert: TADOCommand;
    cmdUpdate: TADOCommand;
    dsDocuments: TADODataSet;
    dsDocumentsDocumentID: TAutoIncField;
    dsDocumentsDocumentType: TStringField;
    dsDocumentsDescription: TStringField;
    dsDocumentsLoanID: TIntegerField;
    dsDocumentsPages: TWordField;
    dsDocumentsCreateDate: TDateTimeField;
    dsDocumentsCreateUser: TStringField;
    dsCancellationType: TADODataSet;
    dtsCancellationType: TDataSource;
    dsTerminationType: TADODataSet;
    dtsTerminationType: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmLegal: TdtmLegal;

implementation

uses dmMain, dmBatchTrans, uLSconst;

{$R *.dfm}


end.
