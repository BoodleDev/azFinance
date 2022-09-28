unit fmAffordDebtObligation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ToolWin;

type
  TfrmAffordDebtObligation = class(TForm)
    btnClose: TButton;
    grpApplicant: TGroupBox;
    grdApplicant: TDBGrid;
    grpSpouse: TGroupBox;
    grdSpouse: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FAssignCaption: string;
    FLoanID: Integer;
    FCategoryID: Integer;
    FOnlyRead: Boolean;

    procedure SetAssignCaption(const value: string);
    procedure SetLoanID(const Value: Integer);
    procedure SetCategoryID(const Value: Integer);
    procedure SetOnlyRead(const Value: Boolean);
  public
    { Public declarations }
    property AssignCaption: string read FAssignCaption write SetAssignCaption;
    property LoanID: Integer read FLoanID write SetLoanID;
    property CategoryID: Integer read FCategoryID write SetCategoryID;
    property OnlyRead: Boolean read FOnlyRead write SetOnlyRead;
    
  end;

var
  frmAffordDebtObligation: TfrmAffordDebtObligation;


implementation

uses dmAffordability, dmMain;

{$R *.dfm}
procedure TfrmAffordDebtObligation.SetAssignCaption(const value: string);
begin
  FAssignCaption := Value;
  Self.Caption := AssignCaption;
end;
procedure TfrmAffordDebtObligation.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
end;
procedure TfrmAffordDebtObligation.SetCategoryID(const Value: Integer);
begin
  FCategoryID := Value;
end;
procedure TfrmAffordDebtObligation.SetOnlyRead(const Value: Boolean);
begin
  FOnlyRead := Value;

  if (OnlyRead = True) then
  begin
    //grdApplicant.Color := clBtnFace;
    //grdApplicant.ReadOnly := True;
    grdApplicant.Enabled := True;
    grdApplicant.Color := clWhite;

    //grdSpouse.Color := clBtnFace;
    //grdSpouse.ReadOnly := True;
    grdSpouse.Enabled := True;
    grdSpouse.Color := clWhite;
  end;
end;


procedure TfrmAffordDebtObligation.FormShow(Sender: TObject);
begin

  dtmAffordability.dsSubItemApplicant.Close;
  dtmAffordability.dsSubItemApplicant.Close;  
  dtmAffordability.dsSubItemApplicant.Parameters.ParamByName('LoanID').Value := LoanID;
  dtmAffordability.dsSubItemApplicant.Parameters.ParamByName('CategoryID').Value := CategoryID;
  dtmAffordability.dsSubItemApplicant.Open;

  dtmAffordability.dsSubItemSpouse.Close;
  dtmAffordability.dsSubItemSpouse.Close;  
  dtmAffordability.dsSubItemSpouse.Parameters.ParamByName('LoanID').Value := LoanID;
  dtmAffordability.dsSubItemSpouse.Parameters.ParamByName('CategoryID').Value := CategoryID;
  dtmAffordability.dsSubItemSpouse.Open;


  if(dtmAffordability.dsSubItemApplicant.RecordCount = 0) then
  begin
    grdApplicant.Enabled := True;
    grdApplicant.Color := clWhite;
  end;

  if(dtmAffordability.dsSubItemSpouse.RecordCount = 0) then
  begin
    grdSpouse.Enabled := True;
    grdSpouse.Color := clWhite;
  end;

end;

end.
