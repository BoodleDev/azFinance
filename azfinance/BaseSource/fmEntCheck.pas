unit fmEntCheck;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, DBGrdClr,
  dmEntCheck, Unit32;

type
  TfrmEntCheck = class(TfrmBase)
    grdSearch: TDBGrdClr;
    Label4: TLabel;
    pnlTop: TPanel;
    lblRegNo: TLabel;
    lblName: TLabel;
    edtRegNo: TEdit;
    edtName: TEdit;
    pnlSname: TPanel;
    lblName2: TLabel;
    edtName2: TEdit;
    btnCheck: TToolButton;
    btnSel: TToolButton;
    btnNew: TToolButton;
    StatusBar1: TStatusBar;
    imgPerson: TImage;
    imgCompany: TImage;
    pnlEntType: TPanel;
    lblEntType: TLabel;
    cmbEntType: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure btnSelClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure cmbEntTypeChange(Sender: TObject);
    procedure cmbEntTypeDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
    { Private declarations }
    dtmData : TdtmEntCheck;
    FEntType: integer;
    FChosenID: integer;
    procedure SetEntType(const Value: integer);
  public
    { Public declarations }
    property EntType   : integer read FEntType write SetEntType;
    property ChosenID : integer read FChosenID;
    procedure DoEntityCheck(EntityType: Integer; Exclusive: Boolean);
  end;

implementation

uses dmMain, dmEntity;

{$R *.DFM}

{ TfrmEntCheck }

procedure TfrmEntCheck.FormCreate(Sender: TObject);
begin
  inherited;
  dtmData := TdtmEntCheck.Create(Self);
  dtmMain.SetGrdColors([grdSearch]);
  FChosenID := -1;
  Self.ModalResult := mrNone;
  btnSel.Enabled   := False;
  //cmbEntType.ItemIndex := EntType -1;
end;

procedure TfrmEntCheck.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmData.Free;
  dtmData := nil;
end;

procedure TfrmEntCheck.DoEntityCheck(EntityType: Integer; Exclusive: Boolean);
begin
  EntType := EntityType;
  cmbEntType.ItemIndex := EntType -1;
  if Exclusive then
    pnlEntType.Hide;
  Self.ShowModal;
end;

procedure TfrmEntCheck.SetEntType(const Value: integer);
begin
  FEntType := Value;
  dtmData.EntType := EntType;
  if EntType = 1 then
  begin
    lblRegNo.Caption := 'ID No.';
    lblName2.Caption := 'Surname';
  end
  else
  begin
    lblRegNo.Caption := 'Registration No.';
    lblName2.Caption := 'Contact';
  end;
  //pnlSname.Visible := EntType = 1;
  {if EntType = 1 then
    Self.Width := 619
  else
    Self.Width := 464;}
end;

procedure TfrmEntCheck.btnCheckClick(Sender: TObject);
begin
  inherited;
   if EntType = 1 then // 1=PSNtype
  begin
    if not IsNoMod10(Trim(edtRegNo.Text)) then
      MesDlg('Id number is not valid','W');
  end;
  if (Trim(edtRegNo.Text)='') and (Trim(edtName.Text)='') and
    (Trim(edtName2.Text)='') then
    MesDlg('At least one of the available criteria must be completed','E')
  else
  begin
    dtmData.GetPosMatches(Trim(edtRegNo.Text),Trim(edtName.Text),Trim(edtName2.Text));
    btnSel.Enabled := dtmData.qrySearch.RecordCount > 0;
    if dtmData.qrySearch.RecordCount = 0 then
      MesDlg('No match found, press "New" to create client','I');
  end;
end;

procedure TfrmEntCheck.btnSelClick(Sender: TObject);
begin
  inherited;
  if Trim(dtmData.qrySearch.FieldByName('EntCode').AsString) <> '' then
    if MesDlg('Add '+dtmData.qrySearch.FieldByName('Name').AsString+' - '+
      dtmData.qrySearch.FieldByName('RegNo').AsString+' to database?','C')= mrYes then
    begin
      FChosenID := dtmData.qrySearch.FieldByName('EntityID').AsInteger;
      Self.ModalResult := mrOk;
    end;
end;

procedure TfrmEntCheck.btnNewClick(Sender: TObject);
begin
  inherited;
  if dtmData.qrySearch.Active then
  begin
    dtmEntity.EntType := EntType;
    FChosenID := dtmEntity.AddNewEntity;
    if ChosenID > -1 then
    begin
      dtmEntity.CompleteNewEnt(edtRegNo.Text,edtName.Text,edtName2.Text);
      Self.ModalResult := mrYes;
    end;
  end
  else
    MesDlg('You are required to check for possible matches before creating a new ' +
      cmbEntType.Text,'E');
end;

procedure TfrmEntCheck.cmbEntTypeChange(Sender: TObject);
begin
  inherited;
  EntType := cmbEntType.ItemIndex + 1;
end;

procedure TfrmEntCheck.cmbEntTypeDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  inherited;
  cmbEntType.Canvas.FillRect(Rect);
  if Index = 0 then
    cmbEntType.Canvas.Draw(Rect.Left,Rect.Top,imgPerson.Picture.Graphic)
  else
    cmbEntType.Canvas.Draw(Rect.Left,Rect.Top,imgCompany.Picture.Graphic);

  cmbEntType.Canvas.TextOut(Rect.Left + 20, Rect.Top+1,cmbEntType.Items[Index]);
end;

end.

