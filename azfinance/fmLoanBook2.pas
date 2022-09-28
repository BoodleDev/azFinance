unit fmLoanBook2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StrUtils, DBClient, ComCtrls, ToolWin,
  DBGridExporter;

type
  TfrmLoanBook2 = class(TForm)
    grdLoanBook: TDBGrid;
    dsLoanBook1: TADODataSet;
    dtsLoanBook1: TDataSource;
    dsLoanBook1RecNo: TIntegerField;
    dsLoanBook1Description: TStringField;
    dsLoanBook1CurrentValue: TBCDField;
    dsLoanBook1PrevMonthValue: TBCDField;
    dsLoanBook1MonthValue1: TBCDField;
    dsLoanBook1MonthValue2: TBCDField;
    dsLoanBook1MonthValue3: TBCDField;
    dsLoanBook1MonthValue4: TBCDField;
    dsMonths: TADODataSet;
    dsLoanBook: TADODataSet;
    cdsLoanBook: TClientDataSet;
    dtsLoanBook: TDataSource;
    cdsLoanBookMonth4: TBCDField;
    cdsLoanBookMonth3: TBCDField;
    cdsLoanBookMonth2: TBCDField;
    cdsLoanBookMonth1: TBCDField;
    cdsLoanBookDescription: TStringField;
    tlbDBBase: TToolBar;
    btnExit: TToolButton;
    btnExport: TToolButton;
    DBGridExporter1: TDBGridExporter;
    cdsLoanBookToDate: TBCDField;
    cdsLoanBookToDate2: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
//    procedure BuildSQL;
    procedure AddRecord(Description, FieldName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoanBook2: TfrmLoanBook2;

implementation

uses dmMain;

{$R *.dfm}

procedure TfrmLoanBook2.FormCreate(Sender: TObject);
begin
  dsLoanBook.Open;
  cdsLoanBook.CreateDataSet;
  AddRecord('Total Arrears (360 Days)', 'Days360_');
  AddRecord('Total Arrears (330 Days)', 'Days330_');
  AddRecord('Total Arrears (300 Days)', 'Days300_');
  AddRecord('Total Arrears (270 Days)', 'Days270_');
  AddRecord('Total Arrears (240 Days)', 'Days240_');
  AddRecord('Total Arrears (210 Days)', 'Days210_');
  AddRecord('Total Arrears (180 Days)', 'Days180_');
  AddRecord('Total Arrears (150 Days)', 'Days150_');
  AddRecord('Total Arrears (120 Days)', 'Days120_');
  AddRecord('Total Arrears (90 Days)', 'Days90_');
  AddRecord('Total Arrears (60 Days)', 'Days60_');
  AddRecord('Total Arrears (30 Days)', 'Days30_');
  AddRecord('Total Interest Earned', 'TotIntEarn');
  AddRecord('Total Additional DR/CR', 'TotAddDC');
  AddRecord('Total Credits Received', 'TotCRRec');
  AddRecord('Amount Due', 'AmountDue');
  AddRecord('Arrears Amount', 'ArrearsAmt');
  AddRecord('Client Account Balance', 'AccBal');
  AddRecord('Loan Account Balance', 'LoanBal');
  AddRecord('Total Deferred Interest', 'TotInterest');
  AddRecord('Payable Instalments', 'PayIns');
  AddRecord('Monthly Instalments', 'MthIns');
  AddRecord('Amount Finance', 'AmtToFin');
  AddRecord('Loan Capital', 'LoanCapital');

  dsMonths.Open;
  grdLoanBook.Columns[3].Title.Caption := FormatDateTime('mmmm yyyy', dsMonths.Fields[0].AsDateTime);
  grdLoanBook.Columns[4].Title.Caption := FormatDateTime('mmmm yyyy', IncMonth(dsMonths.Fields[0].AsDateTime,-1));
  grdLoanBook.Columns[5].Title.Caption := FormatDateTime('mmmm yyyy', IncMonth(dsMonths.Fields[0].AsDateTime,-2));
  grdLoanBook.Columns[6].Title.Caption := FormatDateTime('mmmm yyyy', IncMonth(dsMonths.Fields[0].AsDateTime,-3));
  dsMonths.Close;
end;

procedure TfrmLoanBook2.AddRecord(Description, FieldName: string);
var
  I: integer;
begin
  cdsLoanBook.Append;
  cdsLoanBook.FieldByName('Description').AsString := Description;
  cdsLoanBook.FieldByName('ToDate').AsCurrency := dsLoanBook.FieldByName(FieldName + 'TD').AsCurrency;
  cdsLoanBook.FieldByName('ToCurrentME').AsCurrency := dsLoanBook.FieldByName(FieldName).AsCurrency;
  for I := 1 to 4 do
    cdsLoanBook.FieldByName('Month' + IntToStr(I)).AsCurrency := dsLoanBook.FieldByName(FieldName + IntToStr(I)).AsCurrency;
  cdsLoanBook.Post;
end;

//procedure TfrmLoanBook2.BuildSQL;
//var
//  SQL: String;
//  I: Integer;
//
//  procedure AddRecord(Description, Field, Where: String);
//  begin
//    Inc(I);
//    if I > 1 then
//      SQL := SQL + ' UNION ';
//    SQL := SQL + 'SELECT ' + IntToStr(I) + ' AS RecNo, ''' + Description + ''' AS Description,'+
//      '(SELECT SUM(' + Field + ')' +
//      'FROM lsLoanDetail ' + IfThen(Where = '', '', 'WHERE ' + Where) + ') AS CurrentValue, ' +
//      '(SELECT SUM(' + Field + ')' +
//      'FROM lsMESummary Where MEID = @PrevMonth ' + IfThen(Where = '', '', 'AND ' + Where) + ') AS PrevMonthValue, ' +
//      '(SELECT SUM(' + Field + ')' +
//      'FROM lsMESummary Where MEID = @Month1 ' + IfThen(Where = '', '', 'AND ' + Where) + ') AS MonthValue1, ' +
//      '(SELECT SUM(' + Field + ')' +
//      'FROM lsMESummary Where MEID = @Month2 ' + IfThen(Where = '', '', 'AND ' + Where) + ') AS MonthValue2, ' +
//      '(SELECT SUM(' + Field + ')' +
//      'FROM lsMESummary Where MEID = @Month3 ' + IfThen(Where = '', '', 'AND ' + Where) + ') AS MonthValue3, ' +
//      '(SELECT SUM(' + Field + ')' +
//      'FROM lsMESummary Where MEID = @Month4 ' + IfThen(Where = '', '', 'AND ' + Where) + ') AS MonthValue4';
//  end;
//
//begin
//  I := 0;
//  SQL := 'DECLARE @PrevMonth INT, @Month1 INT, @Month2 INT, @Month3 INT, @Month4 INT' + #13#10 +
//    'SELECT @PrevMonth = MAX(MonthNo) ' +
//    'FROM lsMonthEnd ' +
//    'WHERE Closed= 1 ' + #13#10 +
//    'SET @Month1 = @PrevMonth - 1' + #13#10 +
//    'SET @Month2 = @PrevMonth - 2' + #13#10 +
//    'SET @Month3 = @PrevMonth - 3' + #13#10 +
//    'SET @Month4 = @PrevMonth - 4' + #13#10;
//
//  AddRecord('TOTAL ARREARS (360 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 12');
//  AddRecord('TOTAL ARREARS (330 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 11');
//  AddRecord('TOTAL ARREARS (300 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 10');
//  AddRecord('TOTAL ARREARS (270 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 9');
//  AddRecord('TOTAL ARREARS (240 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 8');
//  AddRecord('TOTAL ARREARS (210 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 7');
//  AddRecord('TOTAL ARREARS (180 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 6');
//  AddRecord('TOTAL ARREARS (150 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 5');
//  AddRecord('TOTAL ARREARS (120 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 4');
//  AddRecord('TOTAL ARREARS (90 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 3');
//  AddRecord('TOTAL ARREARS (60 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 2');
//  AddRecord('TOTAL ARREARS (30 DAYS)', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 1');
//
//  AddRecord('Total Interest Earned', 'ArrearsAmt', 'Status IN (30,60,65,68) AND ArrearsNo = 1');
//
//  SQL := SQL + ' ORDER BY RecNo';
//  dsLoanBook.CommandText := SQL;
//end;

procedure TfrmLoanBook2.FormDestroy(Sender: TObject);
begin
  dsLoanBook.Close;
  cdsLoanBook.Close;
end;

procedure TfrmLoanBook2.btnExportClick(Sender: TObject);
begin
  DBGridExporter1.Execute;
end;

procedure TfrmLoanBook2.btnExitClick(Sender: TObject);
begin
  Close;
end;

end.
