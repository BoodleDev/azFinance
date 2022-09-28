unit fmLinkEmployerWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmWizard, ImgList, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, DBCtrls, DBDateTimePicker, db;

type
  TfrmLinkEmployerWizard = class(TfrmWizard)
    Label1: TLabel;
    edtCompanyName: TEdit;
    Label2: TLabel;
    edtRegistrationNo: TEdit;
    DBGrid1: TDBGrid;
    btnSearch: TButton;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtRegistrationNo1: TDBEdit;
    edtCompanyName1: TDBEdit;
    edtTradingName: TDBEdit;
    lblRecords: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSearchClick(Sender: TObject);
    procedure btnFinishClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    FClientID: Integer;
    FEmployerID: Integer;
    procedure SetClientID(const Value: Integer);
    procedure SetEmployerID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property ClientID: Integer read FClientID write SetClientID;
    property EmployerID: Integer read FEmployerID write SetEmployerID;
  end;

var
  frmLinkEmployerWizard: TfrmLinkEmployerWizard;

implementation

uses dmEmployer, dmEntCode;

{$R *.dfm}

procedure TfrmLinkEmployerWizard.btnFinishClick(Sender: TObject);
begin
  //if dtmEmployer.dsClient.State <> dsEdit then
    //dtmEmployer.dsClient.Edit;

  EmployerID := dtmEmployer.dsSearch.FieldByName('EntityID').AsInteger;

  //dtmEmployer.dsClient.FieldByName('EmpID').AsInteger := EmployerID;
  //dtmEmployer.dsClient.Close;
     
  inherited;
end;

procedure TfrmLinkEmployerWizard.btnSearchClick(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    dtmEmployer.dsSearch.Close;
    dtmEmployer.dsSearch.Parameters.ParamByName('Keywords').Value := edtCompanyName.Text;
    dtmEmployer.dsSearch.Parameters.ParamByName('RegistrationNo').Value := edtRegistrationNo.Text;
    dtmEmployer.dsSearch.Open;

    lblRecords.Caption := IntToStr(dtmEmployer.dsSearch.RecordCount) + ' Record\s Found';
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmLinkEmployerWizard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  FreeAndNil(dtmEntCode);
  FreeAndNil(dtmEmployer);
end;

procedure TfrmLinkEmployerWizard.FormCreate(Sender: TObject);
begin
  inherited;
  dtmEmployer := TdtmEmployer.Create(Self);
  dtmEntCode := TdtmEntCode.Create(Self);

  lblRecords.Caption := '';

end;

procedure TfrmLinkEmployerWizard.FormShow(Sender: TObject);
begin
  inherited;
  edtCompanyName.SetFocus;
end;

procedure TfrmLinkEmployerWizard.SetClientID(const Value: Integer);
begin
  FClientID := Value;

end;

procedure TfrmLinkEmployerWizard.SetEmployerID(const Value: Integer);
begin
  FEmployerID := Value;
end;

procedure TfrmLinkEmployerWizard.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btnNext.Click;
end;

end.
