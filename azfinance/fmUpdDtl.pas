unit fmUpdDtl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fmBase, StdCtrls, ExtCtrls, ComCtrls, ToolWin;

type
  TfrmUpdDtl = class(TfrmBase)
    btnFile: TToolButton;
    dlgFile: TOpenDialog;
    Memo1: TMemo;
    btnOK: TToolButton;
    btnCancel: TToolButton;
    cbxMap: TComboBox;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    procedure btnFileClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cbxMapChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

procedure TfrmUpdDtl.btnFileClick(Sender: TObject);
var
  //LnFile: TextFile;
  //Line: String;
  I, D: Integer;
begin
  inherited;
  if dlgFile.Execute then
  begin
    {AssignFile(LnFile,dlgFile.FileName);
    Reset(LnFile);
    while not Eof(LnFile) do
    begin
      Readln(LnFile,Line);
      Memo1.Lines.Add(Line);
    end;}
    Memo1.Lines.LoadFromFile(dlgFile.FileName);
    for I := 0 to Memo1.Lines.Count - 1 do
    begin
      D := Pos(',',Memo1.Lines[I]);
      if D > 0 then
        Memo1.Lines[I] := Copy(Memo1.Lines[I],1,D - 1);
    end;
  end;
end;

procedure TfrmUpdDtl.btnOKClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmUpdDtl.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmUpdDtl.cbxMapChange(Sender: TObject);
begin
  inherited;
  btnOK.Enabled := cbxMap.ItemIndex > -1;
end;

procedure TfrmUpdDtl.FormShow(Sender: TObject);
begin
  inherited;
  cbxMapChange(Self);
end;

procedure TfrmUpdDtl.Memo1Change(Sender: TObject);
begin
  inherited;
  StatusBar1.SimpleText := IntToStr(Memo1.Lines.Count) + ' record\s';
end;

end.
