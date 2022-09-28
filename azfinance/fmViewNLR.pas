unit fmViewNLR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  OleCtrls, SHDocVw, Unit32;

type
  TfrmViewNLR = class(TForm)
    wbNLR: TWebBrowser;
  private
    { Private declarations }
    procedure SaveToHttp(inString:String);
  public
    { Public declarations }
    procedure LoadNLRClient(inLoanID : Integer);
    procedure ViewNLRClient(inLoanID : Integer);
  end;

implementation

uses dmNLR;

{$R *.DFM}

{ TForm1 }

procedure TfrmViewNLR.LoadNLRClient(inLoanID : Integer);
begin
  dtmNLR :=  TdtmNLR.Create(self);
  dtmNLR.qryNLRResult.Open;
  if dtmNLR.qryNLRResult.Locate('LoanID',inLoanID,[]) then
  begin
    SaveToHttp(dtmNLR.qryNLRResult.FieldByName('QryRes').AsString);
    wbNLR.Navigate(AppDir+'tempnlr.html');
    Self.ShowModal;
    DeleteFile(AppDir+'tempnlr.html');
  end
  else
    MesDlg('There is no NLR query information on this client','I');
  dtmNLR.qryNLRResult.Close;
  dtmNLR.Free;
  dtmNLR := Nil;
end;




procedure TfrmViewNLR.SaveToHttp(inString: String);
var
  F : TextFile;
begin
  AssignFile(F,AppDir+'tempnlr.html');
  Rewrite(F);
  Write(F,inString);
  CloseFile(F);
end;

procedure TfrmViewNLR.ViewNLRClient(inLoanID: Integer);
begin
  dtmNLR.qryNLRResult.Open;
  if dtmNLR.qryNLRResult.Locate('LoanID',inLoanID,[]) then
  begin
    SaveToHttp(dtmNLR.qryNLRResult.FieldByName('QryRes').AsString);
    wbNLR.Navigate(AppDir+'tempnlr.html');
    Self.ShowModal;
    DeleteFile(AppDir+'tempnlr.html');
  end
  else
    ShowMessage('Sorry there is no NLR query information on this client.');
  dtmNLR.qryNLRResult.Close;
end;

end.
