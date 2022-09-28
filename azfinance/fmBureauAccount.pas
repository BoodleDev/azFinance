unit fmBureauAccount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, DBDateTimePicker, StrUtils;

type
  TfrmBureauAccount = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnCancel: TButton;
    btnOK: TButton;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    memNote: TMemo;
    cmbSource: TComboBox;
    edtCompany: TEdit;
    edtAccountNo: TEdit;
    edtSettleAmount: TEdit;
    dtpLastPaid: TDateTimePicker;
    Label6: TLabel;
    edtOriginalInstalment: TEdit;
    edtInstalment: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtInstalmentKeyPress(Sender: TObject; var Key: Char);
    procedure edtOriginalInstalmentKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtSettleAmountKeyPress(Sender: TObject; var Key: Char);
    procedure dtpLastPaidExit(Sender: TObject);
    procedure cmbSourceChange(Sender: TObject);
  private
    { Private declarations }
    FAssignCaption: string;
    procedure SetAssignCaption(const value: string);
  public
    { Public declarations }
    property AssignCaption: string read FAssignCaption write SetAssignCaption;
  end;

var
  frmBureauAccount: TfrmBureauAccount;

implementation

uses dmLoanC;
{$R *.dfm}

procedure TfrmBureauAccount.SetAssignCaption(const value: string);
begin
  FAssignCaption := Value;
  Self.Caption := AssignCaption;
  if value = 'Delete Account' then
    begin
      edtCompany.Enabled:= false;
      edtAccountNo.Enabled:= false;
      edtInstalment.Enabled:= false;
      edtSettleAmount.Enabled:= false;
      dtpLastPaid.Enabled:= false;
    end;
end;


procedure TfrmBureauAccount.FormCreate(Sender: TObject);
begin
  edtCompany.Text:= '';
  edtAccountNo.Text:= '';
  edtInstalment.Text:= '';
  edtSettleAmount.Text:= '';
  edtOriginalInstalment.Text := '';
  dtpLastPaid.DateTime:= Now;

end;

procedure TfrmBureauAccount.btnOKClick(Sender: TObject);
begin
//LeftStr(cmbSource.Text, 3) = 'ITC') and
  if (memNote.Text = '') then
    MessageDlg('A note is required to continue', mtInformation, [mbOK], 0)
  else
    ModalResult := mrOK;
end;

procedure TfrmBureauAccount.FormShow(Sender: TObject);
begin
   //if((cmbSource.Text = 'Bureau') or (cmbSource.Text = 'Bureau(Edited)'))  then
      //begin
      //if MessageDlg('Are you sure you want to disable this account?',
      //mtConfirmation, [mbOK], 0) = mrOK then
       //begin
      //frmBureauAccount.Close();
         //end  ;

      cmbSource.Enabled := True;
        edtCompany.Enabled := True;
        edtAccountNo.Enabled := True;
        edtSettleAmount.Enabled := True;
        edtInstalment.Enabled := True;
        edtOriginalInstalment.Enabled :=False;
        dtpLastPaid.Enabled := True;


  if ((frmBureauAccount.Caption = 'Edit Account') and (cmbSource.Text = 'Bureau'))   then
    begin
        cmbSource.Enabled := False;
        edtCompany.Enabled := False;
        edtAccountNo.Enabled := False;
        edtSettleAmount.Enabled := False;
        edtInstalment.Enabled :=True;
        edtOriginalInstalment.Enabled :=False;
        dtpLastPaid.Enabled := False;
      end   ;
    if ((frmBureauAccount.Caption = 'Edit Account') and (cmbSource.Text = 'Bureau (Edited)')) then
    begin
        cmbSource.Enabled := False;
        edtCompany.Enabled := False;
        edtAccountNo.Enabled := False;
        edtSettleAmount.Enabled := False;
        edtInstalment.Enabled :=True;
        edtOriginalInstalment.Enabled :=False;
        dtpLastPaid.Enabled := False;
      end  ;
       if ((frmBureauAccount.Caption = 'Edit Account') and (cmbSource.Text = 'ITC')) then
    begin
        cmbSource.Enabled := False;
        edtCompany.Enabled := False;
        edtAccountNo.Enabled := False;
        edtSettleAmount.Enabled := False;
        edtInstalment.Enabled :=True;
        edtOriginalInstalment.Enabled :=False;
        dtpLastPaid.Enabled := False;
      end  ;

       if ((frmBureauAccount.Caption = 'Edit Account') and (cmbSource.Text = 'ITC (Edited)')) then
    begin
        cmbSource.Enabled := False;
        edtCompany.Enabled := False;
        edtAccountNo.Enabled := False;
        edtSettleAmount.Enabled := False;
        edtInstalment.Enabled :=True;
        edtOriginalInstalment.Enabled :=False;
        dtpLastPaid.Enabled := False;
      end  ;

     if(frmBureauAccount.Caption = 'Disable Account')
      or (frmBureauAccount.Caption = 'Enable Account') then
     begin
        cmbSource.Enabled := False;
        edtCompany.Enabled := False;
        edtAccountNo.Enabled := False;
        edtSettleAmount.Enabled := False;
        edtInstalment.Enabled :=False;
        edtOriginalInstalment.Enabled :=False;
         dtpLastPaid.Enabled := False;
     end;
     if(edtOriginalInstalment.Text = '') then
     edtOriginalInstalment.Text := edtInstalment.Text;


end;

procedure TfrmBureauAccount.edtInstalmentKeyPress(Sender: TObject;
var Key: Char);
     begin
       if not (Key in [#8, '0'..'9', DecimalSeparator]) then begin
    ShowMessage('only a money value is allowed in this textbox: ' + Key);
    Key := #0;
  end
  else if (Key = DecimalSeparator) and
          (Pos(Key, edtInstalment.Text) > 0) then begin
    ShowMessage('only a money value is allowed in this textbox: twice ' + Key);
    Key := #0;
  end;
  end;
procedure TfrmBureauAccount.edtOriginalInstalmentKeyPress(Sender: TObject;
  var Key: Char);

 begin
  if not (Key in [#8, '0'..'9', DecimalSeparator]) then begin
    ShowMessage('only a money value is allowed in this textbox: ' + Key);
    Key := #0;
  end
  else if (Key = DecimalSeparator) and
          (Pos(Key, edtOriginalInstalment.Text) > 0) then begin
    ShowMessage('only a money value is allowed in this textbox: twice ' + Key);
    Key := #0;
  end;
 end;
procedure TfrmBureauAccount.edtSettleAmountKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (Key in [#8, '0'..'9', DecimalSeparator]) then begin
    ShowMessage('only a money value is allowed in this textbox: ' + Key);
    Key := #0;
  end
  else if (Key = DecimalSeparator) and
          (Pos(Key, edtSettleAmount.Text) > 0) then begin
    ShowMessage('only a money value is allowed in this textbox: twice ' + Key);
    Key := #0;
  end;
end;


procedure TfrmBureauAccount.dtpLastPaidExit(Sender: TObject);
begin
  if dtpLastPaid.DateTime > Now then
   dtpLastPaid.DateTime := Now ;
end;  

    procedure TfrmBureauAccount.cmbSourceChange(Sender: TObject);
begin
if (cmbSource.Text = 'Settlement Letter') Then
begin
edtSettleAmount.Enabled := True;
end
else
   edtSettleAmount.Enabled := False;
end;

end.
