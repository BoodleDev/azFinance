unit fmRepFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Buttons, ExtCtrls, StdCtrls, CheckLst, DB, Unit32, NoEdit,
  Menus;

type
  TfrmRepFilter = class(TForm)
    pnlLDSc: TPanel;
    pnlBtn: TPanel;
    pnl6: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    pnl8: TPanel;
    pnlLDS: TPanel;
    cbxArrPrd: TComboBox;
    cbxArrAmt: TComboBox;
    edtarrAmt: TNoEdit;
    edtArrPrd: TNoEdit;
    pnlLSt: TPanel;
    clbStatus: TCheckListBox;
    Label2: TLabel;
    pnl7: TPanel;
    lblL1: TLabel;
    cbxLink1: TComboBox;
    cbxLink2: TComboBox;
    btnL1: TButton;
    lblL1s: TLabel;
    Label3: TLabel;
    btnL2: TButton;
    lblL2: TLabel;
    lblInd1: TLabel;
    btnInd1: TButton;
    lblInd2: TLabel;
    btnInd2: TButton;
    pnlArrc: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    pnlLc: TPanel;
    pnlIndc: TPanel;
    lblLnInd: TLabel;
    lblEnInd: TLabel;
    pnlFil: TPanel;
    pnl3: TPanel;
    pnl5: TPanel;
    Label6: TLabel;
    cbxDate: TComboBox;
    pnlStartDate: TPanel;
    lbldFrom: TLabel;
    lbldTo: TLabel;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    pnl4: TPanel;
    pnl2: TPanel;
    pnl1: TPanel;
    Label5: TLabel;
    cbxBal: TComboBox;
    cbxBalOp: TComboBox;
    cbxRprd: TComboBox;
    edtLT: TEdit;
    edtCode: TEdit;
    Panel6: TPanel;
    ckbFilter: TCheckListBox;
    Label11: TLabel;
    Label12: TLabel;
    lblLT: TLabel;
    lblCode: TLabel;
    ckbPrev: TCheckListBox;
    bvl1: TBevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    edtBalV: TNoEdit;
    edtRPrd: TNoEdit;
    lblActInd: TLabel;
    btnActInd: TButton;
    lblActionInd: TLabel;
    pnlClientStatus: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    CheckListBox1: TCheckListBox;
    ppmMain: TPopupMenu;
    Selectall1: TMenuItem;
    Deselectall1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbxDateChange(Sender: TObject);
    procedure cbxLink1Change(Sender: TObject);
    procedure ckbFilterClickCheck(Sender: TObject);
    procedure btnInd1Click(Sender: TObject);
    procedure btnL1Click(Sender: TObject);
    procedure btnL2Click(Sender: TObject);
    procedure btnInd2Click(Sender: TObject);
    procedure btnActIndClick(Sender: TObject);
    procedure clbStatusClickCheck(Sender: TObject);
    procedure Selectall1Click(Sender: TObject);
  private
    { Private declarations }
    FCurFldList: TFieldList;
    lstFlds : TStringList;
    lstLinkCode : TStringList;
    FCurFilter: string;
    FDisplayFilter: TStringList;
    Ind1 : integer;
    Ind2 : integer;
    ActInd : Integer;
    Link1: integer;
    Link2: integer;
    FSQLfilter: boolean;
    FORStatus: boolean;
    function AddLoanStatus: string;
    function AddCodeOrLT(fldName,lblCap,edtVal:string):string;
    function AddRemPrd:string;
    function AddBalances:string;
    function AddDates:string;
    function AddInd(ind :integer; fldName,lblCap,lblVal: string):string;
    function AddLink(Link:integer; selItem,lblVal: string):string;
    function AddArrearsAmount:string;
    function AddArrearsPeriod:string;
    function GetORStatusFilter(inFilter: string):string;
    procedure SetBuildFilter(const Value: string);
    procedure LoadLinkList;
    procedure LoadFldList;
    procedure SetPanelStatus(pnlToSet :TPanel);
    procedure SetCodeTblItem(GrpKey:integer; var IntToSet:integer;
      lblToSet :TLabel; fldName:string);
    procedure SetEntLUitem(var IntToSet:integer; lblToSet :TLabel; cbxVal:string);
  public
    { Public declarations }
    property SQLfilter: boolean read FSQLfilter write FSQLfilter;
    property CurFilter: string read FCurFilter;
    property DisplayFilter: TStringList read FDisplayFilter;
    property CurFldList : TFieldList read FCurFldList write FCurFldList;
    property ORStatus : boolean read FORStatus write FORStatus;
  end;

implementation

uses dmMain, uConst, uLSConst, uBase32;

{$R *.DFM}

procedure TfrmRepFilter.FormCreate(Sender: TObject);
begin
  Self.Height := 220;
  SQLfilter := True;
  ORStatus  := False;
  lstFlds := TStringList.Create;
  lstLinkCode := TStringList.Create;
  FDisplayFilter := TStringList.Create;
  LoadFldList;
  clbStatus.Checked[3] := True;
  clbStatus.Checked[4] := True;
  //
  Ind1 := -1;
  Ind2 := -1;
  ActInd := -1;
  Link1 := -1;
  Link2 := -1;
  //
  cbxArrAmt.ItemIndex := 0;
  cbxArrPrd.ItemIndex := 0;
end;

procedure TfrmRepFilter.FormShow(Sender: TObject);
begin
  Self.Color := dtmMain.ScrPnlColor;
  pnlLDSc.Color := dtmMain.RecBarColor;
  pnlIndc.Color := pnlLDSc.Color;
  pnlLc.Color := pnlLDSc.Color;
  pnlArrc.Color := pnlLDSc.Color;
  pnl1.Color := Self.Color;
  pnl2.Color := pnl1.Color; pnl3.Color := pnl1.Color;
  pnl4.Color := pnl1.Color;pnl5.Color := pnl1.Color;
  pnl6.Color := pnl1.Color;pnl7.Color := pnl1.Color;
  pnl8.Color := pnl1.Color;
  //
  dtpFrom.Date := Date;
  dtpTo.Date   := Date;
  //
  LoadLinkList;
end;

procedure TfrmRepFilter.FormDestroy(Sender: TObject);
begin
// free Stringlists ?
end;

function TfrmRepFilter.AddLoanStatus: string;
var
 i, j : integer;
 strCheck : string[50];
 dpFilter : string;
begin
  dpFilter := '';
  strCheck := 'Status in (';
  j := 0;
  for i := 0 to clbStatus.Items.Count-1 do
  begin
    if clbStatus.Checked[i] then // Check for ticked status
    begin
       case i of
         0  : strCheck := strCheck + ',20';
         1  : strCheck := strCheck + ',25';
         2  : strCheck := strCheck + ',40';
         3  : strCheck := strCheck + ',15';
         4  : strCheck := strCheck + ',70';
         5  : strCheck := strCheck + ',10';
         6  : strCheck := strCheck + ',60';
         7  : strCheck := strCheck + ',28';
         8  : strCheck := strCheck + ',0';
         9  : strCheck := strCheck + ',68';
         10 : strCheck := strCheck + ',30';
         11 : strCheck := strCheck + ',18';
         12 : strCheck := strCheck + ',50';
         13 : strCheck := strCheck + ',65';
       end ;
      j := j + 1;
      // Add selected items for display filter
      dpFilter := dpFilter +', '+clbStatus.Items[i];
    end
    else
      j := j - 1;
  end;
  if char(strCheck[12]) = ',' then // Delete first comma if exists
    Delete(strCheck,12,1);
  strCheck := strCheck + ')';
  Result := strCheck;
  if (j = -13) or (j = 13) then  // if none OR all were checked - NO filter
    Result := ''
  else
  begin
    if ORStatus then
      Result := GetORStatusFilter(Result);
    Delete(dpFilter,1,1);            // 0,10,30,40,60
    FDisplayFilter.Add('Status in ('+dpFilter+')');
  end;
end;

procedure TfrmRepFilter.SetBuildFilter(const Value: string);
begin
  if Value <> '' then
  begin
    if FCurFilter <> '' then
      FCurFilter := FCurFilter + ' and '+ Value
    else
      FCurFilter := Value;
  end;
end;

procedure TfrmRepFilter.btnOKClick(Sender: TObject);
begin
  FCurFilter := '';
  FDisplayFilter.Clear;
  SetBuildFilter(AddLoanStatus);
  if ckbFilter.Checked[0] then // Ent code
    SetBuildFilter(AddCodeOrLT('EntCode',lblCode.Caption,edtCode.Text));
  if ckbFilter.Checked[1] then // Loan types
    SetBuildFilter(AddCodeOrLT('LoanType',lblLT.Caption,edtLT.Text));
  if ckbFilter.Checked[2] then // Remaining term
    SetBuildFilter(AddRemPrd);
  if ckbFilter.Checked[3] then // Balances
    SetBuildFilter(AddBalances);
  if ckbFilter.Checked[4] then  // Dates
    SetBuildFilter(AddDates);
  if ckbFilter.Checked[5] then // Indicators
  begin
    SetBuildFilter(AddInd(Ind1,'LoanTypeInd',lblLnInd.Caption,lblInd1.Caption));
    SetBuildFilter(AddInd(Ind2,'LoanInd',lblEnInd.Caption,lblInd2.Caption));
    SetBuildFilter(AddInd(ActInd,'ActionInd',lblActInd.Caption,lblActionInd.Caption));
  end;
  if ckbFilter.Checked[6] then // LU entity links
  begin
    SetBuildFilter(AddLink(Link1,cbxLink1.Text,lblL1.Caption));
    SetBuildFilter(AddLink(Link2,cbxLink2.Text,lblL2.Caption));
  end;
  if ckbFilter.Checked[7] then // Arrears amts
  begin
    SetBuildFilter(AddArrearsAmount);
    SetBuildFilter(AddArrearsPeriod);
  end;
// Test actual filter
//  FDisplayFilter.Clear;
//  FDisplayFilter.Add(FCurFilter);
end;

procedure TfrmRepFilter.LoadLinkList;
begin
  lstLinkCode.Clear;
  cbxLink1.Items.Clear;
  // Add Description into Combo
  cbxLink1.Items.Add(Copy(fflAttorney,1,Pos('=',fflAttorney)-1));
  // Add to lst ComboItem=Value in code table
  lstLinkCode.Add(Copy(fflAttorney,1,Pos('=',fflAttorney))+IntToStr(lsAttorney));
  cbxLink1.Items.Add(Copy(fflBranch,1,Pos('=',fflBranch)-1));
  lstLinkCode.Add(Copy(fflBranch,1,Pos('=',fflBranch))+IntToStr(lsBranch));
  cbxLink1.Items.Add(Copy(fflDebtC,1,Pos('=',fflDebtC)-1));
  lstLinkCode.Add(Copy(fflDebtC,1,Pos('=',fflDebtC))+IntToStr(lsDebtCol));
  cbxLink1.Items.Add(Copy(fflEmployer,1,Pos('=',fflEmployer)-1));
  lstLinkCode.Add(Copy(fflEmployer,1,Pos('=',fflEmployer))+IntToStr(lsEmployer));
  cbxLink1.Items.Add(Copy(fflFunder,1,Pos('=',fflFunder)-1));
  lstLinkCode.Add(Copy(fflFunder,1,Pos('=',fflFunder))+IntToStr(lsFunder));
  cbxLink1.Items.Add(Copy(fflLOfficer,1,Pos('=',fflLOfficer)-1));
  lstLinkCode.Add(Copy(fflLOfficer,1,Pos('=',fflLOfficer))+IntToStr(lsLO));
  cbxLink1.Items.Add(Copy(fflStaffM,1,Pos('=',fflStaffM)-1));
  lstLinkCode.Add(Copy(fflStaffM,1,Pos('=',fflStaffM))+IntToStr(lsStaffMem));
  //
  cbxLink1.Items.Insert(0,' none');
  cbxLink2.Items := cbxLink1.Items;
  cbxLink1.ItemIndex := 0;
  cbxLink2.ItemIndex := 0;
end;

procedure TfrmRepFilter.LoadFldList;
begin
  lstFlds.Clear;
  lstFlds.Sorted := True;
  lstFlds.Add( fflAttorney );
  lstFlds.Add( fflBranch   );
  lstFlds.Add( fflDebtC    );
  lstFlds.Add( fflEmployer );
  lstFlds.Add( fflFunder   );
  lstFlds.Add( fflLOfficer );
  lstFlds.Add( fflStaffM   );
  lstFlds.Add( fflLoanBal  );
  lstFlds.Add( fflAccount  );
  lstFlds.Add( fflAvlBal   );
  lstFlds.Add( fflDepBal   );
  lstFlds.Add( fflStartD   );
  lstFlds.Add( fflFirstI   );
end;

procedure TfrmRepFilter.cbxDateChange(Sender: TObject);
begin
  cbxLink1Change(Sender);
  pnlStartDate.Visible := cbxDate.ItemIndex <> 0;
end;

procedure TfrmRepFilter.cbxLink1Change(Sender: TObject);
begin
  if TComboBox(Sender).ItemIndex <> 0 then
  begin
    if CurFldList.IndexOf(lstFlds.Values[TComboBox(Sender).Text]) = -1 then
    begin
      MesDlg('Selection not available in data.','E');
      TComboBox(Sender).ItemIndex := 0;
    end;
  end;
end;

procedure TfrmRepFilter.SetPanelStatus(pnlToSet :TPanel);
begin
  pnlToSet.Visible := not pnlToSet.Visible;
  pnlBtn.Align := alBottom;
  pnlBtn.Align := alTop;
  if Self.Top + Self.Height > Screen.Height then
    Self.Top := (Screen.Height - Self.Height) div 2;
end;

procedure TfrmRepFilter.ckbFilterClickCheck(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to 7 do
  begin
    if ckbPrev.State[i] <> ckbFilter.State[i] then
    begin
      case i of
        0 : SetPanelStatus(pnl1);
        1 : SetPanelStatus(pnl2);
        2 : begin // remain prd.
              if (CurFldList.IndexOf('LoanPeriod') <> -1) and
                (CurFldList.IndexOf('NoOfPay') <> -1) then
                SetPanelStatus(pnl3)
              else
                MesDlg('Selection not availible in data.','E');
            end;
        3 : SetPanelStatus(pnl4);
        4 : SetPanelStatus(pnl5);
        5 : SetPanelStatus(pnl6);
        6 : SetPanelStatus(pnl7);
        7 : SetPanelStatus(pnl8);
      end;
      Self.Realign;
      ckbPrev.State[i] := ckbFilter.State[i];
    end;
  end;
end;

function TfrmRepFilter.AddCodeOrLT(fldName, lblCap, edtVal: string): string;
begin
  if Trim(edtVal) <> '' then
  begin
    if SQLfilter then
      Result := fldName+' like '''+edtVal+'%'''
    else
      Result := fldName+' = '''+edtVal+'*''';
    FDisplayFilter.Add(lblCap+' = '+edtVal+' %');
  end
  else
    Result := '';
end;

function TfrmRepFilter.AddRemPrd: string;
begin
  Result := '(LoanPeriod-NoOfPay)'+cbxRprd.Text+edtRPrd.Text;
  FDisplayFilter.Add('Remaining term '+cbxRprd.Text+' '+edtRPrd.Text);
end;

function TfrmRepFilter.AddBalances: string;
begin
  if cbxBal.ItemIndex <> 0 then
  begin
    Result := lstFlds.Values[cbxBal.Text]+cbxBalOp.Text+edtBalV.Text;
    FDisplayFilter.Add(cbxBal.Text+' '+cbxBalOp.Text+' '+edtBalV.Text);
  end
  else
    Result := '';
end;

function TfrmRepFilter.AddDates: string;
begin
  if cbxDate.ItemIndex <> 0 then
  begin
    Result := lstFlds.Values[cbxDate.Text]+' >= '''+
        FormatDateTime('dd/mm/yyyy',dtpFrom.Date)+''' and '+
      lstFlds.Values[cbxDate.Text]+' <='''+
        FormatDateTime('dd/mm/yyyy',dtpTo.Date)+'''';
    FDisplayFilter.Add(cbxDate.Text+' >= '+DateToStr(dtpFrom.Date)+' and '+
      cbxDate.Text+' <= '+DateToStr(dtpTo.Date));
  end
  else
    Result := '';
end;

procedure TfrmRepFilter.SetCodeTblItem(GrpKey:integer; var IntToSet:integer;
  lblToSet: TLabel; fldName:string);
begin
  IntToSet := -1;
  lblToSet.Caption := 'none';
  if CurFldList.IndexOf(fldName) <> -1 then
  begin
    IntToSet := dtmMain.GetLUCode(GrpKey);
    if IntToSet > 0 then
    begin
      RunQry(dtmMain.qryToUse,'select Description from CodeTable '+
        'where TypeKey='+IntToStr(IntToSet),'O');
      lblToSet.Caption := Trim(dtmMain.qryToUse.Fields[0].AsString);
    end;
  end
  else
    MesDlg('Selection not available in data','E');
end;

procedure TfrmRepFilter.btnInd1Click(Sender: TObject);
begin
  SetCodeTblItem(indLoan,Ind1,lblInd1,'LoanTypeInd');
end;

procedure TfrmRepFilter.btnInd2Click(Sender: TObject);
begin
  SetCodeTblItem(indEntity,Ind2,lblInd2,'LoanInd');
end;

procedure TfrmRepFilter.btnActIndClick(Sender: TObject);
begin
   SetCodeTblItem(indAction,ActInd,lblActionInd,'ActionInd');
end;

function TfrmRepFilter.AddInd(ind: integer; fldName, lblCap,
  lblVal: string): string;
begin
  if ind > 0 then
  begin
    Result := fldName+'='+IntToStr(ind);
    FDisplayFilter.Add(lblCap+' = '+lblVal);
  end
  else
    Result := '';
end;

procedure TfrmRepFilter.SetEntLUitem(var IntToSet: integer;
  lblToSet: TLabel; cbxVal: string);
begin
  IntToSet := dtmMain.GetLUEntityID(lstLinkCode.Values[cbxVal]);
  if IntToSet <= 0 then
    lblToSet.Caption := 'none'
  else
  begin
    RunQry(dtmMain.qryToUse,'select EntCode,EntType,Name,Name2 from EntityData '+
      'where EntityID='+IntToStr(IntToSet),'O');
    lblToSet.Caption := Trim(dtmMain.qryToUse.Fields[0].AsString)+' - '+
       Trim(dtmMain.qryToUse.Fields[2].AsString);
    if dtmMain.qryToUse.FieldByName('EntType').AsInteger = PSNtype then
      lblToSet.Caption := lblToSet.Caption+', '+Trim(dtmMain.qryToUse.Fields[3].AsString);
  end;
end;

procedure TfrmRepFilter.btnL1Click(Sender: TObject);
begin
  SetEntLUitem(Link1,lblL1,cbxLink1.Text);
end;

procedure TfrmRepFilter.btnL2Click(Sender: TObject);
begin
  SetEntLUitem(Link2,lblL2,cbxLink2.Text);
end;

function TfrmRepFilter.AddLink(Link: integer; selItem, lblVal: string): string;
begin
  if Link > 0 then
  begin
    Result := lstFlds.Values[selItem]+'='+IntToStr(Link);
    FDisplayFilter.Add(selItem+' = '+lblVal);
  end
  else
    Result := '';
end;

function TfrmRepFilter.AddArrearsAmount: string;
begin
  if cbxArrAmt.ItemIndex <> 0 then
  begin
    Result := 'ArrearsAmt'+cbxArrAmt.Text+Trim(edtArrAmt.Text);
    FDisplayFilter.Add('Arrears amount '+cbxArrAmt.Text+Trim(edtArrAmt.Text));
  end
  else
    Result := '';
end;

function TfrmRepFilter.AddArrearsPeriod: string;
begin
  if cbxArrPrd.ItemIndex <> 0 then
  begin
    Result := 'ArrearsNo'+cbxArrPrd.Text+Trim(edtArrPrd.Text);
    FDisplayFilter.Add('Arrears period '+cbxArrPrd.Text+Trim(edtArrPrd.Text));
  end
  else
    Result := '';
end;

function TfrmRepFilter.GetORStatusFilter(inFilter: string): string;
var
  tmpLst : string;
begin
//  '0,10,30,40,60'
  Result := '';
  tmpLst := inFilter;
  Delete(tmpLst,1,Pos('(',tmpLst));
  Delete(tmpLst,Length(tmpLst),1);
  while Length(tmpLst) > 0 do
  begin
    Result := Result+ ' OR Status='+Copy(tmpLst,1,Pos(',',tmpLst)-1);
    if Pos(',',tmpLst) = 0 then
    begin
      Result := Result+tmpLst;
      tmpLst := '';
    end
    else
      Delete(tmpLst,1,Pos(',',tmpLst));
  end;
  Delete(Result,1,4);
  Result := '('+Result+')';
end;



procedure TfrmRepFilter.clbStatusClickCheck(Sender: TObject);
var
  I: Integer;
begin
  if clbStatus.Checked[2] then
    for I := 0 to clbStatus.Items.Count - 1 do
    begin
      if I <> 2 then
        clbStatus.Checked[I] := False;
    end;
end;

procedure TfrmRepFilter.Selectall1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to TCheckListBox(Sender).Items.Count - 1 do
  begin
    TCheckListBox(Sender).Checked[I] := True;
  end;
end;

end.

