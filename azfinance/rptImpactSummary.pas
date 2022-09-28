unit rptImpactSummary;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, StdCtrls, Db, rptBasePort, ADODB, Unit32;

type              
  TrepImpactSummary = class(TrepBasePort)
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QLTotNoLoan: TQRLabel;
    QLNoLastMth: TQRLabel;
    QLTotAmtLoan: TQRLabel;
    QLAmtLastMth: TQRLabel;
    QRMLoan: TQRMemo;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QLNoMale: TQRLabel;
    QLNoFemale: TQRLabel;
    QRLabel12: TQRLabel;
    QRMEmp: TQRMemo;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QLR1500: TQRLabel;
    QRLabel17: TQRLabel;
    QLR1525: TQRLabel;
    QRLabel18: TQRLabel;
    QLMoreR35: TQRLabel;
    QRLabel1: TQRLabel;
    QLR2535: TQRLabel;
    QRLabel2: TQRLabel;
    QLTotNoClient: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QryRep: TADODataSet;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DoQry(sQryToDo : string);
    procedure SetQLQryAndTotal(TheQL:TQRLabel; iTotal:integer);
    procedure DoMemos(TheMemo:TQRMemo);
    procedure DoReport;
  public
    { Public declarations }
  end;

implementation

uses dmMain, fmGauge;

{$R *.DFM}

procedure TrepImpactSummary.SetQLQryAndTotal(TheQL:TQRLabel; iTotal:integer);
begin
  TheQL.Caption  := QryRep.Fields[0].AsString+'  ( '+
    FloatToStrF((QryRep.Fields[0].AsInteger/iTotal*100),ffFixed,15,2)+
    '% )';
end;

procedure TrepImpactSummary.DoReport;
var
  DoGauge : TfrmGauge;
  TotNoClients, TotNoLoans : integer;
begin
  DoGauge := TfrmGauge.Create(nil);
  DoGauge.SetMaxBound(100);
  QLCpyName.Caption := dtmMain.SysCpyName;
  try
    DoGauge.SetProg(18);
    DoQry('select count(distinct(EntityID)) from lsLoanDetail');
    QLTotNoClient.Caption  := QryRep.Fields[0].AsString;
    TotNoClients := QryRep.Fields[0].AsInteger;
    DoGauge.SetProg(37);
    //Total number of Loans & Total amount of Loans
    DoQry('select count(LoanID), sum(AmtToFin) from lsLoanDetail');
    TotNoLoans := QryRep.Fields[0].AsInteger;
    QLTotNoLoan.Caption  := QryRep.Fields[0].AsString;
    QLTotAmtLoan.Caption := FloatToStrF(QryRep.Fields[1].AsFloat,ffCurrency,
                            15,2);
    DoGauge.SetProg(55);
    //Number loans during last month & Amount Loans last month
    DoQry('select count(LoanID), sum(AmtToFin) from lsLoanDetail'+
         ' where Startdate >= '''+
           FormatDateTime('mm/dd/yyyy',(IncMonth(Date,-1)))+'''');
    SetQLQryAndTotal(QLNoLastMth,TotNoLoans);
    QLAmtLastMth.Caption := FloatToStrF(QryRep.Fields[1].AsFloat,ffCurrency,
                             15,2);
    DoGauge.SetProg(78);
    //Gender of client
    DoQry('select count(EntityID),Gender from lsEntPsnAdd group by Gender');
    if QryRep.Fields[1].AsString = 'F' then // if any females
      SetQLQryAndTotal(QLNoFemale,TotNoClients)
    else
      QLNoFemale.Caption := 'no female';
    QryRep.Next;
    if QryRep.Fields[1].AsString = 'M' then // if any males
      SetQLQryAndTotal(QLNoMale,TotNoClients)
    else
      QLNoMale.Caption := 'no male';
    DoGauge.SetProg(89);
    //Monthly income
    DoQry('select count(EntityID) from lsEntPsnAdd where MthGross<1500');
    SetQLQryAndTotal(QLR1500,TotNoClients);
    DoQry('select count(EntityID) from lsEntPsnAdd where '+
          '(MthGross>=1500) and (MthGross<=2500)');
    SetQLQryAndTotal(QLR1525,TotNoClients);
    DoQry('select count(EntityID) from lsEntPsnAdd where '+
          '(MthGross>=2500) and (MthGross<=3500)');
    SetQLQryAndTotal(QLR2535,TotNoClients);
    DoQry('select count(EntityID) from lsEntPsnAdd where MthGross>3500');
    SetQLQryAndTotal(QLMoreR35,TotNoClients);
    //Memo Loan Use
    DoGauge.SetProg(90);
    DoQry('select ISNULL(RTRIM(CDT.Description),''None'') as Description,'+
     ' count(LDS.LoanID) as cntLoan from lsLoanDetail LDS left JOIN'+
     ' CodeTable CDT ON (LDS.LoanUse=CDT.TypeKey) where LDS.Status in (30,40)'+
     ' group by CDT.Description');
    DoMemos(QRMLoan);
    //Memo Employment
    DoGauge.SetProg(95);
    DoQry('select ISNULL(RTRIM(CDT.Description),''None'') as Description, count(PSN.EntityID) as cntPerson'+
          ' from lsEntPsnAdd PSN left join CodeTable CDT ON (PSN.Employment = CDT.TypeKey)'+
          ' group by CDT.Description');
    DoMemos(QRMEmp);
    QryRep.Close;
    DoGauge.MaxGauge;
  finally
    DoGauge.Free;
  end;
end;

procedure TrepImpactSummary.DoQry(sQryToDo: string);
begin
  QryRep.Close;
  QryRep.CommandText := sQryToDo;
  QryRep.Open;
  QryRep.First;
end;

procedure TrepImpactSummary.DoMemos(TheMemo: TQRMemo);
begin
  TheMemo.Lines.Clear;
  QryRep.First;
  while not QryRep.EOF do begin
     TheMemo.Lines.Add(PadRight(QryRep.Fields[0].AsString,' ',30)+
       PadLeft(QryRep.Fields[1].AsString,' ',6));
     QryRep.Next;
  end; {while}
end;

procedure TrepImpactSummary.FormCreate(Sender: TObject);
begin
  inherited;
  DoReport;
end;

end.
