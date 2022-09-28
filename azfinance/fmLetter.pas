unit fmLetter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ComCtrls, DBCtrls, Buttons, Clipbrd,
  printers, ExtCtrls, DBGrdClr, Unit32, dmLetter, DB, uModcom;

type
  TfrmLetter = class(TForm)
    redbLetter: TDBRichEdit;
    pnlGrid: TPanel;
    grdDataset: TDBGrdClr;
    pnlCurrentDetail: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dbtCode: TDBText;
    dbtName: TDBText;
    dbtSurname: TDBText;
    Label12: TLabel;
    dbtIDnum: TDBText;
    Label13: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label22: TLabel;
    Panel1: TPanel;
    pnlTop: TPanel;
    Label3: TLabel;
    btnPrepare: TSpeedButton;
    btnPrint: TSpeedButton;
    lblCust1: TLabel;
    lblCust2: TLabel;
    lblCust3: TLabel;
    lblCust4: TLabel;
    cbxLetterList: TComboBox;
    edtCustom1: TEdit;
    edtCustom2: TEdit;
    edtCustom3: TEdit;
    edtCustom4: TEdit;
    reMemLetter: TRichEdit;
    Splitter1: TSplitter;
    dlgPrint: TPrintDialog;
    procedure btnPrepareClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxLetterListChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdDatasetDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    dtmData    : TdtmLetter;
    LUDataset  : TDataset;
    procedure LoadLetters;
    procedure DoReplacements;
   procedure ReplaceCustomValue(inNo, inText:string);
  public
    { Public declarations }
    procedure SetDataSettings(DBName : WideString);
  end;

implementation

uses  dmMain, dmLS, uLScentral;

{$R *.DFM}

//Create the datamodule
procedure TfrmLetter.FormCreate(Sender: TObject);
begin
  dtmData := TdtmLetter.Create(Self);
  Self.Color := dtmMain.ScrPnlColor;
  dtmMain.SetGrdColors(grdDataset);
  dtmLS.qryEntLoan.Active   := True;
end;

{Set the Datasources for the components on the form...set the connection string for the
queries on the datamodule...open the queries...set the current datasource for the form}
procedure TfrmLetter.SetDataSettings(DBName : WideString);
begin
  dtmData.SetDBName(DBName);
  dtmData.SetLetterData(True);
  LUDataset := dtmData.qryReplace;
  LoadLetters;
end;

//Load the list of letters in the database showing the letter description
procedure TfrmLetter.LoadLetters;
begin
  redbLetter.DataSource := nil;
  cbxLetterList.Items.Clear;
  dtmData.qryLetters.First;
  while not dtmData.qryLetters.EOF do
  begin
    cbxLetterList.Items.Add(
      dtmData.qryLetters.FieldByName('LetDescription').AsString);
    dtmData.qryLetters.Next;
  end;
  redbLetter.DataSource := dtmData.dtsLetters;
  cbxLetterList.ItemIndex := 0;
  cbxLetterListChange(self);
end;

//Find the letter and clear the richedit
procedure TfrmLetter.cbxLetterListChange(Sender: TObject);
begin
  if dtmData.qryLetters.Locate('LetDescription',cbxLetterList.Text,[]) then
    dtmData.SetLetterFields;
  reMemLetter.Clear;// Lines.Clear;
end;

//Clear the clipbord "Merge the fileds
procedure TfrmLetter.btnPrepareClick(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    reMemLetter.Clear;// Lines.Clear;
    redbLetter.SelectAll;
    redbLetter.CopyToClipboard;
    reMemLetter.ReadOnly := False;
    reMemLetter.PasteFromClipboard;
    reMemLetter.ReadOnly := true;
    ClipBoard.Clear;

    dtmData.qryReplace.Parameters[0].Value := dtmLS.qryEntLoan.FieldByName('LoanID').AsInteger;
    dtmData.qryReplace.Requery;
    DoReplacements;
  finally
    Screen.Cursor := crDefault;
  end;
end;

{Loop the codes get the fieldname of the replace data by using the "FieldName" field
in the Lettercodes query and replace the <<text>> with the field value}
procedure TfrmLetter.DoReplacements;
var
  TheFindStr,ReplaceStr : String;
begin
  dtmData.qryLetterFld.First;
  while not dtmData.qryLetterFld.Eof do
  begin
    TheFindStr := Trim(dtmData.qryLetterFld.FieldByName('Name').AsString);
    if Pos('CUSTOM',TheFindStr) = 0 then
    begin
      ReplaceStr := Trim(LUDataset.FieldByName(Trim(
        dtmData.qryLetterFld.FieldByName('FieldName').AsString)).AsString);
      ReplaceREMem(TheFindStr,ReplaceStr,reMemLetter);
    end;
    dtmData.qryLetterfld.Next;
  end;
  //Custom values
  ReplaceCustomValue('1',edtCustom1.Text);
  ReplaceCustomValue('2',edtCustom2.Text);
  ReplaceCustomValue('3',edtCustom3.Text);
  ReplaceCustomValue('4',edtCustom4.Text);
end;

procedure TfrmLetter.ReplaceCustomValue(inNo, inText: string);
begin
  if inText <> '' then
    ReplaceREMem('<<CUSTOM'+inNo+'>>',inText,reMemLetter);
end;

//Print the merged letter
procedure TfrmLetter.btnPrintClick(Sender: TObject);
var
  HMargin,SideMargin : integer;
  I: Integer;
begin
{WORD 97 doc setup = Page A4,
 Top=1.3cm,Bottom=1.0cm,Left=1.5 cm,Right=1.7cm, Gutter=0,Header=0,Footer=0
 Paragraph spacing At=0.9}
  if dlgPrint.Execute then
  begin
    SideMargin := Trunc(Printer.PageWidth*0.05);
    HMargin := Trunc(Printer.PageHeight*0.05);
    // A4 size Left = 2cm, Top,Right,Bottom=1.27cm
    // Printing memo           // L , T , R  , B
    //  reMemLetter.PageRect := Rect(350,222,4550,6650);
    reMemLetter.PageRect := Rect(SideMargin,222,Printer.PageWidth-SideMargin,
      Printer.PageHeight-HMargin);
    for I := 0 to dlgPrint.Copies - 1 do
      reMemLetter.Print(cbxLetterList.Text);
  end;
end;


//Free the datamodule
procedure TfrmLetter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmLS.qryEntLoan.Active   := False;
  dtmData.SetLetterData(False);
  dtmData.Free;
  dtmData := nil;
end;

procedure TfrmLetter.grdDatasetDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'LoanID' then
  begin
    grdDataset.Canvas.Brush.Color := ColorLoanStatus(dtmLS.qryEntLoan.FieldByName('Status').AsInteger);
    grdDataset.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end; {if}
end;

end.
