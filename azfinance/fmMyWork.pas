unit fmMyWork;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, DBStyleGrid, ComCtrls, Mask,
  DBCtrls, ExtCtrls, StrUtils, ImgList, ToolWin, Unit32, uNoteSys;

type
  TfrmMyWork = class(TForm)
    tmrWork: TTimer;
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    tmrNotify: TTimer;
    pcMyWork: TPageControl;
    tsWorkflow: TTabSheet;
    tsRequests: TTabSheet;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnFind: TToolButton;
    btnNotifications: TToolButton;
    btnClose: TToolButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    imgNew: TImage;
    imgSelected: TImage;
    edtLoanRef: TEdit;
    btnMarkComplete: TBitBtn;
    btnGoToLoan: TBitBtn;
    btnRedirect: TBitBtn;
    tcProcesses: TTabControl;
    grdMyWork: TDBStyleGrid;
    edtLoanID: TDBEdit;
    rdtNotes: TRichEdit;
    pnlNotesHeader: TPanel;
    btnAddRequest: TBitBtn;
    pcRequests: TPageControl;
    tsCurrentRequests: TTabSheet;
    tsCompleteRequests: TTabSheet;
    grdCurrentRequests: TDBGrid;
    grdCompleteRequests: TDBGrid;
    edtRequestID: TDBEdit;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    btnReadRequests: TToolButton;
    imgAccept: TImage;
    imgReject: TImage;
    rdtRequestNotes: TRichEdit;
    Panel3: TPanel;
    lblRequestNotes: TLabel;
    Splitter1: TSplitter;
    clbRequestNotes: TCoolBar;
    ToolBar11: TToolBar;
    btnNewRequestNote: TToolButton;
    btnEditRequestNote: TToolButton;
    CheckBox1: TCheckBox;
    CoolBar3: TCoolBar;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    CheckBox2: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure grdMyWorkDblClick(Sender: TObject);
    procedure edtLoanIDChange(Sender: TObject);
    procedure btnGoToLoanClick(Sender: TObject);
    procedure grdMyWorkDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tcProcessesChange(Sender: TObject);
    procedure tmrWorkTimer(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnNotificationsClick(Sender: TObject);
    procedure btnMarkCompleteClick(Sender: TObject);
    procedure tmrNotifyTimer(Sender: TObject);
    procedure btnRedirectClick(Sender: TObject);
    procedure btnAddRequestClick(Sender: TObject);
    procedure tsRequestsShow(Sender: TObject);
    procedure pcRequestsChange(Sender: TObject);
    procedure grdCompleteRequestsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnReadRequestsClick(Sender: TObject);
    procedure edtRequestIDChange(Sender: TObject);
    procedure btnNewRequestNoteClick(Sender: TObject);
    procedure btnEditRequestNoteClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    CurrentTime: TDateTime;
    FWorkLoanID: Integer;
    FAllowSelect: Boolean;
    procedure SetWorkLoanID(const Value: Integer);
    procedure SetAllowSelect(const Value: Boolean);
    procedure SetNotifications(Active: Boolean);
    { Private declarations }
  public
    { Public declarations }
    property AllowSelect: Boolean read FAllowSelect write SetAllowSelect;
    property WorkLoanID: Integer read FWorkLoanID write SetWorkLoanID;
  end;

var
  frmMyWork: TfrmMyWork;

implementation

uses dmMain, DB, DateUtils, fmMyWorkNotify, dmWorkFlow, fmWorkMove,
  fmWorkAddRequest;

{$R *.dfm}

procedure TfrmMyWork.FormShow(Sender: TObject);
begin

  CurrentTime := Now;
  WorkLoanID := CurrentLoanID;
  tcProcessesChange(nil);
  SetNotifications(True);
  StatusBar1.Panels[0].Text := 'My Work (' + IntToStr(dtmMain.qryWorkLU.RecordCount) + ')';
end;

procedure TfrmMyWork.grdMyWorkDblClick(Sender: TObject);
begin
  if AllowSelect then
    if MessageDlg('Work on Loan Ref ' +
      dtmMain.qryWorkLU.FieldByName('RefNo').AsString + '?', mtConfirmation,
      [mbYes,mbNo], 0) = mrYes then
      WorkLoanID := dtmMain.qryWorkLU.FieldByName('LoanID').AsInteger;
end;

procedure TfrmMyWork.SetWorkLoanID(const Value: Integer);
begin
  FWorkLoanID := Value;

  try
    Screen.Cursor := crHourGlass;

    if dtmMain.qryWorkLU.Locate('LoanID', WorkLoanID, []) then
    begin
      edtLoanRef.Text := dtmMain.qryWorkLU.FieldByName('CurrentLoan').AsString;
      edtLoanRef.Color := clWindow;

      btnMarkComplete.Enabled := True;
      btnRedirect.Enabled := True;
      btnAddRequest.Enabled := True;
      btnClose.Tag := 1;

      dtmWorkFlow.cmdUpdateLastWorked.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
      dtmWorkFlow.cmdUpdateLastWorked.Parameters.ParamByName('AccountID').Value := WorkLoanID;
      dtmWorkFlow.cmdUpdateLastWorked.Parameters.ParamByName('WorkflowID').Value := dtmMain.qryWorkLU.FieldByName('WorkflowID').AsInteger;
      dtmWorkFlow.cmdUpdateLastWorked.Execute;
    end
    else
    begin
      edtLoanRef.Color := clBtnFace;
      edtLoanRef.Clear;
      btnMarkComplete.Enabled := False;
      btnRedirect.Enabled := False;
      btnAddRequest.Enabled := False;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMyWork.edtLoanIDChange(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;

    btnGoToLoan.Enabled := dtmMain.qryWorkLU.FieldByName('LoanID').AsInteger <> WorkLoanID;
    btnMarkComplete.Enabled := not btnGoToLoan.Enabled;
    btnRedirect.Enabled := not btnGoToLoan.Enabled;
    btnAddRequest.Enabled := not btnGoToLoan.Enabled;

    if WorkLoanID = 0 then
    begin
      btnGoToLoan.Enabled := False;
      btnMarkComplete.Enabled := False;
      btnRedirect.Enabled := False;
      btnAddRequest.Enabled := False;
    end;

    btnNotifications.Enabled := dtmMain.qryWorkLU.FieldByName('Notifications').AsInteger > 0;

    if dtmMain.qryWorkLU.FieldByName('LoanID').IsNull then
    begin
      rdtNotes.Clear;
      pnlNotesHeader.Caption := ' Notes (0)';
    end
    else
    begin
      uNoteSys.Tablename := 'lsLoanDetail';
      uNoteSys.UserID := dtmMain.CurrentID;
      uNoteSys.KeyValue := dtmMain.qryWorkLU.FieldByName('LoanID').AsString;
      uNoteSys.Connection := dtmMain.dbData;
      uNoteSys.Categories := '0,110004012,110004013,110004014,110004015,110004016,110004017,110004019';
      uNoteSys.RichEdit := rdtNotes;
      DisplayLoanNotes(False);
      pnlNotesHeader.Caption := ' Notes (' + IntToStr(NoteCount) + ')';
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMyWork.btnGoToLoanClick(Sender: TObject);
begin
  //dtmMain.qryWorkLU.Locate('LoanID', , []);
end;

procedure TfrmMyWork.grdMyWorkDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Days: Integer;
  Hours: Integer;
  Minutes: Integer;
  Duration: String;
begin
  if not dtmMain.qryWorkLU.FieldByName('LoanID').IsNull then
    if dtmMain.qryWorkLU.FieldByName('LoanID').AsInteger = WorkLoanID then
    begin
      if not (gdSelected in State) then
      begin
        grdMyWork.Canvas.Brush.Color := $00CEFF9D;
        grdMyWork.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;

      if DataCol = 0 then
        grdMyWork.Canvas.Draw(Rect.Left + 2, Rect.Top + 1, imgSelected.Picture.Graphic);
    end;

  if (Column.FieldName = 'NewDocument') or (Column.FieldName = 'NewNote') or (Column.FieldName = 'NewAHV') then
  begin
    grdMyWork.Canvas.FillRect(Rect);
    if dtmMain.qryWorkLU.FieldByName(Column.FieldName).AsInteger > 0 then
      grdMyWork.Canvas.Draw(Rect.Left + ((Rect.Right - Rect.Left) - 16) div 2, Rect.Top, imgNew.Picture.Graphic);
  end;

  if Column.FieldName = 'OrderDate' then
  if not dtmMain.qryWorkLU.FieldByName('LoanID').IsNull then
  begin
    Days := DaysBetween(dtmMain.qryWorkLU.FieldByName('StartDate').AsDateTime, CurrentTime);
    Hours := HoursBetween(dtmMain.qryWorkLU.FieldByName('StartDate').AsDateTime, CurrentTime);
    Minutes := MinutesBetween(dtmMain.qryWorkLU.FieldByName('StartDate').AsDateTime, CurrentTime);
    Hours := Hours - (Days * 24);
    Minutes := Minutes - ((Days * 24 * 60) + (Hours * 60));

    if Days > 0 then
      Duration := IntToStr(Days) + ' days';
    if (Hours > 0) or (Days > 0) then
      Duration := IfThen(Duration = '', '', Duration + ', ') + IntToStr(Hours) + ' hours';

    Duration := IfThen(Duration = '', '', Duration + ', ') + IntToStr(Minutes) + ' mins';

    if grdMyWork.Focused and (gdSelected in State) then
    begin
      grdMyWork.Canvas.Brush.Color := clHighlight;
      grdMyWork.Canvas.Font.Color := clHighlightText;
    end;

    grdMyWork.Canvas.FillRect(Rect);
    grdMyWork.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, Duration);
  end;
end;

procedure TfrmMyWork.FormCreate(Sender: TObject);
begin
  RequeryOnRecord(dtmMain.qryWorkLU,'LoanID');
  
  pcMyWork.ActivePage := tsWorkflow;

  dtmWorkFlow := TdtmWorkFlow.Create(Self);
  AllowSelect := True;
  dtmMain.qryLastWork.Parameters[0].Value := dtmMain.CurrentID;
  dtmMain.qryLastWork.Open;
  
  tcProcesses.Tabs.Clear;
  dtmMain.dsWorkProcess.Close;
  dtmMain.dsWorkProcess.Parameters[0].Value := dtmMain.CurrentID;
  dtmMain.dsWorkProcess.Open;
  while not dtmMain.dsWorkProcess.Eof do
  begin
    tcProcesses.Tabs.Add(dtmMain.dsWorkProcess.FieldByName('Description').AsString +
      ' (' + dtmMain.dsWorkProcess.FieldByName('NoLoans').AsString + ')');
    dtmMain.dsWorkProcess.Next;
  end;
end;

procedure TfrmMyWork.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmMain.qryLastWork.Close;
  dtmMain.dsWorkProcess.Close;
  dtmWorkFlow.dsRequests.Close;
  SetNotifications(False);
  FreeAndNil(dtmWorkFlow);
end;

procedure TfrmMyWork.tcProcessesChange(Sender: TObject);
begin
  dtmMain.dsWorkProcess.RecNo := tcProcesses.TabIndex + 1;
  if tcProcesses.TabIndex = 0 then
  begin
    dtmMain.qryWorkLU.Filtered := False;
    grdMyWork.Columns[3].Visible := True;
    grdMyWork.Columns[4].Visible := False;
  end
  else
  begin
    dtmMain.qryWorkLU.Filter := 'ProcessID = ' + dtmMain.dsWorkProcess.FieldByName('ProcessID').AsString;
    dtmMain.qryWorkLU.Filtered := True;
    
    grdMyWork.Columns[3].Visible := False;
    grdMyWork.Columns[4].Visible := True;
  end;
end;

procedure TfrmMyWork.tmrWorkTimer(Sender: TObject);
var
  TabIndex: Integer;
begin
  tmrWork.Enabled := False;
  CurrentTime := Now;
  dtmMain.qryNewWork.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
  dtmMain.qryNewWork.Parameters.ParamByName('LastDate').Value := dtmMain.qryLastWork.Fields[0].AsDateTime;
  dtmMain.qryNewWork.Open;
  if dtmMain.qryNewWork.Fields[0].AsInteger > 0 then
  begin
    MessageDlg(dtmMain.qryNewWork.Fields[0].AsString + ' new loans received',
      mtInformation, [mbOK], 0);

    dtmMain.dsWorkProcess.Requery;
    dtmMain.qryWorkLU.Requery;
    TabIndex := tcProcesses.TabIndex;
    tcProcesses.Tabs.Clear;
    while not dtmMain.dsWorkProcess.Eof do
    begin
      tcProcesses.Tabs.Add(dtmMain.dsWorkProcess.FieldByName('Description').AsString +
        ' (' + dtmMain.dsWorkProcess.FieldByName('NoLoans').AsString + ')');
      dtmMain.dsWorkProcess.Next;
    end;
    tcProcesses.TabIndex := TabIndex;
    tcProcessesChange(nil);
  end;
  StatusBar1.Panels[0].Text := 'My Work (' + IntToStr(dtmMain.qryWorkLU.RecordCount) + ')';

  tmrWork.Enabled := True;
end;

procedure TfrmMyWork.SetAllowSelect(const Value: Boolean);
begin
  FAllowSelect := Value;
end;

procedure TfrmMyWork.btnFindClick(Sender: TObject);
var
  Find: String;
  FindID: Integer;
  ProcessID: Integer;
begin
  //WorkLoanID
  if Sender = btnFind then
  begin
    FindID := 0;
    if not InputQuery('Find', 'Find Loan Ref.', Find) then
      Abort;
  end
  else
    FindID := WorkLoanID;

  with dtmMain do
  begin
    cmdFindWork.Parameters.ParamByName('InLoanID').Value := FindID;
    cmdFindWork.Parameters.ParamByName('LoanRef').Value := Find;
    cmdFindWork.Parameters.ParamByName('UserID').Value := CurrentID;
    cmdFindWork.Execute;
    ProcessID := cmdFindWork.Parameters.ParamByName('ProcessID').Value;
    if ProcessID = 0 then
      MessageDlg('Loan Ref. ' + Find + ' not found', mtError, [mbOK], 0)
    else
    begin
      dtmMain.dsWorkProcess.Locate('ProcessID', ProcessID, []);
      {if tcProcesses.TabIndex > 0 then
      begin  }
        tcProcesses.TabIndex := dtmMain.dsWorkProcess.RecNo -1 ;
        tcProcessesChange(nil);
      //end;
      dtmMain.qryWorkLU.Locate('LoanID', cmdFindWork.Parameters.ParamByName('LoanID').Value,[]);
    end;
  end;
end;

procedure TfrmMyWork.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMyWork.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if btnClose.Tag = 1 then
    Self.ModalResult := mrOK;
end;

procedure TfrmMyWork.btnNotificationsClick(Sender: TObject);
begin
  frmMyWorkNotify := TfrmMyWorkNotify.Create(Self);
  try
    dtmMain.dsWorkNotify.Close;
    dtmMain.dsWorkNotify.Parameters[0].Value := dtmMain.qryWorkLU.FieldByName('RecordID').AsInteger;
    dtmMain.dsWorkNotify.Open;
    if frmMyWorkNotify.ShowModal = mrOK then
    begin
      try
        Screen.Cursor := crHourGlass;
        RequeryOnRecord(dtmMain.qryWorkLU, 'RecordID');
      finally
        Screen.Cursor := crDefault;
      end;
    end;
    SetNotifications(True);
  finally
    FreeAndNil(frmMyWorkNotify);
    dtmMain.dsWorkNotify.Close;
  end;
end;

procedure TfrmMyWork.SetNotifications(Active: Boolean);
//var
  //Notify: String;
begin
  (*dtmMain.dsWorkNotify.Close;
  if Active then
  begin
    dtmMain.dsWorkNotify.Parameters[0].Value := dtmMain.CurrentID;
    dtmMain.dsWorkNotify.Open;

    Notify := 'Notifications (' + IntToStr(dtmMain.dsWorkNotify.RecordCount) + ')';
    btnNotifications.Caption := Notify;
    StatusBar1.Panels[1].Text := Notify;
  end;*)
end;

procedure TfrmMyWork.btnMarkCompleteClick(Sender: TObject);
var
  Validation: String;
begin
    with dtmWorkFlow do
    begin
      dsMarkComplete.Parameters.ParamByName('LoanID').Value := dtmMain.qryWorkLU.FieldByName('LoanID').AsInteger;
      dsMarkComplete.Parameters.ParamByName('ProcessID').Value := dtmMain.qryWorkLU.FieldByName('ProcessID').AsInteger;
      dsMarkComplete.Open;
      if dsMarkComplete.RecordCount > 0 then
      begin
        Validation := 'Cannot complete process due to the following errors:' + #13#10;
        while not dsMarkComplete.Eof do
        begin
          Validation := Validation + #13#10 + '   - ' + dsMarkComplete.FieldByName('Mesg').AsString;
           dsMarkComplete.Next;
        end;
        MessageDlg(Validation, mtError, [mbOK],0);
      end
      else if MessageDlg('Are you sure you want to mark Loan Ref. ' +
        dtmMain.qryWorkLU.FieldByName('RefNo').AsString +
        ' as complete?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      begin
        cmdCompleteWork.Parameters.ParamByName('RecordID').Value := dtmMain.qryWorkLU.FieldByName('RecordID').AsInteger;
        cmdCompleteWork.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
        cmdCompleteWork.Execute;
        RequeryOnRecord(dtmMain.qryWorkLU, 'RecordID');
      end;
      dsMarkComplete.Close;
    end;
end;

procedure TfrmMyWork.tmrNotifyTimer(Sender: TObject);
begin
  SetNotifications(True);
end;

procedure TfrmMyWork.btnRedirectClick(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    dtmWorkFlow.dsRedirectProcess.Close;
    dtmWorkFlow.dsRedirectProcess.Parameters.ParamByName('ProcessID').Value :=
      dtmMain.qryWorkLU.FieldByName('ProcessID').AsInteger;
    dtmWorkFlow.dsRedirectProcess.Open;

    frmWorkMove := TfrmWorkMove.Create(Self);

    frmWorkMove.edtAccountNo.Text := dtmMain.qryWorkLU.FieldByName('RefNo').AsString;
    frmWorkMove.edtCurrentProcess.Text := dtmMain.qryWorkLU.FieldByName('Description').AsString;

    if frmWorkMove.ShowModal = mrOK then
    begin
      dtmWorkFlow.cmdMoveProcess.Parameters.ParamByName('AccountID').Value := dtmMain.qryWorkLU.FieldByName('LoanID').AsInteger;
      dtmWorkFlow.cmdMoveProcess.Parameters.ParamByName('ProcessID').Value := dtmWorkFlow.dsRedirectProcess.FieldByName('ProcessID').AsInteger;
      dtmWorkFlow.cmdMoveProcess.Execute;
      RequeryOnRecord(dtmMain.qryWorkLU, 'RecordID');
    end;
  finally
    FreeAndNil(frmWorkMove);
    dtmWorkFlow.dsRedirectProcess.Close;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMyWork.btnAddRequestClick(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;

    frmWorkAddRequest := TfrmWorkAddRequest.Create(Self);
    frmWorkAddRequest.AccountID := dtmMain.qryWorkLU.FieldByName('LoanID').AsInteger;
    frmWorkAddRequest.AccountNo := dtmMain.qryWorkLU.FieldByName('RefNo').AsString;

    if frmWorkAddRequest.ShowModal = mrOK then
      MessageDlg('Request has been successfully added', mtInformation, [mbOK], 0);
  finally
    FreeAndNil(frmWorkAddRequest);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMyWork.tsRequestsShow(Sender: TObject);
begin
  pcRequestsChange(Self);
end;

procedure TfrmMyWork.pcRequestsChange(Sender: TObject);
begin
  if dtmWorkFlow.dsRequests.Active then
    RequeryOnRecord(dtmWorkFlow.dsRequests, 'RequestID')
  else
  begin
    pcRequests.ActivePage := tsCurrentRequests;
    dtmWorkFlow.dsRequests.Parameters[0].Value := dtmMain.UserKey;
    dtmWorkFlow.dsRequests.Open;
  end;

  dtmWorkFlow.dsRequests.Filtered := True;
  if pcRequests.ActivePage = tsCurrentRequests then
    dtmWorkFlow.dsRequests.Filter := 'Processed = 0'
  else
    dtmWorkFlow.dsRequests.Filter := 'Processed = 1';

  clbRequestNotes.Visible := pcRequests.ActivePage = tsCurrentRequests;
end;

procedure TfrmMyWork.grdCompleteRequestsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bmp: TBitmap;
begin
  if DataCol = 0 then
    if not dtmWorkFlow.dsRequests.FieldByName('ProcessTypeID').IsNull then
    begin
      if dtmWorkFlow.dsRequests.FieldByName('ProcessTypeID').AsInteger = 1 then
        bmp := imgAccept.Picture.Bitmap
      else
        bmp := imgReject.Picture.Bitmap;

      grdCompleteRequests.Canvas.Draw(Rect.Left + 2, Rect.Top + 2, bmp);
    end;
end;

procedure TfrmMyWork.btnReadRequestsClick(Sender: TObject);
var
  I: Integer;
begin
  if MessageDlg('Are you sure you want to mark the selected requests as read?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    try
      Screen.Cursor := crHourGlass;
      if grdCompleteRequests.SelectedRows.Count >= 1 then
      begin
        for I := 0 to grdCompleteRequests.SelectedRows.Count - 1 do
        begin
          dtmWorkFlow.dsRequests.GotoBookmark(Pointer(grdCompleteRequests.SelectedRows.Items[I]));
          dtmWorkFlow.dsRequests.Edit;
          dtmWorkFlow.dsRequests.FieldByName('ProcessNotified').AsBoolean := True;
          dtmWorkFlow.dsRequests.Post;
        end;

        RequeryOnRecord(dtmWorkFlow.dsRequests, 'RequestID');
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmMyWork.edtRequestIDChange(Sender: TObject);
begin
  uNoteSys.Tablename := 'WFL_RequestNote';
  uNoteSys.UserID := dtmMain.CurrentID;
  uNoteSys.KeyValue := dtmWorkFlow.dsRequests.FieldByName('RequestID').AsString;
  uNoteSys.Connection := dtmMain.dbData;
  uNoteSys.Categories := '0';
  uNoteSys.RichEdit := rdtRequestNotes;
  DisplayNotes(False);
  lblRequestNotes.Caption := ' Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmMyWork.btnNewRequestNoteClick(Sender: TObject);
begin
  NewNote(0, 'Request - ' + dtmWorkFlow.dsRequests.FieldByName('RequestType').AsString + ':' + #13#10);
  lblRequestNotes.Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmMyWork.btnEditRequestNoteClick(Sender: TObject);
begin
  EditNote(0);
end;

procedure TfrmMyWork.ToolButton1Click(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to cancel this request?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dtmWorkFlow.dsRequests.Edit;
    dtmWorkFlow.dsRequests.FieldByName('ProcessTypeID').AsInteger := 3;
    dtmWorkFlow.dsRequests.Post;

    RequeryOnRecord(dtmWorkFlow.dsRequests, 'RequestID' );
  end;
end;

end.
