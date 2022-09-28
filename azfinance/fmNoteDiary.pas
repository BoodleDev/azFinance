unit fmNoteDiary;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ToolWin, ComCtrls, ExtCtrls, StdCtrls, DBCtrls, Grids,
  DBGrids;

type
  TfrmNoteDiary = class(TfrmBase)
    btnGet: TToolButton;
    pnlMain: TPanel;
    grdNoteDet: TDBGrid;
    memNote: TDBMemo;
    lblNoteDet: TLabel;
    pnlTop: TPanel;
    Label1: TLabel;
    dtpDueFrom: TDateTimePicker;
    Label2: TLabel;
    lblUserID: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cbxUserList: TComboBox;
    Label3: TLabel;
    Label6: TLabel;
    ckbAllNotes: TCheckBox;
    lblNoPend: TLabel;
    splNote: TSplitter;
    dtpDueTo: TDateTimePicker;
    Label7: TLabel;
    Label8: TLabel;
    imgRed: TImage;
    imgGreen: TImage;
    Bevel1: TBevel;
    cbAnyNote: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxUserListChange(Sender: TObject);
    procedure ckbAllNotesClick(Sender: TObject);
    procedure btnGetClick(Sender: TObject);
    procedure dtpDueFromChange(Sender: TObject);
  private
    { Private declarations }
    ConditionStr : string;
    procedure LoadUserList;
    procedure SetRobot(inStop : boolean);
    procedure BuildConditionAndRunQry;
    procedure SetCondStr(inStr:string);
  public
    { Public declarations }
  end;

implementation

uses dmNtsRE, dmMain;

{$R *.DFM}

procedure TfrmNoteDiary.FormCreate(Sender: TObject);
begin
  inherited;
  dtmNtsRE := TdtmNtsRE.Create(self);
end;

procedure TfrmNoteDiary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmNtsRE.Free;
  dtmNtsRE := nil;
end;

procedure TfrmNoteDiary.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors(grdNoteDet);
  splNote.Color := dtmMain.RecBarColor;
  imgGreen.Left := imgRed.Left;
  dtpDueFrom.Date := Date;
  dtpDueTo.Date   := Date;
  LoadUserList;
  BuildConditionAndRunQry;
  ckbAllNotes.OnClick(nil);
end;

procedure TfrmNoteDiary.SetRobot(inStop: boolean);
begin
  imgRed.Visible := inStop;
  imgGreen.Visible := not imgRed.Visible;
  if inStop then
    dtmNtsRE.qryGetNotes.Close;
end;

procedure TfrmNoteDiary.LoadUserList;
var
 i : integer;
 CurLogin : string;
begin
  cbxUserList.Items.Clear;
  for i := 0 to dtmNtsRE.UserList.Count-1 do
  begin
    cbxUserList.Items.Add(dtmNtsRE.UserList.Names[i]);
    if dtmNtsRE.UserList.Values[dtmNtsRE.UserList.Names[i]] = dtmMain.CurrentID then
      CurLogin := dtmNtsRE.UserList.Names[i];
  end;
  cbxUserList.ItemIndex := cbxUserList.Items.IndexOf(CurLogin);
  cbxUserListChange(nil);
end;

procedure TfrmNoteDiary.cbxUserListChange(Sender: TObject);
begin
  inherited;
  lblUserID.Caption := dtmNtsRE.UserList.Values[cbxUserList.Text];
  lblNoPend.Caption := IntToStr(dtmNtsRE.GetNoOfReminders(lblUserID.Caption));
  lblNoPend.Transparent := lblNoPend.Caption = '0';
  SetRobot(True);
end;

{All pending notes
All pending notes > this date
Pending for this date}
procedure TfrmNoteDiary.ckbAllNotesClick(Sender: TObject);
begin
  inherited;
  dtpDueFrom.Enabled := not ckbAllNotes.Checked;
  dtpDueTo.Enabled := not ckbAllNotes.Checked;
  SetRobot(True);
end;

procedure TfrmNoteDiary.dtpDueFromChange(Sender: TObject);
begin
  inherited;
  SetRobot(True);
end;

procedure TfrmNoteDiary.SetCondStr(inStr: string);
begin
  if ConditionStr='' then
    ConditionStr := 'where '
  else
    ConditionStr := ConditionStr + 'and ';
  ConditionStr := ConditionStr + inStr+' ';
end;

procedure TfrmNoteDiary.BuildConditionAndRunQry;
begin
  ConditionStr := '';
  if lblUserID.Caption <> '' then
    SetCondStr('NTS.UserID='''+lblUserID.Caption+'''');
  if not ckbAllNotes.Checked then
  begin
    SetCondStr('NTS.DueDate between '''+FormatDateTime('mm/dd/yyyy',dtpDueFrom.Date)+
     ''' and '''+FormatDateTime('mm/dd/yyyy',dtpDueTo.Date)+'''');

  end;
  if not cbAnyNote.Checked then
  SetCondStr('NTS.Status=1');
  dtmNtsRE.RunNotesQry(ConditionStr);
  SetRobot(False);
end;

procedure TfrmNoteDiary.btnGetClick(Sender: TObject);
begin
  inherited;
  BuildConditionAndRunQry;
end;

end.
