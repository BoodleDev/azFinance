unit fmLetter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ComCtrls, DBCtrls, Buttons, Clipbrd,
  printers, ExtCtrls, DBGrdClr, Unit32, dmLetter, DB;

type
  TfrmLetter = class(TForm)
    redbLetter: TDBRichEdit;
    reMemLetter: TRichEdit;
    pnlGrid: TPanel;
    grdDataset: TDBGrdClr;
    pnlTop: TPanel;
    Label3: TLabel;
    btnPrepare: TSpeedButton;
    btnPrint: TSpeedButton;
    cbxLetterList: TComboBox;
    procedure btnPrepareClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxLetterListChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    dtmData    : TdtmLetter;
    LUDataset  : TDataset;
    procedure LoadLetters;
    procedure DoReplacements;
  public
    { Public declarations }
    procedure SetDataSettings(DBName : WideString);
  end;

implementation

uses  dmMain;

{$R *.DFM}

//Create the datamodule
procedure TfrmLetter.FormCreate(Sender: TObject);
begin
  dtmData := TdtmLetter.Create(Self);
end;

procedure TfrmLetter.FormShow(Sender: TObject);
begin
  Self.Color := dtmMain.ScrPnlColor;
  dtmMain.SetGrdColors(grdDataset);
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
  dtmData.qryLetters.Locate('LetDescription',cbxLetterList.Text,[]);
  reMemLetter.Clear;// Lines.Clear;
end;

//Clear the clipbord "Merge the fileds
procedure TfrmLetter.btnPrepareClick(Sender: TObject);
begin
  reMemLetter.Clear;// Lines.Clear;
  redbLetter.SelectAll;
  redbLetter.CopyToClipboard;
  reMemLetter.ReadOnly := False;
  reMemLetter.PasteFromClipboard;
  reMemLetter.ReadOnly := true;
  ClipBoard.Clear;
  DoReplacements;
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
    ReplaceStr := Trim(LUDataset.FieldByName(Trim(
      dtmData.qryLetterFld.FieldByName('FieldName').AsString)).AsString);
    ReplaceREMem(TheFindStr,ReplaceStr,reMemLetter);
    dtmData.qryLetterfld.Next;
  end;
end;

//Print the merged letter
procedure TfrmLetter.btnPrintClick(Sender: TObject);
var
  HMargin,SideMargin : integer;
begin
{WORD 97 doc setup = Page A4,
 Top=1.3cm,Bottom=1.0cm,Left=1.5 cm,Right=1.7cm, Gutter=0,Header=0,Footer=0
 Paragraph spacing At=0.9}
  SideMargin := Trunc(Printer.PageWidth*0.05);
  HMargin := Trunc(Printer.PageHeight*0.05);
  // A4 size Left = 2cm, Top,Right,Bottom=1.27cm
  // Printing memo           // L , T , R  , B
  //  reMemLetter.PageRect := Rect(350,222,4550,6650);
  reMemLetter.PageRect := Rect(SideMargin,222,Printer.PageWidth-SideMargin,
    Printer.PageHeight-HMargin);
  reMemLetter.Print('db Letters');
end;


//Free the datamodule
procedure TfrmLetter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmData.SetLetterData(False); 
  dtmData.Free;
  dtmData := nil;
end;

end.
