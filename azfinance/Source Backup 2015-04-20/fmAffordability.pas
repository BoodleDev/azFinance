unit fmAffordability;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, NumEdit, HyperLink, ExtCtrls, Math, Grids,
  DBGrids, ComCtrls, ShellApi;

type
  PCalcItem = ^TCalcItem;
  TCalcItem = record
    ItemID: Integer;                          
    CategoryID: Integer;
    Amount: Currency;
    Description: String[30];
    NumEdit: TNumEdit;
  end;

type
  TfrmAffordability = class(TForm)
    sclMain: TScrollBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    imgGross: TImage;
    imgDebtRatio: TImage;
    imgInstalPercent: TImage;
    edtGross: TNumEdit;
    edtInstalPercent: TNumEdit;
    edtDebtRatio: TNumEdit;
    Bevel1: TBevel;
    btnClose: TButton;
    btnSave: TButton;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtLiabilities: TNumEdit;
    edtExpenses: TNumEdit;
    edtIncome: TNumEdit;
    edtDebt: TNumEdit;
    Label7: TLabel;
    imgY: TImage;
    imgN: TImage;
    StatusBar1: TStatusBar;
    btnPrint: TButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdDebtCellClick(Column: TColumn);
    procedure btnPrintClick(Sender: TObject);
  private
    CalcList: TList;
    FLoanID: Integer;
    FOnlyRead: Boolean;
    FEntityID: Integer;
    procedure AmountKeyPress(Sender: TObject; var Key: Char);
    procedure Calculate;
    procedure SetLoanID(const Value: Integer);
    procedure AmountExit(Sender: TObject);
    procedure CreateCalculator;
    procedure NetSalaryClick(Sender: TObject);
    procedure SetOnlyRead(const Value: Boolean);
    procedure SetEntityID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property LoanID: Integer read FLoanID write SetLoanID;
    property EntityID: Integer read FEntityID write SetEntityID;
    property OnlyRead: Boolean read FOnlyRead write SetOnlyRead;
  end;

var
  frmAffordability: TfrmAffordability;

implementation

uses dmMain, dmAffordability, fmAffordItem, dmSecurity;

{$R *.dfm}

procedure TfrmAffordability.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAffordability.btnSaveClick(Sender: TObject);
var
  I: Integer;
  CalcItem: PCalcItem;
begin
  Screen.Cursor := crHourGlass;
  for I := 0 to CalcList.Count - 1 do
  begin
    CalcItem := PCalcItem(CalcList.Items[I]);
    if (CalcItem.ItemID = 0) then //and (CalcItem.Amount > 0) then
    begin
      dtmAffordability.cmdInsertItem.Parameters.ParamByName('LoanID').Value := LoanID;
      dtmAffordability.cmdInsertItem.Parameters.ParamByName('CategoryID').Value := CalcItem.CategoryID;
      dtmAffordability.cmdInsertItem.Parameters.ParamByName('Amount').Value := CalcItem.Amount;
      dtmAffordability.cmdInsertItem.Parameters.ParamByName('Description').Value := CalcItem.Description;
      dtmAffordability.cmdInsertItem.Execute;

      CalcItem.ItemID := dtmAffordability.cmdInsertItem.Parameters.ParamByName('ItemID').Value;
    end
    else
    begin
     { if CalcItem.Amount > 0 then
      begin }
        dtmAffordability.cmdUpdateItem.Parameters.ParamByName('Amount').Value := CalcItem.Amount;
        dtmAffordability.cmdUpdateItem.Parameters.ParamByName('Description').Value := CalcItem.Description;
        dtmAffordability.cmdUpdateItem.Parameters.ParamByName('ItemID').Value := CalcItem.ItemID;
        dtmAffordability.cmdUpdateItem.Execute;
      {end
      else
      begin
        dtmMain.cmdDeleteItem.Parameters.ParamByName('ItemID').Value := CalcItem.ItemID;
        dtmMain.cmdDeleteItem.Execute;
      end;   }
    end;
  end;
  Calculate;
  btnSave.Enabled := False;
  Screen.Cursor := crDefault;
end;

procedure TfrmAffordability.CreateCalculator;
var
  edtAmount: TNumEdit;
  lblAmount: THyperLink;
  pnlHeader: TPanel;
  EditTop: Integer;
  TabOrder: Integer;
  Total: Currency;
  HeaderID: Integer;
  NewCalcItem: PCalcItem;
const
  Line = 20;

  procedure PositionControls(var Edt: TNumEdit; var lbl: THyperLink; var ATop: Integer);
  begin
    edt.Top := ATop;
    edt.Left := 180;

    lbl.Top := ATop + ((edt.Height - lbl.Height) div 2);
    lbl.Left := 20;

    ATop := ATop + Line;
  end;

  procedure CreateHeader(Header: String);
  begin
    pnlHeader := TPanel.Create(Self);
    pnlHeader.Parent := sclMain;
    pnlHeader.AutoSize := False;
    pnlHeader.Alignment := taLeftJustify;
    pnlHeader.Caption := '  ' + Uppercase(Header);
    pnlHeader.Font.Style := pnlHeader.Font.Style + [fsBold];
    pnlHeader.Font.Color := clWhite;
    pnlHeader.Tag := 0;//dsCategories.FieldByName('CategoryID').AsInteger;
    //** pnlHeader.OnClick := CategoryClick;

    pnlHeader.Color := $006A6AB5;
    pnlHeader.ParentBackground := False;
    pnlHeader.Height := 15;
    pnlHeader.BevelOuter := bvNone;//bvLowered;

    pnlHeader.Width := sclMain.ClientWidth;// - 20;
    //pnlHeader.Alignment := taCenter;
    pnlHeader.Show;
    pnlHeader.Top := EditTop;
    //pnlHeader.Anchors := [akLeft,akTop,akRight];
    EditTop := EditTop + Line;
    pnlHeader.Left := 0;
  end;

  function CreateControls(Description: String; ID: Integer): TNumEdit;
  begin
    edtAmount := TNumEdit.Create(Self);
    edtAmount.Width := 89;
    edtAmount.Name := 'edtAmount' + IntToStr(ID);
    edtAmount.Tag := ID;
    edtAmount.Parent := sclMain;
    edtAmount.ReadOnly := False;
    //**edtAmount.ReadOnly := dtmMain.OnlyRead;
    //edtAmount.Anchors := [akTop,akRight];
    //**if dtmMain.OnlyRead then
    //**  edtAmount.Color := clBtnFace;
    TabOrder := TabOrder + 1;
    edtAmount.TabOrder := TabOrder;
    edtAmount.Show;
    Result := edtAmount;
    if ID = 29 then
    begin
      edtAmount.ReadOnly := True;
      edtAmount.Color := clBtnFace;
    end;

    lblAmount := THyperLink.Create(Self);
    lblAmount.Name := 'lblAmount' + IntToStr(ID);
    lblAmount.Parent := sclMain;
    lblAmount.Layout := tlCenter;
    lblAmount.Height := edtAmount.Height;
    lblAmount.Caption := Description;
    lblAmount.Tag := ID;
    lblAmount.Font.Name := 'Tahoma';
    //lblAmount.Anchors := [akTop,akRight];

    if ID = 29 then
    begin
      lblAmount.Font.Color := clBlue;
      lblAmount.OnClick := NetSalaryClick;
    end
    else
    begin
      lblAmount.Font.Color := clNavy;
      lblAmount.Cursor := crDefault;
    end;
      
    lblAmount.Show;
  end;
begin
  {lblGrossHeader.Canvas.Brush.Color := clRed;
  lblGrossHeader.Canvas.FillRect(lblGrossHeader.ClientRect);
  lblGrossHeader.Repaint;}

{//**  grdOptions.DataSource := dtmMain.dtsLoanOffers;
  if dtmMain.OnlyRead then
  begin
    edtRepay.ReadOnly := True;
    edtRepay.Color := clBtnFace;
    edtRepay.OnExit := nil;
    edtNet.Color := clBtnFace;
   // lblNet.OnClick := nil;
    btnSave.Hide;
    btnCalculate.Hide;
    chkOverride.Enabled := False;
  end;}
  Total := 0;

  TabOrder := 0;
  with dtmAffordability do
  begin
    try
      EditTop := 5;
      //CreateHeader('Income');

      HeaderID := 0;
      CalcList.Clear;

      dsDebt.Close;
      dsDebt.Parameters[0].Value := LoanID;
      dsDebt.Open;
      
      dsCategories.Parameters[0].Value := LoanID;
      dsCategories.Open;
      while not dsCategories.Eof do
      begin
        if HeaderID <> dsCategories.FieldByName('CategoryID').AsInteger then
        begin
          Total := 0;
          CreateHeader(dsCategories.FieldByName('Category').AsString);
          HeaderID := dsCategories.FieldByName('CategoryID').AsInteger;
        end;
        GetMem(NewCalcItem, SizeOf(TCalcItem));
        NewCalcItem.ItemID := dsCategories.FieldByName('ItemID').AsInteger;
        NewCalcItem.CategoryID := dsCategories.FieldByName('SubcategoryID').AsInteger;
        NewCalcItem.Amount := dsCategories.FieldByName('Total').AsCurrency;
        NewCalcItem.Description := dsCategories.FieldByName('Subcategory').AsString;

        NewCalcItem.NumEdit :=
          CreateControls(
            StringReplace(dsCategories.FieldByName('Subcategory').AsString, '&','&&', [rfReplaceAll]),
            dsCategories.FieldByName('SubCategoryID').AsInteger);
        CalcList.Add(NewCalcItem);

        //edtAmount.OnEnter := AmountEnter;

        if OnlyRead then
        begin
          edtAmount.Color := clBtnFace;
          edtAmount.ReadOnly := True;
        end
        else
        begin
          edtAmount.OnExit := AmountExit;
          edtAmount.OnKeyPress := AmountKeyPress;
        end;

          //**lblAmount.OnClick := CategoryClick;
        PositionControls(edtAmount, lblAmount, EditTop);
          {if cdsItems.Locate('CategoryID', dsSubCategories.FieldByName('CategoryID').AsInteger, []) then
          begin
            edtAmount.Text := FormatFloat('#,##0.00', cdsItems.FieldByName('Amount').AsCurrency);
            Total := Total + cdsItems.FieldByName('Amount').AsCurrency;
          end
          else
            edtAmount.Text := '0.00';}


          edtAmount.Text := FormatFloat('#,##0.00', dsCategories.FieldByName('Total').AsCurrency);
          Total := Total + dsCategories.FieldByName('Total').AsCurrency;
          //**
          {if dsCategories.FieldByName('Type').AsString = 'I' then
            Total := Total + GetNetIncome;}

       { CreateControls('TOTAL', dsCategories.FieldByName('CategoryID').AsInteger);
        PositionControls(edtAmount, lblAmount, EditTop); }

        //edtAmount.Text := FormatFloat('#,##0.00', Total);
        lblAmount.Font.Style := lblAmount.Font.Style + [fsBold];
        EditTop := EditTop + 3;

        dsCategories.Next;
      end;
    finally
      dsCategories.Close;
    end;
  end;
  btnSave.Enabled := False;
end;

procedure TfrmAffordability.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if btnSave.Enabled then
  case MessageDlg('Do you want to save changes?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
    mrYes:
      begin
        btnSave.Click;
        CanClose := True;
      end;
    mrNo: CanClose := True;
    mrCancel: CanClose := False;
  end;
end;

procedure TfrmAffordability.FormCreate(Sender: TObject);
begin
  dtmAffordability := TdtmAffordability.Create(Self);
  CalcList := TList.Create;

  btnPrint.Visible := dtmSecurity.AllowAccess(262);
end;

procedure TfrmAffordability.AmountKeyPress(Sender: TObject; var Key: Char);
begin
  if not TEdit(Sender).ReadOnly then
    btnSave.Enabled := True;
end;

procedure TfrmAffordability.AmountExit(Sender: TObject);
var
  I: Integer;
begin
  TNumEdit(Sender).Text := FormatFloat('0.00',
    StrToFloat(StringReplace(TNumEdit(Sender).Text,',','',[rfReplaceAll])));
  for I := 0 to CalcList.Count - 1 do
    if PCalcItem(CalcList.Items[I]).NumEdit = TNumEdit(Sender) then
      PCalcItem(CalcList.Items[I]).Amount := StrToCurr(TNumEdit(Sender).Text);

  TNumEdit(Sender).Text := FormatFloat('###,##0.00', StrToFloat(TNumEdit(Sender).Text));
end;

procedure TfrmAffordability.FormDestroy(Sender: TObject);
begin
  FreeAndNil(CalcList);
end;

procedure TfrmAffordability.SetLoanID(const Value: Integer);
begin
  FLoanID := Value;
  CreateCalculator;
  Calculate;
end;

procedure TfrmAffordability.Calculate;
var
  MinAmount: Currency;

  function RunCommand(Command: TADOCommand; RunFlags: Boolean): String;
  begin
    Command.Parameters[0].Value := LoanID;
    Command.Execute;
    Result := FormatFloat('###,##0.00', Command.Parameters[1].Value);
    if RunFlags then
    if Command.Parameters[1].Value < MinAmount then
    begin
      MinAmount := Command.Parameters[1].Value;
      if Command = dtmAffordability.cmdGross then
      begin
        imgGross.Show;
        imgDebtRatio.Hide;
        imgInstalPercent.Hide;
      end
      else if Command = dtmAffordability.cmdDebtRatio then
      begin
        imgGross.Hide;
        imgDebtRatio.Show;
        imgInstalPercent.Hide;
      end
      else if Command = dtmAffordability.cmdInstalPercent then
      begin
        imgGross.Hide;
        imgDebtRatio.Hide;
        imgInstalPercent.Show;
      end;
    end;
  end;
begin
  MinAmount := 99999999;
  with dtmAffordability do
  begin
    dsLoanCalc.Parameters[0].Value := LoanID;
    dsLoanCalc.Open;
    if dsLoanCalc.FieldByName('LoanID').IsNull then
    begin
      edtGross.Text := RunCommand(cmdGross, True);
      edtDebtRatio.Text := RunCommand(cmdDebtRatio, True);
      edtInstalPercent.Text := RunCommand(cmdInstalPercent, True);
    end
    else
    begin
      edtGross.Text := FormatFloat('###,##0.00', dsLoanCalc.FieldByName('GrossSurplus').AsCurrency);
      imgGross.Visible := dsLoanCalc.FieldByName('GrossFlagShow').AsInteger = 1;
      edtDebtRatio.Text := FormatFloat('###,##0.00', dsLoanCalc.FieldByName('DebtRatio').AsCurrency);
      imgDebtRatio.Visible := dsLoanCalc.FieldByName('DebtFlagShow').AsInteger = 1;
      edtInstalPercent.Text := FormatFloat('###,##0.00', dsLoanCalc.FieldByName('InstalPercent').AsCurrency);
      imgInstalPercent.Visible := dsLoanCalc.FieldByName('InstalFlagShow').AsInteger = 1;
    end;
    dsLoanCalc.Close;

    edtIncome.Text := RunCommand(cmdIncome, False);
    edtExpenses.Text := RunCommand(cmdExpenses, False);
    edtLiabilities.Text := RunCommand(cmdLiabilities, False);
    edtDebt.Text :=  RunCommand(cmdTotalDebt, True);

    cmdSetUpdate.Parameters.ParamByName('UserID').Value := dtmMain.UserKey;
    cmdSetUpdate.Parameters.ParamByName('LoanID').Value := LoanID;
    cmdSetUpdate.Execute;
  end;
end;

procedure TfrmAffordability.NetSalaryClick(Sender: TObject);
var
  ID: Integer;
  Edit: TEdit;
begin
  with dtmAffordability do
  begin
    ID := THyperLink(Sender).Tag;
    frmAffordItem := TfrmAffordItem.Create(Self);
    if OnlyRead then
    begin
      frmAffordItem.grdSubItems.Color := clBtnFace;
      frmAffordItem.grdSubItems.ReadOnly := True;
      frmAffordItem.grdSubItems.Options := frmAffordItem.grdSubItems.Options - [dgEditing]; 
    end;
    try
      dsSubItems.Parameters.ParamByName('LoanID').Value := LoanID;
      dsSubItems.Parameters.ParamByName('CategoryID').Value := ID;
      dsSubItems.Open;
      frmAffordItem.ShowModal;
    finally
      FreeAndNil(frmAffordItem);
      if not OnlyRead then
      begin
        if dsSubItems.State in [dsEdit,dsInsert] then
          dsSubItems.Post;
        dsSubItems.Close;

        cmdNetIncome.Parameters.ParamByName('LoanID').Value := LoanID;
        cmdNetIncome.Parameters.ParamByName('CategoryID').Value := ID;
        cmdNetIncome.Execute;
        Edit := TEdit(sclMain.FindChildControl('edtAmount' + IntToStr(ID)));
        Edit.Text := cmdNetIncome.Parameters.ParamByName('Amount').Value;
        Edit.SetFocus;
        AmountExit(Edit);
        btnSave.Enabled := True;
      end;
    end;
  end;
end;

procedure TfrmAffordability.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtmAffordability.dsDebt.Close;
end;

procedure TfrmAffordability.grdDebtCellClick(Column: TColumn);
begin
  if dtmAffordability.dsDebt.FieldByName('Source').AsString = 'Application Form' then
    if Column.Title.Caption = 'Settle' then
      {if MessageDlg('Are you sure you want to consolidate this debt?',
      mtConfirmation, [mbYes,mbNo], 0) = mrYes then }
      begin
        if dtmAffordability.dsDebt.State = dsBrowse then
          dtmAffordability.dsDebt.Edit;
        dtmAffordability.dsDebt.FieldByName('DoSettle').AsBoolean := not dtmAffordability.dsDebt.FieldByName('DoSettle').AsBoolean;
        dtmAffordability.dsDebt.Post;
      end;
end;

procedure TfrmAffordability.SetOnlyRead(const Value: Boolean);
begin
  FOnlyRead := Value;
end;

procedure TfrmAffordability.btnPrintClick(Sender: TObject);
begin
  dmMain.ShowSqlReport('AffordabilitySummaryBoodle', '&AccountID=' + IntToStr(LoanID));
end;

//procedure TfrmAffordability.btnPrintClick(Sender: TObject);
//var
//  Parameters: String;
//begin
//  Parameters :=
//    'CONNECTION="' + dtmMain.ConnectionString + '" ' +
//    'UID=' + IntToStr(dtmMain.UserKey) + ' ' +
//    'AID=' + IntToStr(LoanID) + ' ' +
//    'APPID=100 ' +
//    'EID=' + IntToStr(EntityID) + ' ' +
//    'DIALOG=0 ATTACH=0 ATTID=0 AONLY=0  ' +
//    'DID=4 TID=1 ' +
//    'P1=' + IntToStr(LoanID);
//
//  ShellExecute(Application.Handle,'Open', 'SmartDox.exe', PChar(Parameters), '', SW_SHOWNORMAL);
//end;

procedure TfrmAffordability.SetEntityID(const Value: Integer);
begin
  FEntityID := Value;
end;

end.
