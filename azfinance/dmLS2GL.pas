unit dmLS2GL;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Provider, DBClient, ADODB, ExportData, Unit32;

type
  TdtmLS2GL = class(TDataModule)
    cdsGLReport: TClientDataSet;
    dspGLReport: TDataSetProvider;
    qryGLTDet: TADOQuery;
    dspTransDet: TDataSetProvider;
    cdsTransDet: TClientDataSet;
    qryGetTransDet: TADOQuery;
    qrySumTots: TADOQuery;
    dtsSumTots: TDataSource;
    qryGetTransDetTransNo: TIntegerField;
    qryGetTransDetBatchNo: TStringField;
    qryGetTransDetTransCode: TIntegerField;
    qryGetTransDetEffectDate: TDateTimeField;
    qryGetTransDetAmount: TBCDField;
    qryGetTransDetRefNo: TStringField;
    qryGetTransDetUserID: TStringField;
    qrySumTotsrecCnt: TIntegerField;
    qrySumTotsTotSum: TBCDField;
    cdsTransDetTransNo: TIntegerField;
    cdsTransDetBatchNo: TStringField;
    cdsTransDetTransCode: TIntegerField;
    cdsTransDetEffectDate: TDateTimeField;
    cdsTransDetAmount: TBCDField;
    cdsTransDetRefNo: TStringField;
    cdsTransDetUserID: TStringField;
    ExportData1: TExportData;
    qryToUse: TADOQuery;
    qryTransGrp: TADOQuery;
    dtsTransGrp: TDataSource;
    qryTransGrpTransCode: TIntegerField;
    qryTransGrpAmount: TBCDField;
    qryTransGrpGLAccNo: TIntegerField;
    qryTransGrpDescription: TStringField;
    qryGLTsum: TADODataSet;
    dtsGLTsum: TDataSource;
    qryGLTsumRecordID: TAutoIncField;
    qryGLTsumRunDate: TDateTimeField;
    qryGLTsumEffectDate: TDateTimeField;
    qryGLTsumBHFrom: TIntegerField;
    qryGLTsumBHTo: TIntegerField;
    qryGLTsumGLRef: TStringField;
    qryGLTsumToGlAcc: TBooleanField;
    qryGLTsumTotAccBal: TBCDField;
    qryGLTsumTotDepBal: TBCDField;
    qryGLTsumTotLoanBal: TBCDField;
    dtsTransDet: TDataSource;
    qryTransGrpDC: TStringField;
    qryGetTransDetEntCode: TStringField;
    qryGetTransDetPostDate: TDateTimeField;
    cdsTransDetEntCode: TStringField;
    cdsTransDetPostDate: TDateTimeField;
    qryGetTransDetLoanID: TIntegerField;
    cdsTransDetLoanID: TIntegerField;
    qryGetTransDetRefNo2: TStringField;
    cdsTransDetRefNo2: TStringField;
    qryGetTransDetAccountNo: TStringField;
    cdsTransDetAccountNo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FDefIntToGL : boolean;
    FBHFromNo: integer;
    FBHToNo  : integer;
    FUseDates: boolean;
    FUseTransNo: boolean;
    strEDFrom : string;
    strEDTo   : string;
    FDateEorT: string;
    FDateRangeStr: string;
    tmpSQL : string;
    procedure SetCDSdataset(qryToSet: TDataSet);
    function GetSQLWhereRanges:string;
    procedure SetDefIntToGL(const Value: boolean);
    procedure AddSQLForQry(qryToAdd :TADOQuery);
  public
    { Public declarations }
    property UseDates   : boolean read FUseDates write FUseDates;
    property UseTransNo : boolean read FUseTransNo write FUseTransNo;
    property DateRangeStr : string read FDateRangeStr;
    property BHFromNo : integer read FBHFromNo;
    property BHToNo   : integer read FBHToNo;
    property DateEorT : string read FDateEorT write FDateEorT;
    property DefIntToGL: boolean read FDefIntToGL write SetDefIntToGL;
    procedure SetFromTo(inFrom,inTo:integer);
    procedure SetDatesFromTo(inFrom,inTo:TDate);
    procedure DoSQLforGLTrans;
    procedure DoSQLforGLAcc;
    procedure OpenQryForReport(TTRange: string);
    procedure UpdateToGL;
    //
    procedure OpenTransGroup;
    procedure OpenTransDetails(AllFor, NoToUse : integer);
  end;

var
  dtmLS2GL: TdtmLS2GL;

implementation

uses dmMain, uLSConst;

{$R *.DFM}

procedure TdtmLS2GL.DataModuleCreate(Sender: TObject);
begin
  DateEorT := 'EffectDate';
end;

procedure TdtmLS2GL.SetCDSdataset(qryToSet: TDataSet);
begin
  cdsGLReport.Close;
  dspGLReport.DataSet.Close;
  dspGLReport.DataSet := qryToSet;
end;

procedure TdtmLS2GL.AddSQLForQry(qryToAdd: TADOQuery);
begin
  qryToAdd.Close;
  qryToAdd.SQL.Clear;
  qryToAdd.SQL.Add(tmpSQL);
end;

function TdtmLS2GL.GetSQLWhereRanges: string;
begin
  Result := '';
  if (UseDates) and (UseTransNo) then
    Result := ' BH.TransNo between '+IntToStr(BHFromNo)+' and '+IntToStr(BHToNo) +
      ' and BH.'+DateEorT+' between '''+strEDFrom+''' and '''+ strEDTo +''''
  else
  begin
    if UseDates then
      Result := ' BH.'+DateEorT+' between '''+strEDFrom + ''' and '''+ strEDTo + ''''
    else
      Result := ' BH.TransNo between '+IntToStr(BHFromNo)+' and '+IntToStr(BHToNo);
  end;
end;

procedure TdtmLS2GL.DoSQLforGLTrans;
begin
  SetCDSdataset(qryGLTDet);
  //
  tmpSQL := 'Select TSP.TransCode,sum(BH.Amount) as Amount,TSP.GLAccNo,TSP.DC,'+
    ' TSP.Description from lsBatchHistory BH left join TransSetup TSP on '+
    ' BH.TransCode = TSP.TransCode where '+GetSQLWhereRanges;
  if DefIntToGL then
    tmpSQL := tmpSQL +'  and BH.TransType not in ('+actrCA+')'
  else
    tmpSQL := tmpSQL +'  and BH.TransType not in ('+actrLA+')';
  tmpSQL := tmpSQL +' group by TSP.TransCode,TSP.GLAccNo,TSP.DC,TSP.Description'
    +' order by TSP.TransCode';
  //
  AddSQLForQry(qryGLTDet);
end;

procedure TdtmLS2GL.DoSQLforGLAcc;
begin
  SetCDSdataset(qryGLTDet);
  tmpSQL := 'select TSP.GLaccNo,TSP.DC,sum(BH.Amount) as Amount'+
    ' from lsBatchHistory BH left join TransSetup TSP on BH.TransCode=TSP.TransCode'+
    ' where TSP.GLAccNo<>0 and '+GetSQLWhereRanges;
  if DefIntToGL then
    tmpSQL := tmpSQL +'  and BH.TransType not in ('+actrCA+')'
  else
    tmpSQL := tmpSQL +'  and BH.TransType not in ('+actrLA+')';
  tmpSQL := tmpSQL +' group by TSP.GLAccNo,TSP.DC order by TSP.GLAccNo';
  //
  AddSQLForQry(qryGLTDet);
end;

procedure TdtmLS2GL.SetFromTo(inFrom, inTo: integer);
begin
  FBHFromNo := inFrom;
  FBHToNo   := inTo;
end;

procedure TdtmLS2GL.SetDatesFromTo(inFrom, inTo: TDate);
begin
  strEDFrom    := FormatDateTime('mm/dd/yyyy',inFrom);
  strEDTo      := FormatDateTime('mm/dd/yyyy',inTo);
  if DateEorT = 'EffectDate' then
    FDateRangeStr := 'Effective date - from  '+ DateToStr(inFrom)+' to  '+DateToStr(inTo)
  else
    FDateRangeStr := 'Transaction date - from  '+DateToStr(inFrom)+' to  '+DateToStr(inTo);
end;

procedure TdtmLS2GL.OpenQryForReport(TTRange: string);
begin
  SetCDSdataset(qryToUse);
  //
  tmpSQL := 'select TSP.GLaccNo,TSP.DC,TSP.ContraAccNo,sum(BH.Amount) as Amount'+
    ' from lsBatchHistory BH left join TransSetup TSP on BH.TransCode=TSP.TransCode'+
    ' where BH.TransType in ('+TTRange+') and '+GetSQLWhereRanges+
    ' group by TSP.GLAccNo,TSP.DC,TSP.ContraAccNo  order by TSP.GLAccNo';
  RunQry(qryToUse,tmpSQL,'O');
  cdsGLReport.Active := True;
end;

procedure TdtmLS2GL.UpdateToGL;
begin
  qryGLTsum.Edit;
  qryGLTsum.FieldByName('ToGlAcc').AsBoolean := True;
  qryGLTsum.Post;
end;

procedure TdtmLS2GL.OpenTransGroup;
begin
  tmpSQL := 'select TSP.TransCode, sum(BH.Amount) as Amount,TSP.GLAccNo,TSP.DC,'+
   ' TSP.Description from lsBatchHistory BH left join TransSetup TSP on '+
   ' BH.TransCode = TSP.TransCode where '+ GetSQLWhereRanges +
   ' group by TSP.TransCode,TSP.GLAccNo,TSP.DC,TSP.Description order by TSP.TransCode';
  RunQry(qryTransGrp,tmpSQL,'O');
end;

procedure TdtmLS2GL.OpenTransDetails(AllFor, NoToUse: integer);
var
  TempWhere : string;
begin
  Screen.Cursor := crHourGlass;
  cdsTransDet.Close;
  try
    TempWhere := '';
    TempWhere := 'where '+GetSQLWhereRanges;
    case AllFor of
      0 : TempWhere := TempWhere +' and BH.TransCode = '+qryTransGrp.FieldByName('TransCode').AsString;// normal
      1 : TempWhere := TempWhere +' and BH.TransType='+IntToStr(NoToUse);// trans type
      2 : TempWhere := TempWhere +' and BH.TransCode in (select TransCode '+
            ' from TransSetup where GLAccNo='+IntToStr(NoToUse)+')';// gl acc no
    end;
    qryGetTransDet.Close;
    qryGetTransDet.SQL.Clear;
    qryGetTransDet.SQL.Add(
      'select BH.TransNo,BH.BatchNo,BH.EntCode,BH.TransCode,'+
      'BH.EffectDate,BH.PostDate,BH.Amount,BH.RefNo,BH.RefNo2,BH.UserID,BH.LoanID, LD.RefNo AS AccountNo');
    qryGetTransDet.SQL.Add('from lsBatchHistory BH LEFT JOIN lsLoanDetail LD ON BH.LoanID = LD.LoanID');
    qryGetTransDet.SQL.Add(TempWhere);
    cdsTransDet.Open;
    //
    qrySumTots.Close;
    qrySumTots.SQL.Clear;
    qrySumTots.SQL.Add('select count(BH.TransNo) as recCnt,sum(BH.Amount) as TotSum');
    qrySumTots.SQL.Add('from lsBatchHistory BH');
    qrySumTots.SQL.Add(TempWhere);
    qrySumTots.Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TdtmLS2GL.SetDefIntToGL(const Value: boolean);
begin
  FDefIntToGL := Value;
end;

end.
