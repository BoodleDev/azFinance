unit uReports;
{===============================================================================
 Author  : Wicus Botha
 Date    : 01/07/2000
 Unit    : Generic report loader, this is the connection between the Main form
           report button & the actual report.
 PreConditions  : Hook-up report index with this unit. Input report index.
 PostConditions : none.
 History :
 ==============================================================================}
//R###,###,###,#0.00;(R###,###,###,#0.00)
interface

uses
  Forms, Classes, Dialogs, SysUtils, QuickRpt, Qrctrls, ExtCtrls, DB,
  DBChart, dmMain, dmSecFrm, dmBatchQuery, dmBatchTrans,
  rptBaseLand, rptBasePort, rptClientState, rptLCPD,
  rptBatch, rptPendNotes, rptYMDetail, rptTransSum,
  rptImpactSummary, rptGLTransCode, rptGLAcc, rptTransDet, rptIntForDay,
  rptLoanView, rptLoanSummary, rptDepositSum, rptLoanAgeSum,
  rptLoanForPeriod, rptArrearsControl, rptLoanFees, rptLoanFeeAnal,
  rptEmployee, rptEmpMthly, rptInsurance, rptAffCalc,
  rptBatchBnk, rptLoanBook,rptClientLoans,rptSuspAcc,rptPortAtRisk,
  rptTracking, rptAppStatus, rptLoanAgree, RptProvExpenseRatio,
  rptWriteOffRatio, ADODB, dmSettle;

  procedure LoadReport(RepIndex:integer;Print:boolean);
  procedure ExecuteReportPort(TrepToLoad: TFormClass; PrintRep:boolean);
  procedure ExecuteReportLand(TrepToLoad: TFormClass; PrintRep:boolean);
  procedure ExecuteReportBatch(RepHeading:string; PrintRep:boolean;
    RepDataSet: TDataSet);
  procedure PrintA_DBChart(ChartHeading:String;theChart:TDBChart);

var
  CurrentRep : TForm;

implementation

uses dmReporting, dmLS;

{ WB 01/07/2000
  Print or Preview landscape report, if code needs be to excuted for the
  specific report, try to put it in the Report form create procedure}
procedure ExecuteReportLand(TrepToLoad: TFormClass; PrintRep:boolean);
begin
  CurrentRep := TRepToLoad.Create(Application);
//  if dtmSecFrm.CanShowFrmMes(CurrentRep.Tag) then
  begin
    if PrintRep then
      TrepBaseLand(CurrentRep).QuickReport.Print
    else
      TrepBaseLand(CurrentRep).QuickReport.Preview;
  end;
  CurrentRep.Free;
  CurrentRep := nil;
end;

{ WB 01/07/2000
  Print or Preview protrait report, if code needs be to excuted for the
  specific report, try to put it in the Report form create procedure}
procedure ExecuteReportPort(TrepToLoad: TFormClass; PrintRep:boolean);
begin
  CurrentRep := TRepToLoad.Create(Application);
//  if dtmSecFrm.CanShowFrmMes(CurrentRep.Tag) then
  begin
    if PrintRep then
      TrepBasePort(CurrentRep).QuickReport.Print
    else
      TrepBasePort(CurrentRep).QuickReport.Preview;
  end;
  CurrentRep.Free;
  CurrentRep := nil;
end;

procedure ExecuteReportBatch(RepHeading:string; PrintRep:boolean;
  RepDataSet:TDataSet);
begin
  CurrentRep := TrepBatch.Create(Application);
  TrepBatch(CurrentRep).qlrepName.Caption := RepHeading;
  TrepBatch(CurrentRep).SetRepDataSet(RepDataSet);
  if PrintRep then
    TrepBatch(CurrentRep).QuickReport.Print
  else
    TrepBatch(CurrentRep).QuickReport.Preview;
  CurrentRep.Free;
  CurrentRep := nil;
end;

{ WB 01/07/2000
  Report index connection for loading reports}
procedure LoadReport(RepIndex:integer;Print:boolean);
//var
//  dtmSettle: TdtmSettle;
begin
  with dtmReporting do
  begin
    case RepIndex of
      1,2 : begin
            //ExecuteReportPort(TrepClientState,Print);
            if RepIndex = 1 then
              plClientStatement.DataSource := dtsClientAccount
            else
              plClientStatement.DataSource := dtsLoanAccount;

            plClientStatement.DataSource.DataSet.Close;
            TADODataSet(plClientStatement.DataSource.DataSet).Parameters.ParamByName('LoanID').Value := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
           { if RepIndex = 2 then
            begin
              dtmSettle := TdtmSettle.Create(nil);
              dtmSettle.dbSettle.Connected := False;
              dtmSettle.dbSettle.ConnectionString := dtmMain.dbData.ConnectionString;
              dtmSettle.dbSettle.Connected := True;
              dtmSettle.SettleDate := Date;
              dtmSettle.CurLoanID := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
              TADODataSet(plClientStatement.DataSource.DataSet).Parameters.ParamByName('IntToDate').Value := dtmSettle.GetIntUpToDate;
              FreeAndNil(dtmSettle);
            end;}
            plClientStatement.DataSource.DataSet.Open;

            prClientStatement.Parameters['UserID'].Value := dtmMain.CurrentID;
            prClientStatement.Parameters['ArrearsToDate'].Value :=
              FloatToStrF(dtmLS.qryEntLoan.FieldByName('ArrearsSettle').AsCurrency,ffCurrency,15,2);
            prClientStatement.Parameters['FutureCharges'].Value :=
              FloatToStrF(0,ffCurrency,15,2);
            prClientStatement.Print;
            plClientStatement.DataSource.DataSet.Close;
          end;
  //    2  : ExecuteReportPort(TrepLoanAcc,Print);
      3  : ExecuteReportPort(TrepLCPD,Print);
  //    4  : ExecuteReportPort(TrepDepositAcc,Print);
      5  : ExecuteReportPort(TrepAffCalc, Print);
  {   20 : ExecuteRepPortHeading(TrepInstitution,Print,'Employer');
      21 : ExecuteRepPortHeading(TrepInstitution,Print,'Funder');
      24 : ExecuteRepPortHeading(TrepInstitution,Print,'Provident fund');
      25 : ExecuteRepPortHeading(TrepInstitution,Print,'Labour union');
      22 : ExecuteReportPort(TrepLoanOfficer,Print);
      23 : ExecuteReportPort(TrepBranch,Print);  }
      24 : ExecuteReportPort(TrepBatchBnk,Print);
      50 : ExecuteReportBatch('Batch - open',Print,dtmBatchTrans.qryBatchT);
      51 : ExecuteReportBatch('Batch - closed',Print,dtmBatchTrans.qryBatchT);
      52 : ExecuteReportBatch('Batch history',Print,dtmBatchQuery.cdsBatchQry);
      53 : ExecuteReportBatch('Batch process errors',Print,dtmBatchQuery.cdsBatchQry);
      60 : ExecuteReportPort(TrepPendNotes,Print);
  //    70 : ExecuteReportPort(TrepClientDetail,Print);
      71 : ExecuteReportPort(TrepClientLoans,Print);
      72 : ExecuteReportLand(TrepYMDetail,Print);
      73 : ExecuteReportLand(TrepTransSum,Print);
      74 : ExecuteReportLand(TrepImpactSummary,Print);
  //    75 : ExecuteReportLand(TrepArrPerPrd,Print);
      80 : ExecuteReportLand(TrepLoanSummary,Print);
      81 : ExecuteReportLand(TrepLoanAgeSum,Print);
      82 : ExecuteReportLand(TrepLoanForPeriod,Print);
      83 : ExecuteReportLand(TrepArrearsControl,Print);
      84 : ExecuteReportLand(TrepLoanFees,Print);
      85 : ExecuteReportLand(TrepLoanFeeAnal,Print);
      86 : ExecuteReportLand(TrepDepositSum,Print);
      87 : ExecuteReportLand(TrepEmployee,Print);
      88 : ExecuteReportPort(TrepInsurance,Print);
      89 : ExecuteReportLand(TrepEmpMthly,Print);
      90 : ExecuteReportPort(TrepLoanView,Print);
      // Lose reports
  //    100:ExecuteReportPort(TrepInstitutionList,Print);
      110:ExecuteReportPort(TrepGLTransCode,Print);
      111:ExecuteReportPort(TrepGLAcc,Print);
      112:ExecuteReportPort(TrepTransDet,Print);
      113:ExecuteReportPort(TrepIntForDay,Print);
      114:ExecuteReportLand(TrepLoanBook,Print);
      115:ExecuteReportPort(TrepSuspAcc,Print);
      116:ExecuteReportPort(TrepPortAtRisk,Print);
      118:ExecuteReportPort(TrepTracking,Print);
      119:ExecuteReportPort(TrepAppStatus,Print);
      120:ExecuteReportPort(TrepProvExpenseRatio,Print);
      121:ExecuteReportPort(TrepLoanAgree,Print);
      122:ExecuteReportPort(TrepWriteOffRatio,Print);
    end;
  end;
end;

procedure PrintA_DBChart(ChartHeading:String;theChart:TDBChart);
var
  iPos : integer;
begin
  theChart.Title.Text.Clear;
  theChart.Title.Text.Add('Company name:  '+dtmMain.SysCpyName+
//    '      Branch:  '+dtmMain.CurBranchName+
    '      Date printed: '+DateToStr(Date));
  //iPos := 0;
  while Pos('#',ChartHeading)<>0 do
  begin
    iPos := Pos('#',ChartHeading)-1;
    theChart.Title.Text.Add(Copy(ChartHeading,0,iPos));
    ChartHeading := Copy(ChartHeading,iPos+2,Length(ChartHeading));
  end;
  theChart.Title.Visible     := True;
  theChart.Gradient.Visible  := False;
  theChart.PrintProportional := False; //this strech graph
  theChart.PrintMargins      := Rect(5,5,5,5);
  theChart.PrintLandscape;
  theChart.Gradient.Visible  := True;
  theChart.Title.Visible     := False;
  theChart.Title.Text.Clear;
end;

end.
