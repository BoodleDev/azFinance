unit uACCPAC;
{===============================================================================
 Author  : Wicus Botha
 Date    : 20/05/2000
 Unit    : AccPac = APC
 PreConditions  :
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
//  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,StdCtrls,
    SysUtils, Classes, Controls, ACCPACXAPILib_TLB, Unit32;

type
  TAccPac = class(TComponent)
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  private
    { Private declarations }
    FapSes : xapiSession;
    FErrorLst: TStringList;
    FShowMsg: boolean;
    procedure CloseAPC;
    procedure SetapSes(const Value: xapiSession);
    procedure SetErrorLst(const Value: TStringList);
  protected
    procedure ShowAccPacErrors;
    procedure OpenAView(var xView: IxapiView; var xFlds: xapiFields; ViewStr,ApID: string);
  public
    { Public declarations }
    property apSes : xapiSession read FapSes write SetapSes;
    property ErrorLst : TStringList read FErrorLst write SetErrorLst;
    property ShowMsg : boolean read FShowMsg write FShowMsg default True;
    function Connect(Username,Password,Company:string; SessionDate: TDate):boolean;
  end;

implementation

constructor TAccPac.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FErrorLst := TStringList.Create;
end;

destructor TAccPac.Destroy;
begin
  inherited;
  CloseAPC;
  FErrorLst.Free;
  FErrorLst := nil;
end;

procedure TAccPac.SetapSes(const Value: xapiSession);
begin
  FapSes := Value;
end;

procedure TAccPac.SetErrorLst(const Value: TStringList);
begin
  FErrorLst := Value;
end;

function TAccPac.Connect(Username,Password,Company:string; SessionDate: TDate):boolean;
begin
  Result := False;
  if apSes = nil then
  begin
    apSes := CoxapiSession.Create;
    try
      apSes.Open(Username,Password,Company,SessionDate,0);
      if ShowMsg then
        MesDlg('Connection established.','I');
      Result := True;
    except on E: Exception do
    begin
      MesDlg(E.Message,'E');
      //ShowAccPacErrors;
      CloseAPC;
    end
    end;
  end;
end;

procedure TAccPac.CloseAPC;
begin
  if Assigned(apSes) then
    apSes.Close;
  apSes := nil;
end;

procedure TAccPac.ShowAccPacErrors;
var
  apErrs: xapiErrors;
  i: integer;
begin
  if apSes <> nil then
  begin
    ErrorLst.Clear;
    apErrs := apSes.Errors;
    if apErrs.Count = 0 then
    begin
      ErrorLst.Add('ACCPAC Error - Some unknown error occurred.');
      if ShowMsg then
        MesDlg('ACCPAC Error - Some unknown error occurred.','E');
    end
    else
    begin
      for i := 0 to apErrs.Count-1 do
      begin
        ErrorLst.Add(apErrs.Error[i].Description);
        if ShowMsg then
          MesDlg('ACCPAC error - '+apErrs.Error[i].Description,'E');
      end;
      apErrs.Clear;
    end;
  end;
end;

procedure TAccPac.OpenAView(var xView: IxapiView; var xFlds: xapiFields; ViewStr,
  ApID: string);
begin
  if (apSes <> nil) and (ViewStr <> '') and (ApID <> '') then
  begin
    xView := apSes.OpenView(ViewStr,ApID);
    xFlds := xView.Fields;
  end;
end;

end.
