unit dtpDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, db, dbCtrls;

type
  TdtpDB = class(TDateTimePicker)
  private
    { Private declarations }
    FAssociateEDT: TDBEdit;
    procedure SetDateChange(Sender: TObject);
    procedure dtpEnter(Sender: TObject);
    procedure SetAssociateEDT(const Value: TDBEdit);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property AssociateEDT : TDBEdit read FAssociateEDT write SetAssociateEDT;
  end;

procedure Register;

implementation
{$R 'dtpDB.dcr'}

procedure Register;
begin
  RegisterComponents('GrayTech', [TdtpDB]);
end;

{ TdtpDB }

constructor TdtpDB.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Self.OnChange := SetDateChange;
  Self.OnEnter  := dtpEnter;
end;

destructor TdtpDB.Destroy;
begin
  inherited;
  //
end;

procedure TdtpDB.dtpEnter(Sender: TObject);
begin
  if Assigned(AssociateEDT.DataSource) then
  begin
    if AssociateEDT.DataSource.DataSet.FieldByName(AssociateEDT.DataField).IsNull then
      Self.Date := Date
    else
      Self.Date := AssociateEDT.DataSource.DataSet.FieldByName(
        AssociateEDT.DataField).AsDateTime;
  end;
end;

procedure TdtpDB.SetAssociateEDT(const Value: TDBEdit);
begin
  FAssociateEDT := Value;
  if Assigned(FAssociateEDT) then
  begin
    Self.Parent:= AssociateEDT.Parent;
    Self.Width := AssociateEDT.Width + 16;
    Self.Top   := AssociateEDT.Top;
    Self.Left  := AssociateEDT.Left+2;
    Self.SendToBack;
  end;
end;

procedure TdtpDB.SetDateChange(Sender: TObject);
begin
  inherited;
  if Assigned(AssociateEDT.DataSource) then
  begin
    if Assigned(AssociateEDT.DataSource.DataSet) and
     (AssociateEDT.DataSource.DataSet.Active) then
    begin
      AssociateEDT.DataSource.DataSet.Edit;
      AssociateEDT.DataSource.DataSet.FieldByName(
        AssociateEDT.DataField).AsDateTime := Self.Date;
    end;
  end;
end;


end.
