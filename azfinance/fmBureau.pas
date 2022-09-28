unit fmBureau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DBGrdClr, StdCtrls, uBureau;

type
  TfrmBureau = class(TForm)
    GroupBox3: TGroupBox;
    lblEnqStatus: TLabel;
    Label1: TLabel;
    cbxNewEnqType: TComboBox;
    btnPerformEnq: TButton;
    GroupBox2: TGroupBox;
    Label23: TLabel;
    cbxHistEnqType: TComboBox;
    grdEnqHistory: TDBGrid;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPerformEnqClick(Sender: TObject);
    procedure cbxHistEnqTypeChange(Sender: TObject);
    procedure grdEnqHistoryDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdEnqHistoryDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    FEntityID: Integer;
    procedure SetEntityID(const Value: Integer);
    procedure ShowResultOptions(QueryType: Integer);
    { Private declarations }
  public
    { Public declarations }
    property EntityID: Integer read FEntityID write SetEntityID;
  end;

var
  frmBureau: TfrmBureau;

implementation

uses dmBureau, fmResultOptions;

{$R *.dfm}

procedure TfrmBureau.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmBureau.FormCreate(Sender: TObject);
begin
  dtmBureau := TdtmBureau.Create(Self);
  dtmBureau.qrySetBureau.Open;
  csServer := dtmBureau.qrySetBureau.FieldByName('Server').AsString;
  csUsername := dtmBureau.qrySetBureau.FieldByName('Username').AsString;
  csPassword := dtmBureau.qrySetBureau.FieldByName('Password').AsString;
  csBranchID := dtmBureau.qrySetBureau.FieldByName('BranchID').AsString;
  csResultPath := dtmBureau.qrySetBureau.FieldByName('ResultPath').AsString;
  dtmBureau.qrySetBureau.Close;
  UpdateCSLoginInfo(csResultPath, csUsername, csPassword, csBranchID, csServer);
  cbxNewEnqType.ItemIndex := 0;
  cbxHistEnqType.ItemIndex := 0;
end;

procedure TfrmBureau.FormDestroy(Sender: TObject);
begin
  dtmBureau.qryEntity.Close;
  dtmBureau.qryEnqHistory.Close;
  FreeAndNil(dtmBureau);
end;

procedure TfrmBureau.btnPerformEnqClick(Sender: TObject);
Var
  EnqStatus : Integer;
  Filename : TSearchRec;
  Directory: String;

//  HtmlFile: TextFile;
  S: String;
//  Page: String;

  procedure MoveHtmlFile(sFile: String);
  var
    OldFile, NewFile: TextFile;
  begin
    try
      AssignFile(OldFile, Directory + '\Inbox\' + sFile);
      AssignFile(NewFile, Directory + '\Archives\' + FormatDateTime('ddmmyyyy', Date) + '_' + sFile);
      Reset(OldFile);
      Rewrite(NewFile);
      While not Eof(OldFile) do
      begin
        Readln(OldFile, S);
        Writeln(NewFile,StringReplace(s,'/images/','../inbox/images/',[rfReplaceAll,rfIgnoreCase]));
      end;
    finally
      CloseFile(OldFile);
      CloseFile(NewFile);
    end;
  end;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    btnPerformEnq.Enabled := False;
    lblEnqStatus.Caption := 'Performing enquiry...';
    Directory := csResultPath;

    if not DirectoryExists(Directory + '\Inbox') then
      CreateDirectory(PCHAR(Directory + '\Inbox'),NIL);
    if not DirectoryExists(Directory + '\Archives') then
      CreateDirectory(PCHAR(Directory + '\Archives'),NIL);

    Application.ProcessMessages;
    EnqStatus := CSSendCurrent(
      csUsername,
      csPassword,
      PCHAR(dtmBureau.qryEntity.FieldByName('RegNo').AsString),
      PCHAR(dtmBureau.qryEntity.FieldByName('Name').AsString),
      PCHAR(dtmBureau.qryEntity.FieldByName('Name2').AsString),
      Directory + '\Inbox','XHML', cbxNewEnqType.ItemIndex + 1,1,'');

    if EnqStatus >= 0 then
    begin
      dtmBureau.UpdateEnqHistory(EnqStatus, cbxNewEnqType.ItemIndex + 1);

      dtmBureau.qryEnqHistory.Requery;
      if FindFirst(Directory + '\Inbox\Enq_' + dtmBureau.qryEntity.FieldByName('RegNo').AsString
           + '*.HTML',FaAnyfile, Filename) = 0 then
      begin
        MoveHtmlFile(Filename.Name);
        {RenameFile(Directory + '\Inbox\' + Filename.Name, Directory +
          '\Archives\' + FormatDateTime('ddmmyyyy', Date) + '_' + Filename.Name);}
      end;

      while FindNext(Filename) = 0 do
      begin
        MoveHtmlFile(Filename.Name);
        {RenameFile(Directory + '\Inbox\' + Filename.Name, Directory +
          '\Archives\' + FormatDateTime('ddmmyyyy', Date) + '_' + Filename.Name);}
      end;

    {  if DirectoryExists(Directory + '\Inbox\Images') then
      begin
        if not (DirectoryExists(Directory + '\Archives\Images')) then
          CreateDir(Directory + '\Archives\Images');
        if FindFirst(Directory + '\Inbox\Images\*.gif', faAnyFile, Filename) = 0 then
          RenameFile(Directory + '\Inbox\Images\' + Filename.Name, Directory + '\Archives\Images\' + Filename.Name);
        while FindNext(Filename) = 0 do
          RenameFile(Directory + '\Inbox\Images\' + Filename.Name, Directory + '\Archives\Images\' + Filename.Name);
        RemoveDir(Directory + '\Inbox\Images')
      end;    }


      if cbxNewEnqType.ItemIndex in [1,3,5,6] then
      begin
        dtmBureau.ProcessEnquiryRefNo;
      end
        //dtmBureau.UpdateNlrEnqRefNo;
    end
    else
      MessageDlg('Error ' + IntToStr(EnqStatus) + #10#13 + GetErrorMsg(EnqStatus), mtError, [mbOK], 0);
  finally
    lblEnqStatus.Caption := '';
    Screen.Cursor := crDefault;
    btnPerformEnq.Enabled := True;
  end;

end;

procedure TfrmBureau.SetEntityID(const Value: Integer);
begin
  FEntityID := Value;
  dtmBureau.qryEntity.Close;
  dtmBureau.qryEntity.Parameters[0].Value := Value;
  dtmBureau.qryEntity.Open;

  dtmBureau.qryEnqHistory.Close;
  dtmBureau.qryEnqHistory.Parameters[0].Value := Value;
  dtmBureau.qryEnqHistory.Open;
  Self.Caption := 'Bureau - ' + dtmBureau.qryEntity.FieldByName('EntCode').AsString;
end;

procedure TfrmBureau.cbxHistEnqTypeChange(Sender: TObject);
begin
  if cbxHistEnqType.ItemIndex = 0 then
    dtmBureau.qryEnqHistory.Filtered := False
  else
  begin
    dtmBureau.qryEnqHistory.Filtered := True;
    dtmBureau.qryEnqHistory.Filter := 'EnqType = ' + IntToStr(cbxHistEnqType.ItemIndex);
  end;
end;

procedure TfrmBureau.grdEnqHistoryDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'EnqType' then
  begin
    grdEnqHistory.Canvas.FillRect(Rect);
    Case dtmBureau.qryEnqHistory.FieldByName('EnqType').AsInteger of
      1 : grdEnqHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Compuscan');
      2 : grdEnqHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'NLR');
      3 : grdEnqHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Experian');
      4 : grdEnqHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Compuscan/NLR');
      5 : grdEnqHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Compuscan/Experian');
      6 : grdEnqHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'NLR/Experian');
      7 : grdEnqHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Compuscan/NLR/Experian');
    end;
  end;

  if Column.FieldName = 'Status' then
  begin
    if (dtmBureau.qryEnqHistory.FieldByName('Status').AsInteger = 0)and
       (dtmBureau.qryEnqHistory.FieldByName('EntityID').AsString <> '') then
    begin
      grdEnqHistory.Canvas.FillRect(Rect);
      grdEnqHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Success');
    end
    else
    if dtmBureau.qryEnqHistory.FieldByName('Status').AsInteger < 0 then
    begin
      grdEnqHistory.Canvas.FillRect(Rect);
      grdEnqHistory.Canvas.TextOut(Rect.Left + 2, rect.Top + 2, 'Error');

    end;    
  end;
end;

procedure TfrmBureau.grdEnqHistoryDblClick(Sender: TObject);
var
  QueryMask : String;
begin
  inherited;
  QueryMask := '';
  case dtmBureau.qryEnqHistory.FieldByName('EnqType').AsInteger of
    CCEnq        : QueryMask := 'CC';
    NLREnq       : QueryMask := 'NLR';
    ExperianEnq  : QueryMask := 'CON';
    CSNLREnq     : ShowResultOptions(CSNLREnq);
    CSExperianEnq : ShowResultOptions(CSExperianEnq);
    NLRExperian  : ShowResultOptions(NLRExperian);
    CSNLRExpEnq  : ShowResultOptions(CSNLRExpEnq);
  end;
  if QueryMask <> '' then
    OpenEnqResult(dtmBureau.qryEntity.FieldByName('RegNo').Asstring,
      dtmBureau.qryEntity.FieldByName('EntCode').Asstring,QueryMask,
    FormatDateTime('ddmmyyyy', dtmBureau.qryEnqHistory.fieldbyname('EnqDate').AsDateTime),
      dtmBureau.qryEnqHistory.FieldByName('TransNo').AsInteger,
      dtmBureau.qryEnqHistory.FieldByName('LoanID').AsInteger);
end;

procedure TfrmBureau.ShowResultOptions(QueryType: Integer);
var
  frmResultOptions : TfrmResultOptions;
begin
  frmResultOptions := TfrmResultOptions.Create(self);
  try
    Case QueryType of
      CSNLREnq     : begin
                       frmResultOptions.cbxCS.Enabled := True;
                       frmResultOptions.cbxNLR.Enabled := True;
                       frmResultOptions.cbxSumm.Enabled := True;
                     end;
      CSExperianEnq :begin
                       frmResultOptions.cbxCS.Enabled := True;
                       frmResultOptions.cbxExperian.Enabled := True;
                       frmResultOptions.cbxSumm.Enabled := True;
                     end;
      NLRExperian :  begin
                       frmResultOptions.cbxNLR.Enabled := True;
                       frmResultOptions.cbxExperian.Enabled := True;
                       frmResultOptions.cbxSumm.Enabled := True;
                     end;
      CSNLRExpEnq :  begin
                       frmResultOptions.cbxCS.Enabled := True;
                       frmResultOptions.cbxNLR.Enabled := True;
                       frmResultOptions.cbxExperian.Enabled := True;
                       frmResultOptions.cbxSumm.Enabled := True;
                     end;
    end;
    frmResultOptions.Showmodal;
  finally
    frmResultOptions.Free;
  end;
end;

procedure TfrmBureau.FormResize(Sender: TObject);
begin
  grdEnqHistory.Columns[1].Width :=
    grdEnqHistory.ClientWidth -
    grdEnqHistory.Columns[0].Width -
    grdEnqHistory.Columns[2].Width -
    grdEnqHistory.Columns[3].Width -
    IndicatorWidth - 5;
end;

end.
