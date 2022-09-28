unit fmAddAccountFlag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, dmAccountFlag;

type
  TfrmAddAccountFlag = class(TForm)
    Label1: TLabel;
    btnOK: TButton;
    btnCancel: TButton;
    cmbSubFlag: TDBLookupComboBox;
    edtFlag: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  dtmAccountFlag: TdtmAccountFlag;
    FFlagID: Integer;
    FSubFlagID: Integer;
    procedure SetFlagID(const Value: Integer);
    procedure SetSubFlagID(const Value: Integer);
  public
    { Public declarations }
    property FlagID: Integer read FFlagID write SetFlagID;
    property SubFlagID: Integer read FSubFlagID write SetSubFlagID;
  end;

var
  frmAddAccountFlag: TfrmAddAccountFlag;

implementation

{$R *.dfm}

procedure TfrmAddAccountFlag.FormCreate(Sender: TObject);
begin
  dtmAccountFlag := TdtmAccountFlag.Create(Self);
  with dtmAccountFlag do
  begin
    edtFlag.DataSource := dtsFlags;
    cmbSubFlag.ListSource := dtsSubFlags;

    dsFlags.Open;
    dsSubFlags.Open;
  end;
end;

procedure TfrmAddAccountFlag.FormDestroy(Sender: TObject);
begin
   dtmAccountFlag.dsSubFlags.Close;
   dtmAccountFlag.dsFlags.Close;
   FreeAndNil(dtmAccountFlag);
end;

procedure TfrmAddAccountFlag.SetFlagID(const Value: Integer);
begin
  FFlagID := Value;
end;

procedure TfrmAddAccountFlag.SetSubFlagID(const Value: Integer);
begin
  FSubFlagID := Value;
end;

procedure TfrmAddAccountFlag.FormShow(Sender: TObject);
begin
  dtmAccountFlag.dsFlags.Locate('FlagID', FlagID, []);
  cmbSubFlag.SetFocus;
end;

procedure TfrmAddAccountFlag.btnOKClick(Sender: TObject);
begin
  FlagID := dtmAccountFlag.dsSubFlags.FieldByName('FlagID').AsInteger;
  SubFlagID := dtmAccountFlag.dsSubFlags.FieldByName('SubFlagID').AsInteger;

  ModalResult := mrOK;
end;

end.
