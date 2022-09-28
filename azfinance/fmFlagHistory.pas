{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}                                         
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE ON}
{$WARN UNSAFE_CODE ON}
{$WARN UNSAFE_CAST ON}
unit fmFlagHistory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, Strutils, ComCtrls, ToolWin, uNoteSys;

type
  TfrmFlagHistory = class(TForm)
    btnClose: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edtCategory: TEdit;
    btnUpdate: TButton;
    cmbCurrentFlag: TComboBox;
    pcFlags: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    grdFlagHistory: TDBGrid;
    rdtNotes: TRichEdit;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure btnUpdateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cmbCurrentFlagChange(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    FLoanID: Integer;
    procedure SetLoanID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property LoanID: Integer read FLoanID write SetLoanID;
  end;

var
  frmFlagHistory: TfrmFlagHistory;

implementation

uses dmLoanFlags, dmMain, dmSecFrm;

{$R *.dfm}

procedure TfrmFlagHistory.btnUpdateClick(Sender: TObject);
var
  FlagCode: String;
begin
  if MessageDlg('Are you sure you want to update?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    try
      Screen.Cursor := crHourGlass;
      FlagCode := Copy(cmbCurrentFlag.Text,2,Pos(']',cmbCurrentFlag.Text)-2);
      with dtmLoanFlags do
      begin
        cmdInsertFlag.Parameters.ParamByName('LoanID').Value := LoanID;
        cmdInsertFlag.Parameters.ParamByName('UserID').Value := dtmMain.CurrentID;
        cmdInsertFlag.Parameters.ParamByName('FlagCode').Value := FlagCode;
        cmdInsertFlag.Execute;
        dsFlagHistory.Requery;
        SetLoanID(LoanID);
        btnUpdate.Tag := 1;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmFlagHistory.FormCreate(Sender: TObject);
begin
  dtmSecFrm.SetForm(Self);
  dtmLoanFlags := TdtmLoanFlags.Create(Self);
  pcFlags.TabIndex := 0;
end;

procedure TfrmFlagHistory.FormDestroy(Sender: TObject);
begin
  dtmLoanFlags.dsFlagHistory.Close;
  FreeAndNil(dtmLoanFlags);
end;

procedure TfrmFlagHistory.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
  with dtmLoanFlags do
  begin
    dsGetCategory.Parameters[0].Value := LoanID;
    dsGetCategory.Open;
    edtCategory.Text := dsGetCategory.Fields[0].AsString;
    dsGetCategory.Close;

    dsFlagHistory.Close;
    dsFlagHistory.Parameters[0].Value := LoanID;
    dsFlagHistory.Open;

    dsCurrentFlag.Close;
    dsCurrentFlag.Parameters[0].Value := LoanID;
    dsCurrentFlag.Open;

    cmbCurrentFlag.Clear;
    cmbCurrentFlag.Items.Add(dsCurrentFlag.FieldByName('Flag').asString);
    cmbCurrentFlag.ItemIndex := 0;
    cmbCurrentFlagChange(cmbCurrentFlag);

    dsFlags.Parameters[0].Value := edtCategory.Text;
    dsFlags.Open;
    while not dsFlags.Eof do
    begin
      if dsFlags.FieldByName('FlagCode').AsString <> dsCurrentFlag.FieldByName('FlagCode').AsString then
        cmbCurrentFlag.Items.Add(dsFlags.FieldByName('Flag').AsString);
      dsFlags.Next;
    end;
    dsFlags.Close;
    dsCurrentFlag.Close;
  end;

  uNoteSys.Categories := '110004010';
  uNoteSys.RichEdit := rdtNotes;
  UNoteSys.Connection := dtmMain.dbData;
  DisplayNotes(False);
  pcFlags.Pages[1].Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmFlagHistory.cmbCurrentFlagChange(Sender: TObject);
begin
  btnUpdate.Enabled := dtmSecFrm.CanEnable(btnUpdate) and (cmbCurrentFlag.ItemIndex > 0);
end;

procedure TfrmFlagHistory.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFlagHistory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if btnUpdate.Tag = 1 then
    ModalResult := mrOK;
end;

procedure TfrmFlagHistory.ToolButton1Click(Sender: TObject);
begin
  NewNote(110004010);
  pcFlags.Pages[1].Caption := 'Notes (' + IntToStr(NoteCount) + ')';
end;

procedure TfrmFlagHistory.ToolButton2Click(Sender: TObject);
begin
  EditNote(110004010);
end;

end.
