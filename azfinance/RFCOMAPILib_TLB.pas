unit RFCOMAPILib_TLB;

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
// File generated on 13/08/2008 01:26:51 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\RightFax\Shared Files\rfcomapi.dll (1)
// LIBID: {FD0FBD6B-7484-4E50-B95A-AC5E3A5AFFAE}
// LCID: 0
// Helpfile: 
// HelpString: RightFax COM API Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// Errors:
//   Hint: Symbol 'False' renamed to 'False_'
//   Hint: Symbol 'True' renamed to 'True_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  RFCOMAPILibMajorVersion = 1;
  RFCOMAPILibMinorVersion = 0;

  LIBID_RFCOMAPILib: TGUID = '{FD0FBD6B-7484-4E50-B95A-AC5E3A5AFFAE}';

  DIID__DFaxServerEvents: TGUID = '{697C743A-86E2-42E9-B6AB-4F4916285795}';
  IID_CompleteEvent: TGUID = '{76C38BF1-4AF8-4E47-A2EE-C269D58D3BFA}';
  IID_Fax: TGUID = '{18D3EC32-5B38-4A1D-966A-994847C90992}';
  IID_User: TGUID = '{2AD3B468-CED5-40AC-A217-03BB3D8EA1AA}';
  IID_Faxes: TGUID = '{6BAD6E7E-B55B-4CD7-AA4F-E1D8FDF80B47}';
  IID_Group: TGUID = '{A4412691-8414-4971-846D-2740A7895082}';
  IID_Users: TGUID = '{BAF8D983-E7FE-4503-BFE0-D5A6530B57B3}';
  IID_Folders: TGUID = '{44E62C87-E2A5-4A61-BD69-6C0850A7AF94}';
  IID_Folder: TGUID = '{0187CA55-C98D-48C1-8A90-4850DA384BCA}';
  IID_Delegates: TGUID = '{62551E19-012A-48A9-A606-3571C036C8C2}';
  IID_Delegate: TGUID = '{6D4B7672-95BE-468E-A718-EF53E3A5DE02}';
  IID_PhoneBook: TGUID = '{F54CE5B2-D3F1-41C6-8D59-FE6BE3C6CEA6}';
  IID_PhoneItem: TGUID = '{3F16ECA5-C7B3-4FF0-9D99-3B2179E7DC15}';
  IID_Printer: TGUID = '{59800B02-BBA4-40CC-A8F7-DCE63578F53B}';
  IID_PrintRequest: TGUID = '{3F2247A4-84F1-4CAA-90D8-69AA62CCEA8E}';
  IID_BillingCode: TGUID = '{4A54921D-B729-442A-9299-329B50F600F1}';
  IID_Attachments: TGUID = '{754E1277-3827-48C7-BB0B-025B403AC0FD}';
  IID_Attachment: TGUID = '{5E7A3FC9-B741-4FB7-90EB-B24160AAB58F}';
  IID_LibraryDocument: TGUID = '{BDA22AE4-9456-4854-A8FF-F330B918C582}';
  IID_Form: TGUID = '{9F386618-764B-48F8-A5BF-3682B03DE840}';
  IID_FaxHistories: TGUID = '{C8B53D39-DB33-4F45-AB31-27D13F884A43}';
  IID_PhoneItemGroup: TGUID = '{1FBB63BE-889D-4E36-809C-8AA32DA9BF3A}';
  IID_ArchiveEvent: TGUID = '{4A9D27C2-F039-45D2-B4B9-2DDB21133CE8}';
  IID_MessageEvent: TGUID = '{ECD9B015-9CF1-4E69-832F-AF15EF2DF172}';
  IID_ValidateEvent: TGUID = '{B5394069-CAFA-4216-B977-05A4E2868F97}';
  IID_MessageRouteEvent: TGUID = '{AF1C98DF-51B7-4C9C-85D5-B2F14005F4BF}';
  IID_IFaxServer: TGUID = '{24B5EE30-AA31-4554-A36F-F77009E855C3}';
  IID_FaxEx1: TGUID = '{5C067FFE-F5E0-4086-B006-7FCE9CE85A69}';
  IID_LibraryDocuments: TGUID = '{A387FEF3-F14B-4E8F-A89D-81FE3FB1F3EC}';
  IID_Groups: TGUID = '{D840A333-33A6-45B1-BABF-6105AE309EE6}';
  IID_Forms: TGUID = '{2C074DE2-293E-44C2-A054-8A0E5379E74C}';
  IID_Events: TGUID = '{9B49326A-0B60-49F4-94E2-2638FFEFE349}';
  IID_BillingCodes: TGUID = '{CF779514-DA29-4B9E-9E3A-82920E8B1B43}';
  IID_Printers: TGUID = '{D12D627C-C0C6-414D-80A7-8C2EF5971D25}';
  IID_CoverSheets: TGUID = '{633CACEF-45D5-48B9-98CD-1B4E4D0566BF}';
  IID_CoverSheet: TGUID = '{E8F7343D-1A5D-42C2-BB37-4DC5C50AD609}';
  IID_Signatures: TGUID = '{19982F6C-9807-41BF-9368-B32AE07E9705}';
  IID_Signature: TGUID = '{6D57212A-F2DC-4D98-860A-3BE3DCAC9397}';
  IID_ServerInfo: TGUID = '{CDAECB2A-AC43-44AA-AC96-68FEDCA66780}';
  IID_ServerStats: TGUID = '{5DC26049-0AE4-4587-9314-63DA28C634F6}';
  IID_FaxHistory: TGUID = '{F9DD61B4-727F-4C97-B270-1589A46B40F7}';
  IID_TransmissionFaxHistory: TGUID = '{9624BEFE-0D90-406A-89F2-882000C988E8}';
  IID_NetForwardFaxHistory: TGUID = '{F3A847FC-AEC9-416C-971A-443948D32CAD}';
  IID_RouteFaxHistory: TGUID = '{7B9C839A-95AC-4D1D-B86F-6D9916CFD87D}';
  IID_PrintFaxHistory: TGUID = '{318A6061-5EC5-4A76-8214-C43341F1969D}';
  IID_OCRFaxHistory: TGUID = '{4612841A-9A05-4D0F-AA0D-B9B1DEBDC111}';
  IID_ApprovalFaxHistory: TGUID = '{C61C0F3E-BF89-4C0D-AC2B-5A629D73BB64}';
  IID_DisapprovalFaxHistory: TGUID = '{8E811B77-A557-4307-B378-E2B5E085B7A8}';
  IID_ConversionErrorFaxHistory: TGUID = '{F713D5DD-EF49-4075-B19B-4DDA792B18BB}';
  IID_FileRouteFaxHistory: TGUID = '{45E50059-9911-48FF-A5C6-193E1E862B0D}';
  IID_SecureDocHistory: TGUID = '{43B3D22D-9C56-428B-95F6-A14E40756F88}';
  IID_PhoneItemElement: TGUID = '{5FEDF988-D937-4C47-A1CB-CF61FD7BCDE5}';
  CLASS_FaxServer: TGUID = '{D7CA3941-DA83-4C87-949A-60DF378DD68E}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum BoolType
type
  BoolType = TOleEnum;
const
  False_ = $00000000;
  True_ = $00000001;

// Constants for enum NotifyType
type
  NotifyType = TOleEnum;
const
  nNetworkBroadcast = $00000000;
  nCustom1 = $00000001;
  nCustom2 = $00000002;
  nCustom3 = $00000003;
  nCustom4 = $00000004;
  nCustom5 = $00000005;
  nCustom6 = $00000006;
  nCustom7 = $00000007;
  nCustom8 = $00000008;
  nCustom9 = $00000009;
  nCCMail = $0000000A;
  nMSMail = $0000000B;
  nGroupWise = $0000000C;
  nTRS = $0000000D;
  nCX3 = $0000000E;
  nPager = $0000000F;
  nNotes = $00000010;
  nExchange = $00000011;
  nSMTP = $00000012;

// Constants for enum GroupSFDType
type
  GroupSFDType = TOleEnum;
const
  gsfdLinear = $00000000;
  gsfdBalanced = $00000001;

// Constants for enum PhoneItemType
type
  PhoneItemType = TOleEnum;
const
  piElement = $00000000;
  piGroup = $00000001;

// Constants for enum OCRFormatType
type
  OCRFormatType = TOleEnum;
const
  ofSmartASCII = $00000000;
  ofASCII = $00000001;
  ofRTF = $00000002;
  ofUseUserType = $0000FFFF;

// Constants for enum OCRLayoutType
type
  OCRLayoutType = TOleEnum;
const
  olWYSIWYG = $00000000;
  olLeftJustified = $00000001;
  olUseUserType = $0000FFFF;

// Constants for enum PrintResolutionType
type
  PrintResolutionType = TOleEnum;
const
  prHigh = $00000000;
  prMedium = $00000001;
  prLow = $00000002;

// Constants for enum PrintSizeType
type
  PrintSizeType = TOleEnum;
const
  psDefault = $00000000;
  psLetter = $00000001;
  psLegal = $00000002;
  psA4 = $00000003;
  psLetterLegal = $00000004;
  psA4Legal = $00000005;

// Constants for enum PrintPaperSourceType
type
  PrintPaperSourceType = TOleEnum;
const
  ppsDefault = $00000000;
  ppsUpperOrTray1 = $00000001;
  ppsLowerOrTray2 = $00000002;
  ppsManual = $00000003;
  ppsTray3 = $00000004;
  ppsMPTrayOrTray4 = $00000005;
  ppsHighCapacityOrTray5 = $00000006;

// Constants for enum PrintOutputBinType
type
  PrintOutputBinType = TOleEnum;
const
  poBinDefault = $00000000;
  poBinUpper = $00000001;
  poBinLower = $00000002;
  poBinFinisher = $00000003;

// Constants for enum PrintDuplexType
type
  PrintDuplexType = TOleEnum;
const
  pdDefault = $00000000;
  pdSingle = $00000001;
  pdLongEdge = $00000002;
  pdShortEdge = $00000003;

// Constants for enum PrinterType
type
  PrinterType = TOleEnum;
const
  pNone = $00000000;
  pLaserJet = $00000001;
  pLaserJetII = $00000002;
  pDeskJet = $00000003;
  pLaserJetIII = $00000004;
  pDeskJet500 = $00000005;
  pPostScriptLevel1 = $00000006;
  pLaserJet4 = $00000007;
  pPPDS = $00000008;
  pXIP = $00000009;
  pXeroxDCS20 = $0000000A;
  pXeroxDCS35 = $0000000B;
  pLaserJet3si = $0000000C;
  pLaserJet4si = $0000000D;
  pLaserJet5si = $0000000E;
  pATIImagePrinter = $0000000F;
  pLaserJet5siMopier = $00000010;
  pXeroxN24 = $00000011;
  pXeroxDCS220 = $00000012;
  pXeroxDCS230 = $00000013;
  pXeroxDCS240 = $00000014;
  pXeroxDCS255 = $00000015;
  pXeroxDCS265 = $00000016;
  pXeroxRicoh250 = $00000017;
  pXeroxLaserJet8000 = $00000018;
  pXeroxGDI = $00000019;
  pXeroxDCS460 = $0000001A;
  pXeroxDCS470 = $0000001B;
  pXeroxDCS480 = $0000001C;

// Constants for enum PrintPaperSizeType
type
  PrintPaperSizeType = TOleEnum;
const
  ppszFitUSLetter = $00000000;
  ppszFitUSLegal = $00000001;
  ppszFitA4 = $00000002;
  ppszFitLetterLegal = $00000003;
  ppszFitA4Legal = $00000004;
  ppszFitNoScaling = $00000005;

// Constants for enum UserRouteFormatType
type
  UserRouteFormatType = TOleEnum;
const
  urfDCX = $00000000;
  urfPCX = $00000001;
  urfTiffGroup3 = $00000002;
  urfTiffGroup4 = $00000003;
  urfGIF = $00000004;
  urfPDF = $00000005;
  urfPDFWithThumbnails = $00000006;
  urfCPC = $00000007;
  urfRFX = $00000008;
  urfPNG = $00000009;

// Constants for enum FaxPriorityType
type
  FaxPriorityType = TOleEnum;
const
  fpNormal = $00000000;
  fpLow = $00000001;
  fpHigh = $00000002;

// Constants for enum RouteType
type
  RouteType = TOleEnum;
const
  rRightFax = $00000000;
  rCCMail = $00000001;
  rMSMail = $00000002;
  rFile = $00000004;
  rOCR = $00000005;
  rGroupWiseMail = $00000006;
  rNotes = $00000007;
  rXRoute = $00000008;
  rTRS = $00000009;
  rCallXPress = $0000000A;
  rExchange = $0000000B;
  rSMTP = $0000000C;
  rANI = $0000000D;
  rSAP1 = $0000000E;
  rSAP2 = $0000000F;
  rSAP3 = $00000010;
  rSAP4 = $00000011;
  rSAP5 = $00000012;
  rSAP6 = $00000013;
  rSAP7 = $00000014;
  rSAP8 = $00000015;
  rSAP9 = $00000016;
  rSAP10 = $00000017;
  rSAP11 = $00000018;
  rSAP12 = $00000019;
  rSAP13 = $0000001A;
  rSAP14 = $0000001B;
  rSAP15 = $0000001C;
  rSAP16 = $0000001D;

// Constants for enum ReceiveNotifyType
type
  ReceiveNotifyType = TOleEnum;
const
  rnNone = $00000000;
  rnOnce = $00000001;
  rnPeriodically = $00000002;

// Constants for enum AutoForwardType
type
  AutoForwardType = TOleEnum;
const
  afFaxNumber = $00000000;
  afUser = $00000001;

// Constants for enum EmailRouteFormType
type
  EmailRouteFormType = TOleEnum;
const
  erfDefault = $00000000;
  erfNone = $00000001;
  erfStandard = $00000002;
  erfAdvanced = $00000003;

// Constants for enum AutoprintResolutionType
type
  AutoprintResolutionType = TOleEnum;
const
  aprHigh = $00000000;
  aprMedium = $00000001;
  aprLow = $00000002;

// Constants for enum LibraryDocumentUsageType
type
  LibraryDocumentUsageType = TOleEnum;
const
  lduNone = $00000000;
  lduFOD = $00000001;
  lduWeb = $00000002;
  lduLAN = $00000003;
  lduResetAll = $00000100;
  lduResetLastUsedDate = $00000200;

// Constants for enum AttachmentType
type
  AttachmentType = TOleEnum;
const
  aNone = $00000000;
  aFile = $00000001;
  aLibraryDocument = $00000002;
  aForm = $00000003;
  aBillingCode = $00000004;
  aNativeFile = $00000005;

// Constants for enum PrintJobType
type
  PrintJobType = TOleEnum;
const
  pjPCL = $00000001;
  pjPostScript = $00000002;
  pjPCL2 = $00000003;
  pjPostScript2 = $00000004;
  pjCVL = $00000005;

// Constants for enum FaxStatusType
type
  FaxStatusType = TOleEnum;
const
  fsUnborn = $00000000;
  fsNeedsFCS = $00000001;
  fsNeedsConversion = $00000002;
  fsNeedsToBeSent = $00000003;
  fsInConversion = $00000004;
  fsInSend = $00000005;
  fsDoneOK = $00000006;
  fsManualFCS = $00000007;
  fsInSchedule = $00000008;
  fsDoneError = $00000009;
  fsDuplicate = $0000000A;
  fsError = $0000000B;
  fsNeedsAttention = $0000000C;
  fsNeedsAttachment = $0000000D;
  fsHeldForPreview = $0000000E;
  fsInOCR = $0000000F;
  fsInPrint = $00000010;
  fsQueuedForPrinting = $00000011;
  fsQueuedForOCR = $00000012;
  fsInValidation = $00000013;
  fsInApproval = $00000014;

// Constants for enum FaxErrorCodeType
type
  FaxErrorCodeType = TOleEnum;
const
  fecNone = $00000000;
  fecBusy = $00000001;
  fecTransmissionError = $00000002;
  fecPoorQuality = $00000003;
  fecNoAnswer = $00000004;
  fecBadFCS = $00000005;
  fecBadConvert = $00000006;
  fecMakeFCS = $00000007;
  fecCantSchedule = $00000008;
  fecUnknown = $00000009;
  fecHuman = $0000000A;
  fecGroup2 = $0000000B;
  fecLocalInUse = $0000000C;
  fecLineProblem = $0000000D;
  fecBadPaper = $0000000E;
  fecBadSignature = $0000000F;
  fecNoSignatureAuthorization = $00000010;
  fecDiscarded = $00000012;
  fecBadPhone = $00000013;
  fecInvalidCode = $00000015;
  fecBadCode = $00000016;
  fecBadOCR = $00000017;
  fecBadPrint = $00000018;
  fecNoLibraryDocumentAuthorization = $00000019;
  fecViewStar1 = $0000001A;
  fecDisapproved = $0000001B;
  fecEmailDeliveryError = $0000001C;

// Constants for enum FaxMarkType
type
  FaxMarkType = TOleEnum;
const
  fmViewed = $00000000;
  fmUnViewed = $00000001;
  fmPrinted = $00000003;
  fmNotPrinted = $00000004;
  fmReleased = $00000005;
  fmHeld = $00000006;
  fmBodyPrinted = $00000007;
  fmApproved = $00000008;
  fmDisapproved = $00000009;
  fmGeneric1 = $0000000A;
  fmNotGeneric1 = $0000000B;
  fmGeneric2 = $0000000C;
  fmNotGeneric2 = $0000000D;

// Constants for enum MessageEventType
type
  MessageEventType = TOleEnum;
const
  meNetworkBroadcast = $00000000;
  meCustom1 = $00000001;
  meCustom2 = $00000002;
  meCustom3 = $00000003;
  meCustom4 = $00000004;
  meCustom5 = $00000005;
  meCustom6 = $00000006;
  meCustom7 = $00000007;
  meCustom8 = $00000008;
  meCustom9 = $00000009;
  meCCMail = $0000000A;
  meMSMail = $0000000B;
  meGroupWise = $0000000C;
  meTRS = $0000000D;
  meCX3 = $0000000E;
  mePager = $0000000F;
  meNotes = $00000010;
  meExchange = $00000011;
  meSMTP = $00000012;
  meAll = $0000FFFF;

// Constants for enum MessageRouteEventType
type
  MessageRouteEventType = TOleEnum;
const
  mreTRS = $00000001;
  mreCX3 = $00000002;
  mreNotes = $00000003;
  mreExchange = $00000004;
  mreCXINTF = $00000005;
  mreSMTP = $00000006;
  mreSAP1 = $00000007;
  mreSAP2 = $00000008;
  mreSAP3 = $00000009;
  mreSAP4 = $0000000A;
  mreINL = $0000000B;
  mreINL2 = $0000000C;
  mreSAP5 = $0000000D;
  mreSAP6 = $0000000E;
  mreSAP7 = $0000000F;
  mreSAP8 = $00000010;
  mreSAP9 = $00000011;
  mreSAP10 = $00000012;
  mreSAP11 = $00000013;
  mreSAP12 = $00000014;
  mreSAP13 = $00000015;
  mreSAP14 = $00000016;
  mreSAP15 = $00000017;
  mreINLDel = $00000018;
  mreAutoReply = $00000019;

// Constants for enum CommunicationProtocolType
type
  CommunicationProtocolType = TOleEnum;
const
  cpNamedPipes = $00000001;
  cpIPXOS2 = $00000002;
  cpSPX = $00000003;
  cpTCPIP = $00000004;
  cpIPX = $00000005;
  cpSecTCPIP = $00000006;
  cpSecSPX = $00000007;

// Constants for enum ServerType
type
  ServerType = TOleEnum;
const
  sOS2 = $00000CF1;
  sNT = $00000CF2;

// Constants for enum ServerSpecialType
type
  ServerSpecialType = TOleEnum;
const
  ssDelear = $0000270F;
  ssTampered = $0000270E;

// Constants for enum RequiredFieldIndexType
type
  RequiredFieldIndexType = TOleEnum;
const
  rfiToName = $00000000;
  rfiToFaxNumber = $00000001;
  rfiToVoiceNumber = $00000002;
  rfiToCompany = $00000003;
  rfiToCityState = $00000004;
  rfiFromName = $00000005;
  rfiFromPersonalVoiceNumber = $00000006;
  rfiFromPersonalFaxNumber = $00000007;
  rfiFromGeneralVoiceNumber = $00000008;
  rfiFromGeneralFaxNumber = $00000009;
  rfiBillCode1 = $0000000A;
  rfiBillCode2 = $0000000B;

// Constants for enum RequiredFieldType
type
  RequiredFieldType = TOleEnum;
const
  rfNotRequied = $00000000;
  rfSend = $00000001;
  rfReceive = $00000002;
  rfAlways = $00000003;

// Constants for enum TimeZoneInfoType
type
  TimeZoneInfoType = TOleEnum;
const
  tziInvalid = $00000000;
  tziValid = $00000001;
  tziStandardTime = $00000002;
  tziDaylightSavingsTime = $00000003;

// Constants for enum CreateObjectType
type
  CreateObjectType = TOleEnum;
const
  coAttachment = $00000000;
  coBillingCode = $00000001;
  coCoverSheet = $00000002;
  coDelegatee = $00000003;
  coDelegator = $00000004;
  coFax = $00000005;
  coFolder = $00000006;
  coForm = $00000007;
  coGroup = $00000008;
  coLibraryDocument = $00000009;
  coPhoneItemGroup = $0000000A;
  coPhoneItemElement = $0000000B;
  coPrinter = $0000000C;
  coSignature = $0000000D;
  coUser = $0000000E;
  coUsers = $0000000F;
  coNone = $000003E7;

// Constants for enum ServiceType
type
  ServiceType = TOleEnum;
const
  svcBoard = $00000000;
  svcServer = $00000001;
  svcDB = $00000002;
  svcRPC = $00000003;
  svcQueue = $00000004;
  svcPage = $00000005;
  svcWork1 = $00000006;
  svcWork2 = $00000007;
  svcWork3 = $00000008;
  svcWork4 = $00000009;
  svcWork5 = $0000000A;
  svcWork6 = $0000000B;
  svcWork7 = $0000000C;
  svcWork8 = $0000000D;
  svcWork9 = $0000000E;
  svcWorkA = $0000000F;
  svcWorkB = $00000010;
  svcWorkC = $00000011;
  svcWorkD = $00000012;
  svcWorkE = $00000013;
  svcWorkF = $00000014;
  svcEmail = $00000015;
  svcEmail1 = $00000016;
  svcEmail2 = $00000017;
  svcEmail3 = $00000018;
  svcEmail4 = $00000019;
  svcEmail5 = $0000001A;
  svcEmail6 = $0000001B;
  svcEmail7 = $0000001C;
  svcEmail8 = $0000001D;
  svcEmail9 = $0000001E;
  svcFaxGate = $0000001F;
  svcSAP1 = $00000020;
  svcSAP2 = $00000021;
  svcSAP3 = $00000022;
  svcSAP4 = $00000023;
  svcSAP5 = $00000024;
  svcSAP6 = $00000025;
  svcSAP7 = $00000026;
  svcSAP8 = $00000027;
  svcSAP9 = $00000028;
  svcSAPA = $00000029;
  svcSAPB = $0000002A;
  svcSAPC = $0000002B;
  svcSAPD = $0000002C;
  svcSAPE = $0000002D;
  svcSAPF = $0000002E;
  svcProduction = $0000002F;
  svcETransport = $00000030;
  svcAutoReply = $00000031;
  svcDocTransport = $00000032;
  svcSync = $00000033;
  svcCapaSync = $00000034;
  svcRemoting = $00000035;
  svcUnsupported = $00000036;

// Constants for enum ServiceControlActionType
type
  ServiceControlActionType = TOleEnum;
const
  svccGetDescription = $00000000;
  svccGetStatus = $00000001;
  svccStartService = $00000002;
  svccStopService = $00000003;
  svccGetServiceName = $00000004;

// Constants for enum FaxServerStatFlags
type
  FaxServerStatFlags = TOleEnum;
const
  statFsNewestActIndex = $00000001;
  statFsInfoVersion = $00000002;
  statFsSecondsUp = $00000004;
  statFsMaximumEvents = $00000008;
  statFsNumberEvents = $00000010;
  statFsEventsProcessed = $00000020;
  statFsActRecords = $00000040;
  statFsPercentAvailableImageSpace = $00000080;
  statFsPercentAvailableDBSpace = $00000100;
  statFsActivity = $00000200;

// Constants for enum Board1ServerStatFlags1
type
  Board1ServerStatFlags1 = TOleEnum;
const
  statBrd1InfoVersion = $00000001;
  statBrd1SecondsUp = $00000002;
  statBrd1ValidChannels = $00000004;
  statBrd1SendQueueDepth = $00000008;
  statBrd1SendPagesDepth = $00000010;
  statBrd1CurrentLoad = $00000020;
  statBrd1CrtChnType = $00000040;
  statBrd1CrtCanDo = $00000080;
  statBrd1CrtRoutingCode = $00000100;
  statBrd1CrtState = $00000200;
  statBrd1CrtCurrentPage = $00000400;
  statBrd1CrtTotalPagesSent = $00000800;
  statBrd1CrtTotalPagesRcvd = $00001000;
  statBrd1CrtTotalCallsAnsw = $00002000;
  statBrd1CrtTotalCallsPlcd = $00004000;
  statBrd1CrtTotalHangups = $00008000;
  statBrd1CrtROMID = $00010000;
  statBrd1CrtCurrentRemoteID = $00020000;
  statBrd1CrtSending = $00040000;
  statBrd1CrtTUIing = $00080000;
  statBrd1CrtReceiving = $00100000;
  statBrd1CrtDODing = $00200000;
  statBrd1CrtGroupThreasholdLeft = $00400000;
  statBrd1CrtFaxesGrouped = $00800000;
  statBrd1CrtTicksOffHook = $01000000;
  statBrd1CrtPagesInCall = $02000000;
  statBrd1CrtCurrentRate = $04000000;
  statBrd1CrtCurrentCompression = $08000000;
  statBrd1CrtEstMinutesLeft = $10000000;
  statBrd1CrtReserved = $20000000;
  statBrd1CrtSIPhoneNum = $40000000;
  statBrd1CrtSIUserID = $80000000;

// Constants for enum Brd1ChnTypeVals
type
  Brd1ChnTypeVals = TOleEnum;
const
  brdctLoopStart = $00000000;
  brdctDID_Digital = $00000001;

// Constants for enum Brd1CanDoVals
type
  Brd1CanDoVals = TOleEnum;
const
  brdcdReservedChannel = $00000000;
  brdcdDialOnly = $00000001;
  brdcdAnswerOnly = $00000002;
  brdcdDial_Answer = $00000003;
  brdcdVoiceMailNotifyOnly = $00000004;
  brdcdDial_w_VMNotify = $00000005;
  brdcdAnswer_w_VMNotify = $00000006;
  brdcdBoth_w_VMNotify = $00000007;

// Constants for enum Brd1SendingVals
type
  Brd1SendingVals = TOleEnum;
const
  brdsNothing_Idle = $00000000;
  brdsDial_and_Send = $00000001;

// Constants for enum Brd1TUIingVals
type
  Brd1TUIingVals = TOleEnum;
const
  brdtNothing_Idle = $00000000;
  brdtExecuting_TeleConnect_Call = $00000001;

// Constants for enum Brd1ReceivingVals
type
  Brd1ReceivingVals = TOleEnum;
const
  brdrNothing_Idle = $00000000;
  brdrAnswer_and_receive = $00000001;

// Constants for enum Brd1DODingVals
type
  Brd1DODingVals = TOleEnum;
const
  brddNothing_Idle = $00000000;
  brddExecuting_FOD_Call = $00000001;

// Constants for enum Brd1CurrentRateVals
type
  Brd1CurrentRateVals = TOleEnum;
const
  brdcrNotAvailable = $00000000;
  brdcr2400bpsV27 = $00000001;
  brdcr4800bpsV27 = $00000002;
  brdcr7200bpsV29 = $00000003;
  brdcr9600bpsV29 = $00000004;
  brdcr7200bpsV17 = $00000005;
  brdcr9600bpsV17 = $00000006;
  brdcr12000bpsV17 = $00000007;
  brdcr14400bpsV17 = $00000008;
  brdcr12000bpsV33 = $00000009;
  brdcr14400bpsV33 = $0000000A;

// Constants for enum Brd1CurrentCompressionVals
type
  Brd1CurrentCompressionVals = TOleEnum;
const
  brdccNotAvailable = $00000000;
  brdccMHGroup3_1D = $00000001;
  brdccMRGroup2_2D = $00000002;
  brdccMMRGroup4 = $00000003;

// Constants for enum Board2ServerStatFlags
type
  Board2ServerStatFlags = TOleEnum;
const
  statBrd2CrtSIPagesInFax = $00000001;
  statBrd2CrtSIPagesDone = $00000002;
  statBrd2CrtSIToName = $00000004;
  statBrd2CrtSIToCompany = $00000008;
  statBrd2CrtSIBillInfo1 = $00000010;
  statBrd2CrtSIBillInfo2 = $00000020;
  statBrd2CrtSISecureCSID = $00000040;
  statBrd2CrtSIUniqueID = $00000080;
  statBrd2CrtCurrentOp = $00000100;

// Constants for enum FSBoardStatFlags
type
  FSBoardStatFlags = TOleEnum;
const
  statFSBrdsInfoVersion = $00000001;
  statFSBrdsBrdServerCount = $00000002;
  statFSBrdsMachineName = $00000004;
  statFSBrdsCmdPipeName = $00000008;
  statFSBrdsImageDir = $00000010;
  statFSBrdsBFTDir = $00000020;
  statFSBrdsQueueDepthPages = $00000040;
  statFSBrdsQueueDepthFaxes = $00000080;
  statFSBrdsNumChannels = $00000100;
  statFSBrdsDown = $00000200;
  statFSBrdsDownTime = $00000400;
  statFSBrdsDownError = $00000800;
  statFSBrdsLocal = $00001000;
  statFSBrdsBrdSrvUniqueID = $00002000;
  statFSBrdsCurrentLoad = $00004000;
  statFSBrdsLoadTimeStamp = $00008000;

// Constants for enum ActLogStatFlags
type
  ActLogStatFlags = TOleEnum;
const
  statActLogCounterStartDate = $00000001;
  statActLogPagesSent = $00000002;
  statActLogFaxesSent = $00000004;
  statActLogPagesRcvd = $00000008;
  statActLogFaxesRcvd = $00000010;

// Constants for enum FaxHistoryType
type
  FaxHistoryType = TOleEnum;
const
  FaxHistoryTransmission = $00000000;
  FaxHistoryRoute = $00000001;
  FaxHistoryPrint = $00000002;
  FaxHistoryConversionError = $00000003;
  FaxHistoryOCR = $00000004;
  FaxHistoryNetForward = $00000005;
  FaxHistoryApproval = $00000006;
  FaxHistoryDisapproval = $00000007;
  FaxHistoryFileRoute = $00000008;
  FaxHistorySecureDoc = $00000009;

// Constants for enum TransmissonFaxHistoryTerminationStatusType
type
  TransmissonFaxHistoryTerminationStatusType = TOleEnum;
const
  tfhtstSuccessReceive = $00000000;
  tfhtstBusy1 = $00000001;
  tfhtstBusy2 = $00000002;
  tfhtstReorderBusy = $00000003;
  tfhtstRecall = $00000004;
  tfhtstConfirm = $00000005;
  tfhtstBlocked = $00000006;
  tfhtstRing1 = $00000008;
  tfhtstRing2 = $00000009;
  tfhtstHuman = $00000010;
  tfhtstAnswer = $00000011;
  tfhtstDialtone = $00000012;
  tfhtstSITDetect = $00000013;
  tfhtstSITNOCIR = $00000014;
  tfhtstTramsmissionError = $00000015;
  tfhtstHangNoLoopCurrent = $00000016;
  tfhtstCallColide = $00000017;
  tfhtstDialNoLoopCurrent = $00000018;
  tfhtstRingNoAnswer = $00000019;
  tfhtstGroup2Detected = $0000001A;
  tfhtstQuiet = $0000001C;
  tfhtstFaxMachine = $00000020;
  tfhtstLocalInUse = $00000021;
  tfhtstSilence = $00000022;
  tfhtstUnknown = $00000023;

// Constants for enum TransmissionFaxHistoryBoardType
type
  TransmissionFaxHistoryBoardType = TOleEnum;
const
  tfhbtBrooktrout = $00000001;
  tfhbtGammalink = $00000002;
  tfhbtBrooktroutNew = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _DFaxServerEvents = dispinterface;
  CompleteEvent = interface;
  CompleteEventDisp = dispinterface;
  Fax = interface;
  FaxDisp = dispinterface;
  User = interface;
  UserDisp = dispinterface;
  Faxes = interface;
  FaxesDisp = dispinterface;
  Group = interface;
  GroupDisp = dispinterface;
  Users = interface;
  UsersDisp = dispinterface;
  Folders = interface;
  FoldersDisp = dispinterface;
  Folder = interface;
  FolderDisp = dispinterface;
  Delegates = interface;
  DelegatesDisp = dispinterface;
  Delegate = interface;
  DelegateDisp = dispinterface;
  PhoneBook = interface;
  PhoneBookDisp = dispinterface;
  PhoneItem = interface;
  PhoneItemDisp = dispinterface;
  Printer = interface;
  PrinterDisp = dispinterface;
  PrintRequest = interface;
  PrintRequestDisp = dispinterface;
  BillingCode = interface;
  BillingCodeDisp = dispinterface;
  Attachments = interface;
  AttachmentsDisp = dispinterface;
  Attachment = interface;
  AttachmentDisp = dispinterface;
  LibraryDocument = interface;
  LibraryDocumentDisp = dispinterface;
  Form = interface;
  FormDisp = dispinterface;
  FaxHistories = interface;
  FaxHistoriesDisp = dispinterface;
  PhoneItemGroup = interface;
  PhoneItemGroupDisp = dispinterface;
  ArchiveEvent = interface;
  ArchiveEventDisp = dispinterface;
  MessageEvent = interface;
  MessageEventDisp = dispinterface;
  ValidateEvent = interface;
  ValidateEventDisp = dispinterface;
  MessageRouteEvent = interface;
  MessageRouteEventDisp = dispinterface;
  IFaxServer = interface;
  IFaxServerDisp = dispinterface;
  FaxEx1 = interface;
  FaxEx1Disp = dispinterface;
  LibraryDocuments = interface;
  LibraryDocumentsDisp = dispinterface;
  Groups = interface;
  GroupsDisp = dispinterface;
  Forms = interface;
  FormsDisp = dispinterface;
  Events = interface;
  EventsDisp = dispinterface;
  BillingCodes = interface;
  BillingCodesDisp = dispinterface;
  Printers = interface;
  PrintersDisp = dispinterface;
  CoverSheets = interface;
  CoverSheetsDisp = dispinterface;
  CoverSheet = interface;
  CoverSheetDisp = dispinterface;
  Signatures = interface;
  SignaturesDisp = dispinterface;
  Signature = interface;
  SignatureDisp = dispinterface;
  ServerInfo = interface;
  ServerInfoDisp = dispinterface;
  ServerStats = interface;
  ServerStatsDisp = dispinterface;
  FaxHistory = interface;
  FaxHistoryDisp = dispinterface;
  TransmissionFaxHistory = interface;
  TransmissionFaxHistoryDisp = dispinterface;
  NetForwardFaxHistory = interface;
  NetForwardFaxHistoryDisp = dispinterface;
  RouteFaxHistory = interface;
  RouteFaxHistoryDisp = dispinterface;
  PrintFaxHistory = interface;
  PrintFaxHistoryDisp = dispinterface;
  OCRFaxHistory = interface;
  OCRFaxHistoryDisp = dispinterface;
  ApprovalFaxHistory = interface;
  ApprovalFaxHistoryDisp = dispinterface;
  DisapprovalFaxHistory = interface;
  DisapprovalFaxHistoryDisp = dispinterface;
  ConversionErrorFaxHistory = interface;
  ConversionErrorFaxHistoryDisp = dispinterface;
  FileRouteFaxHistory = interface;
  FileRouteFaxHistoryDisp = dispinterface;
  SecureDocHistory = interface;
  SecureDocHistoryDisp = dispinterface;
  PhoneItemElement = interface;
  PhoneItemElementDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  FaxServer = IFaxServer;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//

  Board1ServerStatFlags = Board1ServerStatFlags1; 

// *********************************************************************//
// DispIntf:  _DFaxServerEvents
// Flags:     (4096) Dispatchable
// GUID:      {697C743A-86E2-42E9-B6AB-4F4916285795}
// *********************************************************************//
  _DFaxServerEvents = dispinterface
    ['{697C743A-86E2-42E9-B6AB-4F4916285795}']
    procedure OnCompleteEvent(const NewCompleteEvent: CompleteEvent); dispid 1;
    procedure OnNewFaxEvent(const NewFax: Fax); dispid 2;
    procedure OnArchiveEvent(const NewArchiveEvent: ArchiveEvent); dispid 3;
    procedure OnMessageEvent(const NewMessageEvent: MessageEvent); dispid 4;
    procedure OnValidateEvent(const NewValidateEvent: ValidateEvent); dispid 5;
    procedure OnMessageRouteEvent(const NewMessageRouteEvent: MessageRouteEvent); dispid 6;
  end;

// *********************************************************************//
// Interface: CompleteEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {76C38BF1-4AF8-4E47-A2EE-C269D58D3BFA}
// *********************************************************************//
  CompleteEvent = interface(IDispatch)
    ['{76C38BF1-4AF8-4E47-A2EE-C269D58D3BFA}']
    function Get_Fax: Fax; safecall;
    function Get_FaxHandle: Integer; safecall;
    function Get_DeleteFax: BoolType; safecall;
    function Get_User: User; safecall;
    function Get_UserID: WideString; safecall;
    function Get_NotifyChannel: Smallint; safecall;
    function Get_XML: WideString; safecall;
    property Fax: Fax read Get_Fax;
    property FaxHandle: Integer read Get_FaxHandle;
    property DeleteFax: BoolType read Get_DeleteFax;
    property User: User read Get_User;
    property UserID: WideString read Get_UserID;
    property NotifyChannel: Smallint read Get_NotifyChannel;
    property XML: WideString read Get_XML;
  end;

// *********************************************************************//
// DispIntf:  CompleteEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {76C38BF1-4AF8-4E47-A2EE-C269D58D3BFA}
// *********************************************************************//
  CompleteEventDisp = dispinterface
    ['{76C38BF1-4AF8-4E47-A2EE-C269D58D3BFA}']
    property Fax: Fax readonly dispid 0;
    property FaxHandle: Integer readonly dispid 1;
    property DeleteFax: BoolType readonly dispid 2;
    property User: User readonly dispid 3;
    property UserID: WideString readonly dispid 4;
    property NotifyChannel: Smallint readonly dispid 5;
    property XML: WideString readonly dispid 6;
  end;

// *********************************************************************//
// Interface: Fax
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {18D3EC32-5B38-4A1D-966A-994847C90992}
// *********************************************************************//
  Fax = interface(IDispatch)
    ['{18D3EC32-5B38-4A1D-966A-994847C90992}']
    function Get_Handle: Integer; safecall;
    function Get_Owner: User; safecall;
    procedure Set_Owner(const pVal: User); safecall;
    procedure Save(KickFax: BoolType); safecall;
    function Get_ToCompany: WideString; safecall;
    procedure Set_ToCompany(const pVal: WideString); safecall;
    function Get_ToName: WideString; safecall;
    procedure Set_ToName(const pVal: WideString); safecall;
    function Get_TotalPages: Smallint; safecall;
    procedure Send; safecall;
    function Get_Attachments: Attachments; safecall;
    function Get_ToFaxNumber: WideString; safecall;
    procedure Set_ToFaxNumber(const pVal: WideString); safecall;
    function Get_HasCoversheet: BoolType; safecall;
    procedure Set_HasCoversheet(pVal: BoolType); safecall;
    function Get_IsReceived: BoolType; safecall;
    function Get_CoverSheetNotes(Index: SYSINT): WideString; safecall;
    procedure Set_CoverSheetNotes(Index: SYSINT; const pVal: WideString); safecall;
    function Get_GenerateCompletionEvent: BoolType; safecall;
    procedure Set_GenerateCompletionEvent(pVal: BoolType); safecall;
    procedure PrintFax(Printer: OleVariant; StartPage: Smallint; EndPage: Smallint; 
                       IncludeCoverpage: BoolType); safecall;
    function Get_Folder: Folder; safecall;
    procedure Set_Folder(const pVal: Folder); safecall;
    function Get_Histories: FaxHistories; safecall;
    function Get_TotalLinkCount: Smallint; safecall;
    function Get_FaxFilename: WideString; safecall;
    function Get_InputFilename: WideString; safecall;
    function Get_TypeOfPrintJob: PrintJobType; safecall;
    procedure Set_TypeOfPrintJob(pVal: PrintJobType); safecall;
    function Get_IsFineMode: BoolType; safecall;
    procedure Set_IsFineMode(pVal: BoolType); safecall;
    function Get_BFTFilename: WideString; safecall;
    function Get_BFTFileSize: Integer; safecall;
    function Get_OriginalBFTFilename: WideString; safecall;
    function Get_ToVoiceNumber: WideString; safecall;
    procedure Set_ToVoiceNumber(const pVal: WideString); safecall;
    function Get_ToCityState: WideString; safecall;
    procedure Set_ToCityState(const pVal: WideString); safecall;
    function Get_FromName: WideString; safecall;
    procedure Set_FromName(const pVal: WideString); safecall;
    function Get_FromVoiceNumber: WideString; safecall;
    procedure Set_FromVoiceNumber(const pVal: WideString); safecall;
    function Get_BillingCode: BillingCode; safecall;
    function Get_FromFaxNumber: WideString; safecall;
    procedure Set_FromFaxNumber(const pVal: WideString); safecall;
    function Get_FromGeneralVoiceNumber: WideString; safecall;
    procedure Set_FromGeneralVoiceNumber(const pVal: WideString); safecall;
    function Get_FromGeneralFaxNumber: WideString; safecall;
    procedure Set_FromGeneralFaxNumber(const pVal: WideString); safecall;
    function Get_IsCallbackRequested: BoolType; safecall;
    function Get_FaxRecordDateTime: TDateTime; safecall;
    function Get_SendTime: Integer; safecall;
    function Get_FaxStatus: FaxStatusType; safecall;
    function Get_FaxErrorCode: FaxErrorCodeType; safecall;
    function Get_FaxDisposition: Smallint; safecall;
    function Get_FaxTerminationStatus: Smallint; safecall;
    function Get_RemoteID: WideString; safecall;
    function Get_FCSFilename: WideString; safecall;
    procedure Set_FCSFilename(const pVal: WideString); safecall;
    function Get_OriginalFCSFilename: WideString; safecall;
    procedure Set_OriginalFCSFilename(const pVal: WideString); safecall;
    function Get_FaxID: Smallint; safecall;
    function Get_DelayFaxSendDateTime: TDateTime; safecall;
    procedure Set_DelayFaxSendDateTime(pVal: TDateTime); safecall;
    function Get_UniqueID: WideString; safecall;
    procedure Set_UniqueID(const pVal: WideString); safecall;
    function Get_Priority: FaxPriorityType; safecall;
    procedure Set_Priority(pVal: FaxPriorityType); safecall;
    function Get_ChannelToSendOn: Smallint; safecall;
    procedure Set_ChannelToSendOn(pVal: Smallint); safecall;
    function Get_FaxPagesInFront: Smallint; safecall;
    function Get_MaximumRetries: Smallint; safecall;
    procedure Set_MaximumRetries(pVal: Smallint); safecall;
    function Get_TryInterval: Smallint; safecall;
    procedure Set_TryInterval(pVal: Smallint); safecall;
    function Get_SecureCSID: WideString; safecall;
    procedure Set_SecureCSID(const pVal: WideString); safecall;
    function Get_LastHistoryChangeDateTime: TDateTime; safecall;
    function Get_IsFaxAutoForwarded: BoolType; safecall;
    function Get_IsHeld: BoolType; safecall;
    procedure Set_IsHeld(pVal: BoolType); safecall;
    function Get_IsViewed: BoolType; safecall;
    procedure Set_IsViewed(pVal: BoolType); safecall;
    function Get_IsDeleted: BoolType; safecall;
    function Get_IsInitialized: BoolType; safecall;
    function Get_IsFCSCompleted: BoolType; safecall;
    function Get_IsForwarded: BoolType; safecall;
    function Get_IsInDelaySend: BoolType; safecall;
    procedure Set_IsInDelaySend(pVal: BoolType); safecall;
    function Get_IsDeletedAfterSuccessfulSend: BoolType; safecall;
    procedure Set_IsDeletedAfterSuccessfulSend(pVal: BoolType); safecall;
    function Get_IsPrinted: BoolType; safecall;
    function Get_IsCoversheetConversionNeeded: BoolType; safecall;
    procedure Set_IsCoversheetConversionNeeded(pVal: BoolType); safecall;
    function Get_IsDeletedAfterAnySend: BoolType; safecall;
    procedure Set_IsDeletedAfterAnySend(pVal: BoolType); safecall;
    function Get_IsBillingCodesVerified: BoolType; safecall;
    function Get_IsCoversheetFine: BoolType; safecall;
    function Get_IsGatewayGenerated: BoolType; safecall;
    function Get_UseSmartResume: BoolType; safecall;
    procedure Set_UseSmartResume(pVal: BoolType); safecall;
    function Get_IsApproved: BoolType; safecall;
    function Get_IsNeedingApproval: BoolType; safecall;
    function Get_IsBroadcastFax: BoolType; safecall;
    procedure Set_IsBroadcastFax(pVal: BoolType); safecall;
    function Get_HasBFT: BoolType; safecall;
    function Get_IsFaxBodyAutomaticallyPrinted: BoolType; safecall;
    function Get_IsLCRTimeDelayed: BoolType; safecall;
    procedure Set_Recipients(const pVal: PhoneItemGroup); safecall;
    function Get_Recipients: PhoneItemGroup; safecall;
    procedure StoreAsNewLibraryDocument(const Code: WideString; const Description: WideString); safecall;
    procedure StoreAsLibraryDocumentUpdate(const OldLibraryDocument: LibraryDocument); safecall;
    procedure Delete; safecall;
    procedure Kick; safecall;
    function Get_OwnerID: WideString; safecall;
    procedure Set_OwnerID(const pVal: WideString); safecall;
    procedure Mark(fmType: FaxMarkType; Atomic: BoolType); safecall;
    procedure ForwardToUsers(const UsersToForwardTo: Users; const Notes: WideString); safecall;
    procedure RouteToUser(const UserToRouteTo: User; const Notes: WideString); safecall;
    function Get_ForwardToNewFaxNumber: Fax; safecall;
    function Get_StatusDescription: WideString; safecall;
    procedure Approve(const Notes: WideString); safecall;
    procedure Disapprove(const Notes: WideString); safecall;
    procedure OCR(StartPage: Smallint; EndPage: Smallint; Format: OCRFormatType; 
                  Layout: OCRLayoutType; const FileExtension: WideString); safecall;
    procedure StoreAsNewForm(const Code: WideString; const Name: WideString; 
                             RemoveTTILine: BoolType; Size: Smallint); safecall;
    procedure StoreAsFormUpdate(const OldForm: Form; RemoveTTILine: BoolType; Size: Smallint); safecall;
    function Get_IsGenericFlag1On: BoolType; safecall;
    procedure Set_IsGenericFlag1On(pVal: BoolType); safecall;
    function Get_IsGenericFlag2On: BoolType; safecall;
    procedure Set_IsGenericFlag2On(pVal: BoolType); safecall;
    function Get_ImageSizeInBytes: Integer; safecall;
    function Get_AutoForwardCount: Smallint; safecall;
    function Get_CoverSheetSizeInBytes: Integer; safecall;
    procedure Set_UserComments(const pVal: WideString); safecall;
    function Get_UserComments: WideString; safecall;
    function Get_HasPDF: BoolType; safecall;
    function Get_IsCertifyDelivered: BoolType; safecall;
    procedure Set_IsCertifyDelivered(pVal: BoolType); safecall;
    function Get_NeedsPDFConversion: BoolType; safecall;
    procedure Set_NeedsPDFConversion(pVal: BoolType); safecall;
    function Get_HideFromWeb: BoolType; safecall;
    function Get_BillingCode1: WideString; safecall;
    procedure Set_BillingCode1(const pVal: WideString); safecall;
    function Get_BillingCode2: WideString; safecall;
    procedure Set_BillingCode2(const pVal: WideString); safecall;
    function Get_NeedsPrescan: BoolType; safecall;
    procedure Set_NeedsPrescan(pVal: BoolType); safecall;
    function Get_IsProductionFax: BoolType; safecall;
    procedure Set_IsProductionFax(pVal: BoolType); safecall;
    function Get_IsINLJob: BoolType; safecall;
    procedure Set_IsINLJob(pVal: BoolType); safecall;
    function Get_HasHotlink: BoolType; safecall;
    procedure Set_HasHotlink(pVal: BoolType); safecall;
    procedure EnableSendViaSecureDocs(UsePDFOverTiff: BoolType; UseCertifiedDelivery: BoolType; 
                                      const Password: WideString); safecall;
    procedure DisableSendViaSecureDocs; safecall;
    function Get_ToEmailAddress: WideString; safecall;
    procedure Set_ToEmailAddress(const pVal: WideString); safecall;
    function Get_EmailSubject: WideString; safecall;
    procedure Set_EmailSubject(const pVal: WideString); safecall;
    function Get_CertifiedDeliveryPassword: WideString; safecall;
    procedure Set_CertifiedDeliveryPassword(const pVal: WideString); safecall;
    procedure MoveToFolder(const NewFolder: Folder); safecall;
    function Get_UnicodeCoverSheetNotes: WideString; safecall;
    procedure Set_UnicodeCoverSheetNotes(const pVal: WideString); safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        IncludeHistoryRecords: BoolType; IncludeOwnerRecord: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    function Get_XML: WideString; safecall;
    procedure Set_XML(const pVal: WideString); safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; IncludeHistoryRecords: BoolType; 
                       IncludeOwnerRecord: BoolType; RecordLevel: Integer): WideString; safecall;
    function Get_XMLEx2(IncludeXMLHeaderFooter: BoolType; IncludeHistoryRecords: BoolType; 
                        IncludeOwnerRecord: BoolType; IncludeAttachments: BoolType; 
                        RecordLevel: Integer): WideString; safecall;
    procedure SplitFax(iStartPage: SYSINT; iStopPage: SYSINT; bKeepOriginal: BoolType); safecall;
    function Get_IsWasDNDBlockedOn: BoolType; safecall;
    procedure Set_IsWasDNDBlockedOn(pVal: BoolType); safecall;
    property Handle: Integer read Get_Handle;
    property Owner: User read Get_Owner write Set_Owner;
    property ToCompany: WideString read Get_ToCompany write Set_ToCompany;
    property ToName: WideString read Get_ToName write Set_ToName;
    property TotalPages: Smallint read Get_TotalPages;
    property Attachments: Attachments read Get_Attachments;
    property ToFaxNumber: WideString read Get_ToFaxNumber write Set_ToFaxNumber;
    property HasCoversheet: BoolType read Get_HasCoversheet write Set_HasCoversheet;
    property IsReceived: BoolType read Get_IsReceived;
    property CoverSheetNotes[Index: SYSINT]: WideString read Get_CoverSheetNotes write Set_CoverSheetNotes;
    property GenerateCompletionEvent: BoolType read Get_GenerateCompletionEvent write Set_GenerateCompletionEvent;
    property Folder: Folder read Get_Folder write Set_Folder;
    property Histories: FaxHistories read Get_Histories;
    property TotalLinkCount: Smallint read Get_TotalLinkCount;
    property FaxFilename: WideString read Get_FaxFilename;
    property InputFilename: WideString read Get_InputFilename;
    property TypeOfPrintJob: PrintJobType read Get_TypeOfPrintJob write Set_TypeOfPrintJob;
    property IsFineMode: BoolType read Get_IsFineMode write Set_IsFineMode;
    property BFTFilename: WideString read Get_BFTFilename;
    property BFTFileSize: Integer read Get_BFTFileSize;
    property OriginalBFTFilename: WideString read Get_OriginalBFTFilename;
    property ToVoiceNumber: WideString read Get_ToVoiceNumber write Set_ToVoiceNumber;
    property ToCityState: WideString read Get_ToCityState write Set_ToCityState;
    property FromName: WideString read Get_FromName write Set_FromName;
    property FromVoiceNumber: WideString read Get_FromVoiceNumber write Set_FromVoiceNumber;
    property BillingCode: BillingCode read Get_BillingCode;
    property FromFaxNumber: WideString read Get_FromFaxNumber write Set_FromFaxNumber;
    property FromGeneralVoiceNumber: WideString read Get_FromGeneralVoiceNumber write Set_FromGeneralVoiceNumber;
    property FromGeneralFaxNumber: WideString read Get_FromGeneralFaxNumber write Set_FromGeneralFaxNumber;
    property IsCallbackRequested: BoolType read Get_IsCallbackRequested;
    property FaxRecordDateTime: TDateTime read Get_FaxRecordDateTime;
    property SendTime: Integer read Get_SendTime;
    property FaxStatus: FaxStatusType read Get_FaxStatus;
    property FaxErrorCode: FaxErrorCodeType read Get_FaxErrorCode;
    property FaxDisposition: Smallint read Get_FaxDisposition;
    property FaxTerminationStatus: Smallint read Get_FaxTerminationStatus;
    property RemoteID: WideString read Get_RemoteID;
    property FCSFilename: WideString read Get_FCSFilename write Set_FCSFilename;
    property OriginalFCSFilename: WideString read Get_OriginalFCSFilename write Set_OriginalFCSFilename;
    property FaxID: Smallint read Get_FaxID;
    property DelayFaxSendDateTime: TDateTime read Get_DelayFaxSendDateTime write Set_DelayFaxSendDateTime;
    property UniqueID: WideString read Get_UniqueID write Set_UniqueID;
    property Priority: FaxPriorityType read Get_Priority write Set_Priority;
    property ChannelToSendOn: Smallint read Get_ChannelToSendOn write Set_ChannelToSendOn;
    property FaxPagesInFront: Smallint read Get_FaxPagesInFront;
    property MaximumRetries: Smallint read Get_MaximumRetries write Set_MaximumRetries;
    property TryInterval: Smallint read Get_TryInterval write Set_TryInterval;
    property SecureCSID: WideString read Get_SecureCSID write Set_SecureCSID;
    property LastHistoryChangeDateTime: TDateTime read Get_LastHistoryChangeDateTime;
    property IsFaxAutoForwarded: BoolType read Get_IsFaxAutoForwarded;
    property IsHeld: BoolType read Get_IsHeld write Set_IsHeld;
    property IsViewed: BoolType read Get_IsViewed write Set_IsViewed;
    property IsDeleted: BoolType read Get_IsDeleted;
    property IsInitialized: BoolType read Get_IsInitialized;
    property IsFCSCompleted: BoolType read Get_IsFCSCompleted;
    property IsForwarded: BoolType read Get_IsForwarded;
    property IsInDelaySend: BoolType read Get_IsInDelaySend write Set_IsInDelaySend;
    property IsDeletedAfterSuccessfulSend: BoolType read Get_IsDeletedAfterSuccessfulSend write Set_IsDeletedAfterSuccessfulSend;
    property IsPrinted: BoolType read Get_IsPrinted;
    property IsCoversheetConversionNeeded: BoolType read Get_IsCoversheetConversionNeeded write Set_IsCoversheetConversionNeeded;
    property IsDeletedAfterAnySend: BoolType read Get_IsDeletedAfterAnySend write Set_IsDeletedAfterAnySend;
    property IsBillingCodesVerified: BoolType read Get_IsBillingCodesVerified;
    property IsCoversheetFine: BoolType read Get_IsCoversheetFine;
    property IsGatewayGenerated: BoolType read Get_IsGatewayGenerated;
    property UseSmartResume: BoolType read Get_UseSmartResume write Set_UseSmartResume;
    property IsApproved: BoolType read Get_IsApproved;
    property IsNeedingApproval: BoolType read Get_IsNeedingApproval;
    property IsBroadcastFax: BoolType read Get_IsBroadcastFax write Set_IsBroadcastFax;
    property HasBFT: BoolType read Get_HasBFT;
    property IsFaxBodyAutomaticallyPrinted: BoolType read Get_IsFaxBodyAutomaticallyPrinted;
    property IsLCRTimeDelayed: BoolType read Get_IsLCRTimeDelayed;
    property Recipients: PhoneItemGroup read Get_Recipients write Set_Recipients;
    property OwnerID: WideString read Get_OwnerID write Set_OwnerID;
    property ForwardToNewFaxNumber: Fax read Get_ForwardToNewFaxNumber;
    property StatusDescription: WideString read Get_StatusDescription;
    property IsGenericFlag1On: BoolType read Get_IsGenericFlag1On write Set_IsGenericFlag1On;
    property IsGenericFlag2On: BoolType read Get_IsGenericFlag2On write Set_IsGenericFlag2On;
    property ImageSizeInBytes: Integer read Get_ImageSizeInBytes;
    property AutoForwardCount: Smallint read Get_AutoForwardCount;
    property CoverSheetSizeInBytes: Integer read Get_CoverSheetSizeInBytes;
    property UserComments: WideString read Get_UserComments write Set_UserComments;
    property HasPDF: BoolType read Get_HasPDF;
    property IsCertifyDelivered: BoolType read Get_IsCertifyDelivered write Set_IsCertifyDelivered;
    property NeedsPDFConversion: BoolType read Get_NeedsPDFConversion write Set_NeedsPDFConversion;
    property HideFromWeb: BoolType read Get_HideFromWeb;
    property BillingCode1: WideString read Get_BillingCode1 write Set_BillingCode1;
    property BillingCode2: WideString read Get_BillingCode2 write Set_BillingCode2;
    property NeedsPrescan: BoolType read Get_NeedsPrescan write Set_NeedsPrescan;
    property IsProductionFax: BoolType read Get_IsProductionFax write Set_IsProductionFax;
    property IsINLJob: BoolType read Get_IsINLJob write Set_IsINLJob;
    property HasHotlink: BoolType read Get_HasHotlink write Set_HasHotlink;
    property ToEmailAddress: WideString read Get_ToEmailAddress write Set_ToEmailAddress;
    property EmailSubject: WideString read Get_EmailSubject write Set_EmailSubject;
    property CertifiedDeliveryPassword: WideString read Get_CertifiedDeliveryPassword write Set_CertifiedDeliveryPassword;
    property UnicodeCoverSheetNotes: WideString read Get_UnicodeCoverSheetNotes write Set_UnicodeCoverSheetNotes;
    property XML: WideString read Get_XML write Set_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; IncludeHistoryRecords: BoolType; 
                   IncludeOwnerRecord: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
    property XMLEx2[IncludeXMLHeaderFooter: BoolType; IncludeHistoryRecords: BoolType; 
                    IncludeOwnerRecord: BoolType; IncludeAttachments: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx2;
    property IsWasDNDBlockedOn: BoolType read Get_IsWasDNDBlockedOn write Set_IsWasDNDBlockedOn;
  end;

// *********************************************************************//
// DispIntf:  FaxDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {18D3EC32-5B38-4A1D-966A-994847C90992}
// *********************************************************************//
  FaxDisp = dispinterface
    ['{18D3EC32-5B38-4A1D-966A-994847C90992}']
    property Handle: Integer readonly dispid 0;
    property Owner: User dispid 1;
    procedure Save(KickFax: BoolType); dispid 2;
    property ToCompany: WideString dispid 3;
    property ToName: WideString dispid 4;
    property TotalPages: Smallint readonly dispid 5;
    procedure Send; dispid 6;
    property Attachments: Attachments readonly dispid 7;
    property ToFaxNumber: WideString dispid 8;
    property HasCoversheet: BoolType dispid 9;
    property IsReceived: BoolType readonly dispid 10;
    property CoverSheetNotes[Index: SYSINT]: WideString dispid 11;
    property GenerateCompletionEvent: BoolType dispid 12;
    procedure PrintFax(Printer: OleVariant; StartPage: Smallint; EndPage: Smallint; 
                       IncludeCoverpage: BoolType); dispid 13;
    property Folder: Folder dispid 14;
    property Histories: FaxHistories readonly dispid 15;
    property TotalLinkCount: Smallint readonly dispid 16;
    property FaxFilename: WideString readonly dispid 17;
    property InputFilename: WideString readonly dispid 18;
    property TypeOfPrintJob: PrintJobType dispid 19;
    property IsFineMode: BoolType dispid 20;
    property BFTFilename: WideString readonly dispid 21;
    property BFTFileSize: Integer readonly dispid 22;
    property OriginalBFTFilename: WideString readonly dispid 23;
    property ToVoiceNumber: WideString dispid 24;
    property ToCityState: WideString dispid 25;
    property FromName: WideString dispid 26;
    property FromVoiceNumber: WideString dispid 27;
    property BillingCode: BillingCode readonly dispid 28;
    property FromFaxNumber: WideString dispid 29;
    property FromGeneralVoiceNumber: WideString dispid 30;
    property FromGeneralFaxNumber: WideString dispid 31;
    property IsCallbackRequested: BoolType readonly dispid 32;
    property FaxRecordDateTime: TDateTime readonly dispid 33;
    property SendTime: Integer readonly dispid 34;
    property FaxStatus: FaxStatusType readonly dispid 35;
    property FaxErrorCode: FaxErrorCodeType readonly dispid 36;
    property FaxDisposition: Smallint readonly dispid 37;
    property FaxTerminationStatus: Smallint readonly dispid 38;
    property RemoteID: WideString readonly dispid 39;
    property FCSFilename: WideString dispid 40;
    property OriginalFCSFilename: WideString dispid 41;
    property FaxID: Smallint readonly dispid 42;
    property DelayFaxSendDateTime: TDateTime dispid 43;
    property UniqueID: WideString dispid 44;
    property Priority: FaxPriorityType dispid 45;
    property ChannelToSendOn: Smallint dispid 46;
    property FaxPagesInFront: Smallint readonly dispid 47;
    property MaximumRetries: Smallint dispid 48;
    property TryInterval: Smallint dispid 49;
    property SecureCSID: WideString dispid 50;
    property LastHistoryChangeDateTime: TDateTime readonly dispid 51;
    property IsFaxAutoForwarded: BoolType readonly dispid 52;
    property IsHeld: BoolType dispid 53;
    property IsViewed: BoolType dispid 54;
    property IsDeleted: BoolType readonly dispid 55;
    property IsInitialized: BoolType readonly dispid 56;
    property IsFCSCompleted: BoolType readonly dispid 57;
    property IsForwarded: BoolType readonly dispid 58;
    property IsInDelaySend: BoolType dispid 59;
    property IsDeletedAfterSuccessfulSend: BoolType dispid 60;
    property IsPrinted: BoolType readonly dispid 61;
    property IsCoversheetConversionNeeded: BoolType dispid 62;
    property IsDeletedAfterAnySend: BoolType dispid 63;
    property IsBillingCodesVerified: BoolType readonly dispid 64;
    property IsCoversheetFine: BoolType readonly dispid 65;
    property IsGatewayGenerated: BoolType readonly dispid 66;
    property UseSmartResume: BoolType dispid 67;
    property IsApproved: BoolType readonly dispid 68;
    property IsNeedingApproval: BoolType readonly dispid 69;
    property IsBroadcastFax: BoolType dispid 70;
    property HasBFT: BoolType readonly dispid 71;
    property IsFaxBodyAutomaticallyPrinted: BoolType readonly dispid 72;
    property IsLCRTimeDelayed: BoolType readonly dispid 73;
    property Recipients: PhoneItemGroup dispid 74;
    procedure StoreAsNewLibraryDocument(const Code: WideString; const Description: WideString); dispid 75;
    procedure StoreAsLibraryDocumentUpdate(const OldLibraryDocument: LibraryDocument); dispid 76;
    procedure Delete; dispid 77;
    procedure Kick; dispid 78;
    property OwnerID: WideString dispid 79;
    procedure Mark(fmType: FaxMarkType; Atomic: BoolType); dispid 80;
    procedure ForwardToUsers(const UsersToForwardTo: Users; const Notes: WideString); dispid 81;
    procedure RouteToUser(const UserToRouteTo: User; const Notes: WideString); dispid 82;
    property ForwardToNewFaxNumber: Fax readonly dispid 83;
    property StatusDescription: WideString readonly dispid 84;
    procedure Approve(const Notes: WideString); dispid 85;
    procedure Disapprove(const Notes: WideString); dispid 86;
    procedure OCR(StartPage: Smallint; EndPage: Smallint; Format: OCRFormatType; 
                  Layout: OCRLayoutType; const FileExtension: WideString); dispid 87;
    procedure StoreAsNewForm(const Code: WideString; const Name: WideString; 
                             RemoveTTILine: BoolType; Size: Smallint); dispid 88;
    procedure StoreAsFormUpdate(const OldForm: Form; RemoveTTILine: BoolType; Size: Smallint); dispid 89;
    property IsGenericFlag1On: BoolType dispid 90;
    property IsGenericFlag2On: BoolType dispid 91;
    property ImageSizeInBytes: Integer readonly dispid 92;
    property AutoForwardCount: Smallint readonly dispid 93;
    property CoverSheetSizeInBytes: Integer readonly dispid 94;
    property UserComments: WideString dispid 95;
    property HasPDF: BoolType readonly dispid 96;
    property IsCertifyDelivered: BoolType dispid 97;
    property NeedsPDFConversion: BoolType dispid 98;
    property HideFromWeb: BoolType readonly dispid 99;
    property BillingCode1: WideString dispid 100;
    property BillingCode2: WideString dispid 101;
    property NeedsPrescan: BoolType dispid 102;
    property IsProductionFax: BoolType dispid 103;
    property IsINLJob: BoolType dispid 104;
    property HasHotlink: BoolType dispid 105;
    procedure EnableSendViaSecureDocs(UsePDFOverTiff: BoolType; UseCertifiedDelivery: BoolType; 
                                      const Password: WideString); dispid 106;
    procedure DisableSendViaSecureDocs; dispid 107;
    property ToEmailAddress: WideString dispid 108;
    property EmailSubject: WideString dispid 109;
    property CertifiedDeliveryPassword: WideString dispid 110;
    procedure MoveToFolder(const NewFolder: Folder); dispid 111;
    property UnicodeCoverSheetNotes: WideString dispid 112;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        IncludeHistoryRecords: BoolType; IncludeOwnerRecord: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 113;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 114;
    property XML: WideString dispid 115;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; IncludeHistoryRecords: BoolType; 
                   IncludeOwnerRecord: BoolType; RecordLevel: Integer]: WideString readonly dispid 116;
    property XMLEx2[IncludeXMLHeaderFooter: BoolType; IncludeHistoryRecords: BoolType; 
                    IncludeOwnerRecord: BoolType; IncludeAttachments: BoolType; RecordLevel: Integer]: WideString readonly dispid 117;
    procedure SplitFax(iStartPage: SYSINT; iStopPage: SYSINT; bKeepOriginal: BoolType); dispid 118;
    property IsWasDNDBlockedOn: BoolType dispid 119;
  end;

// *********************************************************************//
// Interface: User
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2AD3B468-CED5-40AC-A217-03BB3D8EA1AA}
// *********************************************************************//
  User = interface(IDispatch)
    ['{2AD3B468-CED5-40AC-A217-03BB3D8EA1AA}']
    function Get_ID: WideString; safecall;
    procedure Set_ID(const pVal: WideString); safecall;
    function Get_Handle: Integer; safecall;
    function Get_ChangeTag: Integer; safecall;
    procedure Refresh; safecall;
    function Get_Faxes: Faxes; safecall;
    function Get_MemberOfGroup: Group; safecall;
    procedure Set_MemberOfGroup(const pVal: Group); safecall;
    procedure Save; safecall;
    function Get_Folders: Folders; safecall;
    function Get_AccessibleByTheseUsers: Delegates; safecall;
    function Get_CheckForNewFaxes: Fax; safecall;
    function Get_HasAccessToTheseUsers: Delegates; safecall;
    function Get_PhoneBook: PhoneBook; safecall;
    function Get_PasswordKey(const Key: WideString): WideString; safecall;
    procedure Set_Password(const Param1: WideString); safecall;
    function Get_MemberOfGroupID: WideString; safecall;
    procedure Set_MemberOfGroupID(const pVal: WideString); safecall;
    procedure Delete(ParentWindow: Integer); safecall;
    procedure ChangePassword(const NewPassword: WideString); safecall;
    function Get_DefaultOCRFormat: OCRFormatType; safecall;
    procedure Set_DefaultOCRFormat(pVal: OCRFormatType); safecall;
    function Get_DefaultOCRLayout: OCRLayoutType; safecall;
    procedure Set_DefaultOCRLayout(pVal: OCRLayoutType); safecall;
    function Get_DefaultOCRFileExtension: WideString; safecall;
    procedure Set_DefaultOCRFileExtension(const pVal: WideString); safecall;
    function Get_NumberOfFaxesOwned: Smallint; safecall;
    function Get_IsAdministrator: BoolType; safecall;
    procedure Set_IsAdministrator(pVal: BoolType); safecall;
    function Get_IsAbleToCreateNewLibraryDocuments: BoolType; safecall;
    procedure Set_IsAbleToCreateNewLibraryDocuments(pVal: BoolType); safecall;
    function Get_IsAbleToCreateNewForms: BoolType; safecall;
    procedure Set_IsAbleToCreateNewForms(pVal: BoolType); safecall;
    function Get_IsAbleToUseHighPriority: BoolType; safecall;
    procedure Set_IsAbleToUseHighPriority(pVal: BoolType); safecall;
    function Get_IsUnprotected: BoolType; safecall;
    procedure Set_IsUnprotected(pVal: BoolType); safecall;
    function Get_IsExemptFromBillingCodeVerification: BoolType; safecall;
    procedure Set_IsExemptFromBillingCodeVerification(pVal: BoolType); safecall;
    function Get_IsDefaultFine: BoolType; safecall;
    procedure Set_IsDefaultFine(pVal: BoolType); safecall;
    function Get_IsRestrictedToFirstPageOnly: BoolType; safecall;
    procedure Set_IsRestrictedToFirstPageOnly(pVal: BoolType); safecall;
    function Get_IsFaxesSetToBeAutomaticallyPrinted: BoolType; safecall;
    procedure Set_IsFaxesSetToBeAutomaticallyPrinted(pVal: BoolType); safecall;
    function Get_IsCoverPageDefaultedOn: BoolType; safecall;
    procedure Set_IsCoverPageDefaultedOn(pVal: BoolType); safecall;
    function Get_IsAutoforwardEnabled: BoolType; safecall;
    procedure Set_IsAutoforwardEnabled(pVal: BoolType); safecall;
    function Get_IsAlternateNotificationEnabled: BoolType; safecall;
    procedure Set_IsAlternateNotificationEnabled(pVal: BoolType); safecall;
    function Get_IsDefaultCoverSheetsFine: BoolType; safecall;
    procedure Set_IsDefaultCoverSheetsFine(pVal: BoolType); safecall;
    function Get_IsPasswordRequired: BoolType; safecall;
    procedure Set_IsPasswordRequired(pVal: BoolType); safecall;
    function Get_IsArchiveEnable: BoolType; safecall;
    procedure Set_IsArchiveEnable(pVal: BoolType); safecall;
    function Get_IsAbleToChangeCoverSheets: BoolType; safecall;
    procedure Set_IsAbleToChangeCoverSheets(pVal: BoolType); safecall;
    function Get_IsAutoOCREnabled: BoolType; safecall;
    procedure Set_IsAutoOCREnabled(pVal: BoolType); safecall;
    function Get_IsAbleToOCR: BoolType; safecall;
    procedure Set_IsAbleToOCR(pVal: BoolType); safecall;
    function Get_IsUnableToDelete: BoolType; safecall;
    procedure Set_IsUnableToDelete(pVal: BoolType); safecall;
    function Get_IsDefaultSmartResumeEnabled: BoolType; safecall;
    procedure Set_IsDefaultSmartResumeEnabled(pVal: BoolType); safecall;
    function Get_IsNotAllowToSearchBillingCodes: BoolType; safecall;
    procedure Set_IsNotAllowToSearchBillingCodes(pVal: BoolType); safecall;
    function Get_IsSynched: BoolType; safecall;
    procedure Set_IsSynched(pVal: BoolType); safecall;
    function Get_UserName: WideString; safecall;
    procedure Set_UserName(const pVal: WideString); safecall;
    function Get_DIDNumber: Integer; safecall;
    procedure Set_DIDNumber(pVal: Integer); safecall;
    function Get_CoverSheetModelID: WideString; safecall;
    procedure Set_CoverSheetModelID(const pVal: WideString); safecall;
    function Get_NotifyType: NotifyType; safecall;
    procedure Set_NotifyType(pVal: NotifyType); safecall;
    function Get_PersonalFaxNumber: WideString; safecall;
    procedure Set_PersonalFaxNumber(const pVal: WideString); safecall;
    function Get_GeneralFaxNumber: WideString; safecall;
    procedure Set_GeneralFaxNumber(const pVal: WideString); safecall;
    function Get_IsCallbackRequested: BoolType; safecall;
    procedure Set_IsCallbackRequested(pVal: BoolType); safecall;
    function Get_GeneralVoiceNumber: WideString; safecall;
    procedure Set_GeneralVoiceNumber(const pVal: WideString); safecall;
    function Get_DefaultFromName: WideString; safecall;
    procedure Set_DefaultFromName(const pVal: WideString); safecall;
    function Get_PersonalVoiceNumber: WideString; safecall;
    procedure Set_PersonalVoiceNumber(const pVal: WideString); safecall;
    function Get_DefaultToFaxNumber: WideString; safecall;
    procedure Set_DefaultToFaxNumber(const pVal: WideString); safecall;
    function Get_DefaultToVoiceNumber: WideString; safecall;
    procedure Set_DefaultToVoiceNumber(const pVal: WideString); safecall;
    function Get_DefaultToName: WideString; safecall;
    procedure Set_DefaultToName(const pVal: WideString); safecall;
    function Get_DefaultToCompany: WideString; safecall;
    procedure Set_DefaultToCompany(const pVal: WideString); safecall;
    function Get_DefaultToCityState: WideString; safecall;
    procedure Set_DefaultToCityState(const pVal: WideString); safecall;
    function Get_ReceivedAutoprintPrinter: Printer; safecall;
    procedure Set_ReceivedAutoprintPrinter(const pVal: Printer); safecall;
    function Get_DefaultPrinter: Printer; safecall;
    procedure Set_DefaultPrinter(const pVal: Printer); safecall;
    function Get_WebClientImageFormat: UserRouteFormatType; safecall;
    procedure Set_WebClientImageFormat(pVal: UserRouteFormatType); safecall;
    function Get_SentAutoprintPrinter: Printer; safecall;
    procedure Set_SentAutoprintPrinter(const pVal: Printer); safecall;
    function Get_IsAutoprintSentEnabled: BoolType; safecall;
    procedure Set_IsAutoprintSentEnabled(pVal: BoolType); safecall;
    function Get_IsAutoprintSentCoversheetEnabled: BoolType; safecall;
    procedure Set_IsAutoprintSentCoversheetEnabled(pVal: BoolType); safecall;
    function Get_IsAutoprintSentBodyEnabled: BoolType; safecall;
    procedure Set_IsAutoprintSentBodyEnabled(pVal: BoolType); safecall;
    function Get_IsAutoprintSentHistoryEnabled: BoolType; safecall;
    procedure Set_IsAutoprintSentHistoryEnabled(pVal: BoolType); safecall;
    function Get_IsAutoprintReceivedCoversheetEnabled: BoolType; safecall;
    procedure Set_IsAutoprintReceivedCoversheetEnabled(pVal: BoolType); safecall;
    function Get_IsAutoprintReceivedBodyEnabled: BoolType; safecall;
    procedure Set_IsAutoprintReceivedBodyEnabled(pVal: BoolType); safecall;
    function Get_IsAutoprintReceivedHistoryEnabled: BoolType; safecall;
    procedure Set_IsAutoprintReceivedHistoryEnabled(pVal: BoolType); safecall;
    function Get_IsAutoprintSentFailedFaxesEnabled: BoolType; safecall;
    procedure Set_IsAutoprintSentFailedFaxesEnabled(pVal: BoolType); safecall;
    function Get_IsAutoprintSentSuccessFaxesEnabled: BoolType; safecall;
    procedure Set_IsAutoprintSentSuccessFaxesEnabled(pVal: BoolType); safecall;
    function Get_VoiceMailSubscriberID: Integer; safecall;
    procedure Set_VoiceMailSubscriberID(pVal: Integer); safecall;
    function Get_IsTrashEnabled: BoolType; safecall;
    procedure Set_IsTrashEnabled(pVal: BoolType); safecall;
    function Get_IsEmptyTrashEnabled: BoolType; safecall;
    procedure Set_IsEmptyTrashEnabled(pVal: BoolType); safecall;
    function Get_IsWebTiffEnabled: BoolType; safecall;
    procedure Set_IsWebTiffEnabled(pVal: BoolType); safecall;
    function Get_IsWebRFXEnabled: BoolType; safecall;
    procedure Set_IsWebRFXEnabled(pVal: BoolType); safecall;
    function Get_IsSmartFaxDistributionEnabled: BoolType; safecall;
    procedure Set_IsSmartFaxDistributionEnabled(pVal: BoolType); safecall;
    function Get_NeedsFaxesApproved: BoolType; safecall;
    procedure Set_NeedsFaxesApproved(pVal: BoolType); safecall;
    function Get_ExcludedFromFaxAging: BoolType; safecall;
    procedure Set_ExcludedFromFaxAging(pVal: BoolType); safecall;
    function Get_IsAbleToRunReports: BoolType; safecall;
    procedure Set_IsAbleToRunReports(pVal: BoolType); safecall;
    function Get_IsUnableToAnnotate: BoolType; safecall;
    procedure Set_IsUnableToAnnotate(pVal: BoolType); safecall;
    function Get_IsUnableToEditBillingCodes: BoolType; safecall;
    procedure Set_IsUnableToEditBillingCodes(pVal: BoolType); safecall;
    function Get_WillReceivedFaxesHaveBillingCodesAssociated: BoolType; safecall;
    procedure Set_WillReceivedFaxesHaveBillingCodesAssociated(pVal: BoolType); safecall;
    function Get_IsNTAuthenticationRequired: BoolType; safecall;
    procedure Set_IsNTAuthenticationRequired(pVal: BoolType); safecall;
    function Get_AreReceivedFaxesStamped: BoolType; safecall;
    procedure Set_AreReceivedFaxesStamped(pVal: BoolType); safecall;
    function Get_HighestAvailablePriority: FaxPriorityType; safecall;
    procedure Set_HighestAvailablePriority(pVal: FaxPriorityType); safecall;
    function Get_DefaultPriority: FaxPriorityType; safecall;
    procedure Set_DefaultPriority(pVal: FaxPriorityType); safecall;
    function Get_AlternateNotifyUser: User; safecall;
    procedure Set_AlternateNotifyUser(const pVal: User); safecall;
    function Get_RouteType: RouteType; safecall;
    procedure Set_RouteType(pVal: RouteType); safecall;
    function Get_RouteFormat: UserRouteFormatType; safecall;
    procedure Set_RouteFormat(pVal: UserRouteFormatType); safecall;
    function Get_AutoforwardFaxNumber: WideString; safecall;
    procedure Set_AutoforwardFaxNumber(const pVal: WideString); safecall;
    function Get_SendNotifyOnIncompleteFirstTime: BoolType; safecall;
    procedure Set_SendNotifyOnIncompleteFirstTime(pVal: BoolType); safecall;
    function Get_SendNotifyOnIncompletePeriodically: BoolType; safecall;
    procedure Set_SendNotifyOnIncompletePeriodically(pVal: BoolType); safecall;
    function Get_SendNotifyOnSendingFirstTime: BoolType; safecall;
    procedure Set_SendNotifyOnSendingFirstTime(pVal: BoolType); safecall;
    function Get_SendNotifyOnSendingPeriodically: BoolType; safecall;
    procedure Set_SendNotifyOnSendingPeriodically(pVal: BoolType); safecall;
    function Get_SendNotifyOnSendFailedWillRetry: BoolType; safecall;
    procedure Set_SendNotifyOnSendFailedWillRetry(pVal: BoolType); safecall;
    function Get_SendNotifyOnSentSuccessfully: BoolType; safecall;
    procedure Set_SendNotifyOnSentSuccessfully(pVal: BoolType); safecall;
    function Get_SendNotifyOnSendFailure: BoolType; safecall;
    procedure Set_SendNotifyOnSendFailure(pVal: BoolType); safecall;
    function Get_SendNotifyOnNoHoldForPreview: BoolType; safecall;
    procedure Set_SendNotifyOnNoHoldForPreview(pVal: BoolType); safecall;
    function Get_ReceiveNotify: ReceiveNotifyType; safecall;
    procedure Set_ReceiveNotify(pVal: ReceiveNotifyType); safecall;
    function Get_UpdateInterval: Smallint; safecall;
    procedure Set_UpdateInterval(pVal: Smallint); safecall;
    function Get_AutoOCRLayout: OCRLayoutType; safecall;
    procedure Set_AutoOCRLayout(pVal: OCRLayoutType); safecall;
    function Get_AutoOCRFormat: OCRFormatType; safecall;
    procedure Set_AutoOCRFormat(pVal: OCRFormatType); safecall;
    function Get_AutoOCRExtension: WideString; safecall;
    procedure Set_AutoOCRExtension(const pVal: WideString); safecall;
    function Get_AutoForwardType: AutoForwardType; safecall;
    procedure Set_AutoForwardType(pVal: AutoForwardType); safecall;
    function Get_DeleteAfterSuccessfulRoute: BoolType; safecall;
    procedure Set_DeleteAfterSuccessfulRoute(pVal: BoolType); safecall;
    function Get_RouteInfo: WideString; safecall;
    procedure Set_RouteInfo(const pVal: WideString); safecall;
    function Get_DistinguishedName: WideString; safecall;
    procedure Set_DistinguishedName(const pVal: WideString); safecall;
    function Get_EmailRouteForm: EmailRouteFormType; safecall;
    procedure Set_EmailRouteForm(pVal: EmailRouteFormType); safecall;
    function Get_DefaultBillingCode: BillingCode; safecall;
    procedure Set_DefaultBillingCode(const pVal: BillingCode); safecall;
    function Get_AssociatedNTAccount: WideString; safecall;
    procedure Set_AssociatedNTAccount(const pVal: WideString); safecall;
    function Get_DefaultBillingCode1: WideString; safecall;
    procedure Set_DefaultBillingCode1(const pVal: WideString); safecall;
    function Get_DefaultBillingCode2: WideString; safecall;
    procedure Set_DefaultBillingCode2(const pVal: WideString); safecall;
    function Get_AlternateNotifyUserID: WideString; safecall;
    procedure Set_AlternateNotifyUserID(const pVal: WideString); safecall;
    function Get_DefaultPrinterID: WideString; safecall;
    procedure Set_DefaultPrinterID(const pVal: WideString); safecall;
    function Get_ReceivedAutoprintPrinterID: WideString; safecall;
    procedure Set_ReceivedAutoprintPrinterID(const pVal: WideString); safecall;
    function Get_SentAutoprintPrinterID: WideString; safecall;
    procedure Set_SentAutoprintPrinterID(const pVal: WideString); safecall;
    procedure Set_AssociatedNTAccountSID(Param1: OleVariant); safecall;
    function Get_EmailAddress: WideString; safecall;
    procedure Set_EmailAddress(const pVal: WideString); safecall;
    function Get_SendNotifyOnSendHeldForApproval: BoolType; safecall;
    procedure Set_SendNotifyOnSendHeldForApproval(pVal: BoolType); safecall;
    function Get_Raw: Integer; safecall;
    function Get_ReceivedAutoprintPrinterResolution: AutoprintResolutionType; safecall;
    procedure Set_ReceivedAutoprintPrinterResolution(pVal: AutoprintResolutionType); safecall;
    function Get_AutoFaxListUpdate: BoolType; safecall;
    procedure Set_AutoFaxListUpdate(pVal: BoolType); safecall;
    function Get_AutoDelete: Smallint; safecall;
    procedure Set_AutoDelete(pVal: Smallint); safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_EDCProcessReceivedFaxes: BoolType; safecall;
    procedure Set_EDCProcessReceivedFaxes(pVal: BoolType); safecall;
    function Get_EDCProcessSentFaxes: BoolType; safecall;
    procedure Set_EDCProcessSentFaxes(pVal: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    function Get_XML: WideString; safecall;
    procedure Set_XML(const pVal: WideString); safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    function Get_NotifyInfo: WideString; safecall;
    procedure Set_NotifyInfo(const pVal: WideString); safecall;
    function Get_IsAbleToBypassPrivacy: BoolType; safecall;
    procedure Set_IsAbleToBypassPrivacy(pVal: BoolType); safecall;
    function Get_IsAbleToSendSMS: BoolType; safecall;
    procedure Set_IsAbleToSendSMS(pVal: BoolType); safecall;
    property ID: WideString read Get_ID write Set_ID;
    property Handle: Integer read Get_Handle;
    property ChangeTag: Integer read Get_ChangeTag;
    property Faxes: Faxes read Get_Faxes;
    property MemberOfGroup: Group read Get_MemberOfGroup write Set_MemberOfGroup;
    property Folders: Folders read Get_Folders;
    property AccessibleByTheseUsers: Delegates read Get_AccessibleByTheseUsers;
    property CheckForNewFaxes: Fax read Get_CheckForNewFaxes;
    property HasAccessToTheseUsers: Delegates read Get_HasAccessToTheseUsers;
    property PhoneBook: PhoneBook read Get_PhoneBook;
    property PasswordKey[const Key: WideString]: WideString read Get_PasswordKey;
    property Password: WideString write Set_Password;
    property MemberOfGroupID: WideString read Get_MemberOfGroupID write Set_MemberOfGroupID;
    property DefaultOCRFormat: OCRFormatType read Get_DefaultOCRFormat write Set_DefaultOCRFormat;
    property DefaultOCRLayout: OCRLayoutType read Get_DefaultOCRLayout write Set_DefaultOCRLayout;
    property DefaultOCRFileExtension: WideString read Get_DefaultOCRFileExtension write Set_DefaultOCRFileExtension;
    property NumberOfFaxesOwned: Smallint read Get_NumberOfFaxesOwned;
    property IsAdministrator: BoolType read Get_IsAdministrator write Set_IsAdministrator;
    property IsAbleToCreateNewLibraryDocuments: BoolType read Get_IsAbleToCreateNewLibraryDocuments write Set_IsAbleToCreateNewLibraryDocuments;
    property IsAbleToCreateNewForms: BoolType read Get_IsAbleToCreateNewForms write Set_IsAbleToCreateNewForms;
    property IsAbleToUseHighPriority: BoolType read Get_IsAbleToUseHighPriority write Set_IsAbleToUseHighPriority;
    property IsUnprotected: BoolType read Get_IsUnprotected write Set_IsUnprotected;
    property IsExemptFromBillingCodeVerification: BoolType read Get_IsExemptFromBillingCodeVerification write Set_IsExemptFromBillingCodeVerification;
    property IsDefaultFine: BoolType read Get_IsDefaultFine write Set_IsDefaultFine;
    property IsRestrictedToFirstPageOnly: BoolType read Get_IsRestrictedToFirstPageOnly write Set_IsRestrictedToFirstPageOnly;
    property IsFaxesSetToBeAutomaticallyPrinted: BoolType read Get_IsFaxesSetToBeAutomaticallyPrinted write Set_IsFaxesSetToBeAutomaticallyPrinted;
    property IsCoverPageDefaultedOn: BoolType read Get_IsCoverPageDefaultedOn write Set_IsCoverPageDefaultedOn;
    property IsAutoforwardEnabled: BoolType read Get_IsAutoforwardEnabled write Set_IsAutoforwardEnabled;
    property IsAlternateNotificationEnabled: BoolType read Get_IsAlternateNotificationEnabled write Set_IsAlternateNotificationEnabled;
    property IsDefaultCoverSheetsFine: BoolType read Get_IsDefaultCoverSheetsFine write Set_IsDefaultCoverSheetsFine;
    property IsPasswordRequired: BoolType read Get_IsPasswordRequired write Set_IsPasswordRequired;
    property IsArchiveEnable: BoolType read Get_IsArchiveEnable write Set_IsArchiveEnable;
    property IsAbleToChangeCoverSheets: BoolType read Get_IsAbleToChangeCoverSheets write Set_IsAbleToChangeCoverSheets;
    property IsAutoOCREnabled: BoolType read Get_IsAutoOCREnabled write Set_IsAutoOCREnabled;
    property IsAbleToOCR: BoolType read Get_IsAbleToOCR write Set_IsAbleToOCR;
    property IsUnableToDelete: BoolType read Get_IsUnableToDelete write Set_IsUnableToDelete;
    property IsDefaultSmartResumeEnabled: BoolType read Get_IsDefaultSmartResumeEnabled write Set_IsDefaultSmartResumeEnabled;
    property IsNotAllowToSearchBillingCodes: BoolType read Get_IsNotAllowToSearchBillingCodes write Set_IsNotAllowToSearchBillingCodes;
    property IsSynched: BoolType read Get_IsSynched write Set_IsSynched;
    property UserName: WideString read Get_UserName write Set_UserName;
    property DIDNumber: Integer read Get_DIDNumber write Set_DIDNumber;
    property CoverSheetModelID: WideString read Get_CoverSheetModelID write Set_CoverSheetModelID;
    property NotifyType: NotifyType read Get_NotifyType write Set_NotifyType;
    property PersonalFaxNumber: WideString read Get_PersonalFaxNumber write Set_PersonalFaxNumber;
    property GeneralFaxNumber: WideString read Get_GeneralFaxNumber write Set_GeneralFaxNumber;
    property IsCallbackRequested: BoolType read Get_IsCallbackRequested write Set_IsCallbackRequested;
    property GeneralVoiceNumber: WideString read Get_GeneralVoiceNumber write Set_GeneralVoiceNumber;
    property DefaultFromName: WideString read Get_DefaultFromName write Set_DefaultFromName;
    property PersonalVoiceNumber: WideString read Get_PersonalVoiceNumber write Set_PersonalVoiceNumber;
    property DefaultToFaxNumber: WideString read Get_DefaultToFaxNumber write Set_DefaultToFaxNumber;
    property DefaultToVoiceNumber: WideString read Get_DefaultToVoiceNumber write Set_DefaultToVoiceNumber;
    property DefaultToName: WideString read Get_DefaultToName write Set_DefaultToName;
    property DefaultToCompany: WideString read Get_DefaultToCompany write Set_DefaultToCompany;
    property DefaultToCityState: WideString read Get_DefaultToCityState write Set_DefaultToCityState;
    property ReceivedAutoprintPrinter: Printer read Get_ReceivedAutoprintPrinter write Set_ReceivedAutoprintPrinter;
    property DefaultPrinter: Printer read Get_DefaultPrinter write Set_DefaultPrinter;
    property WebClientImageFormat: UserRouteFormatType read Get_WebClientImageFormat write Set_WebClientImageFormat;
    property SentAutoprintPrinter: Printer read Get_SentAutoprintPrinter write Set_SentAutoprintPrinter;
    property IsAutoprintSentEnabled: BoolType read Get_IsAutoprintSentEnabled write Set_IsAutoprintSentEnabled;
    property IsAutoprintSentCoversheetEnabled: BoolType read Get_IsAutoprintSentCoversheetEnabled write Set_IsAutoprintSentCoversheetEnabled;
    property IsAutoprintSentBodyEnabled: BoolType read Get_IsAutoprintSentBodyEnabled write Set_IsAutoprintSentBodyEnabled;
    property IsAutoprintSentHistoryEnabled: BoolType read Get_IsAutoprintSentHistoryEnabled write Set_IsAutoprintSentHistoryEnabled;
    property IsAutoprintReceivedCoversheetEnabled: BoolType read Get_IsAutoprintReceivedCoversheetEnabled write Set_IsAutoprintReceivedCoversheetEnabled;
    property IsAutoprintReceivedBodyEnabled: BoolType read Get_IsAutoprintReceivedBodyEnabled write Set_IsAutoprintReceivedBodyEnabled;
    property IsAutoprintReceivedHistoryEnabled: BoolType read Get_IsAutoprintReceivedHistoryEnabled write Set_IsAutoprintReceivedHistoryEnabled;
    property IsAutoprintSentFailedFaxesEnabled: BoolType read Get_IsAutoprintSentFailedFaxesEnabled write Set_IsAutoprintSentFailedFaxesEnabled;
    property IsAutoprintSentSuccessFaxesEnabled: BoolType read Get_IsAutoprintSentSuccessFaxesEnabled write Set_IsAutoprintSentSuccessFaxesEnabled;
    property VoiceMailSubscriberID: Integer read Get_VoiceMailSubscriberID write Set_VoiceMailSubscriberID;
    property IsTrashEnabled: BoolType read Get_IsTrashEnabled write Set_IsTrashEnabled;
    property IsEmptyTrashEnabled: BoolType read Get_IsEmptyTrashEnabled write Set_IsEmptyTrashEnabled;
    property IsWebTiffEnabled: BoolType read Get_IsWebTiffEnabled write Set_IsWebTiffEnabled;
    property IsWebRFXEnabled: BoolType read Get_IsWebRFXEnabled write Set_IsWebRFXEnabled;
    property IsSmartFaxDistributionEnabled: BoolType read Get_IsSmartFaxDistributionEnabled write Set_IsSmartFaxDistributionEnabled;
    property NeedsFaxesApproved: BoolType read Get_NeedsFaxesApproved write Set_NeedsFaxesApproved;
    property ExcludedFromFaxAging: BoolType read Get_ExcludedFromFaxAging write Set_ExcludedFromFaxAging;
    property IsAbleToRunReports: BoolType read Get_IsAbleToRunReports write Set_IsAbleToRunReports;
    property IsUnableToAnnotate: BoolType read Get_IsUnableToAnnotate write Set_IsUnableToAnnotate;
    property IsUnableToEditBillingCodes: BoolType read Get_IsUnableToEditBillingCodes write Set_IsUnableToEditBillingCodes;
    property WillReceivedFaxesHaveBillingCodesAssociated: BoolType read Get_WillReceivedFaxesHaveBillingCodesAssociated write Set_WillReceivedFaxesHaveBillingCodesAssociated;
    property IsNTAuthenticationRequired: BoolType read Get_IsNTAuthenticationRequired write Set_IsNTAuthenticationRequired;
    property AreReceivedFaxesStamped: BoolType read Get_AreReceivedFaxesStamped write Set_AreReceivedFaxesStamped;
    property HighestAvailablePriority: FaxPriorityType read Get_HighestAvailablePriority write Set_HighestAvailablePriority;
    property DefaultPriority: FaxPriorityType read Get_DefaultPriority write Set_DefaultPriority;
    property AlternateNotifyUser: User read Get_AlternateNotifyUser write Set_AlternateNotifyUser;
    property RouteType: RouteType read Get_RouteType write Set_RouteType;
    property RouteFormat: UserRouteFormatType read Get_RouteFormat write Set_RouteFormat;
    property AutoforwardFaxNumber: WideString read Get_AutoforwardFaxNumber write Set_AutoforwardFaxNumber;
    property SendNotifyOnIncompleteFirstTime: BoolType read Get_SendNotifyOnIncompleteFirstTime write Set_SendNotifyOnIncompleteFirstTime;
    property SendNotifyOnIncompletePeriodically: BoolType read Get_SendNotifyOnIncompletePeriodically write Set_SendNotifyOnIncompletePeriodically;
    property SendNotifyOnSendingFirstTime: BoolType read Get_SendNotifyOnSendingFirstTime write Set_SendNotifyOnSendingFirstTime;
    property SendNotifyOnSendingPeriodically: BoolType read Get_SendNotifyOnSendingPeriodically write Set_SendNotifyOnSendingPeriodically;
    property SendNotifyOnSendFailedWillRetry: BoolType read Get_SendNotifyOnSendFailedWillRetry write Set_SendNotifyOnSendFailedWillRetry;
    property SendNotifyOnSentSuccessfully: BoolType read Get_SendNotifyOnSentSuccessfully write Set_SendNotifyOnSentSuccessfully;
    property SendNotifyOnSendFailure: BoolType read Get_SendNotifyOnSendFailure write Set_SendNotifyOnSendFailure;
    property SendNotifyOnNoHoldForPreview: BoolType read Get_SendNotifyOnNoHoldForPreview write Set_SendNotifyOnNoHoldForPreview;
    property ReceiveNotify: ReceiveNotifyType read Get_ReceiveNotify write Set_ReceiveNotify;
    property UpdateInterval: Smallint read Get_UpdateInterval write Set_UpdateInterval;
    property AutoOCRLayout: OCRLayoutType read Get_AutoOCRLayout write Set_AutoOCRLayout;
    property AutoOCRFormat: OCRFormatType read Get_AutoOCRFormat write Set_AutoOCRFormat;
    property AutoOCRExtension: WideString read Get_AutoOCRExtension write Set_AutoOCRExtension;
    property AutoForwardType: AutoForwardType read Get_AutoForwardType write Set_AutoForwardType;
    property DeleteAfterSuccessfulRoute: BoolType read Get_DeleteAfterSuccessfulRoute write Set_DeleteAfterSuccessfulRoute;
    property RouteInfo: WideString read Get_RouteInfo write Set_RouteInfo;
    property DistinguishedName: WideString read Get_DistinguishedName write Set_DistinguishedName;
    property EmailRouteForm: EmailRouteFormType read Get_EmailRouteForm write Set_EmailRouteForm;
    property DefaultBillingCode: BillingCode read Get_DefaultBillingCode write Set_DefaultBillingCode;
    property AssociatedNTAccount: WideString read Get_AssociatedNTAccount write Set_AssociatedNTAccount;
    property DefaultBillingCode1: WideString read Get_DefaultBillingCode1 write Set_DefaultBillingCode1;
    property DefaultBillingCode2: WideString read Get_DefaultBillingCode2 write Set_DefaultBillingCode2;
    property AlternateNotifyUserID: WideString read Get_AlternateNotifyUserID write Set_AlternateNotifyUserID;
    property DefaultPrinterID: WideString read Get_DefaultPrinterID write Set_DefaultPrinterID;
    property ReceivedAutoprintPrinterID: WideString read Get_ReceivedAutoprintPrinterID write Set_ReceivedAutoprintPrinterID;
    property SentAutoprintPrinterID: WideString read Get_SentAutoprintPrinterID write Set_SentAutoprintPrinterID;
    property AssociatedNTAccountSID: OleVariant write Set_AssociatedNTAccountSID;
    property EmailAddress: WideString read Get_EmailAddress write Set_EmailAddress;
    property SendNotifyOnSendHeldForApproval: BoolType read Get_SendNotifyOnSendHeldForApproval write Set_SendNotifyOnSendHeldForApproval;
    property Raw: Integer read Get_Raw;
    property ReceivedAutoprintPrinterResolution: AutoprintResolutionType read Get_ReceivedAutoprintPrinterResolution write Set_ReceivedAutoprintPrinterResolution;
    property AutoFaxListUpdate: BoolType read Get_AutoFaxListUpdate write Set_AutoFaxListUpdate;
    property AutoDelete: Smallint read Get_AutoDelete write Set_AutoDelete;
    property EDCProcessReceivedFaxes: BoolType read Get_EDCProcessReceivedFaxes write Set_EDCProcessReceivedFaxes;
    property EDCProcessSentFaxes: BoolType read Get_EDCProcessSentFaxes write Set_EDCProcessSentFaxes;
    property XML: WideString read Get_XML write Set_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
    property NotifyInfo: WideString read Get_NotifyInfo write Set_NotifyInfo;
    property IsAbleToBypassPrivacy: BoolType read Get_IsAbleToBypassPrivacy write Set_IsAbleToBypassPrivacy;
    property IsAbleToSendSMS: BoolType read Get_IsAbleToSendSMS write Set_IsAbleToSendSMS;
  end;

// *********************************************************************//
// DispIntf:  UserDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2AD3B468-CED5-40AC-A217-03BB3D8EA1AA}
// *********************************************************************//
  UserDisp = dispinterface
    ['{2AD3B468-CED5-40AC-A217-03BB3D8EA1AA}']
    property ID: WideString dispid 0;
    property Handle: Integer readonly dispid 1;
    property ChangeTag: Integer readonly dispid 2;
    procedure Refresh; dispid 3;
    property Faxes: Faxes readonly dispid 4;
    property MemberOfGroup: Group dispid 5;
    procedure Save; dispid 6;
    property Folders: Folders readonly dispid 7;
    property AccessibleByTheseUsers: Delegates readonly dispid 8;
    property CheckForNewFaxes: Fax readonly dispid 9;
    property HasAccessToTheseUsers: Delegates readonly dispid 10;
    property PhoneBook: PhoneBook readonly dispid 11;
    property PasswordKey[const Key: WideString]: WideString readonly dispid 12;
    property Password: WideString writeonly dispid 13;
    property MemberOfGroupID: WideString dispid 14;
    procedure Delete(ParentWindow: Integer); dispid 15;
    procedure ChangePassword(const NewPassword: WideString); dispid 16;
    property DefaultOCRFormat: OCRFormatType dispid 17;
    property DefaultOCRLayout: OCRLayoutType dispid 18;
    property DefaultOCRFileExtension: WideString dispid 19;
    property NumberOfFaxesOwned: Smallint readonly dispid 20;
    property IsAdministrator: BoolType dispid 21;
    property IsAbleToCreateNewLibraryDocuments: BoolType dispid 22;
    property IsAbleToCreateNewForms: BoolType dispid 23;
    property IsAbleToUseHighPriority: BoolType dispid 24;
    property IsUnprotected: BoolType dispid 25;
    property IsExemptFromBillingCodeVerification: BoolType dispid 26;
    property IsDefaultFine: BoolType dispid 27;
    property IsRestrictedToFirstPageOnly: BoolType dispid 28;
    property IsFaxesSetToBeAutomaticallyPrinted: BoolType dispid 29;
    property IsCoverPageDefaultedOn: BoolType dispid 30;
    property IsAutoforwardEnabled: BoolType dispid 31;
    property IsAlternateNotificationEnabled: BoolType dispid 32;
    property IsDefaultCoverSheetsFine: BoolType dispid 33;
    property IsPasswordRequired: BoolType dispid 34;
    property IsArchiveEnable: BoolType dispid 35;
    property IsAbleToChangeCoverSheets: BoolType dispid 36;
    property IsAutoOCREnabled: BoolType dispid 37;
    property IsAbleToOCR: BoolType dispid 38;
    property IsUnableToDelete: BoolType dispid 39;
    property IsDefaultSmartResumeEnabled: BoolType dispid 40;
    property IsNotAllowToSearchBillingCodes: BoolType dispid 41;
    property IsSynched: BoolType dispid 42;
    property UserName: WideString dispid 43;
    property DIDNumber: Integer dispid 44;
    property CoverSheetModelID: WideString dispid 45;
    property NotifyType: NotifyType dispid 46;
    property PersonalFaxNumber: WideString dispid 47;
    property GeneralFaxNumber: WideString dispid 48;
    property IsCallbackRequested: BoolType dispid 49;
    property GeneralVoiceNumber: WideString dispid 50;
    property DefaultFromName: WideString dispid 51;
    property PersonalVoiceNumber: WideString dispid 52;
    property DefaultToFaxNumber: WideString dispid 53;
    property DefaultToVoiceNumber: WideString dispid 54;
    property DefaultToName: WideString dispid 55;
    property DefaultToCompany: WideString dispid 56;
    property DefaultToCityState: WideString dispid 57;
    property ReceivedAutoprintPrinter: Printer dispid 58;
    property DefaultPrinter: Printer dispid 59;
    property WebClientImageFormat: UserRouteFormatType dispid 60;
    property SentAutoprintPrinter: Printer dispid 61;
    property IsAutoprintSentEnabled: BoolType dispid 62;
    property IsAutoprintSentCoversheetEnabled: BoolType dispid 63;
    property IsAutoprintSentBodyEnabled: BoolType dispid 64;
    property IsAutoprintSentHistoryEnabled: BoolType dispid 65;
    property IsAutoprintReceivedCoversheetEnabled: BoolType dispid 66;
    property IsAutoprintReceivedBodyEnabled: BoolType dispid 67;
    property IsAutoprintReceivedHistoryEnabled: BoolType dispid 68;
    property IsAutoprintSentFailedFaxesEnabled: BoolType dispid 69;
    property IsAutoprintSentSuccessFaxesEnabled: BoolType dispid 70;
    property VoiceMailSubscriberID: Integer dispid 71;
    property IsTrashEnabled: BoolType dispid 72;
    property IsEmptyTrashEnabled: BoolType dispid 73;
    property IsWebTiffEnabled: BoolType dispid 74;
    property IsWebRFXEnabled: BoolType dispid 75;
    property IsSmartFaxDistributionEnabled: BoolType dispid 76;
    property NeedsFaxesApproved: BoolType dispid 77;
    property ExcludedFromFaxAging: BoolType dispid 78;
    property IsAbleToRunReports: BoolType dispid 79;
    property IsUnableToAnnotate: BoolType dispid 80;
    property IsUnableToEditBillingCodes: BoolType dispid 81;
    property WillReceivedFaxesHaveBillingCodesAssociated: BoolType dispid 82;
    property IsNTAuthenticationRequired: BoolType dispid 83;
    property AreReceivedFaxesStamped: BoolType dispid 84;
    property HighestAvailablePriority: FaxPriorityType dispid 85;
    property DefaultPriority: FaxPriorityType dispid 86;
    property AlternateNotifyUser: User dispid 87;
    property RouteType: RouteType dispid 88;
    property RouteFormat: UserRouteFormatType dispid 89;
    property AutoforwardFaxNumber: WideString dispid 90;
    property SendNotifyOnIncompleteFirstTime: BoolType dispid 91;
    property SendNotifyOnIncompletePeriodically: BoolType dispid 92;
    property SendNotifyOnSendingFirstTime: BoolType dispid 93;
    property SendNotifyOnSendingPeriodically: BoolType dispid 94;
    property SendNotifyOnSendFailedWillRetry: BoolType dispid 95;
    property SendNotifyOnSentSuccessfully: BoolType dispid 96;
    property SendNotifyOnSendFailure: BoolType dispid 97;
    property SendNotifyOnNoHoldForPreview: BoolType dispid 98;
    property ReceiveNotify: ReceiveNotifyType dispid 99;
    property UpdateInterval: Smallint dispid 100;
    property AutoOCRLayout: OCRLayoutType dispid 101;
    property AutoOCRFormat: OCRFormatType dispid 102;
    property AutoOCRExtension: WideString dispid 103;
    property AutoForwardType: AutoForwardType dispid 104;
    property DeleteAfterSuccessfulRoute: BoolType dispid 105;
    property RouteInfo: WideString dispid 106;
    property DistinguishedName: WideString dispid 107;
    property EmailRouteForm: EmailRouteFormType dispid 108;
    property DefaultBillingCode: BillingCode dispid 109;
    property AssociatedNTAccount: WideString dispid 110;
    property DefaultBillingCode1: WideString dispid 111;
    property DefaultBillingCode2: WideString dispid 112;
    property AlternateNotifyUserID: WideString dispid 113;
    property DefaultPrinterID: WideString dispid 114;
    property ReceivedAutoprintPrinterID: WideString dispid 115;
    property SentAutoprintPrinterID: WideString dispid 116;
    property AssociatedNTAccountSID: OleVariant writeonly dispid 117;
    property EmailAddress: WideString dispid 118;
    property SendNotifyOnSendHeldForApproval: BoolType dispid 119;
    property Raw: Integer readonly dispid 120;
    property ReceivedAutoprintPrinterResolution: AutoprintResolutionType dispid 121;
    property AutoFaxListUpdate: BoolType dispid 122;
    property AutoDelete: Smallint dispid 123;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 124;
    property EDCProcessReceivedFaxes: BoolType dispid 125;
    property EDCProcessSentFaxes: BoolType dispid 126;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 127;
    property XML: WideString dispid 128;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 129;
    property NotifyInfo: WideString dispid 130;
    property IsAbleToBypassPrivacy: BoolType dispid 131;
    property IsAbleToSendSMS: BoolType dispid 132;
  end;

// *********************************************************************//
// Interface: Faxes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6BAD6E7E-B55B-4CD7-AA4F-E1D8FDF80B47}
// *********************************************************************//
  Faxes = interface(IDispatch)
    ['{6BAD6E7E-B55B-4CD7-AA4F-E1D8FDF80B47}']
    function Get_Count: Integer; safecall;
    function Get_Create: Fax; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): Fax; safecall;
    procedure Add(const NewFax: Fax); safecall;
    procedure Remove(const FaxToRemove: Fax); safecall;
    procedure RemoveAll; safecall;
    procedure Refresh; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_XML: WideString; safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; IncludeHistoryRecords: BoolType; 
                       RecordLevel: Integer): WideString; safecall;
    property Count: Integer read Get_Count;
    property Create: Fax read Get_Create;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: Fax read Get_Item; default;
    property XML: WideString read Get_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; IncludeHistoryRecords: BoolType; 
                   RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  FaxesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6BAD6E7E-B55B-4CD7-AA4F-E1D8FDF80B47}
// *********************************************************************//
  FaxesDisp = dispinterface
    ['{6BAD6E7E-B55B-4CD7-AA4F-E1D8FDF80B47}']
    property Count: Integer readonly dispid 1;
    property Create: Fax readonly dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: Fax readonly dispid 0; default;
    procedure Add(const NewFax: Fax); dispid 3;
    procedure Remove(const FaxToRemove: Fax); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure Refresh; dispid 6;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 7;
    property XML: WideString readonly dispid 8;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; IncludeHistoryRecords: BoolType; 
                   RecordLevel: Integer]: WideString readonly dispid 9;
  end;

// *********************************************************************//
// Interface: Group
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A4412691-8414-4971-846D-2740A7895082}
// *********************************************************************//
  Group = interface(IDispatch)
    ['{A4412691-8414-4971-846D-2740A7895082}']
    function Get_ID: WideString; safecall;
    procedure Set_ID(const pVal: WideString); safecall;
    function Get_Handle: Integer; safecall;
    function Get_Users: Users; safecall;
    procedure Save; safecall;
    procedure Delete; safecall;
    function Get_NumberOfMembers: Integer; safecall;
    function Get_IsForcedSchedulingEnabled: BoolType; safecall;
    procedure Set_IsForcedSchedulingEnabled(pVal: BoolType); safecall;
    function Get_MustHaveCoversheet: BoolType; safecall;
    procedure Set_MustHaveCoversheet(pVal: BoolType); safecall;
    function Get_PrimaryAdministrator: User; safecall;
    procedure Set_PrimaryAdministrator(const pVal: User); safecall;
    function Get_AlternateAdministrator: User; safecall;
    procedure Set_AlternateAdministrator(const pVal: User); safecall;
    function Get_PrimaryAdministratorID: WideString; safecall;
    procedure Set_PrimaryAdministratorID(const pVal: WideString); safecall;
    function Get_AlternateAdministratorID: WideString; safecall;
    procedure Set_AlternateAdministratorID(const pVal: WideString); safecall;
    function Get_CoverSheet: WideString; safecall;
    procedure Set_CoverSheet(const pVal: WideString); safecall;
    function Get_NotifyType: NotifyType; safecall;
    procedure Set_NotifyType(pVal: NotifyType); safecall;
    function Get_FaxAgeReceived: Smallint; safecall;
    procedure Set_FaxAgeReceived(pVal: Smallint); safecall;
    function Get_FaxAgeSent: Smallint; safecall;
    procedure Set_FaxAgeSent(pVal: Smallint); safecall;
    function Get_FaxAgeDeleted: Smallint; safecall;
    procedure Set_FaxAgeDeleted(pVal: Smallint); safecall;
    function Get_GroupRoutingCode: Integer; safecall;
    procedure Set_GroupRoutingCode(pVal: Integer); safecall;
    function Get_GroupSFDType: GroupSFDType; safecall;
    procedure Set_GroupSFDType(pVal: GroupSFDType); safecall;
    function Get_GroupSFDEnabled: BoolType; safecall;
    procedure Set_GroupSFDEnabled(pVal: BoolType); safecall;
    function Get_GroupSFDLoginRequired: BoolType; safecall;
    procedure Set_GroupSFDLoginRequired(pVal: BoolType); safecall;
    function Get_ChangeTag: Integer; safecall;
    function Get_MaxConcurrentPages: Smallint; safecall;
    procedure Set_MaxConcurrentPages(pVal: Smallint); safecall;
    function Get_MaxConcurrentFaxes: Smallint; safecall;
    procedure Set_MaxConcurrentFaxes(pVal: Smallint); safecall;
    function Get_ConcurrentDelayTime: Smallint; safecall;
    procedure Set_ConcurrentDelayTime(pVal: Smallint); safecall;
    function Get_ConcurrentStartTime: Smallint; safecall;
    procedure Set_ConcurrentStartTime(pVal: Smallint); safecall;
    function Get_ConcurrentEndTime: Smallint; safecall;
    procedure Set_ConcurrentEndTime(pVal: Smallint); safecall;
    function Get_FaxAgeNew: Smallint; safecall;
    procedure Set_FaxAgeNew(pVal: Smallint); safecall;
    function Get_FaxAgeFailed: Smallint; safecall;
    procedure Set_FaxAgeFailed(pVal: Smallint); safecall;
    function Get_FaxAgeIncomplete: Smallint; safecall;
    procedure Set_FaxAgeIncomplete(pVal: Smallint); safecall;
    function Get_FaxAgeCertifyDelivery: Smallint; safecall;
    procedure Set_FaxAgeCertifyDelivery(pVal: Smallint); safecall;
    function Get_HideUIControlVoiceNumber: BoolType; safecall;
    procedure Set_HideUIControlVoiceNumber(pVal: BoolType); safecall;
    function Get_HideUIControlCompany: BoolType; safecall;
    procedure Set_HideUIControlCompany(pVal: BoolType); safecall;
    function Get_HideUIControlCity: BoolType; safecall;
    procedure Set_HideUIControlCity(pVal: BoolType); safecall;
    function Get_HideUIControlPhoneBookButton: BoolType; safecall;
    procedure Set_HideUIControlPhoneBookButton(pVal: BoolType); safecall;
    function Get_HideUIControlAddPhoneBookEntryButton: BoolType; safecall;
    procedure Set_HideUIControlAddPhoneBookEntryButton(pVal: BoolType); safecall;
    function Get_HideUIControlFormType: BoolType; safecall;
    procedure Set_HideUIControlFormType(pVal: BoolType); safecall;
    function Get_HideUIControlPriority: BoolType; safecall;
    procedure Set_HideUIControlPriority(pVal: BoolType); safecall;
    function Get_HideUIControlPreview: BoolType; safecall;
    procedure Set_HideUIControlPreview(pVal: BoolType); safecall;
    function Get_HideUIControlCoverSheetToggle: BoolType; safecall;
    procedure Set_HideUIControlCoverSheetToggle(pVal: BoolType); safecall;
    function Get_HideUIControlCoverSheetSelect: BoolType; safecall;
    procedure Set_HideUIControlCoverSheetSelect(pVal: BoolType); safecall;
    function Get_HideUIControlSmartResume: BoolType; safecall;
    procedure Set_HideUIControlSmartResume(pVal: BoolType); safecall;
    function Get_HideUIControlFromName: BoolType; safecall;
    procedure Set_HideUIControlFromName(pVal: BoolType); safecall;
    function Get_HideUIControlFromPhoneNumber: BoolType; safecall;
    procedure Set_HideUIControlFromPhoneNumber(pVal: BoolType); safecall;
    function Get_HideUIControlCallback: BoolType; safecall;
    procedure Set_HideUIControlCallback(pVal: BoolType); safecall;
    function Get_HideUIControlDelaySend: BoolType; safecall;
    procedure Set_HideUIControlDelaySend(pVal: BoolType); safecall;
    function Get_HideUIControlBillInfo1: BoolType; safecall;
    procedure Set_HideUIControlBillInfo1(pVal: BoolType); safecall;
    function Get_HideUIControlBillInfo2: BoolType; safecall;
    procedure Set_HideUIControlBillInfo2(pVal: BoolType); safecall;
    function Get_HideUIControlBillInfoLookup: BoolType; safecall;
    procedure Set_HideUIControlBillInfoLookup(pVal: BoolType); safecall;
    function Get_HideUIControlMoreButton: BoolType; safecall;
    procedure Set_HideUIControlMoreButton(pVal: BoolType); safecall;
    function Get_HideUIControlNotesButton: BoolType; safecall;
    procedure Set_HideUIControlNotesButton(pVal: BoolType); safecall;
    function Get_HideUIControlUsePDF: BoolType; safecall;
    procedure Set_HideUIControlUsePDF(pVal: BoolType); safecall;
    function Get_HideUIControlPDFOptions: BoolType; safecall;
    procedure Set_HideUIControlPDFOptions(pVal: BoolType); safecall;
    function Get_HideUIControlCertified: BoolType; safecall;
    procedure Set_HideUIControlCertified(pVal: BoolType); safecall;
    function Get_HideUIControlRecipientType: BoolType; safecall;
    procedure Set_HideUIControlRecipientType(pVal: BoolType); safecall;
    function Get_HideUIControlNativeDocumentAttachments: BoolType; safecall;
    procedure Set_HideUIControlNativeDocumentAttachments(pVal: BoolType); safecall;
    function Get_HideUIControlBodyAttachments: BoolType; safecall;
    procedure Set_HideUIControlBodyAttachments(pVal: BoolType); safecall;
    function Get_HideUIControlPrivateFax: BoolType; safecall;
    procedure Set_HideUIControlPrivateFax(pVal: BoolType); safecall;
    function Get_HideUIControlGeneralFax: BoolType; safecall;
    procedure Set_HideUIControlGeneralFax(pVal: BoolType); safecall;
    function Get_HideUIControlGeneralVoice: BoolType; safecall;
    procedure Set_HideUIControlGeneralVoice(pVal: BoolType); safecall;
    function Get_HideUIControlLibraryDocumentSelect: BoolType; safecall;
    procedure Set_HideUIControlLibraryDocumentSelect(pVal: BoolType); safecall;
    function Get_HideUIControlSecureSend: BoolType; safecall;
    procedure Set_HideUIControlSecureSend(pVal: BoolType); safecall;
    function Get_HideUIControlAutoDeleteSetting: BoolType; safecall;
    procedure Set_HideUIControlAutoDeleteSetting(pVal: BoolType); safecall;
    function Get_HideUIControlTransmitQuality: BoolType; safecall;
    procedure Set_HideUIControlTransmitQuality(pVal: BoolType); safecall;
    function Get_HideUIControlAlternateFaxNumber: BoolType; safecall;
    procedure Set_HideUIControlAlternateFaxNumber(pVal: BoolType); safecall;
    function Get_MustHoldForPreview: BoolType; safecall;
    procedure Set_MustHoldForPreview(pVal: BoolType); safecall;
    function Get_FaxAgeSubFolders: BoolType; safecall;
    procedure Set_FaxAgeSubFolders(pVal: BoolType); safecall;
    function Get_HideUIControlScanAttach: BoolType; safecall;
    procedure Set_HideUIControlScanAttach(pVal: BoolType); safecall;
    function Get_HideUIControlFileAttach: BoolType; safecall;
    procedure Set_HideUIControlFileAttach(pVal: BoolType); safecall;
    function Get_HideUIControlNotes: BoolType; safecall;
    procedure Set_HideUIControlNotes(pVal: BoolType); safecall;
    function Get_HideUIControlComments: BoolType; safecall;
    procedure Set_HideUIControlComments(pVal: BoolType); safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    function Get_XML: WideString; safecall;
    procedure Set_XML(const pVal: WideString); safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property ID: WideString read Get_ID write Set_ID;
    property Handle: Integer read Get_Handle;
    property Users: Users read Get_Users;
    property NumberOfMembers: Integer read Get_NumberOfMembers;
    property IsForcedSchedulingEnabled: BoolType read Get_IsForcedSchedulingEnabled write Set_IsForcedSchedulingEnabled;
    property MustHaveCoversheet: BoolType read Get_MustHaveCoversheet write Set_MustHaveCoversheet;
    property PrimaryAdministrator: User read Get_PrimaryAdministrator write Set_PrimaryAdministrator;
    property AlternateAdministrator: User read Get_AlternateAdministrator write Set_AlternateAdministrator;
    property PrimaryAdministratorID: WideString read Get_PrimaryAdministratorID write Set_PrimaryAdministratorID;
    property AlternateAdministratorID: WideString read Get_AlternateAdministratorID write Set_AlternateAdministratorID;
    property CoverSheet: WideString read Get_CoverSheet write Set_CoverSheet;
    property NotifyType: NotifyType read Get_NotifyType write Set_NotifyType;
    property FaxAgeReceived: Smallint read Get_FaxAgeReceived write Set_FaxAgeReceived;
    property FaxAgeSent: Smallint read Get_FaxAgeSent write Set_FaxAgeSent;
    property FaxAgeDeleted: Smallint read Get_FaxAgeDeleted write Set_FaxAgeDeleted;
    property GroupRoutingCode: Integer read Get_GroupRoutingCode write Set_GroupRoutingCode;
    property GroupSFDType: GroupSFDType read Get_GroupSFDType write Set_GroupSFDType;
    property GroupSFDEnabled: BoolType read Get_GroupSFDEnabled write Set_GroupSFDEnabled;
    property GroupSFDLoginRequired: BoolType read Get_GroupSFDLoginRequired write Set_GroupSFDLoginRequired;
    property ChangeTag: Integer read Get_ChangeTag;
    property MaxConcurrentPages: Smallint read Get_MaxConcurrentPages write Set_MaxConcurrentPages;
    property MaxConcurrentFaxes: Smallint read Get_MaxConcurrentFaxes write Set_MaxConcurrentFaxes;
    property ConcurrentDelayTime: Smallint read Get_ConcurrentDelayTime write Set_ConcurrentDelayTime;
    property ConcurrentStartTime: Smallint read Get_ConcurrentStartTime write Set_ConcurrentStartTime;
    property ConcurrentEndTime: Smallint read Get_ConcurrentEndTime write Set_ConcurrentEndTime;
    property FaxAgeNew: Smallint read Get_FaxAgeNew write Set_FaxAgeNew;
    property FaxAgeFailed: Smallint read Get_FaxAgeFailed write Set_FaxAgeFailed;
    property FaxAgeIncomplete: Smallint read Get_FaxAgeIncomplete write Set_FaxAgeIncomplete;
    property FaxAgeCertifyDelivery: Smallint read Get_FaxAgeCertifyDelivery write Set_FaxAgeCertifyDelivery;
    property HideUIControlVoiceNumber: BoolType read Get_HideUIControlVoiceNumber write Set_HideUIControlVoiceNumber;
    property HideUIControlCompany: BoolType read Get_HideUIControlCompany write Set_HideUIControlCompany;
    property HideUIControlCity: BoolType read Get_HideUIControlCity write Set_HideUIControlCity;
    property HideUIControlPhoneBookButton: BoolType read Get_HideUIControlPhoneBookButton write Set_HideUIControlPhoneBookButton;
    property HideUIControlAddPhoneBookEntryButton: BoolType read Get_HideUIControlAddPhoneBookEntryButton write Set_HideUIControlAddPhoneBookEntryButton;
    property HideUIControlFormType: BoolType read Get_HideUIControlFormType write Set_HideUIControlFormType;
    property HideUIControlPriority: BoolType read Get_HideUIControlPriority write Set_HideUIControlPriority;
    property HideUIControlPreview: BoolType read Get_HideUIControlPreview write Set_HideUIControlPreview;
    property HideUIControlCoverSheetToggle: BoolType read Get_HideUIControlCoverSheetToggle write Set_HideUIControlCoverSheetToggle;
    property HideUIControlCoverSheetSelect: BoolType read Get_HideUIControlCoverSheetSelect write Set_HideUIControlCoverSheetSelect;
    property HideUIControlSmartResume: BoolType read Get_HideUIControlSmartResume write Set_HideUIControlSmartResume;
    property HideUIControlFromName: BoolType read Get_HideUIControlFromName write Set_HideUIControlFromName;
    property HideUIControlFromPhoneNumber: BoolType read Get_HideUIControlFromPhoneNumber write Set_HideUIControlFromPhoneNumber;
    property HideUIControlCallback: BoolType read Get_HideUIControlCallback write Set_HideUIControlCallback;
    property HideUIControlDelaySend: BoolType read Get_HideUIControlDelaySend write Set_HideUIControlDelaySend;
    property HideUIControlBillInfo1: BoolType read Get_HideUIControlBillInfo1 write Set_HideUIControlBillInfo1;
    property HideUIControlBillInfo2: BoolType read Get_HideUIControlBillInfo2 write Set_HideUIControlBillInfo2;
    property HideUIControlBillInfoLookup: BoolType read Get_HideUIControlBillInfoLookup write Set_HideUIControlBillInfoLookup;
    property HideUIControlMoreButton: BoolType read Get_HideUIControlMoreButton write Set_HideUIControlMoreButton;
    property HideUIControlNotesButton: BoolType read Get_HideUIControlNotesButton write Set_HideUIControlNotesButton;
    property HideUIControlUsePDF: BoolType read Get_HideUIControlUsePDF write Set_HideUIControlUsePDF;
    property HideUIControlPDFOptions: BoolType read Get_HideUIControlPDFOptions write Set_HideUIControlPDFOptions;
    property HideUIControlCertified: BoolType read Get_HideUIControlCertified write Set_HideUIControlCertified;
    property HideUIControlRecipientType: BoolType read Get_HideUIControlRecipientType write Set_HideUIControlRecipientType;
    property HideUIControlNativeDocumentAttachments: BoolType read Get_HideUIControlNativeDocumentAttachments write Set_HideUIControlNativeDocumentAttachments;
    property HideUIControlBodyAttachments: BoolType read Get_HideUIControlBodyAttachments write Set_HideUIControlBodyAttachments;
    property HideUIControlPrivateFax: BoolType read Get_HideUIControlPrivateFax write Set_HideUIControlPrivateFax;
    property HideUIControlGeneralFax: BoolType read Get_HideUIControlGeneralFax write Set_HideUIControlGeneralFax;
    property HideUIControlGeneralVoice: BoolType read Get_HideUIControlGeneralVoice write Set_HideUIControlGeneralVoice;
    property HideUIControlLibraryDocumentSelect: BoolType read Get_HideUIControlLibraryDocumentSelect write Set_HideUIControlLibraryDocumentSelect;
    property HideUIControlSecureSend: BoolType read Get_HideUIControlSecureSend write Set_HideUIControlSecureSend;
    property HideUIControlAutoDeleteSetting: BoolType read Get_HideUIControlAutoDeleteSetting write Set_HideUIControlAutoDeleteSetting;
    property HideUIControlTransmitQuality: BoolType read Get_HideUIControlTransmitQuality write Set_HideUIControlTransmitQuality;
    property HideUIControlAlternateFaxNumber: BoolType read Get_HideUIControlAlternateFaxNumber write Set_HideUIControlAlternateFaxNumber;
    property MustHoldForPreview: BoolType read Get_MustHoldForPreview write Set_MustHoldForPreview;
    property FaxAgeSubFolders: BoolType read Get_FaxAgeSubFolders write Set_FaxAgeSubFolders;
    property HideUIControlScanAttach: BoolType read Get_HideUIControlScanAttach write Set_HideUIControlScanAttach;
    property HideUIControlFileAttach: BoolType read Get_HideUIControlFileAttach write Set_HideUIControlFileAttach;
    property HideUIControlNotes: BoolType read Get_HideUIControlNotes write Set_HideUIControlNotes;
    property HideUIControlComments: BoolType read Get_HideUIControlComments write Set_HideUIControlComments;
    property XML: WideString read Get_XML write Set_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  GroupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A4412691-8414-4971-846D-2740A7895082}
// *********************************************************************//
  GroupDisp = dispinterface
    ['{A4412691-8414-4971-846D-2740A7895082}']
    property ID: WideString dispid 0;
    property Handle: Integer readonly dispid 1;
    property Users: Users readonly dispid 2;
    procedure Save; dispid 3;
    procedure Delete; dispid 4;
    property NumberOfMembers: Integer readonly dispid 5;
    property IsForcedSchedulingEnabled: BoolType dispid 6;
    property MustHaveCoversheet: BoolType dispid 7;
    property PrimaryAdministrator: User dispid 8;
    property AlternateAdministrator: User dispid 9;
    property PrimaryAdministratorID: WideString dispid 10;
    property AlternateAdministratorID: WideString dispid 11;
    property CoverSheet: WideString dispid 12;
    property NotifyType: NotifyType dispid 13;
    property FaxAgeReceived: Smallint dispid 14;
    property FaxAgeSent: Smallint dispid 15;
    property FaxAgeDeleted: Smallint dispid 16;
    property GroupRoutingCode: Integer dispid 17;
    property GroupSFDType: GroupSFDType dispid 18;
    property GroupSFDEnabled: BoolType dispid 19;
    property GroupSFDLoginRequired: BoolType dispid 20;
    property ChangeTag: Integer readonly dispid 21;
    property MaxConcurrentPages: Smallint dispid 22;
    property MaxConcurrentFaxes: Smallint dispid 23;
    property ConcurrentDelayTime: Smallint dispid 24;
    property ConcurrentStartTime: Smallint dispid 25;
    property ConcurrentEndTime: Smallint dispid 26;
    property FaxAgeNew: Smallint dispid 27;
    property FaxAgeFailed: Smallint dispid 28;
    property FaxAgeIncomplete: Smallint dispid 29;
    property FaxAgeCertifyDelivery: Smallint dispid 30;
    property HideUIControlVoiceNumber: BoolType dispid 31;
    property HideUIControlCompany: BoolType dispid 32;
    property HideUIControlCity: BoolType dispid 33;
    property HideUIControlPhoneBookButton: BoolType dispid 34;
    property HideUIControlAddPhoneBookEntryButton: BoolType dispid 35;
    property HideUIControlFormType: BoolType dispid 36;
    property HideUIControlPriority: BoolType dispid 37;
    property HideUIControlPreview: BoolType dispid 38;
    property HideUIControlCoverSheetToggle: BoolType dispid 39;
    property HideUIControlCoverSheetSelect: BoolType dispid 40;
    property HideUIControlSmartResume: BoolType dispid 41;
    property HideUIControlFromName: BoolType dispid 42;
    property HideUIControlFromPhoneNumber: BoolType dispid 43;
    property HideUIControlCallback: BoolType dispid 44;
    property HideUIControlDelaySend: BoolType dispid 45;
    property HideUIControlBillInfo1: BoolType dispid 46;
    property HideUIControlBillInfo2: BoolType dispid 47;
    property HideUIControlBillInfoLookup: BoolType dispid 48;
    property HideUIControlMoreButton: BoolType dispid 49;
    property HideUIControlNotesButton: BoolType dispid 50;
    property HideUIControlUsePDF: BoolType dispid 51;
    property HideUIControlPDFOptions: BoolType dispid 52;
    property HideUIControlCertified: BoolType dispid 53;
    property HideUIControlRecipientType: BoolType dispid 54;
    property HideUIControlNativeDocumentAttachments: BoolType dispid 55;
    property HideUIControlBodyAttachments: BoolType dispid 56;
    property HideUIControlPrivateFax: BoolType dispid 57;
    property HideUIControlGeneralFax: BoolType dispid 58;
    property HideUIControlGeneralVoice: BoolType dispid 59;
    property HideUIControlLibraryDocumentSelect: BoolType dispid 60;
    property HideUIControlSecureSend: BoolType dispid 61;
    property HideUIControlAutoDeleteSetting: BoolType dispid 62;
    property HideUIControlTransmitQuality: BoolType dispid 63;
    property HideUIControlAlternateFaxNumber: BoolType dispid 64;
    property MustHoldForPreview: BoolType dispid 65;
    property FaxAgeSubFolders: BoolType dispid 66;
    property HideUIControlScanAttach: BoolType dispid 67;
    property HideUIControlFileAttach: BoolType dispid 68;
    property HideUIControlNotes: BoolType dispid 69;
    property HideUIControlComments: BoolType dispid 70;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 71;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 72;
    property XML: WideString dispid 73;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 74;
  end;

// *********************************************************************//
// Interface: Users
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BAF8D983-E7FE-4503-BFE0-D5A6530B57B3}
// *********************************************************************//
  Users = interface(IDispatch)
    ['{BAF8D983-E7FE-4503-BFE0-D5A6530B57B3}']
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): User; safecall;
    function Get_Create: User; safecall;
    procedure Add(const NewUser: User); safecall;
    procedure Remove(const UserToRemove: User); safecall;
    procedure RemoveAll; safecall;
    procedure Refresh; safecall;
    function Get_JSForTreeViewFolder(Index: OleVariant): WideString; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_XML: WideString; safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    function Get_JSForTreeViewFolderX(Index: OleVariant): WideString; safecall;
    procedure Sort; safecall;
    procedure SortClientSide; safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: User read Get_Item; default;
    property Create: User read Get_Create;
    property JSForTreeViewFolder[Index: OleVariant]: WideString read Get_JSForTreeViewFolder;
    property XML: WideString read Get_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
    property JSForTreeViewFolderX[Index: OleVariant]: WideString read Get_JSForTreeViewFolderX;
  end;

// *********************************************************************//
// DispIntf:  UsersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BAF8D983-E7FE-4503-BFE0-D5A6530B57B3}
// *********************************************************************//
  UsersDisp = dispinterface
    ['{BAF8D983-E7FE-4503-BFE0-D5A6530B57B3}']
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: User readonly dispid 0; default;
    property Create: User readonly dispid 2;
    procedure Add(const NewUser: User); dispid 3;
    procedure Remove(const UserToRemove: User); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure Refresh; dispid 6;
    property JSForTreeViewFolder[Index: OleVariant]: WideString readonly dispid 7;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 8;
    property XML: WideString readonly dispid 9;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 10;
    property JSForTreeViewFolderX[Index: OleVariant]: WideString readonly dispid 11;
    procedure Sort; dispid 12;
    procedure SortClientSide; dispid 13;
  end;

// *********************************************************************//
// Interface: Folders
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {44E62C87-E2A5-4A61-BD69-6C0850A7AF94}
// *********************************************************************//
  Folders = interface(IDispatch)
    ['{44E62C87-E2A5-4A61-BD69-6C0850A7AF94}']
    function Get_Count: Integer; safecall;
    function Get_Create: Folder; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): Folder; safecall;
    procedure Add(const NewFolder: Folder); safecall;
    procedure Remove(const FolderToRemove: Folder); safecall;
    procedure RemoveAll; safecall;
    procedure Refresh; safecall;
    property Count: Integer read Get_Count;
    property Create: Folder read Get_Create;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: Folder read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  FoldersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {44E62C87-E2A5-4A61-BD69-6C0850A7AF94}
// *********************************************************************//
  FoldersDisp = dispinterface
    ['{44E62C87-E2A5-4A61-BD69-6C0850A7AF94}']
    property Count: Integer readonly dispid 1;
    property Create: Folder readonly dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: Folder readonly dispid 0; default;
    procedure Add(const NewFolder: Folder); dispid 3;
    procedure Remove(const FolderToRemove: Folder); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure Refresh; dispid 6;
  end;

// *********************************************************************//
// Interface: Folder
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0187CA55-C98D-48C1-8A90-4850DA384BCA}
// *********************************************************************//
  Folder = interface(IDispatch)
    ['{0187CA55-C98D-48C1-8A90-4850DA384BCA}']
    function Get_ID: WideString; safecall;
    procedure Set_ID(const pVal: WideString); safecall;
    function Get_Faxes: Faxes; safecall;
    function Get_ByteID: Smallint; safecall;
    procedure Delete(CheckEmtpy: BoolType); safecall;
    function Get_User: User; safecall;
    property ID: WideString read Get_ID write Set_ID;
    property Faxes: Faxes read Get_Faxes;
    property ByteID: Smallint read Get_ByteID;
    property User: User read Get_User;
  end;

// *********************************************************************//
// DispIntf:  FolderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0187CA55-C98D-48C1-8A90-4850DA384BCA}
// *********************************************************************//
  FolderDisp = dispinterface
    ['{0187CA55-C98D-48C1-8A90-4850DA384BCA}']
    property ID: WideString dispid 0;
    property Faxes: Faxes readonly dispid 1;
    property ByteID: Smallint readonly dispid 2;
    procedure Delete(CheckEmtpy: BoolType); dispid 3;
    property User: User readonly dispid 4;
  end;

// *********************************************************************//
// Interface: Delegates
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {62551E19-012A-48A9-A606-3571C036C8C2}
// *********************************************************************//
  Delegates = interface(IDispatch)
    ['{62551E19-012A-48A9-A606-3571C036C8C2}']
    function Get_Count: Integer; safecall;
    function Get_Create: Delegate; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): Delegate; safecall;
    procedure Add(const NewDelegate: Delegate); safecall;
    procedure Remove(const DelegateToRemove: Delegate); safecall;
    procedure RemoveAll; safecall;
    procedure Refresh; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    property Count: Integer read Get_Count;
    property Create: Delegate read Get_Create;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: Delegate read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  DelegatesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {62551E19-012A-48A9-A606-3571C036C8C2}
// *********************************************************************//
  DelegatesDisp = dispinterface
    ['{62551E19-012A-48A9-A606-3571C036C8C2}']
    property Count: Integer readonly dispid 1;
    property Create: Delegate readonly dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: Delegate readonly dispid 0; default;
    procedure Add(const NewDelegate: Delegate); dispid 3;
    procedure Remove(const DelegateToRemove: Delegate); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure Refresh; dispid 6;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 7;
  end;

// *********************************************************************//
// Interface: Delegate
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6D4B7672-95BE-468E-A718-EF53E3A5DE02}
// *********************************************************************//
  Delegate = interface(IDispatch)
    ['{6D4B7672-95BE-468E-A718-EF53E3A5DE02}']
    function Get_Handle: Integer; safecall;
    function Get_User: User; safecall;
    procedure Set_User(const pVal: User); safecall;
    procedure Save; safecall;
    procedure Delete; safecall;
    function Get_ReadPermissionCanViewFax: BoolType; safecall;
    procedure Set_ReadPermissionCanViewFax(pVal: BoolType); safecall;
    function Get_ReadPermissionCanViewFirstPage: BoolType; safecall;
    procedure Set_ReadPermissionCanViewFirstPage(pVal: BoolType); safecall;
    function Get_ReadPermissionCanPrintFaxes: BoolType; safecall;
    procedure Set_ReadPermissionCanPrintFaxes(pVal: BoolType); safecall;
    function Get_ReadPermissionCanViewHistory: BoolType; safecall;
    procedure Set_ReadPermissionCanViewHistory(pVal: BoolType); safecall;
    function Get_ReadPermissionCanBrowseAllFolders: BoolType; safecall;
    procedure Set_ReadPermissionCanBrowseAllFolders(pVal: BoolType); safecall;
    function Get_ReadPermissionCanUsePhoneEntries: BoolType; safecall;
    procedure Set_ReadPermissionCanUsePhoneEntries(pVal: BoolType); safecall;
    function Get_ReadPermissionCanExportImages: BoolType; safecall;
    procedure Set_ReadPermissionCanExportImages(pVal: BoolType); safecall;
    function Get_ReadPermissionCanMailImages: BoolType; safecall;
    procedure Set_ReadPermissionCanMailImages(pVal: BoolType); safecall;
    function Get_WritePermissionCanCreateFaxes: BoolType; safecall;
    procedure Set_WritePermissionCanCreateFaxes(pVal: BoolType); safecall;
    function Get_WritePermissionCanEditFaxes: BoolType; safecall;
    procedure Set_WritePermissionCanEditFaxes(pVal: BoolType); safecall;
    function Get_WritePermissionCanUpdateFaxStatus: BoolType; safecall;
    procedure Set_WritePermissionCanUpdateFaxStatus(pVal: BoolType); safecall;
    function Get_WritePermissionCanForwardRouteFaxes: BoolType; safecall;
    procedure Set_WritePermissionCanForwardRouteFaxes(pVal: BoolType); safecall;
    function Get_WritePermissionCanOCRFaxes: BoolType; safecall;
    procedure Set_WritePermissionCanOCRFaxes(pVal: BoolType); safecall;
    function Get_WritePermissionCanCreateFolders: BoolType; safecall;
    procedure Set_WritePermissionCanCreateFolders(pVal: BoolType); safecall;
    function Get_WritePermissionCanRenameFolders: BoolType; safecall;
    procedure Set_WritePermissionCanRenameFolders(pVal: BoolType); safecall;
    function Get_WritePermissionCanCreatePhoneItems: BoolType; safecall;
    procedure Set_WritePermissionCanCreatePhoneItems(pVal: BoolType); safecall;
    function Get_WritePermissionCanEditPhoneItems: BoolType; safecall;
    procedure Set_WritePermissionCanEditPhoneItems(pVal: BoolType); safecall;
    function Get_WritePermissionCanAnnotateFaxes: BoolType; safecall;
    procedure Set_WritePermissionCanAnnotateFaxes(pVal: BoolType); safecall;
    function Get_WritePermissionCanMoveFaxes: BoolType; safecall;
    procedure Set_WritePermissionCanMoveFaxes(pVal: BoolType); safecall;
    function Get_DeletePermissionCanDeleteFaxes: BoolType; safecall;
    procedure Set_DeletePermissionCanDeleteFaxes(pVal: BoolType); safecall;
    function Get_DeletePermissionCanDeleteFolders: BoolType; safecall;
    procedure Set_DeletePermissionCanDeleteFolders(pVal: BoolType); safecall;
    function Get_DeletePermissionCanDeletePhoneItems: BoolType; safecall;
    procedure Set_DeletePermissionCanDeletePhoneItems(pVal: BoolType); safecall;
    function Get_MiscPermissionCanApproveFaxes: BoolType; safecall;
    procedure Set_MiscPermissionCanApproveFaxes(pVal: BoolType); safecall;
    function Get_MiscPermissionCanModifyDeletgates: BoolType; safecall;
    procedure Set_MiscPermissionCanModifyDeletgates(pVal: BoolType); safecall;
    function Get_MiscPermissionCanToggleRefuseFaxDistribution: BoolType; safecall;
    procedure Set_MiscPermissionCanToggleRefuseFaxDistribution(pVal: BoolType); safecall;
    function Get_MiscPermissionFaxRequiresApproval: BoolType; safecall;
    procedure Set_MiscPermissionFaxRequiresApproval(pVal: BoolType); safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    property Handle: Integer read Get_Handle;
    property User: User read Get_User write Set_User;
    property ReadPermissionCanViewFax: BoolType read Get_ReadPermissionCanViewFax write Set_ReadPermissionCanViewFax;
    property ReadPermissionCanViewFirstPage: BoolType read Get_ReadPermissionCanViewFirstPage write Set_ReadPermissionCanViewFirstPage;
    property ReadPermissionCanPrintFaxes: BoolType read Get_ReadPermissionCanPrintFaxes write Set_ReadPermissionCanPrintFaxes;
    property ReadPermissionCanViewHistory: BoolType read Get_ReadPermissionCanViewHistory write Set_ReadPermissionCanViewHistory;
    property ReadPermissionCanBrowseAllFolders: BoolType read Get_ReadPermissionCanBrowseAllFolders write Set_ReadPermissionCanBrowseAllFolders;
    property ReadPermissionCanUsePhoneEntries: BoolType read Get_ReadPermissionCanUsePhoneEntries write Set_ReadPermissionCanUsePhoneEntries;
    property ReadPermissionCanExportImages: BoolType read Get_ReadPermissionCanExportImages write Set_ReadPermissionCanExportImages;
    property ReadPermissionCanMailImages: BoolType read Get_ReadPermissionCanMailImages write Set_ReadPermissionCanMailImages;
    property WritePermissionCanCreateFaxes: BoolType read Get_WritePermissionCanCreateFaxes write Set_WritePermissionCanCreateFaxes;
    property WritePermissionCanEditFaxes: BoolType read Get_WritePermissionCanEditFaxes write Set_WritePermissionCanEditFaxes;
    property WritePermissionCanUpdateFaxStatus: BoolType read Get_WritePermissionCanUpdateFaxStatus write Set_WritePermissionCanUpdateFaxStatus;
    property WritePermissionCanForwardRouteFaxes: BoolType read Get_WritePermissionCanForwardRouteFaxes write Set_WritePermissionCanForwardRouteFaxes;
    property WritePermissionCanOCRFaxes: BoolType read Get_WritePermissionCanOCRFaxes write Set_WritePermissionCanOCRFaxes;
    property WritePermissionCanCreateFolders: BoolType read Get_WritePermissionCanCreateFolders write Set_WritePermissionCanCreateFolders;
    property WritePermissionCanRenameFolders: BoolType read Get_WritePermissionCanRenameFolders write Set_WritePermissionCanRenameFolders;
    property WritePermissionCanCreatePhoneItems: BoolType read Get_WritePermissionCanCreatePhoneItems write Set_WritePermissionCanCreatePhoneItems;
    property WritePermissionCanEditPhoneItems: BoolType read Get_WritePermissionCanEditPhoneItems write Set_WritePermissionCanEditPhoneItems;
    property WritePermissionCanAnnotateFaxes: BoolType read Get_WritePermissionCanAnnotateFaxes write Set_WritePermissionCanAnnotateFaxes;
    property WritePermissionCanMoveFaxes: BoolType read Get_WritePermissionCanMoveFaxes write Set_WritePermissionCanMoveFaxes;
    property DeletePermissionCanDeleteFaxes: BoolType read Get_DeletePermissionCanDeleteFaxes write Set_DeletePermissionCanDeleteFaxes;
    property DeletePermissionCanDeleteFolders: BoolType read Get_DeletePermissionCanDeleteFolders write Set_DeletePermissionCanDeleteFolders;
    property DeletePermissionCanDeletePhoneItems: BoolType read Get_DeletePermissionCanDeletePhoneItems write Set_DeletePermissionCanDeletePhoneItems;
    property MiscPermissionCanApproveFaxes: BoolType read Get_MiscPermissionCanApproveFaxes write Set_MiscPermissionCanApproveFaxes;
    property MiscPermissionCanModifyDeletgates: BoolType read Get_MiscPermissionCanModifyDeletgates write Set_MiscPermissionCanModifyDeletgates;
    property MiscPermissionCanToggleRefuseFaxDistribution: BoolType read Get_MiscPermissionCanToggleRefuseFaxDistribution write Set_MiscPermissionCanToggleRefuseFaxDistribution;
    property MiscPermissionFaxRequiresApproval: BoolType read Get_MiscPermissionFaxRequiresApproval write Set_MiscPermissionFaxRequiresApproval;
  end;

// *********************************************************************//
// DispIntf:  DelegateDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6D4B7672-95BE-468E-A718-EF53E3A5DE02}
// *********************************************************************//
  DelegateDisp = dispinterface
    ['{6D4B7672-95BE-468E-A718-EF53E3A5DE02}']
    property Handle: Integer readonly dispid 0;
    property User: User dispid 1;
    procedure Save; dispid 2;
    procedure Delete; dispid 3;
    property ReadPermissionCanViewFax: BoolType dispid 4;
    property ReadPermissionCanViewFirstPage: BoolType dispid 5;
    property ReadPermissionCanPrintFaxes: BoolType dispid 6;
    property ReadPermissionCanViewHistory: BoolType dispid 7;
    property ReadPermissionCanBrowseAllFolders: BoolType dispid 8;
    property ReadPermissionCanUsePhoneEntries: BoolType dispid 9;
    property ReadPermissionCanExportImages: BoolType dispid 10;
    property ReadPermissionCanMailImages: BoolType dispid 11;
    property WritePermissionCanCreateFaxes: BoolType dispid 12;
    property WritePermissionCanEditFaxes: BoolType dispid 13;
    property WritePermissionCanUpdateFaxStatus: BoolType dispid 14;
    property WritePermissionCanForwardRouteFaxes: BoolType dispid 15;
    property WritePermissionCanOCRFaxes: BoolType dispid 16;
    property WritePermissionCanCreateFolders: BoolType dispid 17;
    property WritePermissionCanRenameFolders: BoolType dispid 18;
    property WritePermissionCanCreatePhoneItems: BoolType dispid 19;
    property WritePermissionCanEditPhoneItems: BoolType dispid 20;
    property WritePermissionCanAnnotateFaxes: BoolType dispid 21;
    property WritePermissionCanMoveFaxes: BoolType dispid 22;
    property DeletePermissionCanDeleteFaxes: BoolType dispid 23;
    property DeletePermissionCanDeleteFolders: BoolType dispid 24;
    property DeletePermissionCanDeletePhoneItems: BoolType dispid 25;
    property MiscPermissionCanApproveFaxes: BoolType dispid 26;
    property MiscPermissionCanModifyDeletgates: BoolType dispid 27;
    property MiscPermissionCanToggleRefuseFaxDistribution: BoolType dispid 28;
    property MiscPermissionFaxRequiresApproval: BoolType dispid 29;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 30;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 31;
  end;

// *********************************************************************//
// Interface: PhoneBook
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F54CE5B2-D3F1-41C6-8D59-FE6BE3C6CEA6}
// *********************************************************************//
  PhoneBook = interface(IDispatch)
    ['{F54CE5B2-D3F1-41C6-8D59-FE6BE3C6CEA6}']
    function Get_Count: Integer; safecall;
    function Get_Create(piType: PhoneItemType): PhoneItem; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): PhoneItem; safecall;
    procedure Add(const NewPhoneItem: PhoneItem); safecall;
    procedure Remove(const phoneItemToRemove: PhoneItem); safecall;
    procedure RemoveAll; safecall;
    procedure Refresh; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure Sort; safecall;
    property Count: Integer read Get_Count;
    property Create[piType: PhoneItemType]: PhoneItem read Get_Create;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: PhoneItem read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  PhoneBookDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F54CE5B2-D3F1-41C6-8D59-FE6BE3C6CEA6}
// *********************************************************************//
  PhoneBookDisp = dispinterface
    ['{F54CE5B2-D3F1-41C6-8D59-FE6BE3C6CEA6}']
    property Count: Integer readonly dispid 1;
    property Create[piType: PhoneItemType]: PhoneItem readonly dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: PhoneItem readonly dispid 0; default;
    procedure Add(const NewPhoneItem: PhoneItem); dispid 3;
    procedure Remove(const phoneItemToRemove: PhoneItem); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure Refresh; dispid 6;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 7;
    procedure Sort; dispid 8;
  end;

// *********************************************************************//
// Interface: PhoneItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F16ECA5-C7B3-4FF0-9D99-3B2179E7DC15}
// *********************************************************************//
  PhoneItem = interface(IDispatch)
    ['{3F16ECA5-C7B3-4FF0-9D99-3B2179E7DC15}']
    function Get_ID: WideString; safecall;
    procedure Set_ID(const pVal: WideString); safecall;
    function Get_Handle: Integer; safecall;
    function Get_Owner: User; safecall;
    procedure Set_Owner(const pVal: User); safecall;
    function Get_TypeOfPhoneItem: PhoneItemType; safecall;
    function Get_IsPublished: BoolType; safecall;
    procedure Set_IsPublished(pVal: BoolType); safecall;
    function Get_IsExternallyPublished: BoolType; safecall;
    procedure Set_IsExternallyPublished(pVal: BoolType); safecall;
    function Get_IsReadOnly: BoolType; safecall;
    procedure Set_IsReadOnly(pVal: BoolType); safecall;
    function Get_IsHiddenFromCCList: BoolType; safecall;
    procedure Set_IsHiddenFromCCList(pVal: BoolType); safecall;
    procedure Save; safecall;
    function Get_Raw: Integer; safecall;
    procedure Delete; safecall;
    function Get_IsCertifiedDeliveryEnabled: BoolType; safecall;
    procedure Set_IsCertifiedDeliveryEnabled(pVal: BoolType); safecall;
    function Get_IsEmailRecipient: BoolType; safecall;
    procedure Set_IsEmailRecipient(pVal: BoolType); safecall;
    property ID: WideString read Get_ID write Set_ID;
    property Handle: Integer read Get_Handle;
    property Owner: User read Get_Owner write Set_Owner;
    property TypeOfPhoneItem: PhoneItemType read Get_TypeOfPhoneItem;
    property IsPublished: BoolType read Get_IsPublished write Set_IsPublished;
    property IsExternallyPublished: BoolType read Get_IsExternallyPublished write Set_IsExternallyPublished;
    property IsReadOnly: BoolType read Get_IsReadOnly write Set_IsReadOnly;
    property IsHiddenFromCCList: BoolType read Get_IsHiddenFromCCList write Set_IsHiddenFromCCList;
    property Raw: Integer read Get_Raw;
    property IsCertifiedDeliveryEnabled: BoolType read Get_IsCertifiedDeliveryEnabled write Set_IsCertifiedDeliveryEnabled;
    property IsEmailRecipient: BoolType read Get_IsEmailRecipient write Set_IsEmailRecipient;
  end;

// *********************************************************************//
// DispIntf:  PhoneItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F16ECA5-C7B3-4FF0-9D99-3B2179E7DC15}
// *********************************************************************//
  PhoneItemDisp = dispinterface
    ['{3F16ECA5-C7B3-4FF0-9D99-3B2179E7DC15}']
    property ID: WideString dispid 1;
    property Handle: Integer readonly dispid 2;
    property Owner: User dispid 3;
    property TypeOfPhoneItem: PhoneItemType readonly dispid 4;
    property IsPublished: BoolType dispid 5;
    property IsExternallyPublished: BoolType dispid 6;
    property IsReadOnly: BoolType dispid 7;
    property IsHiddenFromCCList: BoolType dispid 8;
    procedure Save; dispid 9;
    property Raw: Integer readonly dispid 10;
    procedure Delete; dispid 11;
    property IsCertifiedDeliveryEnabled: BoolType dispid 12;
    property IsEmailRecipient: BoolType dispid 13;
  end;

// *********************************************************************//
// Interface: Printer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {59800B02-BBA4-40CC-A8F7-DCE63578F53B}
// *********************************************************************//
  Printer = interface(IDispatch)
    ['{59800B02-BBA4-40CC-A8F7-DCE63578F53B}']
    function Get_ID: WideString; safecall;
    procedure Set_ID(const pVal: WideString); safecall;
    function Get_Handle: Integer; safecall;
    function Get_Request: PrintRequest; safecall;
    procedure Save; safecall;
    procedure Delete; safecall;
    function Get_PrintDirectlyToAnIPAddress: BoolType; safecall;
    procedure Set_PrintDirectlyToAnIPAddress(pVal: BoolType); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pVal: WideString); safecall;
    function Get_ServerName: WideString; safecall;
    procedure Set_ServerName(const pVal: WideString); safecall;
    function Get_QueueName: WideString; safecall;
    procedure Set_QueueName(const pVal: WideString); safecall;
    function Get_PrinterType: PrinterType; safecall;
    procedure Set_PrinterType(pVal: PrinterType); safecall;
    function Get_DefaultPrintSize: PrintPaperSizeType; safecall;
    procedure Set_DefaultPrintSize(pVal: PrintPaperSizeType); safecall;
    function Get_DefaultPrintSource: PrintPaperSourceType; safecall;
    procedure Set_DefaultPrintSource(pVal: PrintPaperSourceType); safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    function Get_XML: WideString; safecall;
    procedure Set_XML(const pVal: WideString); safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property ID: WideString read Get_ID write Set_ID;
    property Handle: Integer read Get_Handle;
    property Request: PrintRequest read Get_Request;
    property PrintDirectlyToAnIPAddress: BoolType read Get_PrintDirectlyToAnIPAddress write Set_PrintDirectlyToAnIPAddress;
    property Description: WideString read Get_Description write Set_Description;
    property ServerName: WideString read Get_ServerName write Set_ServerName;
    property QueueName: WideString read Get_QueueName write Set_QueueName;
    property PrinterType: PrinterType read Get_PrinterType write Set_PrinterType;
    property DefaultPrintSize: PrintPaperSizeType read Get_DefaultPrintSize write Set_DefaultPrintSize;
    property DefaultPrintSource: PrintPaperSourceType read Get_DefaultPrintSource write Set_DefaultPrintSource;
    property XML: WideString read Get_XML write Set_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  PrinterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {59800B02-BBA4-40CC-A8F7-DCE63578F53B}
// *********************************************************************//
  PrinterDisp = dispinterface
    ['{59800B02-BBA4-40CC-A8F7-DCE63578F53B}']
    property ID: WideString dispid 0;
    property Handle: Integer readonly dispid 1;
    property Request: PrintRequest readonly dispid 2;
    procedure Save; dispid 3;
    procedure Delete; dispid 4;
    property PrintDirectlyToAnIPAddress: BoolType dispid 5;
    property Description: WideString dispid 6;
    property ServerName: WideString dispid 7;
    property QueueName: WideString dispid 8;
    property PrinterType: PrinterType dispid 9;
    property DefaultPrintSize: PrintPaperSizeType dispid 10;
    property DefaultPrintSource: PrintPaperSourceType dispid 11;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 12;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 13;
    property XML: WideString dispid 14;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 15;
  end;

// *********************************************************************//
// Interface: PrintRequest
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F2247A4-84F1-4CAA-90D8-69AA62CCEA8E}
// *********************************************************************//
  PrintRequest = interface(IDispatch)
    ['{3F2247A4-84F1-4CAA-90D8-69AA62CCEA8E}']
    function Get_PrinterID: WideString; safecall;
    function Get_StartPage: Smallint; safecall;
    procedure Set_StartPage(pVal: Smallint); safecall;
    function Get_EndPage: Smallint; safecall;
    procedure Set_EndPage(pVal: Smallint); safecall;
    function Get_PrintCover: BoolType; safecall;
    procedure Set_PrintCover(pVal: BoolType); safecall;
    function Get_PrintTransmissionHistory: BoolType; safecall;
    procedure Set_PrintTransmissionHistory(pVal: BoolType); safecall;
    function Get_StapleOutput: BoolType; safecall;
    procedure Set_StapleOutput(pVal: BoolType); safecall;
    function Get_CollateOutput: BoolType; safecall;
    procedure Set_CollateOutput(pVal: BoolType); safecall;
    function Get_PrintTiffHeader: BoolType; safecall;
    procedure Set_PrintTiffHeader(pVal: BoolType); safecall;
    function Get_Resolution: PrintResolutionType; safecall;
    procedure Set_Resolution(pVal: PrintResolutionType); safecall;
    function Get_Size: PrintSizeType; safecall;
    procedure Set_Size(pVal: PrintSizeType); safecall;
    function Get_PaperSource: PrintPaperSourceType; safecall;
    procedure Set_PaperSource(pVal: PrintPaperSourceType); safecall;
    function Get_NumberOfCopies: Smallint; safecall;
    procedure Set_NumberOfCopies(pVal: Smallint); safecall;
    function Get_Raw: Integer; safecall;
    function Get_OutputBin: PrintOutputBinType; safecall;
    procedure Set_OutputBin(pVal: PrintOutputBinType); safecall;
    function Get_Duplex: PrintDuplexType; safecall;
    procedure Set_Duplex(pVal: PrintDuplexType); safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    property PrinterID: WideString read Get_PrinterID;
    property StartPage: Smallint read Get_StartPage write Set_StartPage;
    property EndPage: Smallint read Get_EndPage write Set_EndPage;
    property PrintCover: BoolType read Get_PrintCover write Set_PrintCover;
    property PrintTransmissionHistory: BoolType read Get_PrintTransmissionHistory write Set_PrintTransmissionHistory;
    property StapleOutput: BoolType read Get_StapleOutput write Set_StapleOutput;
    property CollateOutput: BoolType read Get_CollateOutput write Set_CollateOutput;
    property PrintTiffHeader: BoolType read Get_PrintTiffHeader write Set_PrintTiffHeader;
    property Resolution: PrintResolutionType read Get_Resolution write Set_Resolution;
    property Size: PrintSizeType read Get_Size write Set_Size;
    property PaperSource: PrintPaperSourceType read Get_PaperSource write Set_PaperSource;
    property NumberOfCopies: Smallint read Get_NumberOfCopies write Set_NumberOfCopies;
    property Raw: Integer read Get_Raw;
    property OutputBin: PrintOutputBinType read Get_OutputBin write Set_OutputBin;
    property Duplex: PrintDuplexType read Get_Duplex write Set_Duplex;
  end;

// *********************************************************************//
// DispIntf:  PrintRequestDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F2247A4-84F1-4CAA-90D8-69AA62CCEA8E}
// *********************************************************************//
  PrintRequestDisp = dispinterface
    ['{3F2247A4-84F1-4CAA-90D8-69AA62CCEA8E}']
    property PrinterID: WideString readonly dispid 0;
    property StartPage: Smallint dispid 1;
    property EndPage: Smallint dispid 2;
    property PrintCover: BoolType dispid 3;
    property PrintTransmissionHistory: BoolType dispid 4;
    property StapleOutput: BoolType dispid 5;
    property CollateOutput: BoolType dispid 6;
    property PrintTiffHeader: BoolType dispid 7;
    property Resolution: PrintResolutionType dispid 8;
    property Size: PrintSizeType dispid 9;
    property PaperSource: PrintPaperSourceType dispid 10;
    property NumberOfCopies: Smallint dispid 11;
    property Raw: Integer readonly dispid 12;
    property OutputBin: PrintOutputBinType dispid 13;
    property Duplex: PrintDuplexType dispid 14;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 15;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 16;
  end;

// *********************************************************************//
// Interface: BillingCode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A54921D-B729-442A-9299-329B50F600F1}
// *********************************************************************//
  BillingCode = interface(IDispatch)
    ['{4A54921D-B729-442A-9299-329B50F600F1}']
    function Get_Handle: Integer; safecall;
    function Get_BillInfo1: WideString; safecall;
    procedure Set_BillInfo1(const pVal: WideString); safecall;
    function Get_BillInfo2: WideString; safecall;
    procedure Set_BillInfo2(const pVal: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pVal: WideString); safecall;
    procedure Save; safecall;
    procedure Delete; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    function Get_XML: WideString; safecall;
    procedure Set_XML(const pVal: WideString); safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property Handle: Integer read Get_Handle;
    property BillInfo1: WideString read Get_BillInfo1 write Set_BillInfo1;
    property BillInfo2: WideString read Get_BillInfo2 write Set_BillInfo2;
    property Description: WideString read Get_Description write Set_Description;
    property XML: WideString read Get_XML write Set_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  BillingCodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A54921D-B729-442A-9299-329B50F600F1}
// *********************************************************************//
  BillingCodeDisp = dispinterface
    ['{4A54921D-B729-442A-9299-329B50F600F1}']
    property Handle: Integer readonly dispid 0;
    property BillInfo1: WideString dispid 1;
    property BillInfo2: WideString dispid 2;
    property Description: WideString dispid 3;
    procedure Save; dispid 4;
    procedure Delete; dispid 5;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 6;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 7;
    property XML: WideString dispid 8;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 9;
  end;

// *********************************************************************//
// Interface: Attachments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {754E1277-3827-48C7-BB0B-025B403AC0FD}
// *********************************************************************//
  Attachments = interface(IDispatch)
    ['{754E1277-3827-48C7-BB0B-025B403AC0FD}']
    function Get_Count: Integer; safecall;
    procedure Add(NewObject: OleVariant; DeleteAfter: BoolType); safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): Attachment; safecall;
    function Get_Create: IDispatch; safecall;
    procedure Remove(attType: AttachmentType); safecall;
    procedure RemoveAll; safecall;
    procedure AddNativeDocument(const LocalFile: WideString; const FileDescription: WideString; 
                                IsDocumentMailBody: BoolType); safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: Attachment read Get_Item; default;
    property Create: IDispatch read Get_Create;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  AttachmentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {754E1277-3827-48C7-BB0B-025B403AC0FD}
// *********************************************************************//
  AttachmentsDisp = dispinterface
    ['{754E1277-3827-48C7-BB0B-025B403AC0FD}']
    property Count: Integer readonly dispid 1;
    procedure Add(NewObject: OleVariant; DeleteAfter: BoolType); dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: Attachment readonly dispid 0; default;
    property Create: IDispatch readonly dispid 3;
    procedure Remove(attType: AttachmentType); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure AddNativeDocument(const LocalFile: WideString; const FileDescription: WideString; 
                                IsDocumentMailBody: BoolType); dispid 6;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 7;
  end;

// *********************************************************************//
// Interface: Attachment
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5E7A3FC9-B741-4FB7-90EB-B24160AAB58F}
// *********************************************************************//
  Attachment = interface(IDispatch)
    ['{5E7A3FC9-B741-4FB7-90EB-B24160AAB58F}']
    function Get_LibraryDocument: LibraryDocument; safecall;
    procedure Set_LibraryDocument(const ppVal: LibraryDocument); safecall;
    function Get_AttachmentType: AttachmentType; safecall;
    procedure Set_AttachmentType(pVal: AttachmentType); safecall;
    function Get_Form: Form; safecall;
    procedure Set_Form(const ppVal: Form); safecall;
    function Get_BillingCode: BillingCode; safecall;
    procedure Set_BillingCode(const ppVal: BillingCode); safecall;
    function Get_DeleteAfterSend: BoolType; safecall;
    procedure Set_DeleteAfterSend(pVal: BoolType); safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const pVal: WideString); safecall;
    function Get_FileDescription: WideString; safecall;
    procedure Set_FileDescription(const pVal: WideString); safecall;
    function Get_IsDocumentMailBody: BoolType; safecall;
    procedure Set_IsDocumentMailBody(pVal: BoolType); safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property LibraryDocument: LibraryDocument read Get_LibraryDocument write Set_LibraryDocument;
    property AttachmentType: AttachmentType read Get_AttachmentType write Set_AttachmentType;
    property Form: Form read Get_Form write Set_Form;
    property BillingCode: BillingCode read Get_BillingCode write Set_BillingCode;
    property DeleteAfterSend: BoolType read Get_DeleteAfterSend write Set_DeleteAfterSend;
    property FileName: WideString read Get_FileName write Set_FileName;
    property FileDescription: WideString read Get_FileDescription write Set_FileDescription;
    property IsDocumentMailBody: BoolType read Get_IsDocumentMailBody write Set_IsDocumentMailBody;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  AttachmentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5E7A3FC9-B741-4FB7-90EB-B24160AAB58F}
// *********************************************************************//
  AttachmentDisp = dispinterface
    ['{5E7A3FC9-B741-4FB7-90EB-B24160AAB58F}']
    property LibraryDocument: LibraryDocument dispid 1;
    property AttachmentType: AttachmentType dispid 2;
    property Form: Form dispid 3;
    property BillingCode: BillingCode dispid 4;
    property DeleteAfterSend: BoolType dispid 5;
    property FileName: WideString dispid 6;
    property FileDescription: WideString dispid 7;
    property IsDocumentMailBody: BoolType dispid 8;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 9;
  end;

// *********************************************************************//
// Interface: LibraryDocument
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BDA22AE4-9456-4854-A8FF-F330B918C582}
// *********************************************************************//
  LibraryDocument = interface(IDispatch)
    ['{BDA22AE4-9456-4854-A8FF-F330B918C582}']
    function Get_ID: WideString; safecall;
    procedure Set_ID(const pVal: WideString); safecall;
    function Get_Handle: Integer; safecall;
    function Get_ServerFileName: WideString; safecall;
    procedure Set_ServerFileName(const pVal: WideString); safecall;
    function Get_PageCount: Smallint; safecall;
    procedure Set_PageCount(pVal: Smallint); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pVal: WideString); safecall;
    procedure Save; safecall;
    procedure Delete(RemoveImage: BoolType); safecall;
    procedure AdjustUsage(LibDocUsage: LibraryDocumentUsageType; IncrementUsageBy: Smallint); safecall;
    function Get_IsInNormalMode: BoolType; safecall;
    procedure Set_IsInNormalMode(pVal: BoolType); safecall;
    function Get_IsALibraryDocument: BoolType; safecall;
    procedure Set_IsALibraryDocument(pVal: BoolType); safecall;
    function Get_IsInFineMode: BoolType; safecall;
    procedure Set_IsInFineMode(pVal: BoolType); safecall;
    function Get_IsPublishedForFOD: BoolType; safecall;
    procedure Set_IsPublishedForFOD(pVal: BoolType); safecall;
    function Get_IsPublishedForWeb: BoolType; safecall;
    procedure Set_IsPublishedForWeb(pVal: BoolType); safecall;
    function Get_IsIncludedInFODCatalog: BoolType; safecall;
    procedure Set_IsIncludedInFODCatalog(pVal: BoolType); safecall;
    function Get_IsEmbargoed: BoolType; safecall;
    procedure Set_IsEmbargoed(pVal: BoolType); safecall;
    function Get_WillExpire: BoolType; safecall;
    procedure Set_WillExpire(pVal: BoolType); safecall;
    function Get_IsPublishedForLAN: BoolType; safecall;
    procedure Set_IsPublishedForLAN(pVal: BoolType); safecall;
    function Get_IsAutomaticallyGeneratedCatalog: BoolType; safecall;
    procedure Set_IsAutomaticallyGeneratedCatalog(pVal: BoolType); safecall;
    function Get_TimesUsedOnFOD: Integer; safecall;
    procedure Set_TimesUsedOnFOD(pVal: Integer); safecall;
    function Get_TimesUsedOnLAN: Integer; safecall;
    procedure Set_TimesUsedOnLAN(pVal: Integer); safecall;
    function Get_EmbargoDate: TDateTime; safecall;
    procedure Set_EmbargoDate(pVal: TDateTime); safecall;
    function Get_ExpireDate: TDateTime; safecall;
    procedure Set_ExpireDate(pVal: TDateTime); safecall;
    function Get_TimesUsedOnWeb: Integer; safecall;
    procedure Set_TimesUsedOnWeb(pVal: Integer); safecall;
    function Get_LastUsedDate: TDateTime; safecall;
    procedure Set_LastUsedDate(pVal: TDateTime); safecall;
    function Get_FODPassword: WideString; safecall;
    procedure Set_FODPassword(const pVal: WideString); safecall;
    function Get_Image: WideString; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    function Get_XML: WideString; safecall;
    procedure Set_XML(const pVal: WideString); safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property ID: WideString read Get_ID write Set_ID;
    property Handle: Integer read Get_Handle;
    property ServerFileName: WideString read Get_ServerFileName write Set_ServerFileName;
    property PageCount: Smallint read Get_PageCount write Set_PageCount;
    property Description: WideString read Get_Description write Set_Description;
    property IsInNormalMode: BoolType read Get_IsInNormalMode write Set_IsInNormalMode;
    property IsALibraryDocument: BoolType read Get_IsALibraryDocument write Set_IsALibraryDocument;
    property IsInFineMode: BoolType read Get_IsInFineMode write Set_IsInFineMode;
    property IsPublishedForFOD: BoolType read Get_IsPublishedForFOD write Set_IsPublishedForFOD;
    property IsPublishedForWeb: BoolType read Get_IsPublishedForWeb write Set_IsPublishedForWeb;
    property IsIncludedInFODCatalog: BoolType read Get_IsIncludedInFODCatalog write Set_IsIncludedInFODCatalog;
    property IsEmbargoed: BoolType read Get_IsEmbargoed write Set_IsEmbargoed;
    property WillExpire: BoolType read Get_WillExpire write Set_WillExpire;
    property IsPublishedForLAN: BoolType read Get_IsPublishedForLAN write Set_IsPublishedForLAN;
    property IsAutomaticallyGeneratedCatalog: BoolType read Get_IsAutomaticallyGeneratedCatalog write Set_IsAutomaticallyGeneratedCatalog;
    property TimesUsedOnFOD: Integer read Get_TimesUsedOnFOD write Set_TimesUsedOnFOD;
    property TimesUsedOnLAN: Integer read Get_TimesUsedOnLAN write Set_TimesUsedOnLAN;
    property EmbargoDate: TDateTime read Get_EmbargoDate write Set_EmbargoDate;
    property ExpireDate: TDateTime read Get_ExpireDate write Set_ExpireDate;
    property TimesUsedOnWeb: Integer read Get_TimesUsedOnWeb write Set_TimesUsedOnWeb;
    property LastUsedDate: TDateTime read Get_LastUsedDate write Set_LastUsedDate;
    property FODPassword: WideString read Get_FODPassword write Set_FODPassword;
    property Image: WideString read Get_Image;
    property XML: WideString read Get_XML write Set_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  LibraryDocumentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BDA22AE4-9456-4854-A8FF-F330B918C582}
// *********************************************************************//
  LibraryDocumentDisp = dispinterface
    ['{BDA22AE4-9456-4854-A8FF-F330B918C582}']
    property ID: WideString dispid 0;
    property Handle: Integer readonly dispid 1;
    property ServerFileName: WideString dispid 2;
    property PageCount: Smallint dispid 3;
    property Description: WideString dispid 4;
    procedure Save; dispid 5;
    procedure Delete(RemoveImage: BoolType); dispid 6;
    procedure AdjustUsage(LibDocUsage: LibraryDocumentUsageType; IncrementUsageBy: Smallint); dispid 7;
    property IsInNormalMode: BoolType dispid 8;
    property IsALibraryDocument: BoolType dispid 9;
    property IsInFineMode: BoolType dispid 10;
    property IsPublishedForFOD: BoolType dispid 11;
    property IsPublishedForWeb: BoolType dispid 12;
    property IsIncludedInFODCatalog: BoolType dispid 13;
    property IsEmbargoed: BoolType dispid 14;
    property WillExpire: BoolType dispid 15;
    property IsPublishedForLAN: BoolType dispid 16;
    property IsAutomaticallyGeneratedCatalog: BoolType dispid 17;
    property TimesUsedOnFOD: Integer dispid 18;
    property TimesUsedOnLAN: Integer dispid 19;
    property EmbargoDate: TDateTime dispid 20;
    property ExpireDate: TDateTime dispid 21;
    property TimesUsedOnWeb: Integer dispid 22;
    property LastUsedDate: TDateTime dispid 23;
    property FODPassword: WideString dispid 24;
    property Image: WideString readonly dispid 25;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 26;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 27;
    property XML: WideString dispid 28;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 29;
  end;

// *********************************************************************//
// Interface: Form
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F386618-764B-48F8-A5BF-3682B03DE840}
// *********************************************************************//
  Form = interface(IDispatch)
    ['{9F386618-764B-48F8-A5BF-3682B03DE840}']
    function Get_ID: WideString; safecall;
    procedure Set_ID(const pVal: WideString); safecall;
    function Get_Handle: Integer; safecall;
    function Get_ServerFileName: WideString; safecall;
    procedure Set_ServerFileName(const pVal: WideString); safecall;
    function Get_PageCount: Smallint; safecall;
    procedure Set_PageCount(pVal: Smallint); safecall;
    function Get_Num: Smallint; safecall;
    procedure Set_Num(pVal: Smallint); safecall;
    procedure Save; safecall;
    procedure Delete(RemoveImage: BoolType); safecall;
    function Get_Raw: Integer; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_PageToStartOn: Smallint; safecall;
    procedure Set_PageToStartOn(pVal: Smallint); safecall;
    function Get_NextFormNum: Smallint; safecall;
    procedure Set_NextFormNum(pVal: Smallint); safecall;
    function Get_SecurityID: WideString; safecall;
    procedure Set_SecurityID(const pVal: WideString); safecall;
    function Get_Append: BoolType; safecall;
    procedure Set_Append(pVal: BoolType); safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    function Get_XML: WideString; safecall;
    procedure Set_XML(const pVal: WideString); safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property ID: WideString read Get_ID write Set_ID;
    property Handle: Integer read Get_Handle;
    property ServerFileName: WideString read Get_ServerFileName write Set_ServerFileName;
    property PageCount: Smallint read Get_PageCount write Set_PageCount;
    property Num: Smallint read Get_Num write Set_Num;
    property Raw: Integer read Get_Raw;
    property Name: WideString read Get_Name write Set_Name;
    property PageToStartOn: Smallint read Get_PageToStartOn write Set_PageToStartOn;
    property NextFormNum: Smallint read Get_NextFormNum write Set_NextFormNum;
    property SecurityID: WideString read Get_SecurityID write Set_SecurityID;
    property Append: BoolType read Get_Append write Set_Append;
    property XML: WideString read Get_XML write Set_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  FormDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F386618-764B-48F8-A5BF-3682B03DE840}
// *********************************************************************//
  FormDisp = dispinterface
    ['{9F386618-764B-48F8-A5BF-3682B03DE840}']
    property ID: WideString dispid 0;
    property Handle: Integer readonly dispid 1;
    property ServerFileName: WideString dispid 2;
    property PageCount: Smallint dispid 3;
    property Num: Smallint dispid 4;
    procedure Save; dispid 5;
    procedure Delete(RemoveImage: BoolType); dispid 6;
    property Raw: Integer readonly dispid 7;
    property Name: WideString dispid 8;
    property PageToStartOn: Smallint dispid 9;
    property NextFormNum: Smallint dispid 10;
    property SecurityID: WideString dispid 11;
    property Append: BoolType dispid 12;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 13;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 14;
    property XML: WideString dispid 15;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 16;
  end;

// *********************************************************************//
// Interface: FaxHistories
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C8B53D39-DB33-4F45-AB31-27D13F884A43}
// *********************************************************************//
  FaxHistories = interface(IDispatch)
    ['{C8B53D39-DB33-4F45-AB31-27D13F884A43}']
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): IDispatch; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_XML: WideString; safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: IDispatch read Get_Item; default;
    property XML: WideString read Get_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  FaxHistoriesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C8B53D39-DB33-4F45-AB31-27D13F884A43}
// *********************************************************************//
  FaxHistoriesDisp = dispinterface
    ['{C8B53D39-DB33-4F45-AB31-27D13F884A43}']
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: IDispatch readonly dispid 0; default;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 2;
    property XML: WideString readonly dispid 3;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 4;
  end;

// *********************************************************************//
// Interface: PhoneItemGroup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1FBB63BE-889D-4E36-809C-8AA32DA9BF3A}
// *********************************************************************//
  PhoneItemGroup = interface(PhoneItem)
    ['{1FBB63BE-889D-4E36-809C-8AA32DA9BF3A}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): PhoneItem; safecall;
    procedure Add(const NewPhoneItem: PhoneItem); safecall;
    function Get_Count: Integer; safecall;
    procedure Load; safecall;
    procedure Remove(const phoneItemToRemove: PhoneItem); safecall;
    procedure RemoveAll; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: PhoneItem read Get_Item; default;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  PhoneItemGroupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1FBB63BE-889D-4E36-809C-8AA32DA9BF3A}
// *********************************************************************//
  PhoneItemGroupDisp = dispinterface
    ['{1FBB63BE-889D-4E36-809C-8AA32DA9BF3A}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: PhoneItem readonly dispid 0; default;
    procedure Add(const NewPhoneItem: PhoneItem); dispid 100;
    property Count: Integer readonly dispid 101;
    procedure Load; dispid 102;
    procedure Remove(const phoneItemToRemove: PhoneItem); dispid 103;
    procedure RemoveAll; dispid 104;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 105;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 106;
    property ID: WideString dispid 1;
    property Handle: Integer readonly dispid 2;
    property Owner: User dispid 3;
    property TypeOfPhoneItem: PhoneItemType readonly dispid 4;
    property IsPublished: BoolType dispid 5;
    property IsExternallyPublished: BoolType dispid 6;
    property IsReadOnly: BoolType dispid 7;
    property IsHiddenFromCCList: BoolType dispid 8;
    procedure Save; dispid 9;
    property Raw: Integer readonly dispid 10;
    procedure Delete; dispid 11;
    property IsCertifiedDeliveryEnabled: BoolType dispid 12;
    property IsEmailRecipient: BoolType dispid 13;
  end;

// *********************************************************************//
// Interface: ArchiveEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A9D27C2-F039-45D2-B4B9-2DDB21133CE8}
// *********************************************************************//
  ArchiveEvent = interface(IDispatch)
    ['{4A9D27C2-F039-45D2-B4B9-2DDB21133CE8}']
    function Get_Fax: Fax; safecall;
    function Get_FaxHandle: Integer; safecall;
    function Get_User: User; safecall;
    function Get_UserID: WideString; safecall;
    function Get_DeleteFax: BoolType; safecall;
    function Get_XML: WideString; safecall;
    property Fax: Fax read Get_Fax;
    property FaxHandle: Integer read Get_FaxHandle;
    property User: User read Get_User;
    property UserID: WideString read Get_UserID;
    property DeleteFax: BoolType read Get_DeleteFax;
    property XML: WideString read Get_XML;
  end;

// *********************************************************************//
// DispIntf:  ArchiveEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4A9D27C2-F039-45D2-B4B9-2DDB21133CE8}
// *********************************************************************//
  ArchiveEventDisp = dispinterface
    ['{4A9D27C2-F039-45D2-B4B9-2DDB21133CE8}']
    property Fax: Fax readonly dispid 0;
    property FaxHandle: Integer readonly dispid 1;
    property User: User readonly dispid 2;
    property UserID: WideString readonly dispid 3;
    property DeleteFax: BoolType readonly dispid 4;
    property XML: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: MessageEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ECD9B015-9CF1-4E69-832F-AF15EF2DF172}
// *********************************************************************//
  MessageEvent = interface(IDispatch)
    ['{ECD9B015-9CF1-4E69-832F-AF15EF2DF172}']
    function Get_Fax: Fax; safecall;
    function Get_FaxHandle: Integer; safecall;
    function Get_DeleteFax: BoolType; safecall;
    function Get_User: User; safecall;
    function Get_UserID: WideString; safecall;
    function Get_MessageEventType: MessageEventType; safecall;
    function Get_MessageText: WideString; safecall;
    function Get_XML: WideString; safecall;
    property Fax: Fax read Get_Fax;
    property FaxHandle: Integer read Get_FaxHandle;
    property DeleteFax: BoolType read Get_DeleteFax;
    property User: User read Get_User;
    property UserID: WideString read Get_UserID;
    property MessageEventType: MessageEventType read Get_MessageEventType;
    property MessageText: WideString read Get_MessageText;
    property XML: WideString read Get_XML;
  end;

// *********************************************************************//
// DispIntf:  MessageEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ECD9B015-9CF1-4E69-832F-AF15EF2DF172}
// *********************************************************************//
  MessageEventDisp = dispinterface
    ['{ECD9B015-9CF1-4E69-832F-AF15EF2DF172}']
    property Fax: Fax readonly dispid 0;
    property FaxHandle: Integer readonly dispid 1;
    property DeleteFax: BoolType readonly dispid 2;
    property User: User readonly dispid 3;
    property UserID: WideString readonly dispid 4;
    property MessageEventType: MessageEventType readonly dispid 5;
    property MessageText: WideString readonly dispid 6;
    property XML: WideString readonly dispid 7;
  end;

// *********************************************************************//
// Interface: ValidateEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B5394069-CAFA-4216-B977-05A4E2868F97}
// *********************************************************************//
  ValidateEvent = interface(IDispatch)
    ['{B5394069-CAFA-4216-B977-05A4E2868F97}']
    function Get_Fax: Fax; safecall;
    function Get_FaxHandle: Integer; safecall;
    function Get_User: User; safecall;
    function Get_UserID: WideString; safecall;
    function Get_BillingCode: BillingCode; safecall;
    function Get_ToFaxNumber: WideString; safecall;
    function Get_XML: WideString; safecall;
    property Fax: Fax read Get_Fax;
    property FaxHandle: Integer read Get_FaxHandle;
    property User: User read Get_User;
    property UserID: WideString read Get_UserID;
    property BillingCode: BillingCode read Get_BillingCode;
    property ToFaxNumber: WideString read Get_ToFaxNumber;
    property XML: WideString read Get_XML;
  end;

// *********************************************************************//
// DispIntf:  ValidateEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B5394069-CAFA-4216-B977-05A4E2868F97}
// *********************************************************************//
  ValidateEventDisp = dispinterface
    ['{B5394069-CAFA-4216-B977-05A4E2868F97}']
    property Fax: Fax readonly dispid 0;
    property FaxHandle: Integer readonly dispid 1;
    property User: User readonly dispid 2;
    property UserID: WideString readonly dispid 3;
    property BillingCode: BillingCode readonly dispid 4;
    property ToFaxNumber: WideString readonly dispid 5;
    property XML: WideString readonly dispid 6;
  end;

// *********************************************************************//
// Interface: MessageRouteEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AF1C98DF-51B7-4C9C-85D5-B2F14005F4BF}
// *********************************************************************//
  MessageRouteEvent = interface(IDispatch)
    ['{AF1C98DF-51B7-4C9C-85D5-B2F14005F4BF}']
    function Get_Fax: Fax; safecall;
    function Get_FaxHandle: Integer; safecall;
    function Get_DeleteFax: BoolType; safecall;
    function Get_User: User; safecall;
    function Get_UserID: WideString; safecall;
    function Get_MessageRouteEventType: MessageRouteEventType; safecall;
    function Get_MessageText: WideString; safecall;
    function Get_DestinationMailAddress: WideString; safecall;
    function Get_AutoPrintRequest: PrintRequest; safecall;
    function Get_ImageFormat: UserRouteFormatType; safecall;
    function Get_XML: WideString; safecall;
    property Fax: Fax read Get_Fax;
    property FaxHandle: Integer read Get_FaxHandle;
    property DeleteFax: BoolType read Get_DeleteFax;
    property User: User read Get_User;
    property UserID: WideString read Get_UserID;
    property MessageRouteEventType: MessageRouteEventType read Get_MessageRouteEventType;
    property MessageText: WideString read Get_MessageText;
    property DestinationMailAddress: WideString read Get_DestinationMailAddress;
    property AutoPrintRequest: PrintRequest read Get_AutoPrintRequest;
    property ImageFormat: UserRouteFormatType read Get_ImageFormat;
    property XML: WideString read Get_XML;
  end;

// *********************************************************************//
// DispIntf:  MessageRouteEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AF1C98DF-51B7-4C9C-85D5-B2F14005F4BF}
// *********************************************************************//
  MessageRouteEventDisp = dispinterface
    ['{AF1C98DF-51B7-4C9C-85D5-B2F14005F4BF}']
    property Fax: Fax readonly dispid 0;
    property FaxHandle: Integer readonly dispid 1;
    property DeleteFax: BoolType readonly dispid 2;
    property User: User readonly dispid 3;
    property UserID: WideString readonly dispid 4;
    property MessageRouteEventType: MessageRouteEventType readonly dispid 5;
    property MessageText: WideString readonly dispid 6;
    property DestinationMailAddress: WideString readonly dispid 7;
    property AutoPrintRequest: PrintRequest readonly dispid 8;
    property ImageFormat: UserRouteFormatType readonly dispid 9;
    property XML: WideString readonly dispid 10;
  end;

// *********************************************************************//
// Interface: IFaxServer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {24B5EE30-AA31-4554-A36F-F77009E855C3}
// *********************************************************************//
  IFaxServer = interface(IDispatch)
    ['{24B5EE30-AA31-4554-A36F-F77009E855C3}']
    function Get_ServerName: WideString; safecall;
    procedure Set_ServerName(const pVal: WideString); safecall;
    function Get_Protocol: CommunicationProtocolType; safecall;
    procedure Set_Protocol(pVal: CommunicationProtocolType); safecall;
    function Get_ADSIEnabled: BoolType; safecall;
    procedure Set_ADSIEnabled(pVal: BoolType); safecall;
    function Get_Faxes(const UserID: WideString): Faxes; safecall;
    procedure OpenServer; safecall;
    procedure CloseServer; safecall;
    function Get_LibraryDocuments: LibraryDocuments; safecall;
    function Get_Users: Users; safecall;
    function Get_Groups: Groups; safecall;
    function Get_Forms: Forms; safecall;
    function Get_Events: Events; safecall;
    function Get_BillingCodes: BillingCodes; safecall;
    function Get_Printers: Printers; safecall;
    function Get_Fax(FaxHandle: OleVariant): Fax; safecall;
    function Get_CoverSheets: CoverSheets; safecall;
    function Get_Signatures: Signatures; safecall;
    function Get_User(UserHandleOrID: OleVariant): User; safecall;
    function Get_UseNTAuthentication: BoolType; safecall;
    procedure Set_UseNTAuthentication(pVal: BoolType); safecall;
    function Get_AuthorizationUserID: WideString; safecall;
    procedure Set_AuthorizationUserID(const pVal: WideString); safecall;
    function Get_AuthorizationUserPassword: WideString; safecall;
    procedure Set_AuthorizationUserPassword(const pVal: WideString); safecall;
    function Get_Version: WideString; safecall;
    function Get_Group(const GroupID: WideString): Group; safecall;
    function Get_LibraryDocument(LibraryDocumentHandleOrID: OleVariant): LibraryDocument; safecall;
    function Get_Printer(PrinterHandleOrID: OleVariant): Printer; safecall;
    function Get_PhoneBook(const UserObject: User): PhoneBook; safecall;
    function Get_PageNumberToImageExtension(PageNumber: SYSINT): WideString; safecall;
    function Get_ImageExtensionToPageNumber(const ImageExtension: WideString): SYSINT; safecall;
    function Get_SupportInfo: WideString; safecall;
    function Get_ServerInfo: ServerInfo; safecall;
    function Get_AuthorizationUser: User; safecall;
    function Get_CreateObject(coType: CreateObjectType): IDispatch; safecall;
    function Get_JSForUserTreeView(iServer: SYSINT): WideString; safecall;
    function Get_HTMLForUserSummary: WideString; safecall;
    function Get_HTMLForGroupSummary: WideString; safecall;
    function Get_JSForGroupTreeView(iServer: SYSINT): WideString; safecall;
    function Get_JSForSignatureTreeView(iServer: SYSINT): WideString; safecall;
    function Get_HTMLForSignatureSummary: WideString; safecall;
    function Get_JSForFormTreeView(iServer: SYSINT): WideString; safecall;
    function Get_HTMLForFormSummary: WideString; safecall;
    function Get_JSForPrinterTreeView(iServer: SYSINT): WideString; safecall;
    function Get_HTMLForPrinterSummary: WideString; safecall;
    function Get_JSForLibDocTreeView(iServer: SYSINT): WideString; safecall;
    function Get_HTMLForLibDocSummary: WideString; safecall;
    function Get_ServiceControl(svcType: ServiceType; svccAction: ServiceControlActionType): WideString; safecall;
    function Get_Form(const ID: WideString): Form; safecall;
    function Get_CreateObject2(const UserID: WideString; coType: CreateObjectType): IDispatch; safecall;
    function Get_UseSoapProxy: BoolType; safecall;
    procedure Set_UseSoapProxy(pVal: BoolType); safecall;
    function Get_SoapProxyServer: WideString; safecall;
    procedure Set_SoapProxyServer(const pVal: WideString); safecall;
    function Get_GetObjectFromXML(const XMLFile: WideString): IDispatch; safecall;
    function Get_ServerStats(ServerName: OleVariant): ServerStats; safecall;
    function Get_BillingCode(BillingCodeHandle: Integer): BillingCode; safecall;
    function Get_BillingCodeByCode(const BillingInfo1: WideString; const BillingInfo2: WideString): BillingCode; safecall;
    function Get_JSForUserTreeViewX(iServer: SYSINT): WideString; safecall;
    function Get_JSForGroupTreeViewX(iServer: SYSINT): WideString; safecall;
    function Get_JSForSignatureTreeViewX(iServer: SYSINT): WideString; safecall;
    function Get_JSForPrinterTreeViewX(iServer: SYSINT): WideString; safecall;
    function Get_JSForLibDocTreeViewX(iServer: SYSINT): WideString; safecall;
    function Get_JSForFormTreeViewX(iServer: SYSINT): WideString; safecall;
    function Get_SortedUsers: Users; safecall;
    property ServerName: WideString read Get_ServerName write Set_ServerName;
    property Protocol: CommunicationProtocolType read Get_Protocol write Set_Protocol;
    property ADSIEnabled: BoolType read Get_ADSIEnabled write Set_ADSIEnabled;
    property Faxes[const UserID: WideString]: Faxes read Get_Faxes;
    property LibraryDocuments: LibraryDocuments read Get_LibraryDocuments;
    property Users: Users read Get_Users;
    property Groups: Groups read Get_Groups;
    property Forms: Forms read Get_Forms;
    property Events: Events read Get_Events;
    property BillingCodes: BillingCodes read Get_BillingCodes;
    property Printers: Printers read Get_Printers;
    property Fax[FaxHandle: OleVariant]: Fax read Get_Fax;
    property CoverSheets: CoverSheets read Get_CoverSheets;
    property Signatures: Signatures read Get_Signatures;
    property User[UserHandleOrID: OleVariant]: User read Get_User;
    property UseNTAuthentication: BoolType read Get_UseNTAuthentication write Set_UseNTAuthentication;
    property AuthorizationUserID: WideString read Get_AuthorizationUserID write Set_AuthorizationUserID;
    property AuthorizationUserPassword: WideString read Get_AuthorizationUserPassword write Set_AuthorizationUserPassword;
    property Version: WideString read Get_Version;
    property Group[const GroupID: WideString]: Group read Get_Group;
    property LibraryDocument[LibraryDocumentHandleOrID: OleVariant]: LibraryDocument read Get_LibraryDocument;
    property Printer[PrinterHandleOrID: OleVariant]: Printer read Get_Printer;
    property PhoneBook[const UserObject: User]: PhoneBook read Get_PhoneBook;
    property PageNumberToImageExtension[PageNumber: SYSINT]: WideString read Get_PageNumberToImageExtension;
    property ImageExtensionToPageNumber[const ImageExtension: WideString]: SYSINT read Get_ImageExtensionToPageNumber;
    property SupportInfo: WideString read Get_SupportInfo;
    property ServerInfo: ServerInfo read Get_ServerInfo;
    property AuthorizationUser: User read Get_AuthorizationUser;
    property CreateObject[coType: CreateObjectType]: IDispatch read Get_CreateObject;
    property JSForUserTreeView[iServer: SYSINT]: WideString read Get_JSForUserTreeView;
    property HTMLForUserSummary: WideString read Get_HTMLForUserSummary;
    property HTMLForGroupSummary: WideString read Get_HTMLForGroupSummary;
    property JSForGroupTreeView[iServer: SYSINT]: WideString read Get_JSForGroupTreeView;
    property JSForSignatureTreeView[iServer: SYSINT]: WideString read Get_JSForSignatureTreeView;
    property HTMLForSignatureSummary: WideString read Get_HTMLForSignatureSummary;
    property JSForFormTreeView[iServer: SYSINT]: WideString read Get_JSForFormTreeView;
    property HTMLForFormSummary: WideString read Get_HTMLForFormSummary;
    property JSForPrinterTreeView[iServer: SYSINT]: WideString read Get_JSForPrinterTreeView;
    property HTMLForPrinterSummary: WideString read Get_HTMLForPrinterSummary;
    property JSForLibDocTreeView[iServer: SYSINT]: WideString read Get_JSForLibDocTreeView;
    property HTMLForLibDocSummary: WideString read Get_HTMLForLibDocSummary;
    property ServiceControl[svcType: ServiceType; svccAction: ServiceControlActionType]: WideString read Get_ServiceControl;
    property Form[const ID: WideString]: Form read Get_Form;
    property CreateObject2[const UserID: WideString; coType: CreateObjectType]: IDispatch read Get_CreateObject2;
    property UseSoapProxy: BoolType read Get_UseSoapProxy write Set_UseSoapProxy;
    property SoapProxyServer: WideString read Get_SoapProxyServer write Set_SoapProxyServer;
    property GetObjectFromXML[const XMLFile: WideString]: IDispatch read Get_GetObjectFromXML;
    property ServerStats[ServerName: OleVariant]: ServerStats read Get_ServerStats;
    property BillingCode[BillingCodeHandle: Integer]: BillingCode read Get_BillingCode;
    property BillingCodeByCode[const BillingInfo1: WideString; const BillingInfo2: WideString]: BillingCode read Get_BillingCodeByCode;
    property JSForUserTreeViewX[iServer: SYSINT]: WideString read Get_JSForUserTreeViewX;
    property JSForGroupTreeViewX[iServer: SYSINT]: WideString read Get_JSForGroupTreeViewX;
    property JSForSignatureTreeViewX[iServer: SYSINT]: WideString read Get_JSForSignatureTreeViewX;
    property JSForPrinterTreeViewX[iServer: SYSINT]: WideString read Get_JSForPrinterTreeViewX;
    property JSForLibDocTreeViewX[iServer: SYSINT]: WideString read Get_JSForLibDocTreeViewX;
    property JSForFormTreeViewX[iServer: SYSINT]: WideString read Get_JSForFormTreeViewX;
    property SortedUsers: Users read Get_SortedUsers;
  end;

// *********************************************************************//
// DispIntf:  IFaxServerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {24B5EE30-AA31-4554-A36F-F77009E855C3}
// *********************************************************************//
  IFaxServerDisp = dispinterface
    ['{24B5EE30-AA31-4554-A36F-F77009E855C3}']
    property ServerName: WideString dispid 0;
    property Protocol: CommunicationProtocolType dispid 1;
    property ADSIEnabled: BoolType dispid 2;
    property Faxes[const UserID: WideString]: Faxes readonly dispid 3;
    procedure OpenServer; dispid 4;
    procedure CloseServer; dispid 5;
    property LibraryDocuments: LibraryDocuments readonly dispid 6;
    property Users: Users readonly dispid 7;
    property Groups: Groups readonly dispid 8;
    property Forms: Forms readonly dispid 9;
    property Events: Events readonly dispid 10;
    property BillingCodes: BillingCodes readonly dispid 11;
    property Printers: Printers readonly dispid 12;
    property Fax[FaxHandle: OleVariant]: Fax readonly dispid 13;
    property CoverSheets: CoverSheets readonly dispid 14;
    property Signatures: Signatures readonly dispid 15;
    property User[UserHandleOrID: OleVariant]: User readonly dispid 16;
    property UseNTAuthentication: BoolType dispid 17;
    property AuthorizationUserID: WideString dispid 18;
    property AuthorizationUserPassword: WideString dispid 19;
    property Version: WideString readonly dispid 20;
    property Group[const GroupID: WideString]: Group readonly dispid 21;
    property LibraryDocument[LibraryDocumentHandleOrID: OleVariant]: LibraryDocument readonly dispid 22;
    property Printer[PrinterHandleOrID: OleVariant]: Printer readonly dispid 23;
    property PhoneBook[const UserObject: User]: PhoneBook readonly dispid 24;
    property PageNumberToImageExtension[PageNumber: SYSINT]: WideString readonly dispid 25;
    property ImageExtensionToPageNumber[const ImageExtension: WideString]: SYSINT readonly dispid 26;
    property SupportInfo: WideString readonly dispid 27;
    property ServerInfo: ServerInfo readonly dispid 28;
    property AuthorizationUser: User readonly dispid 29;
    property CreateObject[coType: CreateObjectType]: IDispatch readonly dispid 30;
    property JSForUserTreeView[iServer: SYSINT]: WideString readonly dispid 31;
    property HTMLForUserSummary: WideString readonly dispid 32;
    property HTMLForGroupSummary: WideString readonly dispid 33;
    property JSForGroupTreeView[iServer: SYSINT]: WideString readonly dispid 34;
    property JSForSignatureTreeView[iServer: SYSINT]: WideString readonly dispid 35;
    property HTMLForSignatureSummary: WideString readonly dispid 36;
    property JSForFormTreeView[iServer: SYSINT]: WideString readonly dispid 37;
    property HTMLForFormSummary: WideString readonly dispid 38;
    property JSForPrinterTreeView[iServer: SYSINT]: WideString readonly dispid 39;
    property HTMLForPrinterSummary: WideString readonly dispid 40;
    property JSForLibDocTreeView[iServer: SYSINT]: WideString readonly dispid 41;
    property HTMLForLibDocSummary: WideString readonly dispid 42;
    property ServiceControl[svcType: ServiceType; svccAction: ServiceControlActionType]: WideString readonly dispid 43;
    property Form[const ID: WideString]: Form readonly dispid 44;
    property CreateObject2[const UserID: WideString; coType: CreateObjectType]: IDispatch readonly dispid 45;
    property UseSoapProxy: BoolType dispid 46;
    property SoapProxyServer: WideString dispid 47;
    property GetObjectFromXML[const XMLFile: WideString]: IDispatch readonly dispid 48;
    property ServerStats[ServerName: OleVariant]: ServerStats readonly dispid 49;
    property BillingCode[BillingCodeHandle: Integer]: BillingCode readonly dispid 50;
    property BillingCodeByCode[const BillingInfo1: WideString; const BillingInfo2: WideString]: BillingCode readonly dispid 51;
    property JSForUserTreeViewX[iServer: SYSINT]: WideString readonly dispid 52;
    property JSForGroupTreeViewX[iServer: SYSINT]: WideString readonly dispid 53;
    property JSForSignatureTreeViewX[iServer: SYSINT]: WideString readonly dispid 54;
    property JSForPrinterTreeViewX[iServer: SYSINT]: WideString readonly dispid 55;
    property JSForLibDocTreeViewX[iServer: SYSINT]: WideString readonly dispid 56;
    property JSForFormTreeViewX[iServer: SYSINT]: WideString readonly dispid 57;
    property SortedUsers: Users readonly dispid 58;
  end;

// *********************************************************************//
// Interface: FaxEx1
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5C067FFE-F5E0-4086-B006-7FCE9CE85A69}
// *********************************************************************//
  FaxEx1 = interface(Fax)
    ['{5C067FFE-F5E0-4086-B006-7FCE9CE85A69}']
    procedure Set_TotalPages(Param1: Smallint); safecall;
    procedure Set_IsReceived(Param1: BoolType); safecall;
    procedure Set_FaxFilename(const Param1: WideString); safecall;
    procedure Set_FaxStatus(Param1: FaxStatusType); safecall;
    procedure Set_FaxDisposition(Param1: Smallint); safecall;
    procedure Set_FaxTerminationStatus(Param1: Smallint); safecall;
    property TotalPages: Smallint write Set_TotalPages;
    property IsReceived: BoolType write Set_IsReceived;
    property FaxFilename: WideString write Set_FaxFilename;
    property FaxStatus: FaxStatusType write Set_FaxStatus;
    property FaxDisposition: Smallint write Set_FaxDisposition;
    property FaxTerminationStatus: Smallint write Set_FaxTerminationStatus;
  end;

// *********************************************************************//
// DispIntf:  FaxEx1Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5C067FFE-F5E0-4086-B006-7FCE9CE85A69}
// *********************************************************************//
  FaxEx1Disp = dispinterface
    ['{5C067FFE-F5E0-4086-B006-7FCE9CE85A69}']
    property TotalPages: Smallint writeonly dispid 300;
    property IsReceived: BoolType writeonly dispid 301;
    property FaxFilename: WideString writeonly dispid 302;
    property FaxStatus: FaxStatusType writeonly dispid 303;
    property FaxDisposition: Smallint writeonly dispid 304;
    property FaxTerminationStatus: Smallint writeonly dispid 305;
    property Handle: Integer readonly dispid 0;
    property Owner: User dispid 1;
    procedure Save(KickFax: BoolType); dispid 2;
    property ToCompany: WideString dispid 3;
    property ToName: WideString dispid 4;
    procedure Send; dispid 6;
    property Attachments: Attachments readonly dispid 7;
    property ToFaxNumber: WideString dispid 8;
    property HasCoversheet: BoolType dispid 9;
    property CoverSheetNotes[Index: SYSINT]: WideString dispid 11;
    property GenerateCompletionEvent: BoolType dispid 12;
    procedure PrintFax(Printer: OleVariant; StartPage: Smallint; EndPage: Smallint; 
                       IncludeCoverpage: BoolType); dispid 13;
    property Folder: Folder dispid 14;
    property Histories: FaxHistories readonly dispid 15;
    property TotalLinkCount: Smallint readonly dispid 16;
    property InputFilename: WideString readonly dispid 18;
    property TypeOfPrintJob: PrintJobType dispid 19;
    property IsFineMode: BoolType dispid 20;
    property BFTFilename: WideString readonly dispid 21;
    property BFTFileSize: Integer readonly dispid 22;
    property OriginalBFTFilename: WideString readonly dispid 23;
    property ToVoiceNumber: WideString dispid 24;
    property ToCityState: WideString dispid 25;
    property FromName: WideString dispid 26;
    property FromVoiceNumber: WideString dispid 27;
    property BillingCode: BillingCode readonly dispid 28;
    property FromFaxNumber: WideString dispid 29;
    property FromGeneralVoiceNumber: WideString dispid 30;
    property FromGeneralFaxNumber: WideString dispid 31;
    property IsCallbackRequested: BoolType readonly dispid 32;
    property FaxRecordDateTime: TDateTime readonly dispid 33;
    property SendTime: Integer readonly dispid 34;
    property FaxErrorCode: FaxErrorCodeType readonly dispid 36;
    property RemoteID: WideString readonly dispid 39;
    property FCSFilename: WideString dispid 40;
    property OriginalFCSFilename: WideString dispid 41;
    property FaxID: Smallint readonly dispid 42;
    property DelayFaxSendDateTime: TDateTime dispid 43;
    property UniqueID: WideString dispid 44;
    property Priority: FaxPriorityType dispid 45;
    property ChannelToSendOn: Smallint dispid 46;
    property FaxPagesInFront: Smallint readonly dispid 47;
    property MaximumRetries: Smallint dispid 48;
    property TryInterval: Smallint dispid 49;
    property SecureCSID: WideString dispid 50;
    property LastHistoryChangeDateTime: TDateTime readonly dispid 51;
    property IsFaxAutoForwarded: BoolType readonly dispid 52;
    property IsHeld: BoolType dispid 53;
    property IsViewed: BoolType dispid 54;
    property IsDeleted: BoolType readonly dispid 55;
    property IsInitialized: BoolType readonly dispid 56;
    property IsFCSCompleted: BoolType readonly dispid 57;
    property IsForwarded: BoolType readonly dispid 58;
    property IsInDelaySend: BoolType dispid 59;
    property IsDeletedAfterSuccessfulSend: BoolType dispid 60;
    property IsPrinted: BoolType readonly dispid 61;
    property IsCoversheetConversionNeeded: BoolType dispid 62;
    property IsDeletedAfterAnySend: BoolType dispid 63;
    property IsBillingCodesVerified: BoolType readonly dispid 64;
    property IsCoversheetFine: BoolType readonly dispid 65;
    property IsGatewayGenerated: BoolType readonly dispid 66;
    property UseSmartResume: BoolType dispid 67;
    property IsApproved: BoolType readonly dispid 68;
    property IsNeedingApproval: BoolType readonly dispid 69;
    property IsBroadcastFax: BoolType dispid 70;
    property HasBFT: BoolType readonly dispid 71;
    property IsFaxBodyAutomaticallyPrinted: BoolType readonly dispid 72;
    property IsLCRTimeDelayed: BoolType readonly dispid 73;
    property Recipients: PhoneItemGroup dispid 74;
    procedure StoreAsNewLibraryDocument(const Code: WideString; const Description: WideString); dispid 75;
    procedure StoreAsLibraryDocumentUpdate(const OldLibraryDocument: LibraryDocument); dispid 76;
    procedure Delete; dispid 77;
    procedure Kick; dispid 78;
    property OwnerID: WideString dispid 79;
    procedure Mark(fmType: FaxMarkType; Atomic: BoolType); dispid 80;
    procedure ForwardToUsers(const UsersToForwardTo: Users; const Notes: WideString); dispid 81;
    procedure RouteToUser(const UserToRouteTo: User; const Notes: WideString); dispid 82;
    property ForwardToNewFaxNumber: Fax readonly dispid 83;
    property StatusDescription: WideString readonly dispid 84;
    procedure Approve(const Notes: WideString); dispid 85;
    procedure Disapprove(const Notes: WideString); dispid 86;
    procedure OCR(StartPage: Smallint; EndPage: Smallint; Format: OCRFormatType; 
                  Layout: OCRLayoutType; const FileExtension: WideString); dispid 87;
    procedure StoreAsNewForm(const Code: WideString; const Name: WideString; 
                             RemoveTTILine: BoolType; Size: Smallint); dispid 88;
    procedure StoreAsFormUpdate(const OldForm: Form; RemoveTTILine: BoolType; Size: Smallint); dispid 89;
    property IsGenericFlag1On: BoolType dispid 90;
    property IsGenericFlag2On: BoolType dispid 91;
    property ImageSizeInBytes: Integer readonly dispid 92;
    property AutoForwardCount: Smallint readonly dispid 93;
    property CoverSheetSizeInBytes: Integer readonly dispid 94;
    property UserComments: WideString dispid 95;
    property HasPDF: BoolType readonly dispid 96;
    property IsCertifyDelivered: BoolType dispid 97;
    property NeedsPDFConversion: BoolType dispid 98;
    property HideFromWeb: BoolType readonly dispid 99;
    property BillingCode1: WideString dispid 100;
    property BillingCode2: WideString dispid 101;
    property NeedsPrescan: BoolType dispid 102;
    property IsProductionFax: BoolType dispid 103;
    property IsINLJob: BoolType dispid 104;
    property HasHotlink: BoolType dispid 105;
    procedure EnableSendViaSecureDocs(UsePDFOverTiff: BoolType; UseCertifiedDelivery: BoolType; 
                                      const Password: WideString); dispid 106;
    procedure DisableSendViaSecureDocs; dispid 107;
    property ToEmailAddress: WideString dispid 108;
    property EmailSubject: WideString dispid 109;
    property CertifiedDeliveryPassword: WideString dispid 110;
    procedure MoveToFolder(const NewFolder: Folder); dispid 111;
    property UnicodeCoverSheetNotes: WideString dispid 112;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        IncludeHistoryRecords: BoolType; IncludeOwnerRecord: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 113;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 114;
    property XML: WideString dispid 115;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; IncludeHistoryRecords: BoolType; 
                   IncludeOwnerRecord: BoolType; RecordLevel: Integer]: WideString readonly dispid 116;
    property XMLEx2[IncludeXMLHeaderFooter: BoolType; IncludeHistoryRecords: BoolType; 
                    IncludeOwnerRecord: BoolType; IncludeAttachments: BoolType; RecordLevel: Integer]: WideString readonly dispid 117;
    procedure SplitFax(iStartPage: SYSINT; iStopPage: SYSINT; bKeepOriginal: BoolType); dispid 118;
    property IsWasDNDBlockedOn: BoolType dispid 119;
  end;

// *********************************************************************//
// Interface: LibraryDocuments
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A387FEF3-F14B-4E8F-A89D-81FE3FB1F3EC}
// *********************************************************************//
  LibraryDocuments = interface(IDispatch)
    ['{A387FEF3-F14B-4E8F-A89D-81FE3FB1F3EC}']
    function Get_Count: Integer; safecall;
    function Get_Create: LibraryDocument; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): LibraryDocument; safecall;
    procedure Add(const NewLibraryDocument: LibraryDocument); safecall;
    procedure Remove(const LibraryDocumentToRemove: LibraryDocument); safecall;
    procedure RemoveAll; safecall;
    procedure Refresh(bAdmin: BoolType); safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_XML: WideString; safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property Count: Integer read Get_Count;
    property Create: LibraryDocument read Get_Create;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: LibraryDocument read Get_Item; default;
    property XML: WideString read Get_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  LibraryDocumentsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A387FEF3-F14B-4E8F-A89D-81FE3FB1F3EC}
// *********************************************************************//
  LibraryDocumentsDisp = dispinterface
    ['{A387FEF3-F14B-4E8F-A89D-81FE3FB1F3EC}']
    property Count: Integer readonly dispid 1;
    property Create: LibraryDocument readonly dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: LibraryDocument readonly dispid 0; default;
    procedure Add(const NewLibraryDocument: LibraryDocument); dispid 3;
    procedure Remove(const LibraryDocumentToRemove: LibraryDocument); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure Refresh(bAdmin: BoolType); dispid 6;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 7;
    property XML: WideString readonly dispid 8;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 9;
  end;

// *********************************************************************//
// Interface: Groups
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D840A333-33A6-45B1-BABF-6105AE309EE6}
// *********************************************************************//
  Groups = interface(IDispatch)
    ['{D840A333-33A6-45B1-BABF-6105AE309EE6}']
    function Get_Count: Integer; safecall;
    function Get_Create: Group; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): Group; safecall;
    procedure Add(const NewGroup: Group); safecall;
    procedure Remove(const GroupToRemove: Group); safecall;
    procedure RemoveAll; safecall;
    procedure Refresh; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_XML: WideString; safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property Count: Integer read Get_Count;
    property Create: Group read Get_Create;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: Group read Get_Item; default;
    property XML: WideString read Get_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  GroupsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D840A333-33A6-45B1-BABF-6105AE309EE6}
// *********************************************************************//
  GroupsDisp = dispinterface
    ['{D840A333-33A6-45B1-BABF-6105AE309EE6}']
    property Count: Integer readonly dispid 1;
    property Create: Group readonly dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: Group readonly dispid 0; default;
    procedure Add(const NewGroup: Group); dispid 3;
    procedure Remove(const GroupToRemove: Group); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure Refresh; dispid 6;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 71;
    property XML: WideString readonly dispid 72;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 73;
  end;

// *********************************************************************//
// Interface: Forms
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2C074DE2-293E-44C2-A054-8A0E5379E74C}
// *********************************************************************//
  Forms = interface(IDispatch)
    ['{2C074DE2-293E-44C2-A054-8A0E5379E74C}']
    function Get_Count: Integer; safecall;
    function Get_Create: Form; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): Form; safecall;
    procedure Add(const NewForm: Form); safecall;
    procedure Remove(const FormToRemove: Form); safecall;
    procedure RemoveAll; safecall;
    procedure Refresh; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_XML: WideString; safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property Count: Integer read Get_Count;
    property Create: Form read Get_Create;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: Form read Get_Item; default;
    property XML: WideString read Get_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  FormsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2C074DE2-293E-44C2-A054-8A0E5379E74C}
// *********************************************************************//
  FormsDisp = dispinterface
    ['{2C074DE2-293E-44C2-A054-8A0E5379E74C}']
    property Count: Integer readonly dispid 1;
    property Create: Form readonly dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: Form readonly dispid 0; default;
    procedure Add(const NewForm: Form); dispid 3;
    procedure Remove(const FormToRemove: Form); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure Refresh; dispid 6;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 7;
    property XML: WideString readonly dispid 8;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 9;
  end;

// *********************************************************************//
// Interface: Events
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9B49326A-0B60-49F4-94E2-2638FFEFE349}
// *********************************************************************//
  Events = interface(IDispatch)
    ['{9B49326A-0B60-49F4-94E2-2638FFEFE349}']
    function Get_Complete: CompleteEvent; safecall;
    function Get_Interval: Integer; safecall;
    procedure Set_Interval(pVal: Integer); safecall;
    function Get_WatchCompleteEvents: BoolType; safecall;
    procedure Set_WatchCompleteEvents(pVal: BoolType); safecall;
    function Get_WatchNewFaxes(const UserToWatch: User): BoolType; safecall;
    procedure Set_WatchNewFaxes(const UserToWatch: User; pVal: BoolType); safecall;
    function Get_WatchArchiveEvents: BoolType; safecall;
    procedure Set_WatchArchiveEvents(pVal: BoolType); safecall;
    function Get_Archive: ArchiveEvent; safecall;
    function Get_WatchMessageEvents(MsgEvent: MessageEventType): BoolType; safecall;
    procedure Set_WatchMessageEvents(MsgEvent: MessageEventType; pVal: BoolType); safecall;
    function Get_Message(MsgEvent: MessageEventType): MessageEvent; safecall;
    function Get_WatchValidateEvents: BoolType; safecall;
    procedure Set_WatchValidateEvents(pVal: BoolType); safecall;
    function Get_Validate: ValidateEvent; safecall;
    function Get_MessageRoute(MsgEvent: MessageRouteEventType): MessageRouteEvent; safecall;
    function Get_WatchMessageRouteEvents(MsgEvent: MessageRouteEventType): BoolType; safecall;
    procedure Set_WatchMessageRouteEvents(MsgEvent: MessageRouteEventType; pVal: BoolType); safecall;
    property Complete: CompleteEvent read Get_Complete;
    property Interval: Integer read Get_Interval write Set_Interval;
    property WatchCompleteEvents: BoolType read Get_WatchCompleteEvents write Set_WatchCompleteEvents;
    property WatchNewFaxes[const UserToWatch: User]: BoolType read Get_WatchNewFaxes write Set_WatchNewFaxes;
    property WatchArchiveEvents: BoolType read Get_WatchArchiveEvents write Set_WatchArchiveEvents;
    property Archive: ArchiveEvent read Get_Archive;
    property WatchMessageEvents[MsgEvent: MessageEventType]: BoolType read Get_WatchMessageEvents write Set_WatchMessageEvents;
    property Message[MsgEvent: MessageEventType]: MessageEvent read Get_Message;
    property WatchValidateEvents: BoolType read Get_WatchValidateEvents write Set_WatchValidateEvents;
    property Validate: ValidateEvent read Get_Validate;
    property MessageRoute[MsgEvent: MessageRouteEventType]: MessageRouteEvent read Get_MessageRoute;
    property WatchMessageRouteEvents[MsgEvent: MessageRouteEventType]: BoolType read Get_WatchMessageRouteEvents write Set_WatchMessageRouteEvents;
  end;

// *********************************************************************//
// DispIntf:  EventsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9B49326A-0B60-49F4-94E2-2638FFEFE349}
// *********************************************************************//
  EventsDisp = dispinterface
    ['{9B49326A-0B60-49F4-94E2-2638FFEFE349}']
    property Complete: CompleteEvent readonly dispid 1;
    property Interval: Integer dispid 2;
    property WatchCompleteEvents: BoolType dispid 3;
    property WatchNewFaxes[const UserToWatch: User]: BoolType dispid 4;
    property WatchArchiveEvents: BoolType dispid 5;
    property Archive: ArchiveEvent readonly dispid 6;
    property WatchMessageEvents[MsgEvent: MessageEventType]: BoolType dispid 7;
    property Message[MsgEvent: MessageEventType]: MessageEvent readonly dispid 8;
    property WatchValidateEvents: BoolType dispid 9;
    property Validate: ValidateEvent readonly dispid 10;
    property MessageRoute[MsgEvent: MessageRouteEventType]: MessageRouteEvent readonly dispid 11;
    property WatchMessageRouteEvents[MsgEvent: MessageRouteEventType]: BoolType dispid 12;
  end;

// *********************************************************************//
// Interface: BillingCodes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF779514-DA29-4B9E-9E3A-82920E8B1B43}
// *********************************************************************//
  BillingCodes = interface(IDispatch)
    ['{CF779514-DA29-4B9E-9E3A-82920E8B1B43}']
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): BillingCode; safecall;
    function Get_SearchString: WideString; safecall;
    procedure Set_SearchString(const pVal: WideString); safecall;
    function Get_MaxRecords: Integer; safecall;
    procedure Set_MaxRecords(pVal: Integer); safecall;
    function Get_SearchOnKey: Smallint; safecall;
    procedure Set_SearchOnKey(pVal: Smallint); safecall;
    function Get_SearchDirection: Smallint; safecall;
    procedure Set_SearchDirection(pVal: Smallint); safecall;
    procedure Execute; safecall;
    function Get_Create: BillingCode; safecall;
    procedure Add(const NewBillingCode: BillingCode); safecall;
    procedure Remove(const BillingCodeToRemove: BillingCode); safecall;
    procedure RemoveAll; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_XML: WideString; safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: BillingCode read Get_Item; default;
    property SearchString: WideString read Get_SearchString write Set_SearchString;
    property MaxRecords: Integer read Get_MaxRecords write Set_MaxRecords;
    property SearchOnKey: Smallint read Get_SearchOnKey write Set_SearchOnKey;
    property SearchDirection: Smallint read Get_SearchDirection write Set_SearchDirection;
    property Create: BillingCode read Get_Create;
    property XML: WideString read Get_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  BillingCodesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF779514-DA29-4B9E-9E3A-82920E8B1B43}
// *********************************************************************//
  BillingCodesDisp = dispinterface
    ['{CF779514-DA29-4B9E-9E3A-82920E8B1B43}']
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: BillingCode readonly dispid 0; default;
    property SearchString: WideString dispid 2;
    property MaxRecords: Integer dispid 3;
    property SearchOnKey: Smallint dispid 4;
    property SearchDirection: Smallint dispid 5;
    procedure Execute; dispid 6;
    property Create: BillingCode readonly dispid 7;
    procedure Add(const NewBillingCode: BillingCode); dispid 8;
    procedure Remove(const BillingCodeToRemove: BillingCode); dispid 9;
    procedure RemoveAll; dispid 10;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 11;
    property XML: WideString readonly dispid 12;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 13;
  end;

// *********************************************************************//
// Interface: Printers
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D12D627C-C0C6-414D-80A7-8C2EF5971D25}
// *********************************************************************//
  Printers = interface(IDispatch)
    ['{D12D627C-C0C6-414D-80A7-8C2EF5971D25}']
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): Printer; safecall;
    function Get_Create: Printer; safecall;
    procedure Add(const NewPrinter: Printer); safecall;
    procedure Remove(const printerToRemove: Printer); safecall;
    procedure RemoveAll; safecall;
    procedure Refresh; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_XML: WideString; safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: Printer read Get_Item; default;
    property Create: Printer read Get_Create;
    property XML: WideString read Get_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  PrintersDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D12D627C-C0C6-414D-80A7-8C2EF5971D25}
// *********************************************************************//
  PrintersDisp = dispinterface
    ['{D12D627C-C0C6-414D-80A7-8C2EF5971D25}']
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: Printer readonly dispid 0; default;
    property Create: Printer readonly dispid 2;
    procedure Add(const NewPrinter: Printer); dispid 3;
    procedure Remove(const printerToRemove: Printer); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure Refresh; dispid 6;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 7;
    property XML: WideString readonly dispid 8;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 9;
  end;

// *********************************************************************//
// Interface: CoverSheets
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {633CACEF-45D5-48B9-98CD-1B4E4D0566BF}
// *********************************************************************//
  CoverSheets = interface(IDispatch)
    ['{633CACEF-45D5-48B9-98CD-1B4E4D0566BF}']
    function Get_Count: Integer; safecall;
    function Get_Create: IDispatch; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): CoverSheet; safecall;
    procedure Add(const NewCoverSheet: CoverSheet); safecall;
    procedure Remove(const CoverSheetToRemove: CoverSheet); safecall;
    procedure RemoveAll; safecall;
    procedure Refresh; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_XML: WideString; safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property Count: Integer read Get_Count;
    property Create: IDispatch read Get_Create;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: CoverSheet read Get_Item; default;
    property XML: WideString read Get_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  CoverSheetsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {633CACEF-45D5-48B9-98CD-1B4E4D0566BF}
// *********************************************************************//
  CoverSheetsDisp = dispinterface
    ['{633CACEF-45D5-48B9-98CD-1B4E4D0566BF}']
    property Count: Integer readonly dispid 1;
    property Create: IDispatch readonly dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CoverSheet readonly dispid 0; default;
    procedure Add(const NewCoverSheet: CoverSheet); dispid 3;
    procedure Remove(const CoverSheetToRemove: CoverSheet); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure Refresh; dispid 6;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 7;
    property XML: WideString readonly dispid 9;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 10;
  end;

// *********************************************************************//
// Interface: CoverSheet
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E8F7343D-1A5D-42C2-BB37-4DC5C50AD609}
// *********************************************************************//
  CoverSheet = interface(IDispatch)
    ['{E8F7343D-1A5D-42C2-BB37-4DC5C50AD609}']
    function Get_ID: WideString; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_XML: WideString; safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    function Get_LongFileName: WideString; safecall;
    property ID: WideString read Get_ID;
    property XML: WideString read Get_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
    property LongFileName: WideString read Get_LongFileName;
  end;

// *********************************************************************//
// DispIntf:  CoverSheetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E8F7343D-1A5D-42C2-BB37-4DC5C50AD609}
// *********************************************************************//
  CoverSheetDisp = dispinterface
    ['{E8F7343D-1A5D-42C2-BB37-4DC5C50AD609}']
    property ID: WideString readonly dispid 0;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 1;
    property XML: WideString readonly dispid 2;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 3;
    property LongFileName: WideString readonly dispid 4;
  end;

// *********************************************************************//
// Interface: Signatures
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {19982F6C-9807-41BF-9368-B32AE07E9705}
// *********************************************************************//
  Signatures = interface(IDispatch)
    ['{19982F6C-9807-41BF-9368-B32AE07E9705}']
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: OleVariant): Signature; safecall;
    function Get_Create: Signature; safecall;
    procedure Add(const NewSignature: Signature); safecall;
    procedure Remove(const SignatureToRemove: Signature); safecall;
    procedure RemoveAll; safecall;
    procedure Refresh; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: OleVariant]: Signature read Get_Item; default;
    property Create: Signature read Get_Create;
  end;

// *********************************************************************//
// DispIntf:  SignaturesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {19982F6C-9807-41BF-9368-B32AE07E9705}
// *********************************************************************//
  SignaturesDisp = dispinterface
    ['{19982F6C-9807-41BF-9368-B32AE07E9705}']
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: Signature readonly dispid 0; default;
    property Create: Signature readonly dispid 2;
    procedure Add(const NewSignature: Signature); dispid 3;
    procedure Remove(const SignatureToRemove: Signature); dispid 4;
    procedure RemoveAll; dispid 5;
    procedure Refresh; dispid 6;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 7;
  end;

// *********************************************************************//
// Interface: Signature
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6D57212A-F2DC-4D98-860A-3BE3DCAC9397}
// *********************************************************************//
  Signature = interface(IDispatch)
    ['{6D57212A-F2DC-4D98-860A-3BE3DCAC9397}']
    function Get_ID: WideString; safecall;
    procedure Set_ID(const pVal: WideString); safecall;
    function Get_Handle: Integer; safecall;
    function Get_Owner: User; safecall;
    procedure Set_Owner(const pVal: User); safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const pVal: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const pVal: WideString); safecall;
    function Get_Users: Users; safecall;
    procedure Set_Users(const pVal: Users); safecall;
    procedure Save; safecall;
    procedure Refresh; safecall;
    procedure Delete(RemoveImage: BoolType); safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    property ID: WideString read Get_ID write Set_ID;
    property Handle: Integer read Get_Handle;
    property Owner: User read Get_Owner write Set_Owner;
    property FileName: WideString read Get_FileName write Set_FileName;
    property Description: WideString read Get_Description write Set_Description;
    property Users: Users read Get_Users write Set_Users;
  end;

// *********************************************************************//
// DispIntf:  SignatureDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6D57212A-F2DC-4D98-860A-3BE3DCAC9397}
// *********************************************************************//
  SignatureDisp = dispinterface
    ['{6D57212A-F2DC-4D98-860A-3BE3DCAC9397}']
    property ID: WideString dispid 0;
    property Handle: Integer readonly dispid 1;
    property Owner: User dispid 2;
    property FileName: WideString dispid 3;
    property Description: WideString dispid 4;
    property Users: Users dispid 5;
    procedure Save; dispid 6;
    procedure Refresh; dispid 7;
    procedure Delete(RemoveImage: BoolType); dispid 8;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 9;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 10;
  end;

// *********************************************************************//
// Interface: ServerInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CDAECB2A-AC43-44AA-AC96-68FEDCA66780}
// *********************************************************************//
  ServerInfo = interface(IDispatch)
    ['{CDAECB2A-AC43-44AA-AC96-68FEDCA66780}']
    function Get_ServerType: ServerType; safecall;
    function Get_ServerVersion: Integer; safecall;
    function Get_ServerVersionAsString: WideString; safecall;
    function Get_ServerSpecial: ServerSpecialType; safecall;
    function Get_ImageDirectoryLocation: WideString; safecall;
    function Get_ImageDirectoryShareName: WideString; safecall;
    function Get_MaximumLicensedUsers: Smallint; safecall;
    function Get_ValidateBillingCodes: Smallint; safecall;
    function Get_BillingCodeDescription1: WideString; safecall;
    function Get_BillingCodeDescription2: WideString; safecall;
    function Get_RequiredFields(RequiredFieldIndex: RequiredFieldIndexType): RequiredFieldType; safecall;
    function Get_BuildDate: Integer; safecall;
    function Get_ImageDirectoryPath: WideString; safecall;
    function Get_BaseDirectoryPath: WideString; safecall;
    function Get_IsDatabaseANSI: BoolType; safecall;
    function Get_IsEnterprise: BoolType; safecall;
    function Get_IsDocsOnDemandLicensed: BoolType; safecall;
    function Get_IsTeleconnectLicensed: BoolType; safecall;
    function Get_IsSatelliteLicensed: BoolType; safecall;
    function Get_IsSmallBusinessServerLicensed: BoolType; safecall;
    function Get_TimeZoneInfo: TimeZoneInfoType; safecall;
    function Get_DefaultANSICodePage: WideString; safecall;
    function Get_DefaultOEMCodePage: WideString; safecall;
    function Get_IsProductionLicensed: BoolType; safecall;
    function Get_IsProductionINLLicensed: BoolType; safecall;
    function Get_IsProductionFilterLicensed: BoolType; safecall;
    function Get_IsProductionNotifierLicensed: BoolType; safecall;
    function Get_IsIPPlusConnectorLicensed: BoolType; safecall;
    function Get_IsOCRRouterLicensed: BoolType; safecall;
    function Get_IsOCRConverterLicensed: BoolType; safecall;
    function Get_IsPDFModuleLicensed: BoolType; safecall;
    function Get_IsSerialValid: BoolType; safecall;
    function Get_SerialNumber: WideString; safecall;
    function Get_IsOEMCPModeEnabled: BoolType; safecall;
    function Get_ServerTimeBias: Integer; safecall;
    function Get_ServerName: WideString; safecall;
    function Get_NumberOfLicensedChannels: Smallint; safecall;
    function Get_IsSecureDocsLicensed: BoolType; safecall;
    function Get_LocalToServerTime(LocalTime: TDateTime): TDateTime; safecall;
    function Get_ServerToLocalTime(ServerTime: TDateTime): TDateTime; safecall;
    function Get_CurrentTimeZone: WideString; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    property ServerType: ServerType read Get_ServerType;
    property ServerVersion: Integer read Get_ServerVersion;
    property ServerVersionAsString: WideString read Get_ServerVersionAsString;
    property ServerSpecial: ServerSpecialType read Get_ServerSpecial;
    property ImageDirectoryLocation: WideString read Get_ImageDirectoryLocation;
    property ImageDirectoryShareName: WideString read Get_ImageDirectoryShareName;
    property MaximumLicensedUsers: Smallint read Get_MaximumLicensedUsers;
    property ValidateBillingCodes: Smallint read Get_ValidateBillingCodes;
    property BillingCodeDescription1: WideString read Get_BillingCodeDescription1;
    property BillingCodeDescription2: WideString read Get_BillingCodeDescription2;
    property RequiredFields[RequiredFieldIndex: RequiredFieldIndexType]: RequiredFieldType read Get_RequiredFields;
    property BuildDate: Integer read Get_BuildDate;
    property ImageDirectoryPath: WideString read Get_ImageDirectoryPath;
    property BaseDirectoryPath: WideString read Get_BaseDirectoryPath;
    property IsDatabaseANSI: BoolType read Get_IsDatabaseANSI;
    property IsEnterprise: BoolType read Get_IsEnterprise;
    property IsDocsOnDemandLicensed: BoolType read Get_IsDocsOnDemandLicensed;
    property IsTeleconnectLicensed: BoolType read Get_IsTeleconnectLicensed;
    property IsSatelliteLicensed: BoolType read Get_IsSatelliteLicensed;
    property IsSmallBusinessServerLicensed: BoolType read Get_IsSmallBusinessServerLicensed;
    property TimeZoneInfo: TimeZoneInfoType read Get_TimeZoneInfo;
    property DefaultANSICodePage: WideString read Get_DefaultANSICodePage;
    property DefaultOEMCodePage: WideString read Get_DefaultOEMCodePage;
    property IsProductionLicensed: BoolType read Get_IsProductionLicensed;
    property IsProductionINLLicensed: BoolType read Get_IsProductionINLLicensed;
    property IsProductionFilterLicensed: BoolType read Get_IsProductionFilterLicensed;
    property IsProductionNotifierLicensed: BoolType read Get_IsProductionNotifierLicensed;
    property IsIPPlusConnectorLicensed: BoolType read Get_IsIPPlusConnectorLicensed;
    property IsOCRRouterLicensed: BoolType read Get_IsOCRRouterLicensed;
    property IsOCRConverterLicensed: BoolType read Get_IsOCRConverterLicensed;
    property IsPDFModuleLicensed: BoolType read Get_IsPDFModuleLicensed;
    property IsSerialValid: BoolType read Get_IsSerialValid;
    property SerialNumber: WideString read Get_SerialNumber;
    property IsOEMCPModeEnabled: BoolType read Get_IsOEMCPModeEnabled;
    property ServerTimeBias: Integer read Get_ServerTimeBias;
    property ServerName: WideString read Get_ServerName;
    property NumberOfLicensedChannels: Smallint read Get_NumberOfLicensedChannels;
    property IsSecureDocsLicensed: BoolType read Get_IsSecureDocsLicensed;
    property LocalToServerTime[LocalTime: TDateTime]: TDateTime read Get_LocalToServerTime;
    property ServerToLocalTime[ServerTime: TDateTime]: TDateTime read Get_ServerToLocalTime;
    property CurrentTimeZone: WideString read Get_CurrentTimeZone;
  end;

// *********************************************************************//
// DispIntf:  ServerInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CDAECB2A-AC43-44AA-AC96-68FEDCA66780}
// *********************************************************************//
  ServerInfoDisp = dispinterface
    ['{CDAECB2A-AC43-44AA-AC96-68FEDCA66780}']
    property ServerType: ServerType readonly dispid 1;
    property ServerVersion: Integer readonly dispid 2;
    property ServerVersionAsString: WideString readonly dispid 3;
    property ServerSpecial: ServerSpecialType readonly dispid 4;
    property ImageDirectoryLocation: WideString readonly dispid 5;
    property ImageDirectoryShareName: WideString readonly dispid 6;
    property MaximumLicensedUsers: Smallint readonly dispid 7;
    property ValidateBillingCodes: Smallint readonly dispid 8;
    property BillingCodeDescription1: WideString readonly dispid 9;
    property BillingCodeDescription2: WideString readonly dispid 10;
    property RequiredFields[RequiredFieldIndex: RequiredFieldIndexType]: RequiredFieldType readonly dispid 11;
    property BuildDate: Integer readonly dispid 12;
    property ImageDirectoryPath: WideString readonly dispid 13;
    property BaseDirectoryPath: WideString readonly dispid 14;
    property IsDatabaseANSI: BoolType readonly dispid 15;
    property IsEnterprise: BoolType readonly dispid 16;
    property IsDocsOnDemandLicensed: BoolType readonly dispid 17;
    property IsTeleconnectLicensed: BoolType readonly dispid 18;
    property IsSatelliteLicensed: BoolType readonly dispid 19;
    property IsSmallBusinessServerLicensed: BoolType readonly dispid 20;
    property TimeZoneInfo: TimeZoneInfoType readonly dispid 21;
    property DefaultANSICodePage: WideString readonly dispid 22;
    property DefaultOEMCodePage: WideString readonly dispid 23;
    property IsProductionLicensed: BoolType readonly dispid 24;
    property IsProductionINLLicensed: BoolType readonly dispid 25;
    property IsProductionFilterLicensed: BoolType readonly dispid 26;
    property IsProductionNotifierLicensed: BoolType readonly dispid 27;
    property IsIPPlusConnectorLicensed: BoolType readonly dispid 28;
    property IsOCRRouterLicensed: BoolType readonly dispid 29;
    property IsOCRConverterLicensed: BoolType readonly dispid 30;
    property IsPDFModuleLicensed: BoolType readonly dispid 31;
    property IsSerialValid: BoolType readonly dispid 32;
    property SerialNumber: WideString readonly dispid 33;
    property IsOEMCPModeEnabled: BoolType readonly dispid 34;
    property ServerTimeBias: Integer readonly dispid 35;
    property ServerName: WideString readonly dispid 36;
    property NumberOfLicensedChannels: Smallint readonly dispid 37;
    property IsSecureDocsLicensed: BoolType readonly dispid 38;
    property LocalToServerTime[LocalTime: TDateTime]: TDateTime readonly dispid 39;
    property ServerToLocalTime[ServerTime: TDateTime]: TDateTime readonly dispid 40;
    property CurrentTimeZone: WideString readonly dispid 41;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 42;
  end;

// *********************************************************************//
// Interface: ServerStats
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5DC26049-0AE4-4587-9314-63DA28C634F6}
// *********************************************************************//
  ServerStats = interface(IDispatch)
    ['{5DC26049-0AE4-4587-9314-63DA28C634F6}']
    function Get_ServerName: WideString; safecall;
    procedure Refresh; safecall;
    function Get_FsFlags: FaxServerStatFlags; safecall;
    procedure Set_FsFlags(Flags: FaxServerStatFlags); safecall;
    function Get_FsNewestActIndex: Smallint; safecall;
    function Get_FsInfoVersion: Smallint; safecall;
    function Get_FsSecondsUp: Integer; safecall;
    function Get_FsMaximumEvents: Integer; safecall;
    function Get_FsNumberEvents: Integer; safecall;
    function Get_FsEventsProcessed: Integer; safecall;
    function Get_FsActRecords: Integer; safecall;
    function Get_FsPercentAvailableImageSpace: Smallint; safecall;
    function Get_FsPercentAvailableDBSpace: Smallint; safecall;
    function Get_Brd1Flags: Board1ServerStatFlags; safecall;
    procedure Set_Brd1Flags(Flags: Board1ServerStatFlags); safecall;
    function Get_Brd1InfoVersion: Smallint; safecall;
    function Get_Brd1SecondsUp: Integer; safecall;
    function Get_Brd1ValidChannels: Smallint; safecall;
    function Get_Brd1SendQueueDepth: Integer; safecall;
    function Get_Brd1SendPagesDepth: Integer; safecall;
    function Get_Brd1CurrentLoad: Integer; safecall;
    function Get_Brd1ChnType: Brd1ChnTypeVals; safecall;
    function Get_Brd1CanDo: Brd1CanDoVals; safecall;
    function Get_Brd1RoutingCode: Integer; safecall;
    function Get_Brd1State: WideString; safecall;
    function Get_Brd1CurrentPage: Integer; safecall;
    function Get_Brd1TotalPagesSent: Integer; safecall;
    function Get_Brd1TotalPagesRcvd: Integer; safecall;
    function Get_Brd1TotalCallsAnswered: Integer; safecall;
    function Get_Brd1TotalCallsPlaced: Integer; safecall;
    function Get_Brd1TotalHangups: Integer; safecall;
    function Get_Brd1ROMID: WideString; safecall;
    function Get_Brd1CurrentRemoteID: WideString; safecall;
    function Get_Brd1Sending: Brd1SendingVals; safecall;
    function Get_Brd1TUIing: Brd1TUIingVals; safecall;
    function Get_Brd1Receiving: Brd1ReceivingVals; safecall;
    function Get_Brd1DODing: Brd1DODingVals; safecall;
    function Get_Brd1GroupThreasholdLeft: Integer; safecall;
    function Get_Brd1FaxesGrouped: Integer; safecall;
    function Get_Brd1TicksOffHook: Integer; safecall;
    function Get_Brd1PagesInCall: Smallint; safecall;
    function Get_Brd1CurrentRate: Brd1CurrentRateVals; safecall;
    function Get_Brd1CurrentCompression: Brd1CurrentCompressionVals; safecall;
    function Get_Brd1EstMinutesLeft: Smallint; safecall;
    function Get_Brd1SIPhoneNum: WideString; safecall;
    function Get_Brd1SIUserID: WideString; safecall;
    function Get_Brd2Flags: Board2ServerStatFlags; safecall;
    procedure Set_Brd2Flags(Flags: Board2ServerStatFlags); safecall;
    function Get_Brd2SIPagesInFax: Smallint; safecall;
    function Get_Brd2SIPagesDone: Smallint; safecall;
    function Get_Brd2SIToName: WideString; safecall;
    function Get_Brd2SIToCompany: WideString; safecall;
    function Get_Brd2SIBillInfo1: WideString; safecall;
    function Get_Brd2SIBillInfo2: WideString; safecall;
    function Get_Brd2SISecureCSID: WideString; safecall;
    function Get_Brd2SIUniqueID: WideString; safecall;
    function Get_Brd2CurrentOp: Smallint; safecall;
    function Get_BrdChannelIndex: Integer; safecall;
    procedure Set_BrdChannelIndex(Val: Integer); safecall;
    function Get_FSBrdsFlags: FSBoardStatFlags; safecall;
    procedure Set_FSBrdsFlags(Flags: FSBoardStatFlags); safecall;
    function Get_FSBrdsInfoVersion: Smallint; safecall;
    function Get_FSBrdsBrdServerCount: Smallint; safecall;
    function Get_FSBrdsMachineName: WideString; safecall;
    function Get_FSBrdsCmdPipeName: WideString; safecall;
    function Get_FSBrdsImageDir: WideString; safecall;
    function Get_FSBrdsBFTDir: WideString; safecall;
    function Get_FSBrdsQueueDepthPages: Integer; safecall;
    function Get_FSBrdsQueueDepthFaxes: Integer; safecall;
    function Get_FSBrdsNumChannels: Smallint; safecall;
    function Get_FSBrdsDown: Smallint; safecall;
    function Get_FSBrdsDownTime: Integer; safecall;
    function Get_FSBrdsDownError: Integer; safecall;
    function Get_FSBrdsLocal: Smallint; safecall;
    function Get_FSBrdsBrdSrvUniqueID: Integer; safecall;
    function Get_FSBrdsCurrentLoad: Integer; safecall;
    function Get_FSBrdsLoadTimeStamp: Integer; safecall;
    function Get_ActLogFlags: ActLogStatFlags; safecall;
    procedure Set_ActLogFlags(Flags: ActLogStatFlags); safecall;
    function Get_ActLogCounterStartDate: Integer; safecall;
    function Get_ActLogPagesSent: Integer; safecall;
    function Get_ActLogFaxesSent: Integer; safecall;
    function Get_ActLogPagesRcvd: Integer; safecall;
    function Get_ActLogFaxesRcvd: Integer; safecall;
    function Get_FSBrdsServerIndex: Integer; safecall;
    procedure Set_FSBrdsServerIndex(Val: Integer); safecall;
    property ServerName: WideString read Get_ServerName;
    property FsFlags: FaxServerStatFlags read Get_FsFlags write Set_FsFlags;
    property FsNewestActIndex: Smallint read Get_FsNewestActIndex;
    property FsInfoVersion: Smallint read Get_FsInfoVersion;
    property FsSecondsUp: Integer read Get_FsSecondsUp;
    property FsMaximumEvents: Integer read Get_FsMaximumEvents;
    property FsNumberEvents: Integer read Get_FsNumberEvents;
    property FsEventsProcessed: Integer read Get_FsEventsProcessed;
    property FsActRecords: Integer read Get_FsActRecords;
    property FsPercentAvailableImageSpace: Smallint read Get_FsPercentAvailableImageSpace;
    property FsPercentAvailableDBSpace: Smallint read Get_FsPercentAvailableDBSpace;
    property Brd1Flags: Board1ServerStatFlags read Get_Brd1Flags write Set_Brd1Flags;
    property Brd1InfoVersion: Smallint read Get_Brd1InfoVersion;
    property Brd1SecondsUp: Integer read Get_Brd1SecondsUp;
    property Brd1ValidChannels: Smallint read Get_Brd1ValidChannels;
    property Brd1SendQueueDepth: Integer read Get_Brd1SendQueueDepth;
    property Brd1SendPagesDepth: Integer read Get_Brd1SendPagesDepth;
    property Brd1CurrentLoad: Integer read Get_Brd1CurrentLoad;
    property Brd1ChnType: Brd1ChnTypeVals read Get_Brd1ChnType;
    property Brd1CanDo: Brd1CanDoVals read Get_Brd1CanDo;
    property Brd1RoutingCode: Integer read Get_Brd1RoutingCode;
    property Brd1State: WideString read Get_Brd1State;
    property Brd1CurrentPage: Integer read Get_Brd1CurrentPage;
    property Brd1TotalPagesSent: Integer read Get_Brd1TotalPagesSent;
    property Brd1TotalPagesRcvd: Integer read Get_Brd1TotalPagesRcvd;
    property Brd1TotalCallsAnswered: Integer read Get_Brd1TotalCallsAnswered;
    property Brd1TotalCallsPlaced: Integer read Get_Brd1TotalCallsPlaced;
    property Brd1TotalHangups: Integer read Get_Brd1TotalHangups;
    property Brd1ROMID: WideString read Get_Brd1ROMID;
    property Brd1CurrentRemoteID: WideString read Get_Brd1CurrentRemoteID;
    property Brd1Sending: Brd1SendingVals read Get_Brd1Sending;
    property Brd1TUIing: Brd1TUIingVals read Get_Brd1TUIing;
    property Brd1Receiving: Brd1ReceivingVals read Get_Brd1Receiving;
    property Brd1DODing: Brd1DODingVals read Get_Brd1DODing;
    property Brd1GroupThreasholdLeft: Integer read Get_Brd1GroupThreasholdLeft;
    property Brd1FaxesGrouped: Integer read Get_Brd1FaxesGrouped;
    property Brd1TicksOffHook: Integer read Get_Brd1TicksOffHook;
    property Brd1PagesInCall: Smallint read Get_Brd1PagesInCall;
    property Brd1CurrentRate: Brd1CurrentRateVals read Get_Brd1CurrentRate;
    property Brd1CurrentCompression: Brd1CurrentCompressionVals read Get_Brd1CurrentCompression;
    property Brd1EstMinutesLeft: Smallint read Get_Brd1EstMinutesLeft;
    property Brd1SIPhoneNum: WideString read Get_Brd1SIPhoneNum;
    property Brd1SIUserID: WideString read Get_Brd1SIUserID;
    property Brd2Flags: Board2ServerStatFlags read Get_Brd2Flags write Set_Brd2Flags;
    property Brd2SIPagesInFax: Smallint read Get_Brd2SIPagesInFax;
    property Brd2SIPagesDone: Smallint read Get_Brd2SIPagesDone;
    property Brd2SIToName: WideString read Get_Brd2SIToName;
    property Brd2SIToCompany: WideString read Get_Brd2SIToCompany;
    property Brd2SIBillInfo1: WideString read Get_Brd2SIBillInfo1;
    property Brd2SIBillInfo2: WideString read Get_Brd2SIBillInfo2;
    property Brd2SISecureCSID: WideString read Get_Brd2SISecureCSID;
    property Brd2SIUniqueID: WideString read Get_Brd2SIUniqueID;
    property Brd2CurrentOp: Smallint read Get_Brd2CurrentOp;
    property BrdChannelIndex: Integer read Get_BrdChannelIndex write Set_BrdChannelIndex;
    property FSBrdsFlags: FSBoardStatFlags read Get_FSBrdsFlags write Set_FSBrdsFlags;
    property FSBrdsInfoVersion: Smallint read Get_FSBrdsInfoVersion;
    property FSBrdsBrdServerCount: Smallint read Get_FSBrdsBrdServerCount;
    property FSBrdsMachineName: WideString read Get_FSBrdsMachineName;
    property FSBrdsCmdPipeName: WideString read Get_FSBrdsCmdPipeName;
    property FSBrdsImageDir: WideString read Get_FSBrdsImageDir;
    property FSBrdsBFTDir: WideString read Get_FSBrdsBFTDir;
    property FSBrdsQueueDepthPages: Integer read Get_FSBrdsQueueDepthPages;
    property FSBrdsQueueDepthFaxes: Integer read Get_FSBrdsQueueDepthFaxes;
    property FSBrdsNumChannels: Smallint read Get_FSBrdsNumChannels;
    property FSBrdsDown: Smallint read Get_FSBrdsDown;
    property FSBrdsDownTime: Integer read Get_FSBrdsDownTime;
    property FSBrdsDownError: Integer read Get_FSBrdsDownError;
    property FSBrdsLocal: Smallint read Get_FSBrdsLocal;
    property FSBrdsBrdSrvUniqueID: Integer read Get_FSBrdsBrdSrvUniqueID;
    property FSBrdsCurrentLoad: Integer read Get_FSBrdsCurrentLoad;
    property FSBrdsLoadTimeStamp: Integer read Get_FSBrdsLoadTimeStamp;
    property ActLogFlags: ActLogStatFlags read Get_ActLogFlags write Set_ActLogFlags;
    property ActLogCounterStartDate: Integer read Get_ActLogCounterStartDate;
    property ActLogPagesSent: Integer read Get_ActLogPagesSent;
    property ActLogFaxesSent: Integer read Get_ActLogFaxesSent;
    property ActLogPagesRcvd: Integer read Get_ActLogPagesRcvd;
    property ActLogFaxesRcvd: Integer read Get_ActLogFaxesRcvd;
    property FSBrdsServerIndex: Integer read Get_FSBrdsServerIndex write Set_FSBrdsServerIndex;
  end;

// *********************************************************************//
// DispIntf:  ServerStatsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5DC26049-0AE4-4587-9314-63DA28C634F6}
// *********************************************************************//
  ServerStatsDisp = dispinterface
    ['{5DC26049-0AE4-4587-9314-63DA28C634F6}']
    property ServerName: WideString readonly dispid 0;
    procedure Refresh; dispid 1;
    property FsFlags: FaxServerStatFlags dispid 2;
    property FsNewestActIndex: Smallint readonly dispid 3;
    property FsInfoVersion: Smallint readonly dispid 4;
    property FsSecondsUp: Integer readonly dispid 5;
    property FsMaximumEvents: Integer readonly dispid 6;
    property FsNumberEvents: Integer readonly dispid 7;
    property FsEventsProcessed: Integer readonly dispid 8;
    property FsActRecords: Integer readonly dispid 9;
    property FsPercentAvailableImageSpace: Smallint readonly dispid 10;
    property FsPercentAvailableDBSpace: Smallint readonly dispid 11;
    property Brd1Flags: Board1ServerStatFlags dispid 12;
    property Brd1InfoVersion: Smallint readonly dispid 13;
    property Brd1SecondsUp: Integer readonly dispid 14;
    property Brd1ValidChannels: Smallint readonly dispid 15;
    property Brd1SendQueueDepth: Integer readonly dispid 16;
    property Brd1SendPagesDepth: Integer readonly dispid 17;
    property Brd1CurrentLoad: Integer readonly dispid 18;
    property Brd1ChnType: Brd1ChnTypeVals readonly dispid 19;
    property Brd1CanDo: Brd1CanDoVals readonly dispid 20;
    property Brd1RoutingCode: Integer readonly dispid 21;
    property Brd1State: WideString readonly dispid 22;
    property Brd1CurrentPage: Integer readonly dispid 23;
    property Brd1TotalPagesSent: Integer readonly dispid 24;
    property Brd1TotalPagesRcvd: Integer readonly dispid 25;
    property Brd1TotalCallsAnswered: Integer readonly dispid 26;
    property Brd1TotalCallsPlaced: Integer readonly dispid 27;
    property Brd1TotalHangups: Integer readonly dispid 28;
    property Brd1ROMID: WideString readonly dispid 29;
    property Brd1CurrentRemoteID: WideString readonly dispid 30;
    property Brd1Sending: Brd1SendingVals readonly dispid 31;
    property Brd1TUIing: Brd1TUIingVals readonly dispid 32;
    property Brd1Receiving: Brd1ReceivingVals readonly dispid 33;
    property Brd1DODing: Brd1DODingVals readonly dispid 34;
    property Brd1GroupThreasholdLeft: Integer readonly dispid 35;
    property Brd1FaxesGrouped: Integer readonly dispid 36;
    property Brd1TicksOffHook: Integer readonly dispid 37;
    property Brd1PagesInCall: Smallint readonly dispid 38;
    property Brd1CurrentRate: Brd1CurrentRateVals readonly dispid 39;
    property Brd1CurrentCompression: Brd1CurrentCompressionVals readonly dispid 40;
    property Brd1EstMinutesLeft: Smallint readonly dispid 41;
    property Brd1SIPhoneNum: WideString readonly dispid 43;
    property Brd1SIUserID: WideString readonly dispid 44;
    property Brd2Flags: Board2ServerStatFlags dispid 45;
    property Brd2SIPagesInFax: Smallint readonly dispid 46;
    property Brd2SIPagesDone: Smallint readonly dispid 47;
    property Brd2SIToName: WideString readonly dispid 48;
    property Brd2SIToCompany: WideString readonly dispid 49;
    property Brd2SIBillInfo1: WideString readonly dispid 50;
    property Brd2SIBillInfo2: WideString readonly dispid 51;
    property Brd2SISecureCSID: WideString readonly dispid 52;
    property Brd2SIUniqueID: WideString readonly dispid 53;
    property Brd2CurrentOp: Smallint readonly dispid 54;
    property BrdChannelIndex: Integer dispid 55;
    property FSBrdsFlags: FSBoardStatFlags dispid 56;
    property FSBrdsInfoVersion: Smallint readonly dispid 57;
    property FSBrdsBrdServerCount: Smallint readonly dispid 58;
    property FSBrdsMachineName: WideString readonly dispid 59;
    property FSBrdsCmdPipeName: WideString readonly dispid 60;
    property FSBrdsImageDir: WideString readonly dispid 61;
    property FSBrdsBFTDir: WideString readonly dispid 62;
    property FSBrdsQueueDepthPages: Integer readonly dispid 63;
    property FSBrdsQueueDepthFaxes: Integer readonly dispid 64;
    property FSBrdsNumChannels: Smallint readonly dispid 65;
    property FSBrdsDown: Smallint readonly dispid 66;
    property FSBrdsDownTime: Integer readonly dispid 67;
    property FSBrdsDownError: Integer readonly dispid 68;
    property FSBrdsLocal: Smallint readonly dispid 69;
    property FSBrdsBrdSrvUniqueID: Integer readonly dispid 70;
    property FSBrdsCurrentLoad: Integer readonly dispid 71;
    property FSBrdsLoadTimeStamp: Integer readonly dispid 72;
    property ActLogFlags: ActLogStatFlags dispid 73;
    property ActLogCounterStartDate: Integer readonly dispid 74;
    property ActLogPagesSent: Integer readonly dispid 75;
    property ActLogFaxesSent: Integer readonly dispid 76;
    property ActLogPagesRcvd: Integer readonly dispid 77;
    property ActLogFaxesRcvd: Integer readonly dispid 78;
    property FSBrdsServerIndex: Integer dispid 79;
  end;

// *********************************************************************//
// Interface: FaxHistory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F9DD61B4-727F-4C97-B270-1589A46B40F7}
// *********************************************************************//
  FaxHistory = interface(IDispatch)
    ['{F9DD61B4-727F-4C97-B270-1589A46B40F7}']
    function Get_Handle: Integer; safecall;
    function Get_TypeOfHistory: FaxHistoryType; safecall;
    function Get_DateTime: TDateTime; safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    function Get_XML: WideString; safecall;
    function Get_XMLEx(IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer): WideString; safecall;
    property Handle: Integer read Get_Handle;
    property TypeOfHistory: FaxHistoryType read Get_TypeOfHistory;
    property DateTime: TDateTime read Get_DateTime;
    property XML: WideString read Get_XML;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString read Get_XMLEx;
  end;

// *********************************************************************//
// DispIntf:  FaxHistoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F9DD61B4-727F-4C97-B270-1589A46B40F7}
// *********************************************************************//
  FaxHistoryDisp = dispinterface
    ['{F9DD61B4-727F-4C97-B270-1589A46B40F7}']
    property Handle: Integer readonly dispid 0;
    property TypeOfHistory: FaxHistoryType readonly dispid 1;
    property DateTime: TDateTime readonly dispid 2;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 3;
    property XML: WideString readonly dispid 4;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: TransmissionFaxHistory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9624BEFE-0D90-406A-89F2-882000C988E8}
// *********************************************************************//
  TransmissionFaxHistory = interface(FaxHistory)
    ['{9624BEFE-0D90-406A-89F2-882000C988E8}']
    function Get_RemoteID: WideString; safecall;
    function Get_ElapsedTime: Smallint; safecall;
    function Get_HangupStatus: Smallint; safecall;
    function Get_BadPageCount: Smallint; safecall;
    function Get_ChannelUsed: Smallint; safecall;
    function Get_TerminationStatus: TransmissonFaxHistoryTerminationStatusType; safecall;
    function Get_BoardType: TransmissionFaxHistoryBoardType; safecall;
    function Get_GoodPageCount: Smallint; safecall;
    function Get_RemoteServer: WideString; safecall;
    function Get_ANI: WideString; safecall;
    function Get_AOCData: OleVariant; safecall;
    function Get_ISDNCauseValue: Smallint; safecall;
    function Get_BrooktroutCallResultStatus: Smallint; safecall;
    function Get_BrooktroutCallResultLineStatus: Smallint; safecall;
    function Get_BrooktroutFaxResultStatus: Smallint; safecall;
    function Get_BrooktroutFaxResultLineStatus: Smallint; safecall;
    function Get_IsFaxPartiallyRetried: BoolType; safecall;
    function Get_IsRemotelySent: BoolType; safecall;
    function Get_IsANIValid: BoolType; safecall;
    function Get_IsAOCValid: BoolType; safecall;
    function Get_GammalinkError: Smallint; safecall;
    function Get_Description: WideString; safecall;
    function Get_FaxNumberSentTo: WideString; safecall;
    function Get_MessageFromTransport: WideString; safecall;
    property RemoteID: WideString read Get_RemoteID;
    property ElapsedTime: Smallint read Get_ElapsedTime;
    property HangupStatus: Smallint read Get_HangupStatus;
    property BadPageCount: Smallint read Get_BadPageCount;
    property ChannelUsed: Smallint read Get_ChannelUsed;
    property TerminationStatus: TransmissonFaxHistoryTerminationStatusType read Get_TerminationStatus;
    property BoardType: TransmissionFaxHistoryBoardType read Get_BoardType;
    property GoodPageCount: Smallint read Get_GoodPageCount;
    property RemoteServer: WideString read Get_RemoteServer;
    property ANI: WideString read Get_ANI;
    property AOCData: OleVariant read Get_AOCData;
    property ISDNCauseValue: Smallint read Get_ISDNCauseValue;
    property BrooktroutCallResultStatus: Smallint read Get_BrooktroutCallResultStatus;
    property BrooktroutCallResultLineStatus: Smallint read Get_BrooktroutCallResultLineStatus;
    property BrooktroutFaxResultStatus: Smallint read Get_BrooktroutFaxResultStatus;
    property BrooktroutFaxResultLineStatus: Smallint read Get_BrooktroutFaxResultLineStatus;
    property IsFaxPartiallyRetried: BoolType read Get_IsFaxPartiallyRetried;
    property IsRemotelySent: BoolType read Get_IsRemotelySent;
    property IsANIValid: BoolType read Get_IsANIValid;
    property IsAOCValid: BoolType read Get_IsAOCValid;
    property GammalinkError: Smallint read Get_GammalinkError;
    property Description: WideString read Get_Description;
    property FaxNumberSentTo: WideString read Get_FaxNumberSentTo;
    property MessageFromTransport: WideString read Get_MessageFromTransport;
  end;

// *********************************************************************//
// DispIntf:  TransmissionFaxHistoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9624BEFE-0D90-406A-89F2-882000C988E8}
// *********************************************************************//
  TransmissionFaxHistoryDisp = dispinterface
    ['{9624BEFE-0D90-406A-89F2-882000C988E8}']
    property RemoteID: WideString readonly dispid 100;
    property ElapsedTime: Smallint readonly dispid 101;
    property HangupStatus: Smallint readonly dispid 102;
    property BadPageCount: Smallint readonly dispid 103;
    property ChannelUsed: Smallint readonly dispid 104;
    property TerminationStatus: TransmissonFaxHistoryTerminationStatusType readonly dispid 105;
    property BoardType: TransmissionFaxHistoryBoardType readonly dispid 106;
    property GoodPageCount: Smallint readonly dispid 107;
    property RemoteServer: WideString readonly dispid 108;
    property ANI: WideString readonly dispid 109;
    property AOCData: OleVariant readonly dispid 110;
    property ISDNCauseValue: Smallint readonly dispid 111;
    property BrooktroutCallResultStatus: Smallint readonly dispid 112;
    property BrooktroutCallResultLineStatus: Smallint readonly dispid 113;
    property BrooktroutFaxResultStatus: Smallint readonly dispid 114;
    property BrooktroutFaxResultLineStatus: Smallint readonly dispid 115;
    property IsFaxPartiallyRetried: BoolType readonly dispid 116;
    property IsRemotelySent: BoolType readonly dispid 117;
    property IsANIValid: BoolType readonly dispid 118;
    property IsAOCValid: BoolType readonly dispid 119;
    property GammalinkError: Smallint readonly dispid 120;
    property Description: WideString readonly dispid 121;
    property FaxNumberSentTo: WideString readonly dispid 122;
    property MessageFromTransport: WideString readonly dispid 123;
    property Handle: Integer readonly dispid 0;
    property TypeOfHistory: FaxHistoryType readonly dispid 1;
    property DateTime: TDateTime readonly dispid 2;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 3;
    property XML: WideString readonly dispid 4;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: NetForwardFaxHistory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F3A847FC-AEC9-416C-971A-443948D32CAD}
// *********************************************************************//
  NetForwardFaxHistory = interface(FaxHistory)
    ['{F3A847FC-AEC9-416C-971A-443948D32CAD}']
    function Get_Notes: WideString; safecall;
    function Get_PreviousOwner: User; safecall;
    function Get_UsersForwardedTo: Users; safecall;
    property Notes: WideString read Get_Notes;
    property PreviousOwner: User read Get_PreviousOwner;
    property UsersForwardedTo: Users read Get_UsersForwardedTo;
  end;

// *********************************************************************//
// DispIntf:  NetForwardFaxHistoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F3A847FC-AEC9-416C-971A-443948D32CAD}
// *********************************************************************//
  NetForwardFaxHistoryDisp = dispinterface
    ['{F3A847FC-AEC9-416C-971A-443948D32CAD}']
    property Notes: WideString readonly dispid 100;
    property PreviousOwner: User readonly dispid 101;
    property UsersForwardedTo: Users readonly dispid 102;
    property Handle: Integer readonly dispid 0;
    property TypeOfHistory: FaxHistoryType readonly dispid 1;
    property DateTime: TDateTime readonly dispid 2;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 3;
    property XML: WideString readonly dispid 4;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: RouteFaxHistory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B9C839A-95AC-4D1D-B86F-6D9916CFD87D}
// *********************************************************************//
  RouteFaxHistory = interface(FaxHistory)
    ['{7B9C839A-95AC-4D1D-B86F-6D9916CFD87D}']
    function Get_Notes: WideString; safecall;
    function Get_PreviousOwner: User; safecall;
    function Get_IsAutomaticallyRouted: BoolType; safecall;
    property Notes: WideString read Get_Notes;
    property PreviousOwner: User read Get_PreviousOwner;
    property IsAutomaticallyRouted: BoolType read Get_IsAutomaticallyRouted;
  end;

// *********************************************************************//
// DispIntf:  RouteFaxHistoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B9C839A-95AC-4D1D-B86F-6D9916CFD87D}
// *********************************************************************//
  RouteFaxHistoryDisp = dispinterface
    ['{7B9C839A-95AC-4D1D-B86F-6D9916CFD87D}']
    property Notes: WideString readonly dispid 100;
    property PreviousOwner: User readonly dispid 101;
    property IsAutomaticallyRouted: BoolType readonly dispid 102;
    property Handle: Integer readonly dispid 0;
    property TypeOfHistory: FaxHistoryType readonly dispid 1;
    property DateTime: TDateTime readonly dispid 2;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 3;
    property XML: WideString readonly dispid 4;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: PrintFaxHistory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {318A6061-5EC5-4A76-8214-C43341F1969D}
// *********************************************************************//
  PrintFaxHistory = interface(FaxHistory)
    ['{318A6061-5EC5-4A76-8214-C43341F1969D}']
    function Get_TimeToPrint: Integer; safecall;
    function Get_Error1: Integer; safecall;
    function Get_Error2: Integer; safecall;
    function Get_PagesPrinted: Smallint; safecall;
    function Get_CopiesPrinted: Smallint; safecall;
    function Get_Printer: Printer; safecall;
    function Get_Message: WideString; safecall;
    property TimeToPrint: Integer read Get_TimeToPrint;
    property Error1: Integer read Get_Error1;
    property Error2: Integer read Get_Error2;
    property PagesPrinted: Smallint read Get_PagesPrinted;
    property CopiesPrinted: Smallint read Get_CopiesPrinted;
    property Printer: Printer read Get_Printer;
    property Message: WideString read Get_Message;
  end;

// *********************************************************************//
// DispIntf:  PrintFaxHistoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {318A6061-5EC5-4A76-8214-C43341F1969D}
// *********************************************************************//
  PrintFaxHistoryDisp = dispinterface
    ['{318A6061-5EC5-4A76-8214-C43341F1969D}']
    property TimeToPrint: Integer readonly dispid 100;
    property Error1: Integer readonly dispid 102;
    property Error2: Integer readonly dispid 103;
    property PagesPrinted: Smallint readonly dispid 104;
    property CopiesPrinted: Smallint readonly dispid 105;
    property Printer: Printer readonly dispid 106;
    property Message: WideString readonly dispid 107;
    property Handle: Integer readonly dispid 0;
    property TypeOfHistory: FaxHistoryType readonly dispid 1;
    property DateTime: TDateTime readonly dispid 2;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 3;
    property XML: WideString readonly dispid 4;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: OCRFaxHistory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4612841A-9A05-4D0F-AA0D-B9B1DEBDC111}
// *********************************************************************//
  OCRFaxHistory = interface(FaxHistory)
    ['{4612841A-9A05-4D0F-AA0D-B9B1DEBDC111}']
    function Get_TimeToOCR: Integer; safecall;
    function Get_Error1: Integer; safecall;
    function Get_Message: WideString; safecall;
    property TimeToOCR: Integer read Get_TimeToOCR;
    property Error1: Integer read Get_Error1;
    property Message: WideString read Get_Message;
  end;

// *********************************************************************//
// DispIntf:  OCRFaxHistoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4612841A-9A05-4D0F-AA0D-B9B1DEBDC111}
// *********************************************************************//
  OCRFaxHistoryDisp = dispinterface
    ['{4612841A-9A05-4D0F-AA0D-B9B1DEBDC111}']
    property TimeToOCR: Integer readonly dispid 100;
    property Error1: Integer readonly dispid 101;
    property Message: WideString readonly dispid 102;
    property Handle: Integer readonly dispid 0;
    property TypeOfHistory: FaxHistoryType readonly dispid 1;
    property DateTime: TDateTime readonly dispid 2;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 3;
    property XML: WideString readonly dispid 4;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: ApprovalFaxHistory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C61C0F3E-BF89-4C0D-AC2B-5A629D73BB64}
// *********************************************************************//
  ApprovalFaxHistory = interface(FaxHistory)
    ['{C61C0F3E-BF89-4C0D-AC2B-5A629D73BB64}']
    function Get_Approver: User; safecall;
    function Get_Notes: WideString; safecall;
    property Approver: User read Get_Approver;
    property Notes: WideString read Get_Notes;
  end;

// *********************************************************************//
// DispIntf:  ApprovalFaxHistoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C61C0F3E-BF89-4C0D-AC2B-5A629D73BB64}
// *********************************************************************//
  ApprovalFaxHistoryDisp = dispinterface
    ['{C61C0F3E-BF89-4C0D-AC2B-5A629D73BB64}']
    property Approver: User readonly dispid 100;
    property Notes: WideString readonly dispid 101;
    property Handle: Integer readonly dispid 0;
    property TypeOfHistory: FaxHistoryType readonly dispid 1;
    property DateTime: TDateTime readonly dispid 2;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 3;
    property XML: WideString readonly dispid 4;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: DisapprovalFaxHistory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8E811B77-A557-4307-B378-E2B5E085B7A8}
// *********************************************************************//
  DisapprovalFaxHistory = interface(FaxHistory)
    ['{8E811B77-A557-4307-B378-E2B5E085B7A8}']
    function Get_Disapprover: User; safecall;
    function Get_Notes: WideString; safecall;
    property Disapprover: User read Get_Disapprover;
    property Notes: WideString read Get_Notes;
  end;

// *********************************************************************//
// DispIntf:  DisapprovalFaxHistoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8E811B77-A557-4307-B378-E2B5E085B7A8}
// *********************************************************************//
  DisapprovalFaxHistoryDisp = dispinterface
    ['{8E811B77-A557-4307-B378-E2B5E085B7A8}']
    property Disapprover: User readonly dispid 100;
    property Notes: WideString readonly dispid 101;
    property Handle: Integer readonly dispid 0;
    property TypeOfHistory: FaxHistoryType readonly dispid 1;
    property DateTime: TDateTime readonly dispid 2;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 3;
    property XML: WideString readonly dispid 4;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: ConversionErrorFaxHistory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F713D5DD-EF49-4075-B19B-4DDA792B18BB}
// *********************************************************************//
  ConversionErrorFaxHistory = interface(FaxHistory)
    ['{F713D5DD-EF49-4075-B19B-4DDA792B18BB}']
    function Get_ConversionType: WideString; safecall;
    function Get_ErrorMessage: WideString; safecall;
    function Get_Error1: Integer; safecall;
    function Get_Error2: Integer; safecall;
    property ConversionType: WideString read Get_ConversionType;
    property ErrorMessage: WideString read Get_ErrorMessage;
    property Error1: Integer read Get_Error1;
    property Error2: Integer read Get_Error2;
  end;

// *********************************************************************//
// DispIntf:  ConversionErrorFaxHistoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F713D5DD-EF49-4075-B19B-4DDA792B18BB}
// *********************************************************************//
  ConversionErrorFaxHistoryDisp = dispinterface
    ['{F713D5DD-EF49-4075-B19B-4DDA792B18BB}']
    property ConversionType: WideString readonly dispid 100;
    property ErrorMessage: WideString readonly dispid 101;
    property Error1: Integer readonly dispid 102;
    property Error2: Integer readonly dispid 103;
    property Handle: Integer readonly dispid 0;
    property TypeOfHistory: FaxHistoryType readonly dispid 1;
    property DateTime: TDateTime readonly dispid 2;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 3;
    property XML: WideString readonly dispid 4;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: FileRouteFaxHistory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45E50059-9911-48FF-A5C6-193E1E862B0D}
// *********************************************************************//
  FileRouteFaxHistory = interface(FaxHistory)
    ['{45E50059-9911-48FF-A5C6-193E1E862B0D}']
    function Get_Error: Integer; safecall;
    function Get_RoutePath: WideString; safecall;
    property Error: Integer read Get_Error;
    property RoutePath: WideString read Get_RoutePath;
  end;

// *********************************************************************//
// DispIntf:  FileRouteFaxHistoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45E50059-9911-48FF-A5C6-193E1E862B0D}
// *********************************************************************//
  FileRouteFaxHistoryDisp = dispinterface
    ['{45E50059-9911-48FF-A5C6-193E1E862B0D}']
    property Error: Integer readonly dispid 100;
    property RoutePath: WideString readonly dispid 101;
    property Handle: Integer readonly dispid 0;
    property TypeOfHistory: FaxHistoryType readonly dispid 1;
    property DateTime: TDateTime readonly dispid 2;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 3;
    property XML: WideString readonly dispid 4;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: SecureDocHistory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43B3D22D-9C56-428B-95F6-A14E40756F88}
// *********************************************************************//
  SecureDocHistory = interface(FaxHistory)
    ['{43B3D22D-9C56-428B-95F6-A14E40756F88}']
    function Get_SMTPSender: WideString; safecall;
    function Get_SMTPHost: WideString; safecall;
    function Get_RemoteIP: WideString; safecall;
    function Get_UserAgent: WideString; safecall;
    function Get_CurrentStatus: WideString; safecall;
    function Get_TerminationStatus: TransmissonFaxHistoryTerminationStatusType; safecall;
    property SMTPSender: WideString read Get_SMTPSender;
    property SMTPHost: WideString read Get_SMTPHost;
    property RemoteIP: WideString read Get_RemoteIP;
    property UserAgent: WideString read Get_UserAgent;
    property CurrentStatus: WideString read Get_CurrentStatus;
    property TerminationStatus: TransmissonFaxHistoryTerminationStatusType read Get_TerminationStatus;
  end;

// *********************************************************************//
// DispIntf:  SecureDocHistoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43B3D22D-9C56-428B-95F6-A14E40756F88}
// *********************************************************************//
  SecureDocHistoryDisp = dispinterface
    ['{43B3D22D-9C56-428B-95F6-A14E40756F88}']
    property SMTPSender: WideString readonly dispid 100;
    property SMTPHost: WideString readonly dispid 101;
    property RemoteIP: WideString readonly dispid 102;
    property UserAgent: WideString readonly dispid 103;
    property CurrentStatus: WideString readonly dispid 104;
    property TerminationStatus: TransmissonFaxHistoryTerminationStatusType readonly dispid 105;
    property Handle: Integer readonly dispid 0;
    property TypeOfHistory: FaxHistoryType readonly dispid 1;
    property DateTime: TDateTime readonly dispid 2;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 3;
    property XML: WideString readonly dispid 4;
    property XMLEx[IncludeXMLHeaderFooter: BoolType; RecordLevel: Integer]: WideString readonly dispid 5;
  end;

// *********************************************************************//
// Interface: PhoneItemElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5FEDF988-D937-4C47-A1CB-CF61FD7BCDE5}
// *********************************************************************//
  PhoneItemElement = interface(PhoneItem)
    ['{5FEDF988-D937-4C47-A1CB-CF61FD7BCDE5}']
    function Get_Address: WideString; safecall;
    procedure Set_Address(const pVal: WideString); safecall;
    function Get_CityState: WideString; safecall;
    procedure Set_CityState(const pVal: WideString); safecall;
    function Get_FaxNumberPrimary: WideString; safecall;
    procedure Set_FaxNumberPrimary(const pVal: WideString); safecall;
    function Get_FaxNumberAlternate: WideString; safecall;
    procedure Set_FaxNumberAlternate(const pVal: WideString); safecall;
    function Get_BillingCode: BillingCode; safecall;
    procedure Set_BillingCode(const pVal: BillingCode); safecall;
    function Get_VoiceNumberPrimary: WideString; safecall;
    procedure Set_VoiceNumberPrimary(const pVal: WideString); safecall;
    function Get_VoiceNumberAlternate: WideString; safecall;
    procedure Set_VoiceNumberAlternate(const pVal: WideString); safecall;
    function Get_Notes: WideString; safecall;
    procedure Set_Notes(const pVal: WideString); safecall;
    function Get_SecureCSID: WideString; safecall;
    procedure Set_SecureCSID(const pVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_Company: WideString; safecall;
    procedure Set_Company(const pVal: WideString); safecall;
    function Get_BillingCode1: WideString; safecall;
    procedure Set_BillingCode1(const pVal: WideString); safecall;
    function Get_BillingCode2: WideString; safecall;
    procedure Set_BillingCode2(const pVal: WideString); safecall;
    function Get_EmailAddress: WideString; safecall;
    procedure Set_EmailAddress(const pVal: WideString); safecall;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); safecall;
    procedure ReadFromXML(const XMLFileName: WideString); safecall;
    property Address: WideString read Get_Address write Set_Address;
    property CityState: WideString read Get_CityState write Set_CityState;
    property FaxNumberPrimary: WideString read Get_FaxNumberPrimary write Set_FaxNumberPrimary;
    property FaxNumberAlternate: WideString read Get_FaxNumberAlternate write Set_FaxNumberAlternate;
    property BillingCode: BillingCode read Get_BillingCode write Set_BillingCode;
    property VoiceNumberPrimary: WideString read Get_VoiceNumberPrimary write Set_VoiceNumberPrimary;
    property VoiceNumberAlternate: WideString read Get_VoiceNumberAlternate write Set_VoiceNumberAlternate;
    property Notes: WideString read Get_Notes write Set_Notes;
    property SecureCSID: WideString read Get_SecureCSID write Set_SecureCSID;
    property Name: WideString read Get_Name write Set_Name;
    property Company: WideString read Get_Company write Set_Company;
    property BillingCode1: WideString read Get_BillingCode1 write Set_BillingCode1;
    property BillingCode2: WideString read Get_BillingCode2 write Set_BillingCode2;
    property EmailAddress: WideString read Get_EmailAddress write Set_EmailAddress;
  end;

// *********************************************************************//
// DispIntf:  PhoneItemElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5FEDF988-D937-4C47-A1CB-CF61FD7BCDE5}
// *********************************************************************//
  PhoneItemElementDisp = dispinterface
    ['{5FEDF988-D937-4C47-A1CB-CF61FD7BCDE5}']
    property Address: WideString dispid 100;
    property CityState: WideString dispid 101;
    property FaxNumberPrimary: WideString dispid 102;
    property FaxNumberAlternate: WideString dispid 103;
    property BillingCode: BillingCode dispid 104;
    property VoiceNumberPrimary: WideString dispid 105;
    property VoiceNumberAlternate: WideString dispid 106;
    property Notes: WideString dispid 107;
    property SecureCSID: WideString dispid 108;
    property Name: WideString dispid 109;
    property Company: WideString dispid 110;
    property BillingCode1: WideString dispid 111;
    property BillingCode2: WideString dispid 112;
    property EmailAddress: WideString dispid 113;
    procedure SaveToXML(const XMLFileName: WideString; IncludeXMLHeaderFooter: BoolType; 
                        RecordLevel: Integer; DeleteFile: BoolType); dispid 114;
    procedure ReadFromXML(const XMLFileName: WideString); dispid 115;
    property ID: WideString dispid 1;
    property Handle: Integer readonly dispid 2;
    property Owner: User dispid 3;
    property TypeOfPhoneItem: PhoneItemType readonly dispid 4;
    property IsPublished: BoolType dispid 5;
    property IsExternallyPublished: BoolType dispid 6;
    property IsReadOnly: BoolType dispid 7;
    property IsHiddenFromCCList: BoolType dispid 8;
    procedure Save; dispid 9;
    property Raw: Integer readonly dispid 10;
    procedure Delete; dispid 11;
    property IsCertifiedDeliveryEnabled: BoolType dispid 12;
    property IsEmailRecipient: BoolType dispid 13;
  end;

// *********************************************************************//
// The Class CoFaxServer provides a Create and CreateRemote method to          
// create instances of the default interface IFaxServer exposed by              
// the CoClass FaxServer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFaxServer = class
    class function Create: IFaxServer;
    class function CreateRemote(const MachineName: string): IFaxServer;
  end;

implementation

uses ComObj;

class function CoFaxServer.Create: IFaxServer;
begin
  Result := CreateComObject(CLASS_FaxServer) as IFaxServer;
end;

class function CoFaxServer.CreateRemote(const MachineName: string): IFaxServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FaxServer) as IFaxServer;
end;

end.
