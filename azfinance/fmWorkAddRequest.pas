unit fmWorkAddRequest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, uLSConst;

type
  TfrmWorkAddRequest = class(TForm)
    btnCancel: TButton;
    btnOK: TButton;
    Label1: TLabel;
    Label2: TLabel;
    memNote: TMemo;
    Label3: TLabel;
    edtAccountNo: TEdit;
    cmbRequestType: TDBLookupComboBox;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure memNoteChange(Sender: TObject);
    procedure cmbRequestTypeCloseUp(Sender: TObject);
  private
    FAccountNo: String;
    FAccountID: Integer;
    procedure SetAccountNo(const Value: String);
    procedure SetCanComplete;
    procedure SetAccountID(const Value: Integer);
    { Private declarations }

  public
    { Public declarations }
    property AccountNo: String read FAccountNo write SetAccountNo;
    property AccountID: Integer read FAccountID write SetAccountID;
  end;

var
  frmWorkAddRequest: TfrmWorkAddRequest;

implementation

uses dmWorkFlow, dmMain, DB;

{$R *.dfm}

procedure TfrmWorkAddRequest.btnOKClick(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;

    with dtmWorkFlow do
    begin
      cmdAddRequest.Parameters.ParamByName('AccountID').Value := AccountID;
      cmdAddRequest.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
      cmdAddRequest.Parameters.ParamByName('RequestTypeID').Value := dsRequestTypes.FieldByName('RequestTypeID').AsInteger;
      cmdAddRequest.Parameters.ParamByName('Note').Value := memNote.Text;
      cmdAddRequest.Execute;
    end;
  finally
    Screen.Cursor := crDefault;
  end;

  ModalResult := mrOK;
end;

procedure TfrmWorkAddRequest.FormCreate(Sender: TObject);
begin
  dtmWorkFlow.dsRequestTypes.Open;
  SetCanComplete;
end;

procedure TfrmWorkAddRequest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmWorkFlow.dsRequestTypes.Close;
end;

procedure TfrmWorkAddRequest.SetAccountNo(const Value: String);
begin
  FAccountNo := Value;
  edtAccountNo.Text := AccountNo;
end;

procedure TfrmWorkAddRequest.memNoteChange(Sender: TObject);
begin
  SetCanComplete;
end;

procedure TfrmWorkAddRequest.SetCanComplete;
begin
  btnOK.Enabled := (memNote.Text <> '') and (cmbRequestType.Text <> '');
end;

procedure TfrmWorkAddRequest.cmbRequestTypeCloseUp(Sender: TObject);
begin
  SetCanComplete;
end;

procedure TfrmWorkAddRequest.SetAccountID(const Value: Integer);
var
  StatusID: Integer;
  ProcessID: Integer;
begin
  FAccountID := Value;

  with dtmWorkFlow do
  begin
    dsAccountDetails.Close;
    dsAccountDetails.Parameters[0].Value := AccountID;
    dsAccountDetails.Open;

    StatusID := dsAccountDetails.FieldByName('Status').AsInteger;
    ProcessID := dsAccountDetails.FieldByName('LastProcessID').AsInteger;

    dsAccountDetails.Close;

    if StatusID in [lnsCancelled, lnsDeclined, lnsPreapproved] then
    begin
      dsRequestTypes.Filtered := True;

      if ((StatusID = lnsDeclined) and ((ProcessID = 0) or ((ProcessID >= 400) and (ProcessID <= 420)))) then
        dsRequestTypes.Filter := 'RequestTypeID = 5'
      else if (StatusID = lnsPreApproved) then
        dsRequestTypes.Filter := 'RequestTypeID = 5 or RequestTypeID = 4'
      else
        dsRequestTypes.Filter := 'RequestTypeID = 2';


    end
    else
      dsRequestTypes.Filtered := False;
  end;
end;

end.
