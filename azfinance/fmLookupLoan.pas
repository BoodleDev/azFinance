unit fmLookupLoan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBStyleGrid, ExtCtrls, Mask, DBCtrls, AutoCursor;

type
  TfrmLookupLoan = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    edtSearch: TEdit;
    cmbSearch: TComboBox;
    Label2: TLabel;
    grdSearch: TDBStyleGrid;
    pnlBottom: TPanel;
    btnCancel: TButton;
    btnOK: TButton;
    tmrSearch: TTimer;
    lblLimit: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdSearchDblClick(Sender: TObject);
    procedure grdSearchDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cmbSearchSelect(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmbSearchClick(Sender: TObject);
  private
    { Private declarations }
    FLoanID: Integer;
    FEntityID: Integer;
    FLoanQuery: TStringList;
    FTelNoQuery: TStringList;
    procedure SetLoanID(const Value: Integer);
    procedure SetEntityID(const Value: Integer);
    procedure ValidateSearch;
  public
    { Public declarations }
    property EntityID: Integer read FEntityID write SetEntityID;
    property LoanID: Integer read FLoanID write SetLoanID;
  end;

var
  frmLookupLoan: TfrmLookupLoan;

implementation

uses dmMain;

{$R *.dfm}

{ TfrmLookupLoan }

procedure TfrmLookupLoan.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
end;

procedure TfrmLookupLoan.btnOKClick(Sender: TObject);
begin
  LoanID := dtmMain.qryLoan.FieldByName('LoanID').AsInteger;
  EntityID := dtmMain.qryLoan.FieldByName('EntityID').AsInteger;
end;

procedure TfrmLookupLoan.tmrSearchTimer(Sender: TObject);
var
  FieldName: String;
  Wildcard: String;
  Csr: IRecall;
  qryText: string;
begin
  tmrSearch.Enabled := False;  //turn off timer
  btnOK.Enabled := false;
  Wildcard := '';              //reset wildcard search symbol

  Case cmbSearch.ItemIndex of
    0: FieldName := 'LD.RefNo';
    1: FieldName := 'ED.EntCode';
    2: FieldName := 'ED.RegNo';
    3: FieldName := 'ED.Name2';
    5: FieldName := 'PD.NotificationId'
//    4: FieldName := 'Coalesce(telno1,telno2,telno3)';
  end;

  dtmMain.qryLoan.Close;
  grdSearch.Columns.BeginUpdate;
  try
        //TelNo and ID No must be at least 6 chars long
        if ((cmbSearch.ItemIndex = 2) or (cmbSearch.ItemIndex = 4)) then
          begin
             if Length(edtSearch.Text) < 6 then exit;
          end
        else        //Surname must be at least 3 chars long...
          if cmbSearch.ItemIndex = 3 then
            begin
              if Length(edtSearch.Text) < 3 then exit;
            end;

      Wildcard := '%';

      Csr := TAutoCursor.Create;
      if cmbSearch.ItemIndex = 4 then
        begin
          qryText := StringReplace(FTelNoQuery.Text, '<TelNo>', edtSearch.Text + Wildcard, [rfReplaceAll]);
          dtmMain.qryLoan.CommandText := qryText;
        end
      else
        begin
          FLoanQuery.Strings[6] := 'WHERE ' + FieldName + ' LIKE ''' + edtSearch.Text + Wildcard + '''';
          dtmMain.qryLoan.CommandText := FLoanQuery.Text;
        end;
      dtmMain.qryLoan.Open;
      lblLimit.Visible := dtmMain.qryLoan.RecordCount = 50;
      btnOK.Enabled := dtmMain.qryLoan.RecordCount > 0;
  finally
    grdSearch.Columns.EndUpdate;
  end;
end;

procedure TfrmLookupLoan.edtSearchChange(Sender: TObject);
begin
  ValidateSearch;
end;

procedure TfrmLookupLoan.ValidateSearch;
begin
  tmrSearch.Enabled := False;
  if Trim(edtSearch.Text) = '' then
    btnOK.Enabled := false
  else
    begin
      tmrSearch.Enabled := True;
    end
end;

procedure TfrmLookupLoan.SetEntityID(const Value: Integer);
begin
  FEntityID := Value;
end;

procedure TfrmLookupLoan.FormShow(Sender: TObject);
begin
  edtSearch.SetFocus;
  edtSearch.SelectAll;
end;

procedure TfrmLookupLoan.grdSearchDblClick(Sender: TObject);
begin
  if btnOK.Enabled then
    btnOK.Click;
end;

procedure TfrmLookupLoan.grdSearchDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Column.FieldName = 'LoanStatus') and (not dtmMain.qryLoan.FieldByName('LoanID').IsNull) then
  begin
    grdSearch.Canvas.FillRect(Rect);
    grdSearch.Canvas.TextOut(Rect.Left + 23, Rect.top + 2, dtmMain.qryLoan.FieldByName('LoanStatus').AsString);
    grdSearch.Canvas.Brush.Color := StringToColor(dtmMain.qryLoan.FieldByName('StatusColor').AsString);
    grdSearch.Canvas.Rectangle( Rect.Left + 5, Rect.Top + 2, Rect.Left + 21, Rect.Top + 14);
  end;
end;

procedure TfrmLookupLoan.FormCreate(Sender: TObject);
begin
  FLoanQuery := TStringList.Create;
  FLoanQuery.Text := 'SELECT TOP 50 LD.LoanID, LD.RefNo AS AccountNo, PD.NotificationId As PurchaseID, ED.RegNo AS IDNumber, ED.Name2 AS Surname,'#13#10
                    +	'ED.EntityID, ED.EntCode AS ClientCode, LD.LoanType, LS.LoanStatus, LS.StatusColor, COALESCE(ED.TelNo1, ED.TelNo2, ED.TelNo3) as TelNo'#13#10
                    + 'FROM lsLoanDetail LD '#13#10
                    + 'LEFT JOIN lsLoanStatus LS ON LD.Status = LS.StatusID'#13#10
                    + 'LEFT JOIN EntityData ED ON LD.EntityID = ED.EntityID'#13#10
                    + 'LEFT JOIN BNPL_PaymentDetail PD ON LD.LoanID = PD.LoanId'#13#10#13#10
                    + 'ORDER BY CASE WHEN LD.Status IN (0, 5, 18, 20) THEN 1 WHEN LS.IsActive = 1 THEN 2 ELSE 3 END, LD.Status, LD.RefNo';

  FTelNoQuery := TStringList.Create;
  FTelNoQuery.Text := 'SELECT TOP 50 LD.LoanID, LD.RefNo AS AccountNo, ED.RegNo AS IDNumber, ED.Name2 AS Surname, ED.EntityID, ED.EntCode AS ClientCode, LD.LoanType, LS.LoanStatus, LS.StatusColor, NULLIF(RTRIM(ED.TelNo1), '''') as Telno, LD.Status, LS.IsActive '#13#10
                    + 'FROM lsLoanDetail LD LEFT JOIN lsLoanStatus LS ON LD.Status = LS.StatusID LEFT JOIN EntityData ED ON LD.EntityID = ED.EntityID WHERE NULLIF(RTRIM(ED.TelNo1), '''') LIKE ''<TelNo>'' '#13#10
                    + 'UNION SELECT TOP 50 LD.LoanID, LD.RefNo AS AccountNo, ED.RegNo AS IDNumber, ED.Name2 AS Surname, ED.EntityID, ED.EntCode AS ClientCode, LD.LoanType, LS.LoanStatus, LS.StatusColor, NULLIF(RTRIM(ED.TelNo2),'''') as Telno, LD.Status, LS.IsActive '#13#10
                    + 'FROM lsLoanDetail LD LEFT JOIN lsLoanStatus LS ON LD.Status = LS.StatusID LEFT JOIN EntityData ED ON LD.EntityID = ED.EntityID WHERE NULLIF(RTRIM(ED.TelNo2), '''') LIKE ''<TelNo>'' '#13#10
                    + 'UNION SELECT TOP 50 LD.LoanID, LD.RefNo AS AccountNo, ED.RegNo AS IDNumber, ED.Name2 AS Surname, ED.EntityID, ED.EntCode AS ClientCode, LD.LoanType, LS.LoanStatus, LS.StatusColor, NULLIF(RTRIM(ED.TelNo3), '''') as Telno, LD.Status, LS.IsActive '#13#10
                    + 'FROM lsLoanDetail LD LEFT JOIN lsLoanStatus LS ON LD.Status = LS.StatusID LEFT JOIN EntityData ED ON LD.EntityID = ED.EntityID WHERE NULLIF(RTRIM(ED.TelNo3), '''') LIKE ''<TelNo>'' '#13#10
                    + 'ORDER BY LD.Status, LD.RefNo, TelNo';
  cmbSearch.ItemIndex := 0;
  ValidateSearch;
end;


procedure TfrmLookupLoan.FormDestroy(Sender: TObject);
begin
  FLoanQuery.Free;
  FTelNoQuery.Free;
end;

procedure TfrmLookupLoan.cmbSearchSelect(Sender: TObject);
begin
  ValidateSearch;
end;

procedure TfrmLookupLoan.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ssCtrl in Shift then
    begin
      if Shift - [ssCtrl] = [] then
      begin
        Case Key of
          VK_UP  :  begin     //Arrow Up
                      if ((dtmMain.qryLoan.RecordCount > 0) and not (dtmMain.qryLoan.Bof)) then
                            dtmMain.qryLoan.Prior;
                    end;
          VK_DOWN:  begin     //Arrow Down
                      if ((dtmMain.qryLoan.RecordCount > 0) and not (dtmMain.qryLoan.Eof)) then
                            dtmMain.qryLoan.Next;
                    end;
        end;
      end
    end
  else
    if ssAlt in Shift then
      begin
        if Shift - [ssAlt] = [] then
        begin
          Case Key of
            VK_UP  :  begin     //Arrow Up
                        if cmbSearch.ItemIndex > 0 then
                        begin
                           cmbSearch.ItemIndex := cmbSearch.ItemIndex - 1;
                           ValidateSearch;
                        end;
                      end;
            VK_DOWN:  begin     //Arrow Down
                        if cmbSearch.ItemIndex < cmbSearch.Items.Count - 1 then
                        begin
                           cmbSearch.ItemIndex := cmbSearch.ItemIndex + 1;
                           ValidateSearch;
                        end;
                      end;
          end;
        end
      end;
end;

procedure TfrmLookupLoan.cmbSearchClick(Sender: TObject);
begin
  ValidateSearch;
end;

end.
