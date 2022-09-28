unit fmLoadLetter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmDBBase, Grids, DBGrids, DBGrdClr, Mask, DBCtrls, Buttons, StdCtrls,
  ComCtrls, ExtCtrls, Menus, ToolWin, Printers, Unit32, Db, UConst,
  Clipbrd, ImgList, dmLoadLet;

type
  TfrmLoadLetter = class(TfrmDBBase)
    pnlMain: TPanel;
    pnlGrid: TPanel;
    sdLetter: TSaveDialog;
    odLetters: TOpenDialog;
    btnPrint: TToolButton;
    btnExport: TToolButton;
    btnLoadLet: TToolButton;
    imglstMain: TImageList;
    grdCodes: TDBGrdClr;
    Panel1: TPanel;
    pnlTop: TPanel;
    dbtLetUser: TDBText;
    lblUser: TLabel;
    btnPrior: TSpeedButton;
    btnNext: TSpeedButton;
    Label3: TLabel;
    lblDate: TLabel;
    dbtLetDate: TDBText;
    lblAppID: TLabel;
    Label4: TLabel;
    lblChar: TLabel;
    edtLetName: TDBEdit;
    cmbAppID: TDBLookupComboBox;
    rbTypeGroup: TDBRadioGroup;
    reMem: TRichEdit;
    redbAddLet: TDBRichEdit;
    btnToggleFields: TToolButton;
    chkDefaultLA: TDBCheckBox;
    StatusBar1: TStatusBar;
    DBEdit1: TDBEdit;
    procedure btnLoadLetClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnViewFieldsClick(Sender: TObject);
    procedure lblHideClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdCodesDblClick(Sender: TObject);
    procedure redbAddLetChange(Sender: TObject);
    procedure btnFieldsClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
 private
    { Private declarations }
    CurrentUser : String;
    dtmData : TdtmLoadLet;
    procedure SetDBScrollBtn;
    procedure OnNewRecord(TheDataset : TDataset);
    procedure ControlToStatusBar(StatusBar: TStatusBar; Control: TControl;
      LeftPos: Integer);
  public
    { Public declarations }
    procedure DoSearch;
    procedure SetDataSettings(DBName :Widestring; CurrentId: String);
  end;

implementation

uses dmMain;

{$R *.DFM}

//Create the datamodule
procedure TfrmLoadLetter.FormCreate(Sender: TObject);
begin
  dtmData := TdtmLoadLet.Create(Self);
  ControlToStatusBar(StatusBar1,lblChar,4);
  ControlToStatusBar(StatusBar1,lblUser,156);
  ControlToStatusBar(StatusBar1,dbtLetUser,lblUser.Left + lblUser.Width + 2);
  ControlToStatusBar(StatusBar1,lblDate,342);
  ControlToStatusBar(StatusBar1,dbtLetDate,lblDate.Left + lblDate.Width + 2);
end;

procedure TfrmLoadLetter.ControlToStatusBar(StatusBar: TStatusBar;
  Control: TControl; LeftPos: Integer);
begin
  Control.Parent := StatusBar;
  Control.Left := LeftPos;
  Control.Top := 4;
end;

procedure TfrmLoadLetter.FormShow(Sender: TObject);
begin
  inherited;
  dtmMain.SetGrdColors(grdCodes);
end;

{Set the scroll buttons using to move between the records...set the connection string for the
queries on the datamodule...open the queries...set the current datasource for the form}
procedure TfrmLoadLetter.SetDataSettings(DBName : WideString; CurrentId : String);
begin
  dtmData.SetDBName(DBName);
  dtmData.SetParams; 
  dtmData.SetLoadLetterData(True);
  CurrentDts := dtmData.dtsLoadLetters;
  CurrentUser := CurrentID;
  dtmData.qryLoadLetters.OnNewRecord := OnNewRecord;
  SetDBScrollBtn;
end;

//Contol over the scroll buttons
procedure TfrmLoadLetter.SetDBScrollBtn;
begin
  btnPrior.Enabled := not dtmData.qryLoadLetters.Bof;
  btnNext.Enabled  := not dtmData.qryLoadLetters.Eof;
end;

//Move to previous record
procedure TfrmLoadLetter.btnPriorClick(Sender: TObject);
begin
  dtmData.qryLoadLetters.Prior;
  SetDBScrollBtn;
end;

//Move to next record
procedure TfrmLoadLetter.btnNextClick(Sender: TObject);
begin
  dtmData.qryLoadLetters.Next;
  SetDBScrollBtn;
end;

//Load letter from file
procedure TfrmLoadLetter.btnLoadLetClick(Sender: TObject);
begin
  if odLetters.Execute then
  begin
    reMem.Lines.LoadFromFile(odLetters.FileName);
    reMem.SelectAll;
    reMem.CopyToClipboard;
    redbAddLet.Clear;
    redbAddLet.PasteFromClipboard;
    ClipBoard.Clear;
  end;
end;

//Export letter to file from richedit
procedure TfrmLoadLetter.btnExportClick(Sender: TObject);
begin
 if sdLetter.Execute then
  begin
    redbAddLet.SelectAll;
    redbAddLet.CopyToClipboard;
    reMem.Clear;
    reMem.PasteFromClipboard;
    ClipBoard.Clear;
    reMem.Lines.SaveToFile(sdLetter.FileName);
  end;
end;

//Print richedit
procedure TfrmLoadLetter.btnPrintClick(Sender: TObject);
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
  redbAddLet.PageRect := Rect(SideMargin,222,Printer.PageWidth-SideMargin,
    Printer.PageHeight-HMargin);
  redbAddLet.Print('Letters setup');
end;

//Show codes
procedure TfrmLoadLetter.btnViewFieldsClick(Sender: TObject);
begin

end;

//Hide codes
procedure TfrmLoadLetter.lblHideClick(Sender: TObject);
begin
  
end;

//Free the datamodule
procedure TfrmLoadLetter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Inherited;
  dtmData.Free;
  dtmData := nil;
end;

//On the letters new record the information will be added
procedure TfrmLoadLetter.OnNewRecord(TheDataset : TDataset);
begin
  TheDataset.FieldByName('UserId').AsString      := CurrentUser;
  TheDataset.FieldByName('DateAdded').AsDateTime := Date;
end;

procedure TfrmLoadLetter.DoSearch;
var
  StartPos, ToEnd, FoundAt : integer;
  FindStr : string;
begin
  StartPos := 0;
  dtmData.DoDelete;
  dtmData.qryLetterCodes.First;
  while not dtmData.qryLetterCodes.Eof do
  begin
    FindStr := Trim(dtmData.qryLetterCodes.FieldByName('Name').AsString);
    ToEnd   := Length(redbAddLet.Text) - StartPos;
    FoundAt := redbAddLet.FindText(FindStr, StartPos, ToEnd, []);
    if FoundAt <> -1 then
    begin
      dtmData.qryLetterFields.Insert;
      dtmData.qryLetterFields.FieldByName('LetKey').AsInteger  :=
        dtmData.qryLoadLetters.FieldbyName('LetKey').AsInteger;
      dtmData.qryLetterFields.FieldByName('LetCode').AsInteger :=
        dtmData.qryLetterCodes.FieldByName('CodeID').AsInteger;
      dtmData.qryLetterFields.Post;
    end;
    dtmData.qryLetterCodes.Next;
  end;
end;

procedure TfrmLoadLetter.btnSaveClick(Sender: TObject);
begin
  inherited;
  DoSearch;
end;

procedure TfrmLoadLetter.grdCodesDblClick(Sender: TObject);
var
  tmpTxt : String;
begin
  tmpTxt := dtmData.qryLetterCodes.FieldByName('Name').AsString + ' ';
  if redbAddLet.FindText(' ',redbAddLet.Selstart-1,1,[]) = -1 then
    tmpTxt := ' ' + tmpTxt;
  Clipboard.SetTextBuf(PChar(tmpTxt));
  redbAddLet.PasteFromClipboard;
  ClipBoard.Clear;
end;

procedure TfrmLoadLetter.redbAddLetChange(Sender: TObject);
begin
  inherited;
  lblChar.Font.Color := clBlack;
  lblChar.Caption := 'Characters ( '+IntToStr(redbAddLet.GetTextLen)+' )';
  if dtmData.qryLoadLetters.FieldByName('LetType').AsInteger =1 then
   if redbAddLet.GetTextLen > 160 then lblChar.Font.Color := clRed;
end;

procedure TfrmLoadLetter.btnFieldsClick(Sender: TObject);
begin
  inherited;
  if pnlGrid.Visible then
  begin
    btnToggleFields.Caption := 'Show Fields';
    pnlGrid.Hide;
    //Splitter1.Hide;
  end
  else
  begin
    btnToggleFields.Caption := 'Hide Fields';
    pnlGrid.Show;
    //Splitter1.Show;
    //Splitter1.Top := grdCodes.Top - 1;
  end;

  {grdCodes.DataSource := dtmData.dtsLetterCodes;
  pnlgrid.Visible := True;}
end;

procedure TfrmLoadLetter.DBEdit1Change(Sender: TObject);
begin
  inherited;
  chkDefaultLA.Visible := (dtmData.qryLoadLetters.FieldByName('AppID').AsInteger = 100) and
    (dtmData.qryLoadLetters.FieldByName('LetType').AsInteger = 0);
end;

end.


