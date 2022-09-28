unit fmLoanStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls;

type
  TfrmLoanStatus = class(TForm)
    lstLoanStatus: TListBox;
    btnCancel: TButton;
    btnSelect: TButton;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    lstInvalid: TListBox;
    Label2: TLabel;
    procedure lstLoanStatusDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lstInvalidEnter(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure lstLoanStatusDblClick(Sender: TObject);
  private
    StatusList: TStringList;
    FNewStatus: Integer;
    FLoanID: Integer;
    function CanChangeStatus(Status: Integer): Boolean;
    procedure SetNewStatus(const Value: Integer);
    procedure SetLoanID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    HandedOver: Boolean;
    Judgement: Boolean;
    IsBadDebt: Boolean;
    LoanStatus: Integer;
    property NewStatus: Integer read FNewStatus write SetNewStatus;
    property LoanID: Integer read FLoanID write SetLoanID;
  end;

var
  frmLoanStatus: TfrmLoanStatus;

implementation

uses uLSconst, uLScentral, dmLoanStatus;

{$R *.dfm}

procedure TfrmLoanStatus.lstLoanStatusDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
{  lstLoanStatus.Canvas.FillRect(Rect);

  if not(odComboboxEdit in State) then
  begin
    if CanChangeStatus(
      StrToInt(lstLoanStatus.Items.Values[lstLoanStatus.Items.Names[Index]])) then
        lstLoanStatus.Canvas.Font.Color := clBlack
    else
      lstLoanStatus.Canvas.Font.Color := clGray;
  end;

  lstLoanStatus.Canvas.TextOut(Rect.Left + 2, Rect.Top + 1, lstLoanStatus.Items.Names[Index]);   }
end;

function TfrmLoanStatus.CanChangeStatus(Status: Integer): Boolean;
begin
  case LoanStatus of
    lnsReview:  begin
                  with dtmLoanStatus do
                  begin
                    cmdReviewLastStatus.Parameters.ParamByName('LoanID').Value := LoanID;
                    cmdReviewLastStatus.Execute;

                    Result := (Status in [10,15,0]) or
                      (Status = cmdReviewLastStatus.Parameters.ParamByName('LastStatus').Value);
                  end;
                end;
    lnsInActive,
    lnsDeclined,
    lnsCancelled,
    lnsPreapproved: Result := (Status < 18) and not(Status = LoanStatus);

    lnsApproved,
    lnsActPay,
    lnsActImex:     if (Status in [lnsCancelled,lnsApproved,lnsActPay,lnsActImex]) and not(Status = LoanStatus) then
                      Result := True
                    else
                      Result := False;

    lnsOpen,
    lnsFrozen,
    lnsZero,
    lnsNoDebits:    if (Status >= 30) and not(Status = lnsSettle) and not(Status = LoanStatus) then
                      Result := True
                    else
                      Result := False;

    lnsSettle:      Result := False;
    lnsClose:       begin
                      {if Judgement then
                        Result := Status = lnsHandover
                      else}
                        Result := (Status = lnsOpen) or (Status = lnsHandover);
                    end;
    lnsBadDebt:     if (Status >= 30) and not (Status = lnsSettle) and not(Status = LoanStatus) then
                      Result := not IsBadDebt
                    else
                      Result := False;
    lnsHandover:    begin
                      if Status in [lnsOpen,lnsFrozen,lnsZero,lnsNoDebits] then
                          Result := not HandedOver
                      else
                        Result := Status in [lnsClose,lnsBadDebt];
                      {if Judgement then
                        Result := Status  in [lnsBadDebt,lnsClose]
                      else
                      begin
                        if Status in [lnsOpen,lnsFrozen,lnsZero,lnsNoDebits,lnsBadDebt] then
                          Result := not HandedOver
                        else
                          Result := False;
                      end;}
                    end
    else
      Result := False;
  end;
end;

procedure TfrmLoanStatus.FormCreate(Sender: TObject);
begin
  dtmLoanStatus := TdtmLoanStatus.Create(Self);
  StatusList := TStringList.Create;
  BuildLoanStatusList(StatusList);
end;

procedure TfrmLoanStatus.FormDestroy(Sender: TObject);
begin
  FreeAndNil(StatusList);
  FreeAndNil(dtmLoanStatus);
end;

procedure TfrmLoanStatus.FormShow(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to StatusList.Count - 1 do
    if CanChangeStatus(StrToInt(StatusList.Values[StatusList.Names[I]])) then
      lstLoanStatus.Items.Add(StatusList.Names[I])
    else
      lstInvalid.Items.Add(StatusList.Names[I]);

  btnSelect.Enabled := lstLoanStatus.Items.Count > 0;
end;

procedure TfrmLoanStatus.lstInvalidEnter(Sender: TObject);
begin
  lstLoanStatus.SetFocus;
end;

procedure TfrmLoanStatus.btnSelectClick(Sender: TObject);
begin
  if lstLoanStatus.ItemIndex > -1 then
  if MessageDlg('Are you sure you want to change the loan''s status?',
    mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    NewStatus := StrToInt(StatusList.Values[lstLoanStatus.Items.Strings[lstLoanStatus.ItemIndex]]);
    ModalResult := mrOK;
  end;
end;

procedure TfrmLoanStatus.SetNewStatus(const Value: Integer);
begin
  FNewStatus := Value;
end;

procedure TfrmLoanStatus.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
  with dtmLoanStatus do
  begin
    qryLegalStatus.Parameters[0].Value := LoanID;
    qryLegalStatus.Open;
    HandedOver := qryLegalStatus.FieldByName('HandedOver').AsBoolean;
    Judgement := qryLegalStatus.FieldByName('Judgement').AsBoolean;
    qryLegalStatus.Close;

    qryIsBadDebt.Parameters[0].Value := LoanID;
    qryIsBadDebt.Open;
    IsBadDebt := qryIsBadDebt.Fields[0].AsInteger > 0;
    qryIsBadDebt.Close;
  end;
end;

procedure TfrmLoanStatus.lstLoanStatusDblClick(Sender: TObject);
begin
  if btnSelect.Enabled then
    btnSelect.Click;
end;

end.
