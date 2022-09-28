unit CrystalActiveXReportViewerLib10_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 12/03/2007 10:16:33 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\Common Files\Crystal Decisions\2.5\crystalreportviewers10\ActiveXControls\crviewer.dll (1)
// LIBID: {3C62B3DD-12BE-4941-A787-EA25415DCD27}
// LCID: 0
// Helpfile: 
// HelpString: Crystal ActiveX Report Viewer Library 10.0
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// Errors:
//   Hint: Symbol 'Type' renamed to 'type_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  CrystalActiveXReportViewerLib10MajorVersion = 10;
  CrystalActiveXReportViewerLib10MinorVersion = 0;

  LIBID_CrystalActiveXReportViewerLib10: TGUID = '{3C62B3DD-12BE-4941-A787-EA25415DCD27}';

  DIID__ICRViewerEvents: TGUID = '{CFDF4A60-6FFC-11D1-BE46-00A0C95A6A5C}';
  IID_ICrystalReportViewer9: TGUID = '{3C9EEBE5-09AB-4EBB-9B42-A25FD57F19C0}';
  IID_ICrystalReportViewer10: TGUID = '{9D1DDA40-63B4-4346-9298-EABB00735AAB}';
  CLASS_CrystalActiveXReportViewer: TGUID = '{A1B8A30B-8AAA-4A3E-8869-1DA509E8A011}';
  IID_ICRVTrackCursorInfo: TGUID = '{13FA5946-561C-11D1-BE3F-00A0C95A6A5C}';
  CLASS_CRVTrackCursorInfo: TGUID = '{8A59E1D8-D586-4661-8B23-508F07273844}';
  IID_ICRFields: TGUID = '{75C66E65-8949-11D2-BF6D-00A0C9DA4FA2}';
  IID_ICollectCRFields: TGUID = '{81CBB971-8E0A-11D2-BF71-00A0C9DA4FA2}';
  CLASS_CRVFields: TGUID = '{54CCAEE4-C899-49B2-90E8-56353F8843A5}';
  IID_ICRField: TGUID = '{75C66E67-8949-11D2-BF6D-00A0C9DA4FA2}';
  IID_IEnumCRFields: TGUID = '{9E088781-8E06-11D2-BF71-00A0C9DA4FA2}';
  CLASS_CRVField: TGUID = '{90C76BA9-ADE5-4756-8AE9-F611AF92AB7C}';
  IID_ICRVEventInfo: TGUID = '{75347085-7260-11D1-BE46-00A0C95A6A5C}';
  CLASS_CRVEventInfo: TGUID = '{1F46D19F-292C-42C4-8C56-2A9D7477A5F1}';
  IID_ICrystalReportViewerViewInfo: TGUID = '{04AA0267-F803-44DD-AA9B-D1265FCCF0F4}';
  CLASS_CRCrystalReportViewerViewInfo: TGUID = '{BDE5141C-F8AA-4EBF-85DC-9776B4390124}';
  IID_ICrystalReportSourceRouter: TGUID = '{A0E5F37D-CA67-11D1-A817-00A0C92784CD}';
  IID_ICrystalReportSourcePackage: TGUID = '{3DCC8FB1-C434-11D1-A817-00A0C92784CD}';
  CLASS_ReportSourceRouter: TGUID = '{F2D814DF-5C5C-4B06-BF80-D699A8DAFB70}';
  IID_IEnumCrystalReportSource: TGUID = '{3DCC8FB2-C434-11D1-A817-00A0C92784CD}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum CRLoadingType
type
  CRLoadingType = TOleEnum;
const
  crLoadingNothing = $00000000;
  crLoadingPages = $00000001;
  crLoadingTotaller = $00000002;
  crLoadingQueryInfo = $00000003;

// Constants for enum CRDrillType
type
  CRDrillType = TOleEnum;
const
  crDrillOnGroup = $00000000;
  crDrillOnGroupTree = $00000001;
  crDrillOnGraph = $00000002;
  crDrillOnMap = $00000003;
  crDrillOnSubreport = $00000004;

// Constants for enum CRTrackCursor
type
  CRTrackCursor = TOleEnum;
const
  crDefaultCursor = $00000000;
  crArrowCursor = $00000001;
  crCrossCursor = $00000002;
  crIBeamCursor = $00000003;
  crNoCursor = $0000000A;
  crWaitCursor = $0000000B;
  crAppStartingCursor = $0000000C;
  crHelpCursor = $0000000D;
  crMagnifyCursor = $00000063;

// Constants for enum CRFieldType
type
  CRFieldType = TOleEnum;
const
  crInt8 = $00000000;
  crInt16 = $00000001;
  crInt32 = $00000002;
  crNumber = $00000003;
  crCurrency = $00000004;
  crBoolean = $00000005;
  crDate = $00000006;
  crTime = $00000007;
  crDateTime = $00000008;
  crString = $00000009;
  crUnknownFieldType = $000000FF;

// Constants for enum CRObjectType
type
  CRObjectType = TOleEnum;
const
  crUnknownFieldDefType = $00000000;
  crDatabaseFieldType = $00000001;
  crOLAPDimensionFieldType = $00000002;
  crOLAPDataFieldType = $00000003;
  crOLAPCrossTabFieldType = $00000004;
  crFormulaFieldType = $00000005;
  crSummaryFieldType = $00000006;
  crSpecialVarFieldType = $00000007;
  crGroupNameFieldType = $00000008;
  crPromptingVarFieldType = $00000009;
  crText = $00000064;
  crOLEObject = $00000065;
  crSubreport = $00000066;
  crBitmap = $00000067;
  crBlob = $00000068;
  crLine = $00000069;
  crBox = $0000006A;
  crGroupChart = $0000006B;
  crCrosstabChart = $0000006C;
  crDetailChart = $0000006D;
  crCrossTab = $0000006E;
  crGraphic = $0000006F;
  crOOPSubreport = $00000070;
  crOLAPChart = $00000071;
  crGroupMap = $00000072;
  crCrosstabMap = $00000073;
  crDetailMap = $00000074;
  crOLAPMap = $00000075;
  crGroupHeaderSection = $000000C8;
  crGroupFooterSection = $000000C9;
  crDetailSection = $000000CA;
  crReportHeaderSection = $000000CB;
  crReportFooterSection = $000000CC;
  crPageHeaderSection = $000000CD;
  crPageFooterSection = $000000CE;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _ICRViewerEvents = dispinterface;
  ICrystalReportViewer9 = interface;
  ICrystalReportViewer9Disp = dispinterface;
  ICrystalReportViewer10 = interface;
  ICrystalReportViewer10Disp = dispinterface;
  ICRVTrackCursorInfo = interface;
  ICRVTrackCursorInfoDisp = dispinterface;
  ICRFields = interface;
  ICRFieldsDisp = dispinterface;
  ICollectCRFields = interface;
  ICRField = interface;
  ICRFieldDisp = dispinterface;
  IEnumCRFields = interface;
  ICRVEventInfo = interface;
  ICRVEventInfoDisp = dispinterface;
  ICrystalReportViewerViewInfo = interface;
  ICrystalReportSourceRouter = interface;
  ICrystalReportSourceRouterDisp = dispinterface;
  ICrystalReportSourcePackage = interface;
  IEnumCrystalReportSource = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CrystalActiveXReportViewer = ICrystalReportViewer10;
  CRVTrackCursorInfo = ICRVTrackCursorInfo;
  CRVFields = ICRFields;
  CRVField = ICRField;
  CRVEventInfo = ICRVEventInfo;
  CRCrystalReportViewerViewInfo = ICrystalReportViewerViewInfo;
  ReportSourceRouter = ICrystalReportSourceRouter;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// DispIntf:  _ICRViewerEvents
// Flags:     (4224) NonExtensible Dispatchable
// GUID:      {CFDF4A60-6FFC-11D1-BE46-00A0C95A6A5C}
// *********************************************************************//
  _ICRViewerEvents = dispinterface
    ['{CFDF4A60-6FFC-11D1-BE46-00A0C95A6A5C}']
    procedure CloseButtonClicked(var UseDefault: WordBool); dispid 401;
    procedure FirstPageButtonClicked(var UseDefault: WordBool); dispid 402;
    procedure LastPageButtonClicked(var UseDefault: WordBool); dispid 403;
    procedure PrevPageButtonClicked(var UseDefault: WordBool); dispid 404;
    procedure NextPageButtonClicked(var UseDefault: WordBool); dispid 405;
    procedure GoToPageNClicked(var UseDefault: WordBool; PageNumber: Smallint); dispid 406;
    procedure StopButtonClicked(loadingType: CRLoadingType; var UseDefault: WordBool); dispid 407;
    procedure RefreshButtonClicked(var UseDefault: WordBool); dispid 408;
    procedure PrintButtonClicked(var UseDefault: WordBool); dispid 409;
    procedure GroupTreeButtonClicked(Visible: WordBool); dispid 410;
    procedure ZoomLevelChanged(ZoomLevel: Smallint); dispid 411;
    procedure SearchButtonClicked(const searchText: WideString; var UseDefault: WordBool); dispid 412;
    procedure DrillOnGroup(var GroupNameList: OleVariant; DrillType: CRDrillType; 
                           var UseDefault: WordBool); dispid 413;
    procedure DrillOnDetail(var FieldValues: OleVariant; SelectedFieldIndex: Integer; 
                            var UseDefault: WordBool); dispid 414;
    procedure ShowGroup(var GroupNameList: OleVariant; var UseDefault: WordBool); dispid 415;
    procedure SelectionFormulaButtonClicked(out selctionFormula: WideString; 
                                            var UseDefault: WordBool); dispid 416;
    procedure SelectionFormulaBuilt(const selctionFormula: WideString; var UseDefault: WordBool); dispid 417;
    procedure Clicked(x: Integer; y: Integer; var EventInfo: OleVariant; var UseDefault: WordBool); dispid 418;
    procedure DblClicked(x: Integer; y: Integer; var EventInfo: OleVariant; var UseDefault: WordBool); dispid 419;
    procedure DownloadStarted(loadingType: CRLoadingType); dispid 420;
    procedure DownloadFinished(loadingType: CRLoadingType); dispid 421;
    procedure ViewChanging(oldViewIndex: Integer; newViewIndex: Integer); dispid 422;
    procedure ViewChanged(oldViewIndex: Integer; newViewIndex: Integer); dispid 423;
    procedure OnReportSourceError(const errorMsg: WideString; errorCode: Integer; 
                                  var UseDefault: WordBool); dispid 424;
    procedure ExportButtonClicked(var UseDefault: WordBool); dispid 425;
    procedure SearchExpertButtonClicked(var UseDefault: WordBool); dispid 426;
    procedure DrillOnGraph(PageNumber: Integer; x: Integer; y: Integer; var UseDefault: WordBool); dispid 427;
    procedure DrillOnSubreport(var GroupNameList: OleVariant; const SubreportName: WideString; 
                               const Title: WideString; PageNumber: Integer; Index: Integer; 
                               var UseDefault: WordBool); dispid 428;
    procedure HelpButtonClicked; dispid 429;
    procedure FocusChanged(hasFocus: WordBool); dispid 430;
    procedure OnContextMenu(ObjectDescription: OleVariant; x: Integer; y: Integer; 
                            var UseDefault: WordBool); dispid 431;
    procedure OnChangeObjectRect(ObjectDescription: OleVariant; x: Integer; y: Integer; 
                                 width: Integer; height: Integer); dispid 432;
    procedure OnLaunchHyperlink(var Hyperlink: WideString; var UseDefault: WordBool); dispid 433;
  end;

// *********************************************************************//
// Interface: ICrystalReportViewer9
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3C9EEBE5-09AB-4EBB-9B42-A25FD57F19C0}
// *********************************************************************//
  ICrystalReportViewer9 = interface(IDispatch)
    ['{3C9EEBE5-09AB-4EBB-9B42-A25FD57F19C0}']
    function Get_ReportSource: IUnknown; safecall;
    procedure Set_ReportSource(const pVal: IUnknown); safecall;
    function Get_DisplayGroupTree: WordBool; safecall;
    procedure Set_DisplayGroupTree(DisplayGroupTree: WordBool); safecall;
    function Get_DisplayToolbar: WordBool; safecall;
    procedure Set_DisplayToolbar(DisplayToolbar: WordBool); safecall;
    function Get_EnableGroupTree: WordBool; safecall;
    procedure Set_EnableGroupTree(EnableGroupTree: WordBool); safecall;
    function Get_EnableNavigationControls: WordBool; safecall;
    procedure Set_EnableNavigationControls(EnableNavigationControls: WordBool); safecall;
    function Get_EnableStopButton: WordBool; safecall;
    procedure Set_EnableStopButton(EnableStopButton: WordBool); safecall;
    function Get_EnablePrintButton: WordBool; safecall;
    procedure Set_EnablePrintButton(EnablePrintButton: WordBool); safecall;
    function Get_EnableZoomControl: WordBool; safecall;
    procedure Set_EnableZoomControl(EnableZoomControl: WordBool); safecall;
    function Get_EnableCloseButton: WordBool; safecall;
    procedure Set_EnableCloseButton(EnableCloseButton: WordBool); safecall;
    function Get_EnableProgressControl: WordBool; safecall;
    procedure Set_EnableProgressControl(EnableProgressControl: WordBool); safecall;
    function Get_EnableSearchControl: WordBool; safecall;
    procedure Set_EnableSearchControl(EnableSearchControl: WordBool); safecall;
    function Get_EnableRefreshButton: WordBool; safecall;
    procedure Set_EnableRefreshButton(EnableRefreshButton: WordBool); safecall;
    function Get_EnableDrillDown: WordBool; safecall;
    procedure Set_EnableDrillDown(EnableDrillDown: WordBool); safecall;
    function Get_EnableAnimationCtrl: WordBool; safecall;
    procedure Set_EnableAnimationCtrl(EnableAnimationCtrl: WordBool); safecall;
    function Get_EnableSelectExpertButton: WordBool; safecall;
    procedure Set_EnableSelectExpertButton(EnableSelectExpertButton: WordBool); safecall;
    procedure ViewReport; safecall;
    function Get_EnableToolbar: WordBool; safecall;
    procedure Set_EnableToolbar(pVal: WordBool); safecall;
    function Get_DisplayBorder: WordBool; safecall;
    procedure Set_DisplayBorder(pVal: WordBool); safecall;
    function Get_DisplayTabs: WordBool; safecall;
    procedure Set_DisplayTabs(pVal: WordBool); safecall;
    function Get_DisplayBackgroundEdge: WordBool; safecall;
    procedure Set_DisplayBackgroundEdge(pVal: WordBool); safecall;
    function Get_SelectionFormula: WideString; safecall;
    procedure Set_SelectionFormula(const pVal: WideString); safecall;
    function Get_TrackCursorInfo: ICRVTrackCursorInfo; safecall;
    function Get_ActiveViewIndex: Smallint; safecall;
    function Get_ViewCount: Smallint; safecall;
    procedure ActivateView(Index: OleVariant); safecall;
    procedure AddView(GroupPath: OleVariant); safecall;
    procedure CloseView(Index: OleVariant); safecall;
    function GetViewPath(Index: Smallint): OleVariant; safecall;
    procedure PrintReport; safecall;
    procedure Refresh; safecall;
    procedure SearchForText(const Text: WideString); safecall;
    procedure ShowFirstPage; safecall;
    procedure ShowNextPage; safecall;
    procedure ShowPreviousPage; safecall;
    procedure ShowLastPage; safecall;
    procedure ShowNthPage(PageNumber: Smallint); safecall;
    procedure Zoom(ZoomLevel: Smallint); safecall;
    function GetCurrentPageNumber: Integer; safecall;
    procedure ShowGroup(GroupPath: OleVariant); safecall;
    function Get_IsBusy: WordBool; safecall;
    function Get_EnablePopupMenu: WordBool; safecall;
    procedure Set_EnablePopupMenu(pVal: WordBool); safecall;
    function Get_EnableExportButton: WordBool; safecall;
    procedure Set_EnableExportButton(pVal: WordBool); safecall;
    function Get_EnableSearchExpertButton: WordBool; safecall;
    procedure Set_EnableSearchExpertButton(pVal: WordBool); safecall;
    procedure SearchByFormula(const formula: WideString); safecall;
    function GetViewName(out pTabName: WideString): WideString; safecall;
    function Get_EnableHelpButton: WordBool; safecall;
    procedure Set_EnableHelpButton(pVal: WordBool); safecall;
    function GetGroup: OleVariant; safecall;
    procedure GetLastPageNumber(out pageN: Integer; out lastPageKnown: WordBool); safecall;
    procedure RefreshEx(refreshServerData: WordBool); safecall;
    function Get_LaunchHTTPHyperlinksInNewBrowser: WordBool; safecall;
    procedure Set_LaunchHTTPHyperlinksInNewBrowser(pVal: WordBool); safecall;
    property ReportSource: IUnknown read Get_ReportSource write Set_ReportSource;
    property DisplayGroupTree: WordBool read Get_DisplayGroupTree write Set_DisplayGroupTree;
    property DisplayToolbar: WordBool read Get_DisplayToolbar write Set_DisplayToolbar;
    property EnableGroupTree: WordBool read Get_EnableGroupTree write Set_EnableGroupTree;
    property EnableNavigationControls: WordBool read Get_EnableNavigationControls write Set_EnableNavigationControls;
    property EnableStopButton: WordBool read Get_EnableStopButton write Set_EnableStopButton;
    property EnablePrintButton: WordBool read Get_EnablePrintButton write Set_EnablePrintButton;
    property EnableZoomControl: WordBool read Get_EnableZoomControl write Set_EnableZoomControl;
    property EnableCloseButton: WordBool read Get_EnableCloseButton write Set_EnableCloseButton;
    property EnableProgressControl: WordBool read Get_EnableProgressControl write Set_EnableProgressControl;
    property EnableSearchControl: WordBool read Get_EnableSearchControl write Set_EnableSearchControl;
    property EnableRefreshButton: WordBool read Get_EnableRefreshButton write Set_EnableRefreshButton;
    property EnableDrillDown: WordBool read Get_EnableDrillDown write Set_EnableDrillDown;
    property EnableAnimationCtrl: WordBool read Get_EnableAnimationCtrl write Set_EnableAnimationCtrl;
    property EnableSelectExpertButton: WordBool read Get_EnableSelectExpertButton write Set_EnableSelectExpertButton;
    property EnableToolbar: WordBool read Get_EnableToolbar write Set_EnableToolbar;
    property DisplayBorder: WordBool read Get_DisplayBorder write Set_DisplayBorder;
    property DisplayTabs: WordBool read Get_DisplayTabs write Set_DisplayTabs;
    property DisplayBackgroundEdge: WordBool read Get_DisplayBackgroundEdge write Set_DisplayBackgroundEdge;
    property SelectionFormula: WideString read Get_SelectionFormula write Set_SelectionFormula;
    property TrackCursorInfo: ICRVTrackCursorInfo read Get_TrackCursorInfo;
    property ActiveViewIndex: Smallint read Get_ActiveViewIndex;
    property ViewCount: Smallint read Get_ViewCount;
    property IsBusy: WordBool read Get_IsBusy;
    property EnablePopupMenu: WordBool read Get_EnablePopupMenu write Set_EnablePopupMenu;
    property EnableExportButton: WordBool read Get_EnableExportButton write Set_EnableExportButton;
    property EnableSearchExpertButton: WordBool read Get_EnableSearchExpertButton write Set_EnableSearchExpertButton;
    property EnableHelpButton: WordBool read Get_EnableHelpButton write Set_EnableHelpButton;
    property LaunchHTTPHyperlinksInNewBrowser: WordBool read Get_LaunchHTTPHyperlinksInNewBrowser write Set_LaunchHTTPHyperlinksInNewBrowser;
  end;

// *********************************************************************//
// DispIntf:  ICrystalReportViewer9Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3C9EEBE5-09AB-4EBB-9B42-A25FD57F19C0}
// *********************************************************************//
  ICrystalReportViewer9Disp = dispinterface
    ['{3C9EEBE5-09AB-4EBB-9B42-A25FD57F19C0}']
    property ReportSource: IUnknown dispid 250;
    property DisplayGroupTree: WordBool dispid 251;
    property DisplayToolbar: WordBool dispid 252;
    property EnableGroupTree: WordBool dispid 253;
    property EnableNavigationControls: WordBool dispid 254;
    property EnableStopButton: WordBool dispid 255;
    property EnablePrintButton: WordBool dispid 256;
    property EnableZoomControl: WordBool dispid 257;
    property EnableCloseButton: WordBool dispid 258;
    property EnableProgressControl: WordBool dispid 259;
    property EnableSearchControl: WordBool dispid 260;
    property EnableRefreshButton: WordBool dispid 261;
    property EnableDrillDown: WordBool dispid 262;
    property EnableAnimationCtrl: WordBool dispid 263;
    property EnableSelectExpertButton: WordBool dispid 264;
    procedure ViewReport; dispid 265;
    property EnableToolbar: WordBool dispid 340;
    property DisplayBorder: WordBool dispid 341;
    property DisplayTabs: WordBool dispid 342;
    property DisplayBackgroundEdge: WordBool dispid 343;
    property SelectionFormula: WideString dispid 344;
    property TrackCursorInfo: ICRVTrackCursorInfo readonly dispid 345;
    property ActiveViewIndex: Smallint readonly dispid 346;
    property ViewCount: Smallint readonly dispid 347;
    procedure ActivateView(Index: OleVariant); dispid 348;
    procedure AddView(GroupPath: OleVariant); dispid 349;
    procedure CloseView(Index: OleVariant); dispid 350;
    function GetViewPath(Index: Smallint): OleVariant; dispid 351;
    procedure PrintReport; dispid 352;
    procedure Refresh; dispid 353;
    procedure SearchForText(const Text: WideString); dispid 354;
    procedure ShowFirstPage; dispid 355;
    procedure ShowNextPage; dispid 356;
    procedure ShowPreviousPage; dispid 357;
    procedure ShowLastPage; dispid 358;
    procedure ShowNthPage(PageNumber: Smallint); dispid 359;
    procedure Zoom(ZoomLevel: Smallint); dispid 360;
    function GetCurrentPageNumber: Integer; dispid 361;
    procedure ShowGroup(GroupPath: OleVariant); dispid 362;
    property IsBusy: WordBool readonly dispid 363;
    property EnablePopupMenu: WordBool dispid 364;
    property EnableExportButton: WordBool dispid 365;
    property EnableSearchExpertButton: WordBool dispid 367;
    procedure SearchByFormula(const formula: WideString); dispid 368;
    function GetViewName(out pTabName: WideString): WideString; dispid 369;
    property EnableHelpButton: WordBool dispid 370;
    function GetGroup: OleVariant; dispid 400;
    procedure GetLastPageNumber(out pageN: Integer; out lastPageKnown: WordBool); dispid 401;
    procedure RefreshEx(refreshServerData: WordBool); dispid 402;
    property LaunchHTTPHyperlinksInNewBrowser: WordBool dispid 500;
  end;

// *********************************************************************//
// Interface: ICrystalReportViewer10
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9D1DDA40-63B4-4346-9298-EABB00735AAB}
// *********************************************************************//
  ICrystalReportViewer10 = interface(ICrystalReportViewer9)
    ['{9D1DDA40-63B4-4346-9298-EABB00735AAB}']
    function Get_EnableLogonPrompts: WordBool; safecall;
    procedure Set_EnableLogonPrompts(pVal: WordBool); safecall;
    property EnableLogonPrompts: WordBool read Get_EnableLogonPrompts write Set_EnableLogonPrompts;
  end;

// *********************************************************************//
// DispIntf:  ICrystalReportViewer10Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9D1DDA40-63B4-4346-9298-EABB00735AAB}
// *********************************************************************//
  ICrystalReportViewer10Disp = dispinterface
    ['{9D1DDA40-63B4-4346-9298-EABB00735AAB}']
    property EnableLogonPrompts: WordBool dispid 600;
    property ReportSource: IUnknown dispid 250;
    property DisplayGroupTree: WordBool dispid 251;
    property DisplayToolbar: WordBool dispid 252;
    property EnableGroupTree: WordBool dispid 253;
    property EnableNavigationControls: WordBool dispid 254;
    property EnableStopButton: WordBool dispid 255;
    property EnablePrintButton: WordBool dispid 256;
    property EnableZoomControl: WordBool dispid 257;
    property EnableCloseButton: WordBool dispid 258;
    property EnableProgressControl: WordBool dispid 259;
    property EnableSearchControl: WordBool dispid 260;
    property EnableRefreshButton: WordBool dispid 261;
    property EnableDrillDown: WordBool dispid 262;
    property EnableAnimationCtrl: WordBool dispid 263;
    property EnableSelectExpertButton: WordBool dispid 264;
    procedure ViewReport; dispid 265;
    property EnableToolbar: WordBool dispid 340;
    property DisplayBorder: WordBool dispid 341;
    property DisplayTabs: WordBool dispid 342;
    property DisplayBackgroundEdge: WordBool dispid 343;
    property SelectionFormula: WideString dispid 344;
    property TrackCursorInfo: ICRVTrackCursorInfo readonly dispid 345;
    property ActiveViewIndex: Smallint readonly dispid 346;
    property ViewCount: Smallint readonly dispid 347;
    procedure ActivateView(Index: OleVariant); dispid 348;
    procedure AddView(GroupPath: OleVariant); dispid 349;
    procedure CloseView(Index: OleVariant); dispid 350;
    function GetViewPath(Index: Smallint): OleVariant; dispid 351;
    procedure PrintReport; dispid 352;
    procedure Refresh; dispid 353;
    procedure SearchForText(const Text: WideString); dispid 354;
    procedure ShowFirstPage; dispid 355;
    procedure ShowNextPage; dispid 356;
    procedure ShowPreviousPage; dispid 357;
    procedure ShowLastPage; dispid 358;
    procedure ShowNthPage(PageNumber: Smallint); dispid 359;
    procedure Zoom(ZoomLevel: Smallint); dispid 360;
    function GetCurrentPageNumber: Integer; dispid 361;
    procedure ShowGroup(GroupPath: OleVariant); dispid 362;
    property IsBusy: WordBool readonly dispid 363;
    property EnablePopupMenu: WordBool dispid 364;
    property EnableExportButton: WordBool dispid 365;
    property EnableSearchExpertButton: WordBool dispid 367;
    procedure SearchByFormula(const formula: WideString); dispid 368;
    function GetViewName(out pTabName: WideString): WideString; dispid 369;
    property EnableHelpButton: WordBool dispid 370;
    function GetGroup: OleVariant; dispid 400;
    procedure GetLastPageNumber(out pageN: Integer; out lastPageKnown: WordBool); dispid 401;
    procedure RefreshEx(refreshServerData: WordBool); dispid 402;
    property LaunchHTTPHyperlinksInNewBrowser: WordBool dispid 500;
  end;

// *********************************************************************//
// Interface: ICRVTrackCursorInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13FA5946-561C-11D1-BE3F-00A0C95A6A5C}
// *********************************************************************//
  ICRVTrackCursorInfo = interface(IDispatch)
    ['{13FA5946-561C-11D1-BE3F-00A0C95A6A5C}']
    function Get_DetailAreaCursor: CRTrackCursor; safecall;
    procedure Set_DetailAreaCursor(pVal: CRTrackCursor); safecall;
    function Get_DetailAreaFieldCursor: CRTrackCursor; safecall;
    procedure Set_DetailAreaFieldCursor(pVal: CRTrackCursor); safecall;
    function Get_GraphCursor: CRTrackCursor; safecall;
    procedure Set_GraphCursor(pVal: CRTrackCursor); safecall;
    function Get_GroupAreaCursor: CRTrackCursor; safecall;
    procedure Set_GroupAreaCursor(pVal: CRTrackCursor); safecall;
    function Get_GroupAreaFieldCursor: CRTrackCursor; safecall;
    procedure Set_GroupAreaFieldCursor(pVal: CRTrackCursor); safecall;
    property DetailAreaCursor: CRTrackCursor read Get_DetailAreaCursor write Set_DetailAreaCursor;
    property DetailAreaFieldCursor: CRTrackCursor read Get_DetailAreaFieldCursor write Set_DetailAreaFieldCursor;
    property GraphCursor: CRTrackCursor read Get_GraphCursor write Set_GraphCursor;
    property GroupAreaCursor: CRTrackCursor read Get_GroupAreaCursor write Set_GroupAreaCursor;
    property GroupAreaFieldCursor: CRTrackCursor read Get_GroupAreaFieldCursor write Set_GroupAreaFieldCursor;
  end;

// *********************************************************************//
// DispIntf:  ICRVTrackCursorInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13FA5946-561C-11D1-BE3F-00A0C95A6A5C}
// *********************************************************************//
  ICRVTrackCursorInfoDisp = dispinterface
    ['{13FA5946-561C-11D1-BE3F-00A0C95A6A5C}']
    property DetailAreaCursor: CRTrackCursor dispid 1;
    property DetailAreaFieldCursor: CRTrackCursor dispid 2;
    property GraphCursor: CRTrackCursor dispid 3;
    property GroupAreaCursor: CRTrackCursor dispid 4;
    property GroupAreaFieldCursor: CRTrackCursor dispid 5;
  end;

// *********************************************************************//
// Interface: ICRFields
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75C66E65-8949-11D2-BF6D-00A0C9DA4FA2}
// *********************************************************************//
  ICRFields = interface(IDispatch)
    ['{75C66E65-8949-11D2-BF6D-00A0C9DA4FA2}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): OleVariant; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_SelectedFieldIndex: Integer; safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: OleVariant read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
    property SelectedFieldIndex: Integer read Get_SelectedFieldIndex;
  end;

// *********************************************************************//
// DispIntf:  ICRFieldsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75C66E65-8949-11D2-BF6D-00A0C9DA4FA2}
// *********************************************************************//
  ICRFieldsDisp = dispinterface
    ['{75C66E65-8949-11D2-BF6D-00A0C9DA4FA2}']
    property Count: Integer readonly dispid 1;
    property Item[Index: Integer]: OleVariant readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property SelectedFieldIndex: Integer readonly dispid 2;
  end;

// *********************************************************************//
// Interface: ICollectCRFields
// Flags:     (0)
// GUID:      {81CBB971-8E0A-11D2-BF71-00A0C9DA4FA2}
// *********************************************************************//
  ICollectCRFields = interface(IUnknown)
    ['{81CBB971-8E0A-11D2-BF71-00A0C9DA4FA2}']
    function GetItem(Index: Integer; out ppField: ICRField): HResult; stdcall;
    function GetCount(out pVal: Integer): HResult; stdcall;
    function EnumCRFields(out ppEnum: IEnumCRFields): HResult; stdcall;
    function GetSelectedFieldIndex(out pVal: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICRField
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75C66E67-8949-11D2-BF6D-00A0C9DA4FA2}
// *********************************************************************//
  ICRField = interface(IDispatch)
    ['{75C66E67-8949-11D2-BF6D-00A0C9DA4FA2}']
    function Get_Value: OleVariant; safecall;
    function Get_FieldType: CRFieldType; safecall;
    function Get_Name: WideString; safecall;
    function Get_IsRawData: WordBool; safecall;
    property Value: OleVariant read Get_Value;
    property FieldType: CRFieldType read Get_FieldType;
    property Name: WideString read Get_Name;
    property IsRawData: WordBool read Get_IsRawData;
  end;

// *********************************************************************//
// DispIntf:  ICRFieldDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75C66E67-8949-11D2-BF6D-00A0C9DA4FA2}
// *********************************************************************//
  ICRFieldDisp = dispinterface
    ['{75C66E67-8949-11D2-BF6D-00A0C9DA4FA2}']
    property Value: OleVariant readonly dispid 0;
    property FieldType: CRFieldType readonly dispid 1;
    property Name: WideString readonly dispid 2;
    property IsRawData: WordBool readonly dispid 3;
  end;

// *********************************************************************//
// Interface: IEnumCRFields
// Flags:     (0)
// GUID:      {9E088781-8E06-11D2-BF71-00A0C9DA4FA2}
// *********************************************************************//
  IEnumCRFields = interface(IUnknown)
    ['{9E088781-8E06-11D2-BF71-00A0C9DA4FA2}']
    function Next(celt: LongWord; out rgptr: ICRField; out pcFetched: LongWord): HResult; stdcall;
    function Skip(celt: LongWord): HResult; stdcall;
    function Reset: HResult; stdcall;
    function Clone(out ppEnum: IEnumCRFields): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICRVEventInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75347085-7260-11D1-BE46-00A0C95A6A5C}
// *********************************************************************//
  ICRVEventInfo = interface(IDispatch)
    ['{75347085-7260-11D1-BE46-00A0C95A6A5C}']
    function Get_Text: WideString; safecall;
    function Get_Index: Integer; safecall;
    function Get_ParentIndex: Integer; safecall;
    function Get_type_: CRObjectType; safecall;
    function Get_CanDrillDown: WordBool; safecall;
    function GetFields: OleVariant; safecall;
    property Text: WideString read Get_Text;
    property Index: Integer read Get_Index;
    property ParentIndex: Integer read Get_ParentIndex;
    property type_: CRObjectType read Get_type_;
    property CanDrillDown: WordBool read Get_CanDrillDown;
  end;

// *********************************************************************//
// DispIntf:  ICRVEventInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75347085-7260-11D1-BE46-00A0C95A6A5C}
// *********************************************************************//
  ICRVEventInfoDisp = dispinterface
    ['{75347085-7260-11D1-BE46-00A0C95A6A5C}']
    property Text: WideString readonly dispid 1;
    property Index: Integer readonly dispid 2;
    property ParentIndex: Integer readonly dispid 3;
    property type_: CRObjectType readonly dispid 4;
    property CanDrillDown: WordBool readonly dispid 5;
    function GetFields: OleVariant; dispid 6;
  end;

// *********************************************************************//
// Interface: ICrystalReportViewerViewInfo
// Flags:     (0)
// GUID:      {04AA0267-F803-44DD-AA9B-D1265FCCF0F4}
// *********************************************************************//
  ICrystalReportViewerViewInfo = interface(IUnknown)
    ['{04AA0267-F803-44DD-AA9B-D1265FCCF0F4}']
    function GetReportName(out pName: WideString): HResult; stdcall;
    function GetSubreportName(out pName: WideString): HResult; stdcall;
    function GetGroupPath(out pVal: OleVariant): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICrystalReportSourceRouter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A0E5F37D-CA67-11D1-A817-00A0C92784CD}
// *********************************************************************//
  ICrystalReportSourceRouter = interface(IDispatch)
    ['{A0E5F37D-CA67-11D1-A817-00A0C92784CD}']
    procedure AddReport(const pUnknown: IUnknown); safecall;
  end;

// *********************************************************************//
// DispIntf:  ICrystalReportSourceRouterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A0E5F37D-CA67-11D1-A817-00A0C92784CD}
// *********************************************************************//
  ICrystalReportSourceRouterDisp = dispinterface
    ['{A0E5F37D-CA67-11D1-A817-00A0C92784CD}']
    procedure AddReport(const pUnknown: IUnknown); dispid 1;
  end;

// *********************************************************************//
// Interface: ICrystalReportSourcePackage
// Flags:     (272) Hidden OleAutomation
// GUID:      {3DCC8FB1-C434-11D1-A817-00A0C92784CD}
// *********************************************************************//
  ICrystalReportSourcePackage = interface(IUnknown)
    ['{3DCC8FB1-C434-11D1-A817-00A0C92784CD}']
    function EnumCrystalReportSource(out ppEnum: IEnumCrystalReportSource): HResult; stdcall;
    function GetCount(out plCount: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IEnumCrystalReportSource
// Flags:     (272) Hidden OleAutomation
// GUID:      {3DCC8FB2-C434-11D1-A817-00A0C92784CD}
// *********************************************************************//
  IEnumCrystalReportSource = interface(IUnknown)
    ['{3DCC8FB2-C434-11D1-A817-00A0C92784CD}']
    function Next(celt: LongWord; out rgelt: IUnknown; out pceltFetched: LongWord): HResult; stdcall;
    function Skip(celt: LongWord): HResult; stdcall;
    function Reset: HResult; stdcall;
    function Clone(out ppEnum: IEnumCrystalReportSource): HResult; stdcall;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TCrystalActiveXReportViewer
// Help String      : Crystal ActiveX Report Viewer Control 10.0
// Default Interface: ICrystalReportViewer10
// Def. Intf. DISP? : No
// Event   Interface: _ICRViewerEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCrystalActiveXReportViewerCloseButtonClicked = procedure(ASender: TObject; var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerFirstPageButtonClicked = procedure(ASender: TObject; var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerLastPageButtonClicked = procedure(ASender: TObject; var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerPrevPageButtonClicked = procedure(ASender: TObject; var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerNextPageButtonClicked = procedure(ASender: TObject; var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerGoToPageNClicked = procedure(ASender: TObject; var UseDefault: WordBool; 
                                                                            PageNumber: Smallint) of object;
  TCrystalActiveXReportViewerStopButtonClicked = procedure(ASender: TObject; loadingType: CRLoadingType; 
                                                                             var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerRefreshButtonClicked = procedure(ASender: TObject; var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerPrintButtonClicked = procedure(ASender: TObject; var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerGroupTreeButtonClicked = procedure(ASender: TObject; Visible: WordBool) of object;
  TCrystalActiveXReportViewerZoomLevelChanged = procedure(ASender: TObject; ZoomLevel: Smallint) of object;
  TCrystalActiveXReportViewerSearchButtonClicked = procedure(ASender: TObject; const searchText: WideString; 
                                                                               var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerDrillOnGroup = procedure(ASender: TObject; var GroupNameList: OleVariant; 
                                                                        DrillType: CRDrillType; 
                                                                        var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerDrillOnDetail = procedure(ASender: TObject; var FieldValues: OleVariant; 
                                                                         SelectedFieldIndex: Integer; 
                                                                         var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerShowGroup = procedure(ASender: TObject; var GroupNameList: OleVariant; 
                                                                     var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerSelectionFormulaButtonClicked = procedure(ASender: TObject; out selctionFormula: WideString; 
                                                                                         var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerSelectionFormulaBuilt = procedure(ASender: TObject; const selctionFormula: WideString; 
                                                                                 var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerClicked = procedure(ASender: TObject; x: Integer; y: Integer; 
                                                                   var EventInfo: OleVariant; 
                                                                   var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerDblClicked = procedure(ASender: TObject; x: Integer; y: Integer; 
                                                                      var EventInfo: OleVariant; 
                                                                      var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerDownloadStarted = procedure(ASender: TObject; loadingType: CRLoadingType) of object;
  TCrystalActiveXReportViewerDownloadFinished = procedure(ASender: TObject; loadingType: CRLoadingType) of object;
  TCrystalActiveXReportViewerViewChanging = procedure(ASender: TObject; oldViewIndex: Integer; 
                                                                        newViewIndex: Integer) of object;
  TCrystalActiveXReportViewerViewChanged = procedure(ASender: TObject; oldViewIndex: Integer; 
                                                                       newViewIndex: Integer) of object;
  TCrystalActiveXReportViewerOnReportSourceError = procedure(ASender: TObject; const errorMsg: WideString; 
                                                                               errorCode: Integer; 
                                                                               var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerExportButtonClicked = procedure(ASender: TObject; var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerSearchExpertButtonClicked = procedure(ASender: TObject; var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerDrillOnGraph = procedure(ASender: TObject; PageNumber: Integer; 
                                                                        x: Integer; y: Integer; 
                                                                        var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerDrillOnSubreport = procedure(ASender: TObject; var GroupNameList: OleVariant; 
                                                                            const SubreportName: WideString; 
                                                                            const Title: WideString; 
                                                                            PageNumber: Integer; 
                                                                            Index: Integer; 
                                                                            var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerFocusChanged = procedure(ASender: TObject; hasFocus: WordBool) of object;
  TCrystalActiveXReportViewerOnContextMenu = procedure(ASender: TObject; ObjectDescription: OleVariant; 
                                                                         x: Integer; y: Integer; 
                                                                         var UseDefault: WordBool) of object;
  TCrystalActiveXReportViewerOnChangeObjectRect = procedure(ASender: TObject; ObjectDescription: OleVariant; 
                                                                              x: Integer; 
                                                                              y: Integer; 
                                                                              width: Integer; 
                                                                              height: Integer) of object;
  TCrystalActiveXReportViewerOnLaunchHyperlink = procedure(ASender: TObject; var Hyperlink: WideString; 
                                                                             var UseDefault: WordBool) of object;

  TCrystalActiveXReportViewer = class(TOleControl)
  private
    FOnCloseButtonClicked: TCrystalActiveXReportViewerCloseButtonClicked;
    FOnFirstPageButtonClicked: TCrystalActiveXReportViewerFirstPageButtonClicked;
    FOnLastPageButtonClicked: TCrystalActiveXReportViewerLastPageButtonClicked;
    FOnPrevPageButtonClicked: TCrystalActiveXReportViewerPrevPageButtonClicked;
    FOnNextPageButtonClicked: TCrystalActiveXReportViewerNextPageButtonClicked;
    FOnGoToPageNClicked: TCrystalActiveXReportViewerGoToPageNClicked;
    FOnStopButtonClicked: TCrystalActiveXReportViewerStopButtonClicked;
    FOnRefreshButtonClicked: TCrystalActiveXReportViewerRefreshButtonClicked;
    FOnPrintButtonClicked: TCrystalActiveXReportViewerPrintButtonClicked;
    FOnGroupTreeButtonClicked: TCrystalActiveXReportViewerGroupTreeButtonClicked;
    FOnZoomLevelChanged: TCrystalActiveXReportViewerZoomLevelChanged;
    FOnSearchButtonClicked: TCrystalActiveXReportViewerSearchButtonClicked;
    FOnDrillOnGroup: TCrystalActiveXReportViewerDrillOnGroup;
    FOnDrillOnDetail: TCrystalActiveXReportViewerDrillOnDetail;
    FOnShowGroup: TCrystalActiveXReportViewerShowGroup;
    FOnSelectionFormulaButtonClicked: TCrystalActiveXReportViewerSelectionFormulaButtonClicked;
    FOnSelectionFormulaBuilt: TCrystalActiveXReportViewerSelectionFormulaBuilt;
    FOnClicked: TCrystalActiveXReportViewerClicked;
    FOnDblClicked: TCrystalActiveXReportViewerDblClicked;
    FOnDownloadStarted: TCrystalActiveXReportViewerDownloadStarted;
    FOnDownloadFinished: TCrystalActiveXReportViewerDownloadFinished;
    FOnViewChanging: TCrystalActiveXReportViewerViewChanging;
    FOnViewChanged: TCrystalActiveXReportViewerViewChanged;
    FOnReportSourceError: TCrystalActiveXReportViewerOnReportSourceError;
    FOnExportButtonClicked: TCrystalActiveXReportViewerExportButtonClicked;
    FOnSearchExpertButtonClicked: TCrystalActiveXReportViewerSearchExpertButtonClicked;
    FOnDrillOnGraph: TCrystalActiveXReportViewerDrillOnGraph;
    FOnDrillOnSubreport: TCrystalActiveXReportViewerDrillOnSubreport;
    FOnHelpButtonClicked: TNotifyEvent;
    FOnFocusChanged: TCrystalActiveXReportViewerFocusChanged;
    FOnContextMenu: TCrystalActiveXReportViewerOnContextMenu;
    FOnChangeObjectRect: TCrystalActiveXReportViewerOnChangeObjectRect;
    FOnLaunchHyperlink: TCrystalActiveXReportViewerOnLaunchHyperlink;
    FIntf: ICrystalReportViewer10;
    function  GetControlInterface: ICrystalReportViewer10;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_ReportSource: IUnknown;
    procedure Set_ReportSource(const pVal: IUnknown);
    function Get_TrackCursorInfo: ICRVTrackCursorInfo;
  public
    procedure ViewReport;
    procedure ActivateView(Index: OleVariant);
    procedure AddView(GroupPath: OleVariant);
    procedure CloseView(Index: OleVariant);
    function GetViewPath(Index: Smallint): OleVariant;
    procedure PrintReport;
    procedure Refresh;
    procedure SearchForText(const Text: WideString);
    procedure ShowFirstPage;
    procedure ShowNextPage;
    procedure ShowPreviousPage;
    procedure ShowLastPage;
    procedure ShowNthPage(PageNumber: Smallint);
    procedure Zoom(ZoomLevel: Smallint);
    function GetCurrentPageNumber: Integer;
    procedure ShowGroup(GroupPath: OleVariant);
    procedure SearchByFormula(const formula: WideString);
    function GetViewName(out pTabName: WideString): WideString;
    function GetGroup: OleVariant;
    procedure GetLastPageNumber(out pageN: Integer; out lastPageKnown: WordBool);
    procedure RefreshEx(refreshServerData: WordBool);
    property  ControlInterface: ICrystalReportViewer10 read GetControlInterface;
    property  DefaultInterface: ICrystalReportViewer10 read GetControlInterface;
    property ReportSource: IUnknown index 250 read GetIUnknownProp write SetIUnknownProp;
    property SelectionFormula: WideString index 344 read GetWideStringProp write SetWideStringProp;
    property TrackCursorInfo: ICRVTrackCursorInfo read Get_TrackCursorInfo;
    property ActiveViewIndex: Smallint index 346 read GetSmallintProp;
    property ViewCount: Smallint index 347 read GetSmallintProp;
    property IsBusy: WordBool index 363 read GetWordBoolProp;
    property EnableLogonPrompts: WordBool index 600 read GetWordBoolProp write SetWordBoolProp;
  published
    property Anchors;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property DisplayGroupTree: WordBool index 251 read GetWordBoolProp write SetWordBoolProp stored False;
    property DisplayToolbar: WordBool index 252 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableGroupTree: WordBool index 253 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableNavigationControls: WordBool index 254 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableStopButton: WordBool index 255 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnablePrintButton: WordBool index 256 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableZoomControl: WordBool index 257 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableCloseButton: WordBool index 258 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableProgressControl: WordBool index 259 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableSearchControl: WordBool index 260 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableRefreshButton: WordBool index 261 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableDrillDown: WordBool index 262 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableAnimationCtrl: WordBool index 263 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableSelectExpertButton: WordBool index 264 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableToolbar: WordBool index 340 read GetWordBoolProp write SetWordBoolProp stored False;
    property DisplayBorder: WordBool index 341 read GetWordBoolProp write SetWordBoolProp stored False;
    property DisplayTabs: WordBool index 342 read GetWordBoolProp write SetWordBoolProp stored False;
    property DisplayBackgroundEdge: WordBool index 343 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnablePopupMenu: WordBool index 364 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableExportButton: WordBool index 365 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableSearchExpertButton: WordBool index 367 read GetWordBoolProp write SetWordBoolProp stored False;
    property EnableHelpButton: WordBool index 370 read GetWordBoolProp write SetWordBoolProp stored False;
    property LaunchHTTPHyperlinksInNewBrowser: WordBool index 500 read GetWordBoolProp write SetWordBoolProp stored False;
    property OnCloseButtonClicked: TCrystalActiveXReportViewerCloseButtonClicked read FOnCloseButtonClicked write FOnCloseButtonClicked;
    property OnFirstPageButtonClicked: TCrystalActiveXReportViewerFirstPageButtonClicked read FOnFirstPageButtonClicked write FOnFirstPageButtonClicked;
    property OnLastPageButtonClicked: TCrystalActiveXReportViewerLastPageButtonClicked read FOnLastPageButtonClicked write FOnLastPageButtonClicked;
    property OnPrevPageButtonClicked: TCrystalActiveXReportViewerPrevPageButtonClicked read FOnPrevPageButtonClicked write FOnPrevPageButtonClicked;
    property OnNextPageButtonClicked: TCrystalActiveXReportViewerNextPageButtonClicked read FOnNextPageButtonClicked write FOnNextPageButtonClicked;
    property OnGoToPageNClicked: TCrystalActiveXReportViewerGoToPageNClicked read FOnGoToPageNClicked write FOnGoToPageNClicked;
    property OnStopButtonClicked: TCrystalActiveXReportViewerStopButtonClicked read FOnStopButtonClicked write FOnStopButtonClicked;
    property OnRefreshButtonClicked: TCrystalActiveXReportViewerRefreshButtonClicked read FOnRefreshButtonClicked write FOnRefreshButtonClicked;
    property OnPrintButtonClicked: TCrystalActiveXReportViewerPrintButtonClicked read FOnPrintButtonClicked write FOnPrintButtonClicked;
    property OnGroupTreeButtonClicked: TCrystalActiveXReportViewerGroupTreeButtonClicked read FOnGroupTreeButtonClicked write FOnGroupTreeButtonClicked;
    property OnZoomLevelChanged: TCrystalActiveXReportViewerZoomLevelChanged read FOnZoomLevelChanged write FOnZoomLevelChanged;
    property OnSearchButtonClicked: TCrystalActiveXReportViewerSearchButtonClicked read FOnSearchButtonClicked write FOnSearchButtonClicked;
    property OnDrillOnGroup: TCrystalActiveXReportViewerDrillOnGroup read FOnDrillOnGroup write FOnDrillOnGroup;
    property OnDrillOnDetail: TCrystalActiveXReportViewerDrillOnDetail read FOnDrillOnDetail write FOnDrillOnDetail;
    property OnShowGroup: TCrystalActiveXReportViewerShowGroup read FOnShowGroup write FOnShowGroup;
    property OnSelectionFormulaButtonClicked: TCrystalActiveXReportViewerSelectionFormulaButtonClicked read FOnSelectionFormulaButtonClicked write FOnSelectionFormulaButtonClicked;
    property OnSelectionFormulaBuilt: TCrystalActiveXReportViewerSelectionFormulaBuilt read FOnSelectionFormulaBuilt write FOnSelectionFormulaBuilt;
    property OnClicked: TCrystalActiveXReportViewerClicked read FOnClicked write FOnClicked;
    property OnDblClicked: TCrystalActiveXReportViewerDblClicked read FOnDblClicked write FOnDblClicked;
    property OnDownloadStarted: TCrystalActiveXReportViewerDownloadStarted read FOnDownloadStarted write FOnDownloadStarted;
    property OnDownloadFinished: TCrystalActiveXReportViewerDownloadFinished read FOnDownloadFinished write FOnDownloadFinished;
    property OnViewChanging: TCrystalActiveXReportViewerViewChanging read FOnViewChanging write FOnViewChanging;
    property OnViewChanged: TCrystalActiveXReportViewerViewChanged read FOnViewChanged write FOnViewChanged;
    property OnReportSourceError: TCrystalActiveXReportViewerOnReportSourceError read FOnReportSourceError write FOnReportSourceError;
    property OnExportButtonClicked: TCrystalActiveXReportViewerExportButtonClicked read FOnExportButtonClicked write FOnExportButtonClicked;
    property OnSearchExpertButtonClicked: TCrystalActiveXReportViewerSearchExpertButtonClicked read FOnSearchExpertButtonClicked write FOnSearchExpertButtonClicked;
    property OnDrillOnGraph: TCrystalActiveXReportViewerDrillOnGraph read FOnDrillOnGraph write FOnDrillOnGraph;
    property OnDrillOnSubreport: TCrystalActiveXReportViewerDrillOnSubreport read FOnDrillOnSubreport write FOnDrillOnSubreport;
    property OnHelpButtonClicked: TNotifyEvent read FOnHelpButtonClicked write FOnHelpButtonClicked;
    property OnFocusChanged: TCrystalActiveXReportViewerFocusChanged read FOnFocusChanged write FOnFocusChanged;
    property OnContextMenu: TCrystalActiveXReportViewerOnContextMenu read FOnContextMenu write FOnContextMenu;
    property OnChangeObjectRect: TCrystalActiveXReportViewerOnChangeObjectRect read FOnChangeObjectRect write FOnChangeObjectRect;
    property OnLaunchHyperlink: TCrystalActiveXReportViewerOnLaunchHyperlink read FOnLaunchHyperlink write FOnLaunchHyperlink;
  end;

// *********************************************************************//
// The Class CoCRVTrackCursorInfo provides a Create and CreateRemote method to          
// create instances of the default interface ICRVTrackCursorInfo exposed by              
// the CoClass CRVTrackCursorInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRVTrackCursorInfo = class
    class function Create: ICRVTrackCursorInfo;
    class function CreateRemote(const MachineName: string): ICRVTrackCursorInfo;
  end;

// *********************************************************************//
// The Class CoCRVFields provides a Create and CreateRemote method to          
// create instances of the default interface ICRFields exposed by              
// the CoClass CRVFields. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRVFields = class
    class function Create: ICRFields;
    class function CreateRemote(const MachineName: string): ICRFields;
  end;

// *********************************************************************//
// The Class CoCRVField provides a Create and CreateRemote method to          
// create instances of the default interface ICRField exposed by              
// the CoClass CRVField. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRVField = class
    class function Create: ICRField;
    class function CreateRemote(const MachineName: string): ICRField;
  end;

// *********************************************************************//
// The Class CoCRVEventInfo provides a Create and CreateRemote method to          
// create instances of the default interface ICRVEventInfo exposed by              
// the CoClass CRVEventInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRVEventInfo = class
    class function Create: ICRVEventInfo;
    class function CreateRemote(const MachineName: string): ICRVEventInfo;
  end;

// *********************************************************************//
// The Class CoCRCrystalReportViewerViewInfo provides a Create and CreateRemote method to          
// create instances of the default interface ICrystalReportViewerViewInfo exposed by              
// the CoClass CRCrystalReportViewerViewInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRCrystalReportViewerViewInfo = class
    class function Create: ICrystalReportViewerViewInfo;
    class function CreateRemote(const MachineName: string): ICrystalReportViewerViewInfo;
  end;

// *********************************************************************//
// The Class CoReportSourceRouter provides a Create and CreateRemote method to          
// create instances of the default interface ICrystalReportSourceRouter exposed by              
// the CoClass ReportSourceRouter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReportSourceRouter = class
    class function Create: ICrystalReportSourceRouter;
    class function CreateRemote(const MachineName: string): ICrystalReportSourceRouter;
  end;

procedure Register;

resourcestring
  dtlServerPage = '(none)';

  dtlOcxPage = '(none)';

implementation

uses ComObj;

procedure TCrystalActiveXReportViewer.InitControlData;
const
  CEventDispIDs: array [0..32] of DWORD = (
    $00000191, $00000192, $00000193, $00000194, $00000195, $00000196,
    $00000197, $00000198, $00000199, $0000019A, $0000019B, $0000019C,
    $0000019D, $0000019E, $0000019F, $000001A0, $000001A1, $000001A2,
    $000001A3, $000001A4, $000001A5, $000001A6, $000001A7, $000001A8,
    $000001A9, $000001AA, $000001AB, $000001AC, $000001AD, $000001AE,
    $000001AF, $000001B0, $000001B1);
  CControlData: TControlData2 = (
    ClassID: '{A1B8A30B-8AAA-4A3E-8869-1DA509E8A011}';
    EventIID: '{CFDF4A60-6FFC-11D1-BE46-00A0C95A6A5C}';
    EventCount: 33;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil (*HR:$80004002*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnCloseButtonClicked) - Cardinal(Self);
end;

procedure TCrystalActiveXReportViewer.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as ICrystalReportViewer10;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TCrystalActiveXReportViewer.GetControlInterface: ICrystalReportViewer10;
begin
  CreateControl;
  Result := FIntf;
end;

function TCrystalActiveXReportViewer.Get_ReportSource: IUnknown;
begin
    Result := DefaultInterface.ReportSource;
end;

procedure TCrystalActiveXReportViewer.Set_ReportSource(const pVal: IUnknown);
begin
  DefaultInterface.Set_ReportSource(pVal);
end;

function TCrystalActiveXReportViewer.Get_TrackCursorInfo: ICRVTrackCursorInfo;
begin
    Result := DefaultInterface.TrackCursorInfo;
end;

procedure TCrystalActiveXReportViewer.ViewReport;
begin
  DefaultInterface.ViewReport;
end;

procedure TCrystalActiveXReportViewer.ActivateView(Index: OleVariant);
begin
  DefaultInterface.ActivateView(Index);
end;

procedure TCrystalActiveXReportViewer.AddView(GroupPath: OleVariant);
begin
  DefaultInterface.AddView(GroupPath);
end;

procedure TCrystalActiveXReportViewer.CloseView(Index: OleVariant);
begin
  DefaultInterface.CloseView(Index);
end;

function TCrystalActiveXReportViewer.GetViewPath(Index: Smallint): OleVariant;
begin
  Result := DefaultInterface.GetViewPath(Index);
end;

procedure TCrystalActiveXReportViewer.PrintReport;
begin
  DefaultInterface.PrintReport;
end;

procedure TCrystalActiveXReportViewer.Refresh;
begin
  DefaultInterface.Refresh;
end;

procedure TCrystalActiveXReportViewer.SearchForText(const Text: WideString);
begin
  DefaultInterface.SearchForText(Text);
end;

procedure TCrystalActiveXReportViewer.ShowFirstPage;
begin
  DefaultInterface.ShowFirstPage;
end;

procedure TCrystalActiveXReportViewer.ShowNextPage;
begin
  DefaultInterface.ShowNextPage;
end;

procedure TCrystalActiveXReportViewer.ShowPreviousPage;
begin
  DefaultInterface.ShowPreviousPage;
end;

procedure TCrystalActiveXReportViewer.ShowLastPage;
begin
  DefaultInterface.ShowLastPage;
end;

procedure TCrystalActiveXReportViewer.ShowNthPage(PageNumber: Smallint);
begin
  DefaultInterface.ShowNthPage(PageNumber);
end;

procedure TCrystalActiveXReportViewer.Zoom(ZoomLevel: Smallint);
begin
  DefaultInterface.Zoom(ZoomLevel);
end;

function TCrystalActiveXReportViewer.GetCurrentPageNumber: Integer;
begin
  Result := DefaultInterface.GetCurrentPageNumber;
end;

procedure TCrystalActiveXReportViewer.ShowGroup(GroupPath: OleVariant);
begin
  DefaultInterface.ShowGroup(GroupPath);
end;

procedure TCrystalActiveXReportViewer.SearchByFormula(const formula: WideString);
begin
  DefaultInterface.SearchByFormula(formula);
end;

function TCrystalActiveXReportViewer.GetViewName(out pTabName: WideString): WideString;
begin
  Result := DefaultInterface.GetViewName(pTabName);
end;

function TCrystalActiveXReportViewer.GetGroup: OleVariant;
begin
  Result := DefaultInterface.GetGroup;
end;

procedure TCrystalActiveXReportViewer.GetLastPageNumber(out pageN: Integer; 
                                                        out lastPageKnown: WordBool);
begin
  DefaultInterface.GetLastPageNumber(pageN, lastPageKnown);
end;

procedure TCrystalActiveXReportViewer.RefreshEx(refreshServerData: WordBool);
begin
  DefaultInterface.RefreshEx(refreshServerData);
end;

class function CoCRVTrackCursorInfo.Create: ICRVTrackCursorInfo;
begin
  Result := CreateComObject(CLASS_CRVTrackCursorInfo) as ICRVTrackCursorInfo;
end;

class function CoCRVTrackCursorInfo.CreateRemote(const MachineName: string): ICRVTrackCursorInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRVTrackCursorInfo) as ICRVTrackCursorInfo;
end;

class function CoCRVFields.Create: ICRFields;
begin
  Result := CreateComObject(CLASS_CRVFields) as ICRFields;
end;

class function CoCRVFields.CreateRemote(const MachineName: string): ICRFields;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRVFields) as ICRFields;
end;

class function CoCRVField.Create: ICRField;
begin
  Result := CreateComObject(CLASS_CRVField) as ICRField;
end;

class function CoCRVField.CreateRemote(const MachineName: string): ICRField;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRVField) as ICRField;
end;

class function CoCRVEventInfo.Create: ICRVEventInfo;
begin
  Result := CreateComObject(CLASS_CRVEventInfo) as ICRVEventInfo;
end;

class function CoCRVEventInfo.CreateRemote(const MachineName: string): ICRVEventInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRVEventInfo) as ICRVEventInfo;
end;

class function CoCRCrystalReportViewerViewInfo.Create: ICrystalReportViewerViewInfo;
begin
  Result := CreateComObject(CLASS_CRCrystalReportViewerViewInfo) as ICrystalReportViewerViewInfo;
end;

class function CoCRCrystalReportViewerViewInfo.CreateRemote(const MachineName: string): ICrystalReportViewerViewInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRCrystalReportViewerViewInfo) as ICrystalReportViewerViewInfo;
end;

class function CoReportSourceRouter.Create: ICrystalReportSourceRouter;
begin
  Result := CreateComObject(CLASS_ReportSourceRouter) as ICrystalReportSourceRouter;
end;

class function CoReportSourceRouter.CreateRemote(const MachineName: string): ICrystalReportSourceRouter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReportSourceRouter) as ICrystalReportSourceRouter;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TCrystalActiveXReportViewer]);
end;

end.
