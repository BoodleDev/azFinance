unit rptLoanView;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rptBasePort, QuickRpt, Qrctrls, ExtCtrls, DB;

type
  TrepLoanView = class(TrepBasePort)
    qlClientC: TQRLabel;
    qlSandN: TQRLabel;
    qlLoanC: TQRLabel;
    qlLoanT: TQRLabel;
    qdbtPsnKey: TQRDBText;
    qdbtSurname: TQRDBText;
    qdbtLC: TQRDBText;
    qdbtLT: TQRDBText;
    qdbtFld3: TQRDBText;
    qdbtFld4: TQRDBText;
    qdbtFld6: TQRDBText;
    qdbtFld5: TQRDBText;
    qdbtFld1: TQRDBText;
    qdbtFld2: TQRDBText;
    QRExpr16: TQRExpr;
    qrexp1: TQRExpr;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    qlFld1: TQRLabel;
    qlFld2: TQRLabel;
    qlFld3: TQRLabel;
    qlFld4: TQRLabel;
    qlFld5: TQRLabel;
    qlFld6: TQRLabel;
    qrexp2: TQRExpr;
    qrexp3: TQRExpr;
    qrexp4: TQRExpr;
    qrexp5: TQRExpr;
    qrexp6: TQRExpr;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SetFldLabel(RepFldInd, FldInd: integer);
    procedure SetupReport;
  public
    { Public declarations }
  end;

implementation

uses dmLoanMan, uLSConst;

{$R *.DFM}

{ TrepLoanView }

procedure TrepLoanView.FormCreate(Sender: TObject);
begin
  inherited;
  SetupReport;
end;

procedure TrepLoanView.SetupReport;
var
  i : integer;
  CurArray : Array [1..6] of integer;
begin
  for i := 1 to 6 do
    CurArray[i] := 0;
  if dtmLoanMan.CurLoanView = LMInfoView then
  begin
    CurArray[1]:=4;CurArray[2]:=5;CurArray[3]:=6;
    CurArray[4]:=7;CurArray[5]:=8;//CurArray[6]:=17;
    qlRepName.Caption := 'Loan Information View';
  end;
  if dtmLoanMan.CurLoanView = LMBalView then
  begin
    CurArray[1]:=9;CurArray[2]:=10;CurArray[3]:=11;
    CurArray[4]:=12;CurArray[5]:=18;//CurArray[6]:=17;
    qlRepName.Caption := 'Loan Balance View';
  end;
  if dtmLoanMan.CurLoanView = LMAgeView then
  begin
    CurArray[1]:=10;CurArray[2]:=14;CurArray[3]:=15;
    CurArray[4]:=16;CurArray[5]:=18;//CurArray[6]:=17;
    qlRepName.Caption := 'Loan Age View';
  end;
  for i := 1 to 5 do
  begin
    begin
      SetFldLabel(i,CurArray[i]);
    end;
  end;
end;

procedure TrepLoanView.SetFldLabel(RepFldInd,FldInd: integer);
var
  FldName, FldDisplay : string;
  SumFld : boolean;
begin
  FldName    := dtmLoanMan.qryLoanView.Fields[FldInd].FieldName;
  FldDisplay := dtmLoanMan.qryLoanView.Fields[FldInd].DisplayName;
  SumFld     := False;
  if (dtmLoanMan.qryLoanView.Fields[FldInd] is TBCDField) then
    SumFld := (dtmLoanMan.qryLoanView.Fields[FldInd] as TBCDField).currency;
  case RepFldInd of
    1: begin
         qlFld1.Caption      := FldDisplay;
         qdbtFld1.DataField  := FldName;
         if SumFld then
           qrexp1.Expression := 'sum('+FldName+')';
       end;
    2: begin
         qlFld2.Caption      := FldDisplay;
         qdbtFld2.DataField  := FldName;
         if SumFld then
           qrexp2.Expression := 'sum('+FldName+')';
       end;
    3: begin
         qlFld3.Caption      := FldDisplay;
         qdbtFld3.DataField  := FldName;
         if SumFld then
           qrexp3.Expression := 'sum('+FldName+')';
       end;
    4: begin
         qlFld4.Caption      := FldDisplay;
         qdbtFld4.DataField  := FldName;
         if SumFld then
           qrexp4.Expression := 'sum('+FldName+')';
       end;
    5: begin
         qlFld5.Caption      := FldDisplay;
         qdbtFld5.DataField  := FldName;
         if SumFld then
           qrexp5.Expression := 'sum('+FldName+')';
       end;
    6: begin
         qlFld6.Caption      := FldDisplay;
         qdbtFld6.DataField  := FldName;
         if SumFld then
           qrexp6.Expression := 'sum('+FldName+')';
       end;
    end; {case}
end;

end.
