unit fmCodeTable;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ExtCtrls, Grids, DBGrids, Menus, ComCtrls, ToolWin,
  Unit32, fmDBBaseGrdClr, DBGrdClr, DBCtrls, dmCodeTbl;

type
  TfrmCodeTable = class(TfrmDBBaseGrdClr)
    pnlTop: TPanel;
    cbxOptions: TComboBox;
    lblGrp: TLabel;
    pnlFill: TPanel;
    dtsCodeTbl: TDataSource;
    imgX: TImage;
    btnNU: TToolButton;
    pnlL: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure cbxOptionsChange(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnNUClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grdBaseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdBaseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    dtmCodeTbl: TdtmCodeTbl;
    FCurrentID: String;
    FDBName: WideString;
    FAppID: integer;
    procedure AddNewCode(NewCode: integer; Desc: string);
    procedure LoadGrpCombo;
    procedure SetNotUse;
    procedure SetDBName(const Value: WideString);
    procedure SetAppID(const Value: integer);
  public
    { Public declarations }
    property DBName : WideString read FDBName write SetDBName;
    property CurrentID : String read FCurrentID write FCurrentID;
    property AppID : integer read FAppID write SetAppID;
  end;

implementation

{$R *.DFM}

procedure TfrmCodeTable.FormCreate(Sender: TObject);
begin
  inherited;
  dtmCodeTbl := TdtmCodeTbl.Create(Self);
  Currentdts := dtsCodeTbl;
end;

procedure TfrmCodeTable.cbxOptionsChange(Sender: TObject);
begin
  inherited;
  if not dtmCodeTbl.qryTypeTbl.Locate('TypeDesc',cbxOptions.Text,[]) then
    MesDlg('Could not locate group '+cbxOptions.Text+'.  Please contact GrayTech.','E');
end;

procedure TfrmCodeTable.btnNewClick(Sender: TObject);
var
  NewCode : integer;
  Desc, strNew : string;
begin
  CheckDataSet(dtmCodeTbl.qryCodeTbl);
  Desc := Trim(Inputbox('Group / Category','Please enter the code description?',''));
  if Desc <> '' then//If the Description not equal to nothing
  begin //if category allready exsit
    if dtmCodeTbl.qryCodeTbl.Locate('Description',Desc,[]) then //Check for existing supplier code
      MesDlg('Code description already exists.','E')//Show 'E'rror message
    else
    begin
      dtmCodeTbl.qryNewCode.Open;
      NewCode := dtmCodeTbl.qryNewCode.Fields[0].AsInteger;
      dtmCodeTbl.qryNewCode.Close;
      strNew  := IntToStr(NewCode);
      strNew  := Copy(strNew,Length(strNew)-2,2);
      //
      if strNew = '999' then
        MesDlg('Code range full cannot create new code.','E')
      else
      begin
        if NewCode = 0 then
          NewCode := StrToInt(dtmCodeTbl.qryTypeTbl.FieldByName('TypeID').AsString)
        else
          NewCode := NewCode + 1;
        inherited;
        AddNewCode(NewCode,Desc);
      end; // if range full
    end; // if Locate
  end; // if Desc
end;

procedure TfrmCodeTable.AddNewCode(NewCode: integer; Desc: string);
begin
  dtmCodeTbl.qryCodeTbl.FieldByName('TypeKey').AsInteger    := NewCode;//The Code generated
  dtmCodeTbl.qryCodeTbl.FieldByName('GroupKey').AsString    :=
    dtmCodeTbl.qryTypeTbl.FieldByName('TypeGrp').AsString;
  dtmCodeTbl.qryCodeTbl.FieldByName('Description').AsString := Desc;//The input box value
  dtmCodeTbl.qryCodeTbl.FieldByName('UserID').AsString      := CurrentID;
  dtmCodeTbl.qryCodeTbl.FieldByName('DateAdd').AsDateTime   := Date;
end;

procedure TfrmCodeTable.LoadGrpCombo;
begin
  Screen.Cursor := crHourGlass;
  dtmCodeTbl.qryCodeTbl.DataSource := nil;
  cbxOptions.Items.Clear;
  try
    dtmCodeTbl.qryTypeTbl.First;
    while not dtmCodeTbl.qryTypeTbl.EOF do
    begin
      cbxOptions.Items.Add(dtmCodeTbl.qryTypeTbl.FieldByName('TypeDesc').AsString);
      dtmCodeTbl.qryTypeTbl.Next;
    end;
  finally
    dtmCodeTbl.qryCodeTbl.DataSource := dtmCodeTbl.dtsTypeTbl;
    Screen.Cursor := crDefault;
  end;
  cbxOptions.ItemIndex := 0;
  cbxOptionsChange(nil);
end;

procedure TfrmCodeTable.btnNUClick(Sender: TObject);
begin
  inherited;
  SetNotUse;
end;

procedure TfrmCodeTable.SetNotUse;
begin
  dtmCodeTbl.qryCodeTbl.Edit;
  if dtmCodeTbl.qryCodeTbl.FieldByName('NotUse').AsInteger = 0 then
    dtmCodeTbl.qryCodeTbl.FieldByName('NotUse').AsInteger := 1
  else
    dtmCodeTbl.qryCodeTbl.FieldByName('NotUse').AsInteger := 0;
  dtmCodeTbl.qryCodeTbl.Post;
end;

procedure TfrmCodeTable.grdBaseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (ssCtrl in Shift) and (Key=VK_Delete) then
    Abort;
end;

procedure TfrmCodeTable.grdBaseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  //
  if Column.FieldName = 'NotU' then
  begin
    //grdBase.Canvas.FillRect(Rect);
    if dtmCodeTbl.qryCodeTbl.FieldByName('NotUse').AsInteger = 1 then
      grdBase.Canvas.Draw(Rect.Left+10,Rect.Top+2,imgX.Picture.Bitmap);
  end;
end;

procedure TfrmCodeTable.SetDBName(const Value: WideString);
begin
  FDBName := Value;
  dtmCodeTbl.SetDBName(FDBName);
  LoadGrpCombo;
end;

procedure TfrmCodeTable.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmCodeTbl.Free;
  dtmCodeTbl := nil;
end;

procedure TfrmCodeTable.SetAppID(const Value: integer);
begin
  FAppID := Value;
  dtmCodeTbl.SetAppID(FAppID);
end;

end.

