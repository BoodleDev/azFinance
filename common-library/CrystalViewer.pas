unit CrystalViewer;

interface

uses
  SysUtils, Classes, db, ADODB, Forms, controls, Dialogs,
  CRAXDRT_TLB, CrystalActiveXReportViewerLib10_TLB, fmCrystalProgress;

type
  TCRExecType = (crPrint, crPreview, crExport);

type
  TCrystalViewer = class(TComponent)
  private
    FReport: String;
    FDataSet: TDataSet;
    FDisplayGroupTree: Boolean;
    FShowPrintDialog: Boolean;
    procedure ExecuteCR(ExecType: TCRExecType);
    procedure SetShowPrintDialog(const Value: Boolean);
    procedure SetDisplayGroupTree(const Value: Boolean);
    procedure SetDataSet(const Value: TDataSet);
    procedure SetReport(const Value: String);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure PreviewReport;
    procedure PrintReport;
  published
    { Published declarations }
    property Report: String read FReport write SetReport;
    property DataSet: TDataSet read FDataSet write SetDataSet;
    property DisplayGroupTree: Boolean read FDisplayGroupTree write SetDisplayGroupTree;
    property ShowPrintDialog: Boolean read FShowPrintDialog write SetShowPrintDialog;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Systems@Bruma', [TCrystalViewer]);
end;

{ TComponent1 }

procedure TCrystalViewer.ExecuteCR(ExecType: TCRExecType);
var
  CRApplication: TApplication;
  CRViewer: TCrystalActiveXReportViewer;
  CRReport: IReport;
  frmPreview: TForm;
  frmCrystalProgress: TfrmCrystalProgress;
  
begin
  if not Assigned(DataSet) then
    MessageDlg('No DataSet has been assigned', mtError, [mbOK], 0)
  else if not DataSet.Active then
    MessageDlg('No Active RecordSet', mtError, [mbOK], 0)
  else
  begin
    Screen.Cursor := crHourGlass;
    CRApplication := TApplication.Create(nil);
    CRReport := CRApplication.OpenReport(Report);
    CRReport.Database.SetDataSource(TCustomADODataset(DataSet).Recordset,3,1);

    case ExecType of
      crPrint:
      begin
        {frmCrystalProgress := TfrmCrystalProgress.Create(nil);
        frmCrystalProgress.Show;
        frmCrystalProgress.Printingtatus := CRReport.PrintingStatus;}

        //CRReport.PrinterSetup(Forms.Application.Handle);
        CRReport.PrintOut(ShowPrintDialog,1,True,1,1);//CRReport.PrintingStatus.NumberOfPages);
        //FreeAndNil(frmCrystalProgress);
      end;
      crPreview:
      begin
        frmPreview := TForm.Create(nil);
        frmPreview.WindowState := wsMaximized;

        CRViewer := TCrystalActiveXReportViewer.Create(nil);
        CRViewer.EnableGroupTree := False;
        CRViewer.DisplayGroupTree := False;
        CRViewer.EnableProgressControl := True;
        CRViewer.Parent := frmPreview;
        CRViewer.Align := alClient;
        CRViewer.ReportSource := CRReport;
        CRViewer.ViewReport;
        Screen.Cursor := crDefault;
        frmPreview.ShowModal;
        FreeAndNil(CRViewer);
        FreeAndNil(CRViewer);
      end;
    end;
    Screen.Cursor := crDefault;
    FreeAndNil(CRApplication);
  end;
end;

procedure TCrystalViewer.PreviewReport;
begin
  ExecuteCR(crPreview);
end;

procedure TCrystalViewer.PrintReport;
begin
  ExecuteCR(crPrint);
end;

procedure TCrystalViewer.SetDataSet(const Value: TDataSet);
begin
  FDataSet := Value;
end;

procedure TCrystalViewer.SetDisplayGroupTree(const Value: Boolean);
begin
  FDisplayGroupTree := Value;
end;

procedure TCrystalViewer.SetReport(const Value: String);
begin
  FReport := Value;
end;

procedure TCrystalViewer.SetShowPrintDialog(const Value: Boolean);
begin
  FShowPrintDialog := Value;
end;

end.
