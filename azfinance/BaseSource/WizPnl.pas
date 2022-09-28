unit WizPnl;
{===============================================================================
 Author  : Wicus Botha
 Date    : 23/08/1999
 Unit    : This is a Wizpanel Back & Next buttons
 PreConditions  : none.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
  TWizPnl = class(TPanel)
    constructor Create(Owner: TComponent); override;
    destructor Destroy; override;
  private
    { Private declarations }
    FAssociatedPC: TPageControl;
    FbtnNext: TSpeedButton;
    FbtnBack: TSpeedButton;
    function GetTabIndex(Next : boolean):integer;
    procedure SetAssociatedPC(const Value: TPageControl);
    //
    procedure BackBtnClick(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure SetRecordBtns;
    procedure SetbtnBack(const Value: TSpeedButton);
    procedure SetbtnNext(const Value: TSpeedButton);
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property AssociatedPC : TPageControl read FAssociatedPC write SetAssociatedPC;
    property btnBack: TSpeedButton read FbtnBack write SetbtnBack;
    property btnNext: TSpeedButton read FbtnNext write SetbtnNext;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GrayTech', [TWizPnl]);
end;

{ TWizPnl }

constructor TWizPnl.Create(Owner: TComponent);
begin
  inherited Create(Owner);  // Initialize inherited parts
  //
  Self.Align := alBottom;
  Self.BevelInner := bvLowered;
  // Self.BevelOuter := bvRaised;
  Self.Caption := '';
  //
  btnBack := TSpeedButton.Create(self);
  btnBack.Parent := Self;
  btnBack.Caption := '<< back';
  btnBack.Flat := True;
  btnBack.Height := 25;
  btnBack.Left   := 20;
  btnBack.Top    := 10;
  btnBack.Width  := 76;
  btnBack.Enabled := False;
  btnBack.OnClick := BackBtnClick;
  //
  btnNext := TSpeedButton.Create(self);
  btnNext.Parent := Self;
  btnNext.Caption := '>> next';
  btnNext.Flat := True;
  btnNext.Height := 25;
  btnNext.Left   := 96;
  btnNext.Top    := 10;
  btnNext.Width  := 76;
  btnNext.OnClick := NextBtnClick;
end;

destructor TWizPnl.Destroy;
begin
  btnBack.OnClick := nil;
  btnNext.OnClick := nil;
  btnBack.Free;
  btnNext.Free;
  btnBack := nil;
  btnNext := nil;
  AssociatedPC := nil;
  inherited;
end;

procedure TWizPnl.SetAssociatedPC(const Value: TPageControl);
begin
  FAssociatedPC := Value;
end;

function TWizPnl.GetTabIndex(Next: boolean): integer;
var
  i : integer;
begin
  Result := AssociatedPC.ActivePageIndex;
  if Next then
  begin
    i := AssociatedPC.ActivePageIndex+1;
    while i < AssociatedPC.PageCount do
    begin
      if AssociatedPC.Pages[i].Enabled then
      begin
        Result := i;
        i := AssociatedPC.PageCount + 10;
      end;
      i := i + 1;
    end;
  end
  else
  begin
    i := AssociatedPC.ActivePageIndex-1;
    while i > -1 do
    begin
      if AssociatedPC.Pages[i].Enabled then
      begin
        Result := i;
        i := -10;
      end;
      i := i - 1;
    end;
  end;
  if Result = AssociatedPC.ActivePageIndex then
    Result := -1;
end;

procedure TWizPnl.SetRecordBtns;
begin
  btnNext.Enabled := GetTabIndex(True)<>-1;
  btnBack.Enabled := not (AssociatedPC.ActivePageIndex = 0);
end;

procedure TWizPnl.BackBtnClick(Sender: TObject);
begin
//
  if Assigned(AssociatedPC) then
  begin
    AssociatedPC.ActivePageIndex := GetTabIndex(False);
    SetRecordBtns;
  end;
end;

procedure TWizPnl.NextBtnClick(Sender: TObject);
begin
//
  if Assigned(AssociatedPC) then
  begin
    AssociatedPC.ActivePageIndex := GetTabIndex(True);
    SetRecordBtns;
  end;
end;


procedure TWizPnl.SetbtnBack(const Value: TSpeedButton);
begin
  FbtnBack := Value;
end;

procedure TWizPnl.SetbtnNext(const Value: TSpeedButton);
begin
  FbtnNext := Value;
end;

end.
