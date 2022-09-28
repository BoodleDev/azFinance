unit fmTRS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ExtCtrls, Grids, DBGrids, Menus, ComCtrls, ToolWin,
  Unit32, fmDBBaseGrdClr, DBGrdClr, DBCtrls, dmTransSetup;

type
  TfrmTransSetup = class(TfrmDBBaseGrdClr)
    pnlTopTrans: TPanel;
    lblTransT: TLabel;
    lblDrCr: TLabel;
    imgX: TImage;
    btnNU: TToolButton;
    cbxOptions: TComboBox;
    dtsTCodes: TDataSource;
    procedure btnNewClick(Sender: TObject);
    procedure grdBaseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdBaseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnNUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbxOptionsChange(Sender: TObject);
  private
    { Private declarations }
    dtmTSetup: TdtmTransSetup;
    FCurrentID: string;
    FDBName: WideString;
    FAppID: integer;
    procedure AddNewCode(NewCode: integer; Desc: string);
    procedure LoadGrpCombo;
    procedure SetColVisible(ColName: string; Show: integer);
    procedure SetNotUse;
    procedure SetDBName(const Value: WideString);
    procedure SetAppID(const Value: integer);
  public
    { Public declarations }
    property DBName : WideString read FDBName write SetDBName;
    property CurrentID: string read FCurrentID write FCurrentID;
    property AppID : integer read FAppID write SetAppID;
  end;

implementation

{$R *.DFM}

procedure TfrmTransSetup.FormCreate(Sender: TObject);
begin
  inherited;
  dtmTSetup  := TdtmTransSetup.Create(Self);
  CurrentDts := dtsTCodes;
end;

procedure TfrmTransSetup.cbxOptionsChange(Sender: TObject);
begin
  inherited;
  if not dtmTSetup.qryTMaster.Locate('TransDescription',cbxOptions.Text,[]) then
    MesDlg('Could not locate group '+cbxOptions.Text+'.  Please contact GrayTech.','E');
  // Debit OR Credit setup
  if Trim(dtmTSetup.qryTMaster.FieldByName('DC').AsString) = 'C' then
    lblDrCr.Caption := 'Credit'
  else
    lblDrCr.Caption := 'Debit';
  //
  SetColVisible('ContraAccNo',
    dtmTSetup.qryTMaster.FieldByName('ShowContra').AsInteger);
  SetColVisible('VatCode',
    dtmTSetup.qryTMaster.FieldByName('ShowVAT').AsInteger);
end;

procedure TfrmTransSetup.btnNewClick(Sender: TObject);
var
  NewCode : integer;
  Desc, strNew : string;
begin
  CheckDataSet(dtmTSetup.qryTCodes);
  Desc := Trim(Inputbox('New transaction','Please enter the transaction description?',''));
  if Desc <> '' then//If the Description not equal to nothing
  begin //if category allready exsit
    if dtmTSetup.qryTCodes.Locate('Description',Desc,[]) then //Check for existing supplier code
      MesDlg('Transaction description already exists.','E')//Show 'E'rror message
    else
    begin
      dtmTSetup.qryNewCode.Open;
      NewCode := dtmTSetup.qryNewCode.Fields[0].AsInteger;
      dtmTSetup.qryNewCode.Close;
      strNew  := IntToStr(NewCode);
      strNew  := Copy(strNew,Length(strNew)-1,2);
      //
      if strNew = '99' then
        MesDlg('Transaction range full cannot create new code.','E')
      else
      begin
        if NewCode = 0 then
          NewCode := StrToInt(dtmTSetup.qryTMaster.FieldByName('TransType').AsString+'01')
        else
          NewCode := NewCode + 1;
        inherited;
        AddNewCode(NewCode,Desc);
      end; // if range full
    end; // if Locate
  end; // if Desc
end;

procedure TfrmTransSetup.AddNewCode(NewCode: integer; Desc: string);
begin
  // Add new code
  dtmTSetup.qryTCodes.FieldByName('TransCode').AsInteger := NewCode;
  dtmTSetup.qryTCodes.FieldByName('TransType').AsInteger :=
    dtmTSetup.qryTMaster.FieldByName('TransType').AsInteger;
  dtmTSetup.qryTCodes.FieldByName('AppID').AsInteger     :=
    dtmTSetup.qryTMaster.FieldByName('AppID').AsInteger;
  dtmTSetup.qryTCodes.FieldByName('Description').AsString:= Desc;
  dtmTSetup.qryTCodes.FieldByName('DC').AsString :=
    dtmTSetup.qryTMaster.FieldByName('DC').AsString;
  dtmTSetup.qryTCodes.FieldByName('UserID').AsString    := CurrentID;
  dtmTSetup.qryTCodes.FieldByName('DateAdded').AsDateTime := Date;
end;

procedure TfrmTransSetup.LoadGrpCombo;
begin
  Screen.Cursor := crHourGlass;
  dtmTSetup.qryTCodes.DataSource := nil;
  cbxOptions.Items.Clear;
  try
    dtmTSetup.qryTMaster.First;
    while not dtmTSetup.qryTMaster.EOF do
    begin
      cbxOptions.Items.Add(dtmTSetup.qryTMaster.FieldByName('TransDescription').AsString);
      dtmTSetup.qryTMaster.Next;
    end;
  finally
    dtmTSetup.qryTCodes.DataSource := dtmTSetup.dtsTMaster;
    Screen.Cursor := crDefault;
  end;
  cbxOptions.ItemIndex := 0;
  cbxOptionsChange(nil);
end;

procedure TfrmTransSetup.btnNUClick(Sender: TObject);
begin
  inherited;
  SetNotUse;
end;

procedure TfrmTransSetup.SetNotUse;
begin
  dtmTSetup.qryTCodes.Edit;
  if dtmTSetup.qryTCodes.FieldByName('NotUse').AsInteger = 0 then
    dtmTSetup.qryTCodes.FieldByName('NotUse').AsInteger := 1
  else
   dtmTSetup.qryTCodes.FieldByName('NotUse').AsInteger := 0;
  dtmTSetup.qryTCodes.Post;
end;

procedure TfrmTransSetup.grdBaseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (ssCtrl in Shift) and (Key=VK_Delete) then
    Abort;
end;

procedure TfrmTransSetup.SetColVisible(ColName: string; Show: integer);
var
 i : integer;
begin
  for i := 0 to grdBase.Columns.Count-1 do
  begin
    if grdBase.Columns[i].FieldName = ColName then
    begin
      if Show = 0 then
        grdBase.Columns[i].Visible := False
      else
        grdBase.Columns[i].Visible := True;
      Exit;
    end;
  end;
end;

procedure TfrmTransSetup.grdBaseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  //
  if Column.FieldName = 'NotU' then
  begin
    //grdBase.Canvas.FillRect(Rect);
    if dtmTSetup.qryTCodes.FieldByName('NotUse').AsInteger = 1 then
      grdBase.Canvas.Draw(Rect.Left+10,Rect.Top+2,imgX.Picture.Bitmap);
  end;
end;

procedure TfrmTransSetup.SetDBName(const Value: WideString);
begin
  FDBName := Value;
  dtmTSetup.SetDBName(DBName);
  LoadGrpCombo;
end;

procedure TfrmTransSetup.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmTSetup.Free;
  dtmTSetup := nil;
end;

procedure TfrmTransSetup.SetAppID(const Value: integer);
begin
  FAppID := Value;
  FAppID := Value;
  dtmTSetup.SetAppID(FAppID);
end;

end.
