{===============================================================================
 Author         : Wynand Wessels
 Date           :
 Unit           :
 PreConditions  : DONT CHANGE MY CODE
 PostConditions : none.
 History :
 ==============================================================================}

unit fmSMSCreate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Gauges, Grids, DBGrids,
  DBGrdClr, dmLetter, DBCtrls, Unit32,dmSms, Buttons, fmRepFilter;

type
  TfrmSMSCreate = class(TfrmBase)
    mainGrid: TDBGrdClr;
    Panel2: TPanel;
    Panel3: TPanel;
    gugSMS: TGauge;
    reSMS: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblChar: TLabel;
    cbxSmsType: TComboBox;
    reDB: TDBRichEdit;
    ToolButton1: TToolButton;
    btnBuildSMS: TToolButton;
    pnlFilter: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    imgGreen: TImage;
    imgRed: TImage;
    memFilter: TMemo;
    btnSetFilter: TBitBtn;
    btnFilterDet: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure reSMSChange(Sender: TObject);
    procedure cbxSmsTypeChange(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure btnBuildSMSClick(Sender: TObject);
    procedure btnFilterDetClick(Sender: TObject);
    procedure btnSetFilterClick(Sender: TObject);
  private
    { Private declarations }
    dtmSMS : TdtmSMS;
    dtmData : TdtmLetter;
    frmFilter : TfrmRepFilter;
    function BuildSMS(iID:Integer):String;
    procedure LoadSMSList;
    procedure SetDataFilter(inFilter, BtnCap: string;imgStop: boolean);
  public
    { Public declarations }
  end;

implementation

uses uConst, dmMain;

{$R *.DFM}

procedure TfrmSMSCreate.FormCreate(Sender: TObject);
begin
  inherited;
  dtmSMS := TdtmSMS.Create(self);
  dtmData := TdtmLetter.Create(Self);
  dtmData.SetLetterData(True);
  dtmSms.qrySmsLDs.Open;
  dtmSms.qrySms.Open;
  LoadSMSList;
  frmFilter := TfrmRepFilter.Create(Self);
  frmFilter.CurFldList := dtmSMS.qrySmsLDs.FieldList;
  cbxSmsTypeChange(nil);
  dtmMain.SetGrdColors(mainGrid);
end;

procedure TfrmSMSCreate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmSms.qrySmsLDs.Close;
  dtmSms.qrySms.Close;
  dtmSMS.Free;
  dtmData.Free;
  frmFilter.Free;
  frmFilter := nil;
  dtmData := Nil;
  dtmSms  := Nil;
end;

procedure TfrmSMSCreate.reSMSChange(Sender: TObject);
begin
  inherited;
  lblChar.Caption := IntToStr(160 - length(reSMS.Text));
end;

procedure TfrmSMSCreate.LoadSMSList;
begin
  dtmData.qryLetters.Filter :='LetType = 1';
  dtmData.qryLetters.Filtered := True;
  dtmData.qryLetters.First;
  while not dtmData.qryLetters.Eof do
  begin
    cbxSmsType.Items.Add(
      dtmData.qryLetters.FieldByName('LetDescription').AsString);
    dtmData.qryLetters.Next;
  end;
  cbxSmsType.ItemIndex := 0;
  dtmData.qryLetters.Filtered := False;
end;

procedure TfrmSMSCreate.cbxSmsTypeChange(Sender: TObject);
begin
  inherited;
  reSMS.ReadOnly := False;
  reSMS.Clear;
  if cbxSmsType.ItemIndex > 0 then
  begin
    dtmData.qryLetters.Locate('LetDescription',cbxSmsType.Text,[]);
    reDB.DataSource := dtmData.dtsLetters;
    reDB.DataField := 'LetterBody';
    reSMS.Clear;
    reDB.SelectAll;
    reDB.CopyToClipboard;
    reSMS.ReadOnly := False;
    reSMS.PasteFromClipboard;
    reSMS.ReadOnly := true;
  end;
  reSMS.ReadOnly := cbxSmsType.ItemIndex > 0;
end;

function TfrmSMSCreate.BuildSMS(iID:Integer):String;
var
  TheFindStr,ReplaceStr,OldStr : String;
begin
  OldStr  := reSMS.text;
  dtmData.qryReplace.Parameters[0].Value := iID;
  dtmData.qryReplace.Requery;
  dtmData.qryLetterFld.First;
  while not dtmData.qryLetterFld.Eof do
  begin
    TheFindStr := Trim(dtmData.qryLetterFld.FieldByName('Name').AsString);
    ReplaceStr := Trim(dtmData.qryReplace.FieldByName(Trim(
      dtmData.qryLetterFld.FieldByName('FieldName').AsString)).AsString);
    ReplaceREMem(TheFindStr,ReplaceStr,reSMS);
    dtmData.qryLetterfld.Next;
  end;
  result := reSMS.Text;
  reSMS.Text := OldStr;
end;

procedure TfrmSMSCreate.ToolButton1Click(Sender: TObject);
begin
  inherited;
  dtmSMS.InsertSMS(BuildSMS(dtmSms.qrySmsLDs.FieldByName('LoanId').AsInteger));
  ShowMessage('SMS has been created');
end;

procedure TfrmSMSCreate.btnBuildSMSClick(Sender: TObject);
begin
  inherited;
  dtmSMS.qrySmsLDs.First;
  gugSMS.Progress := 0;
  gugSMS.MaxValue := dtmSMS.qrySmsLDs.RecordCount;
  while not dtmSMS.qrySmsLDs.eof do
  begin
    dtmSMS.InsertSMS(BuildSMS(dtmSms.qrySmsLDs.FieldByName('LoanId').AsInteger));
    gugSMS.Progress := gugSMS.Progress + 1;
    dtmSMS.qrySmsLDs.Next;
  end;
  MesDlg('SMS''s created','I');
  gugSMS.Progress := 0;
end;


procedure TfrmSMSCreate.btnFilterDetClick(Sender: TObject);
begin
  inherited;
  frmFilter.ORStatus := true;
  frmFilter.ShowModal;
  memFilter.Lines.Clear;
  memFilter.Lines := frmFilter.DisplayFilter;
end;

procedure TfrmSMSCreate.btnSetFilterClick(Sender: TObject);
begin
  inherited;
  if (dtmSMS.qrySmsLDs.Filtered) or (Trim(frmFilter.CurFilter)='') then
    SetDataFilter('','Set filter',True)
  else
    SetDataFilter(frmFilter.CurFilter,'Cancel filter',False);
end;

procedure TfrmSMSCreate.SetDataFilter(inFilter, BtnCap: string;
  imgStop: boolean);
begin
  if inFilter = '' then
    dtmsms.qrySmsLDs.Filtered := False
 //  dtmsms.qrySmsLDs.Close
  else
    dtmSMS.SetSMSqry(inFilter);
  btnSetFilter.Caption := BtnCap;
  if imgStop then
    btnSetFilter.Glyph := imgRed.Picture.Bitmap
  else
    btnSetFilter.Glyph := imgGreen.Picture.Bitmap;
end;

end.
