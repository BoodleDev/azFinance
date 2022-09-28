unit fmEmploymentConfirmationHistory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Grids, DBGrids;

type
  TfrmEmploymentConfirmationHistory = class(TForm)
    grdHistory: TDBGrid;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnClose: TToolButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FClientID: Integer;
    procedure SetClientID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property ClientID: Integer read FClientID write SetClientID;
  end;

var
  frmEmploymentConfirmationHistory: TfrmEmploymentConfirmationHistory;

implementation

uses dmEmployer;

{$R *.dfm}

{ TfrmEmploymentConfirmationHistory }


{ TfrmEmploymentConfirmationHistory }

procedure TfrmEmploymentConfirmationHistory.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmploymentConfirmationHistory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(dtmEmployer);
end;

procedure TfrmEmploymentConfirmationHistory.FormCreate(Sender: TObject);
begin
  dtmEmployer := TdtmEmployer.Create(Self);
  //grdHistory.DataSource := dtmEmployer.dtsEmploymentConfirmation;
end;

procedure TfrmEmploymentConfirmationHistory.SetClientID(const Value: Integer);
begin
  FClientID := Value;

  dtmEmployer.dsEmploymentConfirmation.Close;
  dtmEmployer.dsEmploymentConfirmation.Parameters[0].Value := Value;
  dtmEmployer.dsEmploymentConfirmation.Open;
end;

end.
