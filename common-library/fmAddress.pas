unit fmAddress;
{===============================================================================
 Author  : Wicus Botha
 Date    : 31/01/2000
 Unit    : Base address form for all DB apps.
 PreConditions  : Have to assign the Address datasource.
 PostConditions : none.
 History :
 ==============================================================================}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, DB, Buttons;

type
  TfrmAddress = class(TForm)
    lblAddress: TLabel;
    LCode: TLabel;
    DBAdr1: TDBEdit;
    DBAdr2: TDBEdit;
    DBCode: TDBEdit;
    DBAdr3: TDBEdit;
    DBAdr4: TDBEdit;
    BOk: TBitBtn;
    BCancel: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    CurrentDts: TDataSource;
    AdrType : integer;
    procedure SetEdtDts;
    procedure SetDataFields;
    procedure SetPostFields;
    procedure SetBoxes(Status:boolean);
    procedure FilterAdrData(sFilter:string);
  public
    { Public declarations }
    class procedure ShowAddressForm(dtsSource: TDataSource;
      frmCaption: string; bReadOnly: boolean; CurAdrType: integer);
  end;
implementation

{$R *.DFM}

{WB 31/01/2000
 Address from - Used to show & capture address detail
 All address field names in the database carry the names below,
 except for 2 Postal address fields}
procedure TfrmAddress.SetDataFields;
begin //set boxes data fields (Fieldnames of spesific Tbl)
  DBAdr1.DataField := 'Address1';
  DBAdr2.DataField := 'Address2';
  DBAdr3.DataField := 'Address3';
  DBAdr4.DataField := 'Address4';
  DBCode.DataField := 'AddressCode';
end;

{WB 31/01/2000
 This is the postal address fields in the database, if exists in a non
 generic address table for Branches and Loan Officers}
procedure TfrmAddress.SetPostFields;
begin
  DBAdr1.DataField := 'Post1';
  DBAdr2.DataField := 'Post2';
  DBAdr3.DataField := 'Post3';
  DBAdr4.DataField := 'Post4';
  DBCode.DataField := 'PostCode';
end;

procedure TfrmAddress.FormShow(Sender: TObject);
begin
  Self.ModalResult := mrNone;
  if DBAdr1.Enabled = true then DBAdr1.SetFocus;//set focus if can
end;

{WB 31/01/2000
 This will set the boxes as either view only or allow new & amendments}
procedure TfrmAddress.SetBoxes(Status: boolean);
begin //make boxes accessible or not - view(no access) or capture(access)
  DBAdr1.Enabled := Status;
  DBAdr2.Enabled := Status;
  DBAdr3.Enabled := Status;
  DBAdr4.Enabled := Status;
  DBCode.Enabled := Status;
  BCancel.Visible:= Status;
end;

{WB 31/01/2000
 The form has a property for the current datasource and via this datasource
 the data will be saved back to the database}
procedure TfrmAddress.SetEdtDts;
begin
  DBAdr1.DataSource := CurrentDts;
  DBAdr2.DataSource := CurrentDts;
  DBAdr3.DataSource := CurrentDts;
  DBAdr4.DataSource := CurrentDts;
  DBCode.DataSource := CurrentDts;
  if Assigned(CurrentDts) then
    CurrentDts.DataSet.Open;
end;

procedure TfrmAddress.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (CurrentDts.DataSet.State = dsEdit) or
     (CurrentDts.DataSet.State = dsInsert) then
  begin
    if Self.ModalResult = mrOk then
    begin
      if CurrentDts.DataSet.FieldList.IndexOf('AddressType') <> -1 then
        if CurrentDts.DataSet.FieldByName('AddressType').IsNull then
          CurrentDts.DataSet.FieldByName('AddressType').AsInteger := AdrType;
      CurrentDts.DataSet.Post;
    end
    else
      CurrentDts.DataSet.Cancel;
  end;
end;

procedure TfrmAddress.FilterAdrData(sFilter: string);
begin
  if Assigned(CurrentDts) then
  begin
    CurrentDts.DataSet.Filtered := false;
    CurrentDts.DataSet.Filter   := sFilter;
    if sFilter <> '' then
      CurrentDts.DataSet.Filtered := true;
  end;
end;

{WB 31/01/2000
 Set the address form for the 2 postal address use}
class procedure TfrmAddress.ShowAddressForm(dtsSource: TDataSource;
  frmCaption: string; bReadOnly: boolean; CurAdrType: integer);
var
  frmAdr : TfrmAddress;
begin
  frmAdr := TfrmAddress.Create(nil);
  try
    frmAdr.lblAddress.Caption := frmCaption;
    frmAdr.CurrentDts := dtsSource;
    frmAdr.SetEdtDts;
    if CurAdrType = -99 then
      frmAdr.SetPostFields
    else
      frmAdr.SetDataFields;
    frmAdr.AdrType :=  CurAdrType;
    if (CurAdrType <> -1 ) and
      (frmAdr.CurrentDts.DataSet.FieldList.IndexOf('AddressType') <> -1) then
      frmAdr.FilterAdrData('AddressType='+IntToStr(CurAdrType));
    frmAdr.SetBoxes(not bReadOnly);
    frmAdr.ShowModal;
  finally//Set the caption
    frmAdr.Free;//Close the address form
  end;
end;

end.

