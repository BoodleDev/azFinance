unit MODI_TLB;

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
// File generated on 20/04/2007 08:44:38 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\Common Files\Microsoft Shared\MODI\11.0\MDIVWCTL.DLL (1)
// LIBID: {A5EDEDF4-2BBC-45F3-822B-E60C278A1A79}
// LCID: 0
// Helpfile: 
// HelpString: Microsoft Office Document Imaging 11.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// Errors:
//   Hint: Parameter 'To' of IDocument.PrintOut changed to 'To_'
//   Error creating palette bitmap of (TDocument) : Server C:\PROGRA~1\COMMON~1\MICROS~1\MODI\11.0\MDIVWCTL.DLL contains no icons
//   Error creating palette bitmap of (TLayout) : Server C:\PROGRA~1\COMMON~1\MICROS~1\MODI\11.0\MDIVWCTL.DLL contains no icons
//   Error creating palette bitmap of (TImage) : Server C:\PROGRA~1\COMMON~1\MICROS~1\MODI\11.0\MDIVWCTL.DLL contains no icons
//   Error creating palette bitmap of (TWord) : Server C:\PROGRA~1\COMMON~1\MICROS~1\MODI\11.0\MDIVWCTL.DLL contains no icons
//   Error creating palette bitmap of (TMiFont) : Server C:\PROGRA~1\COMMON~1\MICROS~1\MODI\11.0\MDIVWCTL.DLL contains no icons
//   Error creating palette bitmap of (TWords) : Server C:\PROGRA~1\COMMON~1\MICROS~1\MODI\11.0\MDIVWCTL.DLL contains no icons
//   Error creating palette bitmap of (TImages) : Server C:\PROGRA~1\COMMON~1\MICROS~1\MODI\11.0\MDIVWCTL.DLL contains no icons
//   Error creating palette bitmap of (TMiRect) : Server C:\PROGRA~1\COMMON~1\MICROS~1\MODI\11.0\MDIVWCTL.DLL contains no icons
//   Error creating palette bitmap of (TMiRects) : Server C:\PROGRA~1\COMMON~1\MICROS~1\MODI\11.0\MDIVWCTL.DLL contains no icons
//   Error creating palette bitmap of (TMiDocSearch) : Server C:\PROGRA~1\COMMON~1\MICROS~1\MODI\11.0\MDIVWCTL.DLL contains no icons
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
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
  MODIMajorVersion = 11;
  MODIMinorVersion = 0;

  LIBID_MODI: TGUID = '{A5EDEDF4-2BBC-45F3-822B-E60C278A1A79}';

  IID_IMiFont: TGUID = '{1FFC9A7B-7606-4C97-8119-78673E9D4821}';
  IID_IMiRect: TGUID = '{87D6FB47-7CFA-4DB3-82CD-E8DCC5BDA7AB}';
  IID_IMiRects: TGUID = '{895C88A9-8598-44CC-91C4-8010AE2475EB}';
  IID_IWord: TGUID = '{5612275B-B4F1-42AF-B696-360D40DF041D}';
  IID_IWords: TGUID = '{D8363824-4B07-423B-8803-49B470434F3D}';
  IID_ILayout: TGUID = '{C300C846-A3FD-4A5B-AD65-4A6AB46B7821}';
  IID_IImage: TGUID = '{AC0D48A6-886D-4EB5-A8A1-093D60B9A84A}';
  IID_IImages: TGUID = '{77096557-54CA-45C8-81C9-E70C2ABAA0FB}';
  IID_IDocument: TGUID = '{D4073843-A58A-469A-A8E2-CFF3FF77EE4E}';
  DIID__IDocumentEvents: TGUID = '{0CF31963-5E4D-4772-AE8D-82FE5A082B26}';
  CLASS_Document: TGUID = '{40942A6C-1520-4132-BDF8-BDC1F71F547B}';
  CLASS_Layout: TGUID = '{1AFC4117-128E-4314-9D53-64CBDA5C7E02}';
  DIID__IImageEvents: TGUID = '{99F3A122-448F-4D36-8243-48BFE32D50B2}';
  CLASS_Image: TGUID = '{56F963EC-6EFC-4A6B-9A1E-5BFE545C89D0}';
  CLASS_Word: TGUID = '{5995E30F-59EB-42AE-BDCF-8908271C0B32}';
  CLASS_MiFont: TGUID = '{C5EAE79B-ACCC-4E51-8ED5-A16F42FB7B1F}';
  CLASS_Words: TGUID = '{72ACBCE3-9067-4D5E-9539-3497FECD032D}';
  CLASS_Images: TGUID = '{F961D185-2CC1-43DB-80AB-567FA10251EC}';
  CLASS_MiRect: TGUID = '{00607E44-15DF-49BC-AF0C-A9023E060791}';
  CLASS_MiRects: TGUID = '{CB2FBD52-56C1-4DD8-897F-961D1543B877}';
  IID_IMiSelectRect: TGUID = '{EA280C3C-E4B7-42BF-ACC8-FE3AD3581638}';
  IID_IMiSelectRects: TGUID = '{3A1E1B7A-C041-4DDC-BF3B-042A0B95B82B}';
  IID_IMiSelectableItem: TGUID = '{01C4414A-D123-4BC7-A1FA-64E376C01655}';
  IID_IMiSelectableImage: TGUID = '{F6379198-3B20-461A-B3A9-191945752557}';
  IID_IMiSearchCallback: TGUID = '{8376D508-78CA-416D-A903-2ED62E91E29B}';
  IID_IMiDocView: TGUID = '{F958524A-8422-4B07-B69E-199F2421ED89}';
  DIID__IMiDocViewEvents: TGUID = '{9028B775-EC59-4118-862A-EFDEAF5955A4}';
  IID_IMiDocSearch: TGUID = '{BC06ED64-A40C-4FB4-A660-AC6DBC752292}';
  CLASS_MiDocView: TGUID = '{EF347A62-BA21-42E4-94A0-1C0A6D7FDFE7}';
  CLASS_MiDocSearch: TGUID = '{FA554DB9-C806-46A9-AEF8-B5AF891A94F9}';
  CLASS_MiSelectRect: TGUID = '{A4D2B51F-809F-4C53-9147-5516871816BD}';
  CLASS_MiSelectRects: TGUID = '{23E9E94B-C202-4E9C-8C2E-F53BC536FF1D}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum MiFONT_FAMILY
type
  MiFONT_FAMILY = TOleEnum;
const
  miFFamily_Helvetica = $00000001;
  miFFamily_Times = $00000002;
  miFFamily_Century = $00000003;
  miFFamily_TimesCentury = $00000004;
  miFFamily_HelveticaCentury = $00000005;
  miFFamily_DEFAULT = $00000006;

// Constants for enum MiFONT_FACE_STYLE
type
  MiFONT_FACE_STYLE = TOleEnum;
const
  miFFace_ROMAN = $00000001;
  miFFace_ITALIC = $00000002;
  miFFace_BOLD = $00000003;
  miFFace_BOLD_ITALIC = $00000004;

// Constants for enum MiFONT_SERIF_STYLE
type
  MiFONT_SERIF_STYLE = TOleEnum;
const
  miFSerifSANS = $00000001;
  miFSerifTHIN = $00000002;
  miFSerifSQ = $00000003;
  miFSerifRND = $00000004;
  miFSerifSTYLE_UNKNOWN = $00000005;

// Constants for enum MiTHUMBNAIL_SIZE
type
  MiTHUMBNAIL_SIZE = TOleEnum;
const
  miTHUMB_SIZE_TINY = $00000000;
  miTHUMB_SIZE_SMALL = $00000001;
  miTHUMB_SIZE_MEDIUM = $00000002;
  miTHUMB_SIZE_LARGE = $00000003;
  miTHUMB_SIZE_MAXIMUM = $00000003;

// Constants for enum MiCOMP_LEVEL
type
  MiCOMP_LEVEL = TOleEnum;
const
  miCOMP_LEVEL_LOW = $00000000;
  miCOMP_LEVEL_MEDIUM = $00000001;
  miCOMP_LEVEL_HIGH = $00000002;

// Constants for enum MiCOMP_TYPE
type
  MiCOMP_TYPE = TOleEnum;
const
  miCOMP_UNKNOWN = $00000000;
  miCOMP_TIFF_NONE = $00000001;
  miCOMP_TIFF_CCITT1D = $00000002;
  miCOMP_TIFF_CCITT3 = $00000003;
  miCOMP_TIFF_CCITT4 = $00000004;
  miCOMP_TIFF_LZW = $00000005;
  miCOMP_TIFF_JPEG6 = $00000006;
  miCOMP_TIFF_JPEG = $00000007;
  miCOMP_TIFF_PACK = $00008005;
  miCOMP_MODI_BLC = $0000879E;
  miCOMP_MODI_VECTOR = $0000879F;
  miCOMP_MODI_PTC = $000087A0;

// Constants for enum MiFILE_FORMAT
type
  MiFILE_FORMAT = TOleEnum;
const
  miFILE_FORMAT_TIFF = $00000001;
  miFILE_FORMAT_TIFF_LOSSLESS = $00000002;
  miFILE_FORMAT_MDI = $00000004;
  miFILE_FORMAT_DEFAULTVALUE = $FFFFFFFF;

// Constants for enum MiPRINT_FITMODES
type
  MiPRINT_FITMODES = TOleEnum;
const
  miPRINT_ACTUALSIZE = $00000000;
  miPRINT_PAGE = $00000001;

// Constants for enum MiLANGUAGES
type
  MiLANGUAGES = TOleEnum;
const
  miLANG_CHINESE_SIMPLIFIED = $00000804;
  miLANG_CHINESE_TRADITIONAL = $00000404;
  miLANG_CZECH = $00000005;
  miLANG_DANISH = $00000006;
  miLANG_DUTCH = $00000013;
  miLANG_ENGLISH = $00000009;
  miLANG_FINNISH = $0000000B;
  miLANG_FRENCH = $0000000C;
  miLANG_GERMAN = $00000007;
  miLANG_GREEK = $00000008;
  miLANG_HUNGARIAN = $0000000E;
  miLANG_ITALIAN = $00000010;
  miLANG_JAPANESE = $00000011;
  miLANG_KOREAN = $00000012;
  miLANG_NORWEGIAN = $00000014;
  miLANG_POLISH = $00000015;
  miLANG_PORTUGUESE = $00000016;
  miLANG_RUSSIAN = $00000019;
  miLANG_SPANISH = $0000000A;
  miLANG_SWEDISH = $0000001D;
  miLANG_TURKISH = $0000001F;
  miLANG_SYSDEFAULT = $00000800;

// Constants for enum MiActionState
type
  MiActionState = TOleEnum;
const
  miASTATE_NONE = $00000000;
  miASTATE_PAN = $00000001;
  miASTATE_ZOOM = $00000002;
  miASTATE_AnntSELECT = $00000003;
  miASTATE_HIDDEN = $00000004;
  miASTATE_SELECT = $00000005;

// Constants for enum MiDocviewMode
type
  MiDocviewMode = TOleEnum;
const
  miDOCVIEWMODE_CONTINOUSPAGEVIEW = $00000000;
  miDOCVIEWMODE_SINGLEPAGEVIEW = $00000001;
  miDOCVIEWMODE_TWOCOLUMNS_CONTINOUSPAGEVIEW = $00000004;

// Constants for enum MiVIEWLAYER
type
  MiVIEWLAYER = TOleEnum;
const
  miVIEWLAYER_RICHINK = $00000000;

// Constants for enum MiFITMODE
type
  MiFITMODE = TOleEnum;
const
  miFree = $00000000;
  miByWidth = $00000001;
  miByHeight = $00000002;
  miByWindow = $00000003;
  miByTextWidth = $00000004;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IMiFont = interface;
  IMiFontDisp = dispinterface;
  IMiRect = interface;
  IMiRectDisp = dispinterface;
  IMiRects = interface;
  IMiRectsDisp = dispinterface;
  IWord = interface;
  IWordDisp = dispinterface;
  IWords = interface;
  IWordsDisp = dispinterface;
  ILayout = interface;
  ILayoutDisp = dispinterface;
  IImage = interface;
  IImageDisp = dispinterface;
  IImages = interface;
  IImagesDisp = dispinterface;
  IDocument = interface;
  IDocumentDisp = dispinterface;
  _IDocumentEvents = dispinterface;
  _IImageEvents = dispinterface;
  IMiSelectRect = interface;
  IMiSelectRectDisp = dispinterface;
  IMiSelectRects = interface;
  IMiSelectRectsDisp = dispinterface;
  IMiSelectableItem = interface;
  IMiSelectableItemDisp = dispinterface;
  IMiSelectableImage = interface;
  IMiSelectableImageDisp = dispinterface;
  IMiSearchCallback = interface;
  IMiDocView = interface;
  IMiDocViewDisp = dispinterface;
  _IMiDocViewEvents = dispinterface;
  IMiDocSearch = interface;
  IMiDocSearchDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Document = IDocument;
  Layout = ILayout;
  Image = IImage;
  Word = IWord;
  MiFont = IMiFont;
  Words = IWords;
  Images = IImages;
  MiRect = IMiRect;
  MiRects = IMiRects;
  MiDocView = IMiDocView;
  MiDocSearch = IMiDocSearch;
  MiSelectRect = IMiSelectRect;
  MiSelectRects = IMiSelectRects;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PDouble1 = ^Double; {*}
  POleVariant1 = ^OleVariant; {*}
  PPUserType1 = ^IMiSelectableItem; {*}


// *********************************************************************//
// Interface: IMiFont
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1FFC9A7B-7606-4C97-8119-78673E9D4821}
// *********************************************************************//
  IMiFont = interface(IDispatch)
    ['{1FFC9A7B-7606-4C97-8119-78673E9D4821}']
    function Get_Family: MiFONT_FAMILY; safecall;
    function Get_FaceStyle: MiFONT_FACE_STYLE; safecall;
    function Get_SerifStyle: MiFONT_SERIF_STYLE; safecall;
    function Get_FontSize: Smallint; safecall;
    property Family: MiFONT_FAMILY read Get_Family;
    property FaceStyle: MiFONT_FACE_STYLE read Get_FaceStyle;
    property SerifStyle: MiFONT_SERIF_STYLE read Get_SerifStyle;
    property FontSize: Smallint read Get_FontSize;
  end;

// *********************************************************************//
// DispIntf:  IMiFontDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1FFC9A7B-7606-4C97-8119-78673E9D4821}
// *********************************************************************//
  IMiFontDisp = dispinterface
    ['{1FFC9A7B-7606-4C97-8119-78673E9D4821}']
    property Family: MiFONT_FAMILY readonly dispid 1;
    property FaceStyle: MiFONT_FACE_STYLE readonly dispid 3;
    property SerifStyle: MiFONT_SERIF_STYLE readonly dispid 4;
    property FontSize: Smallint readonly dispid 5;
  end;

// *********************************************************************//
// Interface: IMiRect
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {87D6FB47-7CFA-4DB3-82CD-E8DCC5BDA7AB}
// *********************************************************************//
  IMiRect = interface(IDispatch)
    ['{87D6FB47-7CFA-4DB3-82CD-E8DCC5BDA7AB}']
    function Get_Top: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Right: Integer read Get_Right;
    property Bottom: Integer read Get_Bottom;
  end;

// *********************************************************************//
// DispIntf:  IMiRectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {87D6FB47-7CFA-4DB3-82CD-E8DCC5BDA7AB}
// *********************************************************************//
  IMiRectDisp = dispinterface
    ['{87D6FB47-7CFA-4DB3-82CD-E8DCC5BDA7AB}']
    property Top: Integer readonly dispid 1;
    property Left: Integer readonly dispid 2;
    property Right: Integer readonly dispid 3;
    property Bottom: Integer readonly dispid 4;
  end;

// *********************************************************************//
// Interface: IMiRects
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {895C88A9-8598-44CC-91C4-8010AE2475EB}
// *********************************************************************//
  IMiRects = interface(IDispatch)
    ['{895C88A9-8598-44CC-91C4-8010AE2475EB}']
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IDispatch; safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IDispatch read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IMiRectsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {895C88A9-8598-44CC-91C4-8010AE2475EB}
// *********************************************************************//
  IMiRectsDisp = dispinterface
    ['{895C88A9-8598-44CC-91C4-8010AE2475EB}']
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IDispatch readonly dispid 0; default;
  end;

// *********************************************************************//
// Interface: IWord
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5612275B-B4F1-42AF-B696-360D40DF041D}
// *********************************************************************//
  IWord = interface(IDispatch)
    ['{5612275B-B4F1-42AF-B696-360D40DF041D}']
    function Get_RecognitionConfidence: Smallint; safecall;
    function Get_FontId: Integer; safecall;
    function Get_LineId: Integer; safecall;
    function Get_RegionId: Integer; safecall;
    function Get_Text: WideString; safecall;
    function Get_Font: IMiFont; safecall;
    function Get_Id: Integer; safecall;
    function Get_Rects: IMiRects; safecall;
    property RecognitionConfidence: Smallint read Get_RecognitionConfidence;
    property FontId: Integer read Get_FontId;
    property LineId: Integer read Get_LineId;
    property RegionId: Integer read Get_RegionId;
    property Text: WideString read Get_Text;
    property Font: IMiFont read Get_Font;
    property Id: Integer read Get_Id;
    property Rects: IMiRects read Get_Rects;
  end;

// *********************************************************************//
// DispIntf:  IWordDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5612275B-B4F1-42AF-B696-360D40DF041D}
// *********************************************************************//
  IWordDisp = dispinterface
    ['{5612275B-B4F1-42AF-B696-360D40DF041D}']
    property RecognitionConfidence: Smallint readonly dispid 1;
    property FontId: Integer readonly dispid 2;
    property LineId: Integer readonly dispid 3;
    property RegionId: Integer readonly dispid 4;
    property Text: WideString readonly dispid 6;
    property Font: IMiFont readonly dispid 7;
    property Id: Integer readonly dispid 8;
    property Rects: IMiRects readonly dispid 9;
  end;

// *********************************************************************//
// Interface: IWords
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D8363824-4B07-423B-8803-49B470434F3D}
// *********************************************************************//
  IWords = interface(IDispatch)
    ['{D8363824-4B07-423B-8803-49B470434F3D}']
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IDispatch; safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IDispatch read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IWordsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D8363824-4B07-423B-8803-49B470434F3D}
// *********************************************************************//
  IWordsDisp = dispinterface
    ['{D8363824-4B07-423B-8803-49B470434F3D}']
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IDispatch readonly dispid 0; default;
  end;

// *********************************************************************//
// Interface: ILayout
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C300C846-A3FD-4A5B-AD65-4A6AB46B7821}
// *********************************************************************//
  ILayout = interface(IDispatch)
    ['{C300C846-A3FD-4A5B-AD65-4A6AB46B7821}']
    function Get_Language: Integer; safecall;
    function Get_NumChars: Integer; safecall;
    function Get_NumWords: Integer; safecall;
    function Get_NumFonts: Integer; safecall;
    function Get_Text: WideString; safecall;
    function Get_Words: IWords; safecall;
    property Language: Integer read Get_Language;
    property NumChars: Integer read Get_NumChars;
    property NumWords: Integer read Get_NumWords;
    property NumFonts: Integer read Get_NumFonts;
    property Text: WideString read Get_Text;
    property Words: IWords read Get_Words;
  end;

// *********************************************************************//
// DispIntf:  ILayoutDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C300C846-A3FD-4A5B-AD65-4A6AB46B7821}
// *********************************************************************//
  ILayoutDisp = dispinterface
    ['{C300C846-A3FD-4A5B-AD65-4A6AB46B7821}']
    property Language: Integer readonly dispid 1;
    property NumChars: Integer readonly dispid 2;
    property NumWords: Integer readonly dispid 3;
    property NumFonts: Integer readonly dispid 4;
    property Text: WideString readonly dispid 5;
    property Words: IWords readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IImage
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AC0D48A6-886D-4EB5-A8A1-093D60B9A84A}
// *********************************************************************//
  IImage = interface(IDispatch)
    ['{AC0D48A6-886D-4EB5-A8A1-093D60B9A84A}']
    function Get_Layout: ILayout; safecall;
    function Get_PixelWidth: Integer; safecall;
    function Get_PixelHeight: Integer; safecall;
    function Get_XDPI: Integer; safecall;
    function Get_YDPI: Integer; safecall;
    function Get_BitsPerPixel: Integer; safecall;
    function Get_Thumbnail(ThumbSize: MiTHUMBNAIL_SIZE): IPictureDisp; safecall;
    function Get_Picture: IPictureDisp; safecall;
    function Get_Compression: MiCOMP_TYPE; safecall;
    procedure OCR(LangId: MiLANGUAGES; OCROrientImage: WordBool; OCRStraightenImage: WordBool); safecall;
    procedure Rotate(Angle: Integer); safecall;
    property Layout: ILayout read Get_Layout;
    property PixelWidth: Integer read Get_PixelWidth;
    property PixelHeight: Integer read Get_PixelHeight;
    property XDPI: Integer read Get_XDPI;
    property YDPI: Integer read Get_YDPI;
    property BitsPerPixel: Integer read Get_BitsPerPixel;
    property Thumbnail[ThumbSize: MiTHUMBNAIL_SIZE]: IPictureDisp read Get_Thumbnail;
    property Picture: IPictureDisp read Get_Picture;
    property Compression: MiCOMP_TYPE read Get_Compression;
  end;

// *********************************************************************//
// DispIntf:  IImageDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AC0D48A6-886D-4EB5-A8A1-093D60B9A84A}
// *********************************************************************//
  IImageDisp = dispinterface
    ['{AC0D48A6-886D-4EB5-A8A1-093D60B9A84A}']
    property Layout: ILayout readonly dispid 1;
    property PixelWidth: Integer readonly dispid 2;
    property PixelHeight: Integer readonly dispid 3;
    property XDPI: Integer readonly dispid 4;
    property YDPI: Integer readonly dispid 5;
    property BitsPerPixel: Integer readonly dispid 6;
    property Thumbnail[ThumbSize: MiTHUMBNAIL_SIZE]: IPictureDisp readonly dispid 7;
    property Picture: IPictureDisp readonly dispid 8;
    property Compression: MiCOMP_TYPE readonly dispid 9;
    procedure OCR(LangId: MiLANGUAGES; OCROrientImage: WordBool; OCRStraightenImage: WordBool); dispid 10;
    procedure Rotate(Angle: Integer); dispid 11;
  end;

// *********************************************************************//
// Interface: IImages
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {77096557-54CA-45C8-81C9-E70C2ABAA0FB}
// *********************************************************************//
  IImages = interface(IDispatch)
    ['{77096557-54CA-45C8-81C9-E70C2ABAA0FB}']
    function Get_Count: Integer; safecall;
    procedure Add(const Page: IDispatch; const BeforePage: IDispatch); safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IDispatch; safecall;
    procedure Remove(const Page: IDispatch); safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IDispatch read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IImagesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {77096557-54CA-45C8-81C9-E70C2ABAA0FB}
// *********************************************************************//
  IImagesDisp = dispinterface
    ['{77096557-54CA-45C8-81C9-E70C2ABAA0FB}']
    property Count: Integer readonly dispid 1;
    procedure Add(const Page: IDispatch; const BeforePage: IDispatch); dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IDispatch readonly dispid 0; default;
    procedure Remove(const Page: IDispatch); dispid 5;
  end;

// *********************************************************************//
// Interface: IDocument
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D4073843-A58A-469A-A8E2-CFF3FF77EE4E}
// *********************************************************************//
  IDocument = interface(IDispatch)
    ['{D4073843-A58A-469A-A8E2-CFF3FF77EE4E}']
    procedure Save; safecall;
    procedure Close(SaveChanges: WordBool); safecall;
    procedure SaveAs(const FileName: WideString; FileFormat: MiFILE_FORMAT; CompLevel: MiCOMP_LEVEL); safecall;
    function Get_Images: IImages; safecall;
    function Get_BuiltInDocumentProperties: IDispatch; safecall;
    function Get_CustomDocumentProperties: IDispatch; safecall;
    procedure Create(const FileOpen: WideString); safecall;
    function Get_Dirty: WordBool; safecall;
    procedure OCR(LangId: MiLANGUAGES; OCROrientImage: WordBool; OCRStraightenImage: WordBool); safecall;
    procedure PrintOut(From: Integer; To_: Integer; Copies: Integer; const PrinterName: WideString; 
                       const PrintToFileName: WideString; PrintAnnotation: WordBool; 
                       FitMode: MiPRINT_FITMODES); safecall;
    property Images: IImages read Get_Images;
    property BuiltInDocumentProperties: IDispatch read Get_BuiltInDocumentProperties;
    property CustomDocumentProperties: IDispatch read Get_CustomDocumentProperties;
    property Dirty: WordBool read Get_Dirty;
  end;

// *********************************************************************//
// DispIntf:  IDocumentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D4073843-A58A-469A-A8E2-CFF3FF77EE4E}
// *********************************************************************//
  IDocumentDisp = dispinterface
    ['{D4073843-A58A-469A-A8E2-CFF3FF77EE4E}']
    procedure Save; dispid 2;
    procedure Close(SaveChanges: WordBool); dispid 3;
    procedure SaveAs(const FileName: WideString; FileFormat: MiFILE_FORMAT; CompLevel: MiCOMP_LEVEL); dispid 4;
    property Images: IImages readonly dispid 5;
    property BuiltInDocumentProperties: IDispatch readonly dispid 6;
    property CustomDocumentProperties: IDispatch readonly dispid 7;
    procedure Create(const FileOpen: WideString); dispid 8;
    property Dirty: WordBool readonly dispid 9;
    procedure OCR(LangId: MiLANGUAGES; OCROrientImage: WordBool; OCRStraightenImage: WordBool); dispid 10;
    procedure PrintOut(From: Integer; To_: Integer; Copies: Integer; const PrinterName: WideString; 
                       const PrintToFileName: WideString; PrintAnnotation: WordBool; 
                       FitMode: MiPRINT_FITMODES); dispid 11;
  end;

// *********************************************************************//
// DispIntf:  _IDocumentEvents
// Flags:     (4096) Dispatchable
// GUID:      {0CF31963-5E4D-4772-AE8D-82FE5A082B26}
// *********************************************************************//
  _IDocumentEvents = dispinterface
    ['{0CF31963-5E4D-4772-AE8D-82FE5A082B26}']
    procedure OnOCRProgress(Progress: SYSINT; var Cancel: WordBool); dispid 1;
  end;

// *********************************************************************//
// DispIntf:  _IImageEvents
// Flags:     (4096) Dispatchable
// GUID:      {99F3A122-448F-4D36-8243-48BFE32D50B2}
// *********************************************************************//
  _IImageEvents = dispinterface
    ['{99F3A122-448F-4D36-8243-48BFE32D50B2}']
  end;

// *********************************************************************//
// Interface: IMiSelectRect
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA280C3C-E4B7-42BF-ACC8-FE3AD3581638}
// *********************************************************************//
  IMiSelectRect = interface(IDispatch)
    ['{EA280C3C-E4B7-42BF-ACC8-FE3AD3581638}']
    function Get_PageNumber: Integer; safecall;
    function Get_Left: Integer; safecall;
    function Get_Top: Integer; safecall;
    function Get_Right: Integer; safecall;
    function Get_Bottom: Integer; safecall;
    property PageNumber: Integer read Get_PageNumber;
    property Left: Integer read Get_Left;
    property Top: Integer read Get_Top;
    property Right: Integer read Get_Right;
    property Bottom: Integer read Get_Bottom;
  end;

// *********************************************************************//
// DispIntf:  IMiSelectRectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA280C3C-E4B7-42BF-ACC8-FE3AD3581638}
// *********************************************************************//
  IMiSelectRectDisp = dispinterface
    ['{EA280C3C-E4B7-42BF-ACC8-FE3AD3581638}']
    property PageNumber: Integer readonly dispid 1;
    property Left: Integer readonly dispid 2;
    property Top: Integer readonly dispid 3;
    property Right: Integer readonly dispid 4;
    property Bottom: Integer readonly dispid 5;
  end;

// *********************************************************************//
// Interface: IMiSelectRects
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3A1E1B7A-C041-4DDC-BF3B-042A0B95B82B}
// *********************************************************************//
  IMiSelectRects = interface(IDispatch)
    ['{3A1E1B7A-C041-4DDC-BF3B-042A0B95B82B}']
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Get_Item(Index: Integer): IDispatch; safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IDispatch read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IMiSelectRectsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3A1E1B7A-C041-4DDC-BF3B-042A0B95B82B}
// *********************************************************************//
  IMiSelectRectsDisp = dispinterface
    ['{3A1E1B7A-C041-4DDC-BF3B-042A0B95B82B}']
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: Integer]: IDispatch readonly dispid 0; default;
  end;

// *********************************************************************//
// Interface: IMiSelectableItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {01C4414A-D123-4BC7-A1FA-64E376C01655}
// *********************************************************************//
  IMiSelectableItem = interface(IDispatch)
    ['{01C4414A-D123-4BC7-A1FA-64E376C01655}']
    procedure CopyToClipboard; safecall;
    function Get_Text: WideString; safecall;
    function Get_Words: IDispatch; safecall;
    function GetSelectRects: IMiSelectRects; safecall;
    property Text: WideString read Get_Text;
    property Words: IDispatch read Get_Words;
  end;

// *********************************************************************//
// DispIntf:  IMiSelectableItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {01C4414A-D123-4BC7-A1FA-64E376C01655}
// *********************************************************************//
  IMiSelectableItemDisp = dispinterface
    ['{01C4414A-D123-4BC7-A1FA-64E376C01655}']
    procedure CopyToClipboard; dispid 1;
    property Text: WideString readonly dispid 2;
    property Words: IDispatch readonly dispid 3;
    function GetSelectRects: IMiSelectRects; dispid 4;
  end;

// *********************************************************************//
// Interface: IMiSelectableImage
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F6379198-3B20-461A-B3A9-191945752557}
// *********************************************************************//
  IMiSelectableImage = interface(IDispatch)
    ['{F6379198-3B20-461A-B3A9-191945752557}']
    procedure CopyToClipboard(CopyAnnotation: Integer; AlwaysKeepAnnotationColor: Integer); safecall;
    function ExportToPicture(CopyAnnotation: Integer; AlwaysKeepAnnotationColor: Integer): IPictureDisp; safecall;
    procedure GetBoundingRect(out plPageNum: Integer; out Left: Integer; out Top: Integer; 
                              out Right: Integer; out Bottom: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IMiSelectableImageDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F6379198-3B20-461A-B3A9-191945752557}
// *********************************************************************//
  IMiSelectableImageDisp = dispinterface
    ['{F6379198-3B20-461A-B3A9-191945752557}']
    procedure CopyToClipboard(CopyAnnotation: Integer; AlwaysKeepAnnotationColor: Integer); dispid 1;
    function ExportToPicture(CopyAnnotation: Integer; AlwaysKeepAnnotationColor: Integer): IPictureDisp; dispid 2;
    procedure GetBoundingRect(out plPageNum: Integer; out Left: Integer; out Top: Integer; 
                              out Right: Integer; out Bottom: Integer); dispid 3;
  end;

// *********************************************************************//
// Interface: IMiSearchCallback
// Flags:     (16) Hidden
// GUID:      {8376D508-78CA-416D-A903-2ED62E91E29B}
// *********************************************************************//
  IMiSearchCallback = interface(IUnknown)
    ['{8376D508-78CA-416D-A903-2ED62E91E29B}']
    function IsCancelled(out pfIsCancel: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IMiDocView
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F958524A-8422-4B07-B69E-199F2421ED89}
// *********************************************************************//
  IMiDocView = interface(IDispatch)
    ['{F958524A-8422-4B07-B69E-199F2421ED89}']
    function Get_Document: IUnknown; safecall;
    procedure Set_Document(const pVal: IUnknown); safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const pVal: WideString); safecall;
    function Get_NumPages: Integer; safecall;
    procedure ClientToDocument(var plX: Integer; var plY: Integer); safecall;
    procedure DocumentToClient(var plX: Integer; var plY: Integer); safecall;
    procedure ClientToImage(lSX: Integer; lSY: Integer; out pnPage: Integer; out plX: Integer; 
                            out plY: Integer); safecall;
    procedure ImageToClient(nPage: Integer; lX: Integer; lY: Integer; out plSX: Integer; 
                            out plSY: Integer); safecall;
    procedure GetVisibleRect(out Left: Integer; out Top: Integer; out Right: Integer; 
                             out Bottom: Integer); safecall;
    procedure MoveRectIntoView(Left: Integer; Top: Integer; Right: Integer; Bottom: Integer); safecall;
    function Get_DocViewMode: MiDocviewMode; safecall;
    procedure Set_DocViewMode(pVal: MiDocviewMode); safecall;
    function Get_PageNum: Integer; safecall;
    procedure Set_PageNum(pVal: Integer); safecall;
    procedure GetScale(var pdScaleX: Double; var pdScaleY: Double); safecall;
    procedure SetScale(dScaleX: Double; dScaleY: Double); safecall;
    function Get_FitMode: MiFITMODE; safecall;
    procedure Set_FitMode(pVal: MiFITMODE); safecall;
    function Get_ActionState: MiActionState; safecall;
    procedure Set_ActionState(pVal: MiActionState); safecall;
    function Get_TextSelection: IMiSelectableItem; safecall;
    procedure Set_TextSelection(const pVal: IMiSelectableItem); safecall;
    function Get_ImageSelection: IMiSelectableImage; safecall;
    procedure Set_ImageSelection(const pVal: IMiSelectableImage); safecall;
    procedure SelectAll(nPage: Integer); safecall;
    procedure MoveSelectionToView(const pdispSelection: IDispatch); safecall;
    procedure Set_LayerVisible(Index: MiVIEWLAYER; pfVisible: WordBool); safecall;
    function Get_LayerVisible(Index: MiVIEWLAYER): WordBool; safecall;
    property Document: IUnknown read Get_Document write Set_Document;
    property FileName: WideString read Get_FileName write Set_FileName;
    property NumPages: Integer read Get_NumPages;
    property DocViewMode: MiDocviewMode read Get_DocViewMode write Set_DocViewMode;
    property PageNum: Integer read Get_PageNum write Set_PageNum;
    property FitMode: MiFITMODE read Get_FitMode write Set_FitMode;
    property ActionState: MiActionState read Get_ActionState write Set_ActionState;
    property TextSelection: IMiSelectableItem read Get_TextSelection write Set_TextSelection;
    property ImageSelection: IMiSelectableImage read Get_ImageSelection write Set_ImageSelection;
    property LayerVisible[Index: MiVIEWLAYER]: WordBool read Get_LayerVisible write Set_LayerVisible;
  end;

// *********************************************************************//
// DispIntf:  IMiDocViewDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F958524A-8422-4B07-B69E-199F2421ED89}
// *********************************************************************//
  IMiDocViewDisp = dispinterface
    ['{F958524A-8422-4B07-B69E-199F2421ED89}']
    property Document: IUnknown dispid 1;
    property FileName: WideString dispid 2;
    property NumPages: Integer readonly dispid 4;
    procedure ClientToDocument(var plX: Integer; var plY: Integer); dispid 48;
    procedure DocumentToClient(var plX: Integer; var plY: Integer); dispid 49;
    procedure ClientToImage(lSX: Integer; lSY: Integer; out pnPage: Integer; out plX: Integer; 
                            out plY: Integer); dispid 52;
    procedure ImageToClient(nPage: Integer; lX: Integer; lY: Integer; out plSX: Integer; 
                            out plSY: Integer); dispid 53;
    procedure GetVisibleRect(out Left: Integer; out Top: Integer; out Right: Integer; 
                             out Bottom: Integer); dispid 50;
    procedure MoveRectIntoView(Left: Integer; Top: Integer; Right: Integer; Bottom: Integer); dispid 51;
    property DocViewMode: MiDocviewMode dispid 23;
    property PageNum: Integer dispid 3;
    procedure GetScale(var pdScaleX: Double; var pdScaleY: Double); dispid 8;
    procedure SetScale(dScaleX: Double; dScaleY: Double); dispid 9;
    property FitMode: MiFITMODE dispid 10;
    property ActionState: MiActionState dispid 11;
    property TextSelection: IMiSelectableItem dispid 12;
    property ImageSelection: IMiSelectableImage dispid 47;
    procedure SelectAll(nPage: Integer); dispid 33;
    procedure MoveSelectionToView(const pdispSelection: IDispatch); dispid 13;
    property LayerVisible[Index: MiVIEWLAYER]: WordBool dispid 29;
  end;

// *********************************************************************//
// DispIntf:  _IMiDocViewEvents
// Flags:     (4096) Dispatchable
// GUID:      {9028B775-EC59-4118-862A-EFDEAF5955A4}
// *********************************************************************//
  _IMiDocViewEvents = dispinterface
    ['{9028B775-EC59-4118-862A-EFDEAF5955A4}']
    procedure FitmodeChanged; dispid 1;
    procedure ScaleChanged; dispid 2;
    procedure SelectionChanged; dispid 3;
    procedure PageChanged; dispid 4;
    procedure PageCountChanged; dispid 5;
    procedure CurPageNumChanged; dispid 6;
    procedure VisibleRectChanged; dispid 7;
  end;

// *********************************************************************//
// Interface: IMiDocSearch
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BC06ED64-A40C-4FB4-A660-AC6DBC752292}
// *********************************************************************//
  IMiDocSearch = interface(IDispatch)
    ['{BC06ED64-A40C-4FB4-A660-AC6DBC752292}']
    procedure Initialize(const piDoc: IUnknown; const strPattern: WideString; 
                         var PageNum: OleVariant; var WordIndex: OleVariant; 
                         var StartAfterIndex: OleVariant; var Backward: OleVariant; 
                         MatchMinus: WordBool; MatchFullHalfWidthForm: WordBool; 
                         MatchHiraganaKatakana: WordBool; IgnoreSpace: WordBool); safecall;
    procedure Search(const pSearchCallback: IMiSearchCallback; 
                     var ppiSearchResult: IMiSelectableItem); safecall;
  end;

// *********************************************************************//
// DispIntf:  IMiDocSearchDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BC06ED64-A40C-4FB4-A660-AC6DBC752292}
// *********************************************************************//
  IMiDocSearchDisp = dispinterface
    ['{BC06ED64-A40C-4FB4-A660-AC6DBC752292}']
    procedure Initialize(const piDoc: IUnknown; const strPattern: WideString; 
                         var PageNum: OleVariant; var WordIndex: OleVariant; 
                         var StartAfterIndex: OleVariant; var Backward: OleVariant; 
                         MatchMinus: WordBool; MatchFullHalfWidthForm: WordBool; 
                         MatchHiraganaKatakana: WordBool; IgnoreSpace: WordBool); dispid 1;
    procedure Search(const pSearchCallback: IMiSearchCallback; 
                     var ppiSearchResult: IMiSelectableItem); dispid 2;
  end;

// *********************************************************************//
// The Class CoDocument provides a Create and CreateRemote method to          
// create instances of the default interface IDocument exposed by              
// the CoClass Document. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDocument = class
    class function Create: IDocument;
    class function CreateRemote(const MachineName: string): IDocument;
  end;

  TDocumentOnOCRProgress = procedure(ASender: TObject; Progress: SYSINT; var Cancel: WordBool) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDocument
// Help String      : Document Class
// Default Interface: IDocument
// Def. Intf. DISP? : No
// Event   Interface: _IDocumentEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDocumentProperties= class;
{$ENDIF}
  TDocument = class(TOleServer)
  private
    FOnOCRProgress: TDocumentOnOCRProgress;
    FIntf: IDocument;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDocumentProperties;
    function GetServerProperties: TDocumentProperties;
{$ENDIF}
    function GetDefaultInterface: IDocument;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Images: IImages;
    function Get_BuiltInDocumentProperties: IDispatch;
    function Get_CustomDocumentProperties: IDispatch;
    function Get_Dirty: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDocument);
    procedure Disconnect; override;
    procedure Save;
    procedure Close(SaveChanges: WordBool);
    procedure SaveAs(const FileName: WideString; FileFormat: MiFILE_FORMAT; CompLevel: MiCOMP_LEVEL);
    procedure Create1(const FileOpen: WideString);
    procedure OCR(LangId: MiLANGUAGES; OCROrientImage: WordBool; OCRStraightenImage: WordBool);
    procedure PrintOut(From: Integer; To_: Integer; Copies: Integer; const PrinterName: WideString; 
                       const PrintToFileName: WideString; PrintAnnotation: WordBool; 
                       FitMode: MiPRINT_FITMODES);
    property DefaultInterface: IDocument read GetDefaultInterface;
    property Images: IImages read Get_Images;
    property BuiltInDocumentProperties: IDispatch read Get_BuiltInDocumentProperties;
    property CustomDocumentProperties: IDispatch read Get_CustomDocumentProperties;
    property Dirty: WordBool read Get_Dirty;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDocumentProperties read GetServerProperties;
{$ENDIF}
    property OnOCRProgress: TDocumentOnOCRProgress read FOnOCRProgress write FOnOCRProgress;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDocument
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDocumentProperties = class(TPersistent)
  private
    FServer:    TDocument;
    function    GetDefaultInterface: IDocument;
    constructor Create(AServer: TDocument);
  protected
    function Get_Images: IImages;
    function Get_BuiltInDocumentProperties: IDispatch;
    function Get_CustomDocumentProperties: IDispatch;
    function Get_Dirty: WordBool;
  public
    property DefaultInterface: IDocument read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLayout provides a Create and CreateRemote method to          
// create instances of the default interface ILayout exposed by              
// the CoClass Layout. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayout = class
    class function Create: ILayout;
    class function CreateRemote(const MachineName: string): ILayout;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLayout
// Help String      : Layout Class
// Default Interface: ILayout
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLayoutProperties= class;
{$ENDIF}
  TLayout = class(TOleServer)
  private
    FIntf: ILayout;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLayoutProperties;
    function GetServerProperties: TLayoutProperties;
{$ENDIF}
    function GetDefaultInterface: ILayout;
  protected
    procedure InitServerData; override;
    function Get_Language: Integer;
    function Get_NumChars: Integer;
    function Get_NumWords: Integer;
    function Get_NumFonts: Integer;
    function Get_Text: WideString;
    function Get_Words: IWords;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILayout);
    procedure Disconnect; override;
    property DefaultInterface: ILayout read GetDefaultInterface;
    property Language: Integer read Get_Language;
    property NumChars: Integer read Get_NumChars;
    property NumWords: Integer read Get_NumWords;
    property NumFonts: Integer read Get_NumFonts;
    property Text: WideString read Get_Text;
    property Words: IWords read Get_Words;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLayoutProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLayout
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLayoutProperties = class(TPersistent)
  private
    FServer:    TLayout;
    function    GetDefaultInterface: ILayout;
    constructor Create(AServer: TLayout);
  protected
    function Get_Language: Integer;
    function Get_NumChars: Integer;
    function Get_NumWords: Integer;
    function Get_NumFonts: Integer;
    function Get_Text: WideString;
    function Get_Words: IWords;
  public
    property DefaultInterface: ILayout read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoImage provides a Create and CreateRemote method to          
// create instances of the default interface IImage exposed by              
// the CoClass Image. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoImage = class
    class function Create: IImage;
    class function CreateRemote(const MachineName: string): IImage;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TImage
// Help String      : Image Class
// Default Interface: IImage
// Def. Intf. DISP? : No
// Event   Interface: _IImageEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TImageProperties= class;
{$ENDIF}
  TImage = class(TOleServer)
  private
    FIntf: IImage;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TImageProperties;
    function GetServerProperties: TImageProperties;
{$ENDIF}
    function GetDefaultInterface: IImage;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Layout: ILayout;
    function Get_PixelWidth: Integer;
    function Get_PixelHeight: Integer;
    function Get_XDPI: Integer;
    function Get_YDPI: Integer;
    function Get_BitsPerPixel: Integer;
    function Get_Thumbnail(ThumbSize: MiTHUMBNAIL_SIZE): IPictureDisp;
    function Get_Picture: IPictureDisp;
    function Get_Compression: MiCOMP_TYPE;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IImage);
    procedure Disconnect; override;
    procedure OCR(LangId: MiLANGUAGES; OCROrientImage: WordBool; OCRStraightenImage: WordBool);
    procedure Rotate(Angle: Integer);
    property DefaultInterface: IImage read GetDefaultInterface;
    property Layout: ILayout read Get_Layout;
    property PixelWidth: Integer read Get_PixelWidth;
    property PixelHeight: Integer read Get_PixelHeight;
    property XDPI: Integer read Get_XDPI;
    property YDPI: Integer read Get_YDPI;
    property BitsPerPixel: Integer read Get_BitsPerPixel;
    property Thumbnail[ThumbSize: MiTHUMBNAIL_SIZE]: IPictureDisp read Get_Thumbnail;
    property Picture: IPictureDisp read Get_Picture;
    property Compression: MiCOMP_TYPE read Get_Compression;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TImageProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TImage
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TImageProperties = class(TPersistent)
  private
    FServer:    TImage;
    function    GetDefaultInterface: IImage;
    constructor Create(AServer: TImage);
  protected
    function Get_Layout: ILayout;
    function Get_PixelWidth: Integer;
    function Get_PixelHeight: Integer;
    function Get_XDPI: Integer;
    function Get_YDPI: Integer;
    function Get_BitsPerPixel: Integer;
    function Get_Thumbnail(ThumbSize: MiTHUMBNAIL_SIZE): IPictureDisp;
    function Get_Picture: IPictureDisp;
    function Get_Compression: MiCOMP_TYPE;
  public
    property DefaultInterface: IImage read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWord provides a Create and CreateRemote method to          
// create instances of the default interface IWord exposed by              
// the CoClass Word. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWord = class
    class function Create: IWord;
    class function CreateRemote(const MachineName: string): IWord;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWord
// Help String      : Word Class
// Default Interface: IWord
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWordProperties= class;
{$ENDIF}
  TWord = class(TOleServer)
  private
    FIntf: IWord;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWordProperties;
    function GetServerProperties: TWordProperties;
{$ENDIF}
    function GetDefaultInterface: IWord;
  protected
    procedure InitServerData; override;
    function Get_RecognitionConfidence: Smallint;
    function Get_FontId: Integer;
    function Get_LineId: Integer;
    function Get_RegionId: Integer;
    function Get_Text: WideString;
    function Get_Font: IMiFont;
    function Get_Id: Integer;
    function Get_Rects: IMiRects;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWord);
    procedure Disconnect; override;
    property DefaultInterface: IWord read GetDefaultInterface;
    property RecognitionConfidence: Smallint read Get_RecognitionConfidence;
    property FontId: Integer read Get_FontId;
    property LineId: Integer read Get_LineId;
    property RegionId: Integer read Get_RegionId;
    property Text: WideString read Get_Text;
    property Font: IMiFont read Get_Font;
    property Id: Integer read Get_Id;
    property Rects: IMiRects read Get_Rects;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWordProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWord
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWordProperties = class(TPersistent)
  private
    FServer:    TWord;
    function    GetDefaultInterface: IWord;
    constructor Create(AServer: TWord);
  protected
    function Get_RecognitionConfidence: Smallint;
    function Get_FontId: Integer;
    function Get_LineId: Integer;
    function Get_RegionId: Integer;
    function Get_Text: WideString;
    function Get_Font: IMiFont;
    function Get_Id: Integer;
    function Get_Rects: IMiRects;
  public
    property DefaultInterface: IWord read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMiFont provides a Create and CreateRemote method to          
// create instances of the default interface IMiFont exposed by              
// the CoClass MiFont. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMiFont = class
    class function Create: IMiFont;
    class function CreateRemote(const MachineName: string): IMiFont;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMiFont
// Help String      : MiFont Class
// Default Interface: IMiFont
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMiFontProperties= class;
{$ENDIF}
  TMiFont = class(TOleServer)
  private
    FIntf: IMiFont;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TMiFontProperties;
    function GetServerProperties: TMiFontProperties;
{$ENDIF}
    function GetDefaultInterface: IMiFont;
  protected
    procedure InitServerData; override;
    function Get_Family: MiFONT_FAMILY;
    function Get_FaceStyle: MiFONT_FACE_STYLE;
    function Get_SerifStyle: MiFONT_SERIF_STYLE;
    function Get_FontSize: Smallint;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMiFont);
    procedure Disconnect; override;
    property DefaultInterface: IMiFont read GetDefaultInterface;
    property Family: MiFONT_FAMILY read Get_Family;
    property FaceStyle: MiFONT_FACE_STYLE read Get_FaceStyle;
    property SerifStyle: MiFONT_SERIF_STYLE read Get_SerifStyle;
    property FontSize: Smallint read Get_FontSize;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMiFontProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMiFont
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMiFontProperties = class(TPersistent)
  private
    FServer:    TMiFont;
    function    GetDefaultInterface: IMiFont;
    constructor Create(AServer: TMiFont);
  protected
    function Get_Family: MiFONT_FAMILY;
    function Get_FaceStyle: MiFONT_FACE_STYLE;
    function Get_SerifStyle: MiFONT_SERIF_STYLE;
    function Get_FontSize: Smallint;
  public
    property DefaultInterface: IMiFont read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWords provides a Create and CreateRemote method to          
// create instances of the default interface IWords exposed by              
// the CoClass Words. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWords = class
    class function Create: IWords;
    class function CreateRemote(const MachineName: string): IWords;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWords
// Help String      : Words Class
// Default Interface: IWords
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWordsProperties= class;
{$ENDIF}
  TWords = class(TOleServer)
  private
    FIntf: IWords;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWordsProperties;
    function GetServerProperties: TWordsProperties;
{$ENDIF}
    function GetDefaultInterface: IWords;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
    function Get_Item(Index: Integer): IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWords);
    procedure Disconnect; override;
    property DefaultInterface: IWords read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IDispatch read Get_Item; default;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWordsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWords
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWordsProperties = class(TPersistent)
  private
    FServer:    TWords;
    function    GetDefaultInterface: IWords;
    constructor Create(AServer: TWords);
  protected
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
    function Get_Item(Index: Integer): IDispatch;
  public
    property DefaultInterface: IWords read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoImages provides a Create and CreateRemote method to          
// create instances of the default interface IImages exposed by              
// the CoClass Images. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoImages = class
    class function Create: IImages;
    class function CreateRemote(const MachineName: string): IImages;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TImages
// Help String      : Images Class
// Default Interface: IImages
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TImagesProperties= class;
{$ENDIF}
  TImages = class(TOleServer)
  private
    FIntf: IImages;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TImagesProperties;
    function GetServerProperties: TImagesProperties;
{$ENDIF}
    function GetDefaultInterface: IImages;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
    function Get_Item(Index: Integer): IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IImages);
    procedure Disconnect; override;
    procedure Add(const Page: IDispatch; const BeforePage: IDispatch);
    procedure Remove(const Page: IDispatch);
    property DefaultInterface: IImages read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IDispatch read Get_Item; default;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TImagesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TImages
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TImagesProperties = class(TPersistent)
  private
    FServer:    TImages;
    function    GetDefaultInterface: IImages;
    constructor Create(AServer: TImages);
  protected
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
    function Get_Item(Index: Integer): IDispatch;
  public
    property DefaultInterface: IImages read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMiRect provides a Create and CreateRemote method to          
// create instances of the default interface IMiRect exposed by              
// the CoClass MiRect. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMiRect = class
    class function Create: IMiRect;
    class function CreateRemote(const MachineName: string): IMiRect;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMiRect
// Help String      : MiRect Class
// Default Interface: IMiRect
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMiRectProperties= class;
{$ENDIF}
  TMiRect = class(TOleServer)
  private
    FIntf: IMiRect;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TMiRectProperties;
    function GetServerProperties: TMiRectProperties;
{$ENDIF}
    function GetDefaultInterface: IMiRect;
  protected
    procedure InitServerData; override;
    function Get_Top: Integer;
    function Get_Left: Integer;
    function Get_Right: Integer;
    function Get_Bottom: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMiRect);
    procedure Disconnect; override;
    property DefaultInterface: IMiRect read GetDefaultInterface;
    property Top: Integer read Get_Top;
    property Left: Integer read Get_Left;
    property Right: Integer read Get_Right;
    property Bottom: Integer read Get_Bottom;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMiRectProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMiRect
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMiRectProperties = class(TPersistent)
  private
    FServer:    TMiRect;
    function    GetDefaultInterface: IMiRect;
    constructor Create(AServer: TMiRect);
  protected
    function Get_Top: Integer;
    function Get_Left: Integer;
    function Get_Right: Integer;
    function Get_Bottom: Integer;
  public
    property DefaultInterface: IMiRect read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMiRects provides a Create and CreateRemote method to          
// create instances of the default interface IMiRects exposed by              
// the CoClass MiRects. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMiRects = class
    class function Create: IMiRects;
    class function CreateRemote(const MachineName: string): IMiRects;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMiRects
// Help String      : MiRects Class
// Default Interface: IMiRects
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMiRectsProperties= class;
{$ENDIF}
  TMiRects = class(TOleServer)
  private
    FIntf: IMiRects;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TMiRectsProperties;
    function GetServerProperties: TMiRectsProperties;
{$ENDIF}
    function GetDefaultInterface: IMiRects;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
    function Get_Item(Index: Integer): IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMiRects);
    procedure Disconnect; override;
    property DefaultInterface: IMiRects read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Item[Index: Integer]: IDispatch read Get_Item; default;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMiRectsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMiRects
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMiRectsProperties = class(TPersistent)
  private
    FServer:    TMiRects;
    function    GetDefaultInterface: IMiRects;
    constructor Create(AServer: TMiRects);
  protected
    function Get_Count: Integer;
    function Get__NewEnum: IUnknown;
    function Get_Item(Index: Integer): IDispatch;
  public
    property DefaultInterface: IMiRects read GetDefaultInterface;
  published
  end;
{$ENDIF}



// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TMiDocView
// Help String      : 
// Default Interface: IMiDocView
// Def. Intf. DISP? : No
// Event   Interface: _IMiDocViewEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TMiDocView = class(TOleControl)
  private
    FOnFitmodeChanged: TNotifyEvent;
    FOnScaleChanged: TNotifyEvent;
    FOnSelectionChanged: TNotifyEvent;
    FOnPageChanged: TNotifyEvent;
    FOnPageCountChanged: TNotifyEvent;
    FOnCurPageNumChanged: TNotifyEvent;
    FOnVisibleRectChanged: TNotifyEvent;
    FIntf: IMiDocView;
    function  GetControlInterface: IMiDocView;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_Document: IUnknown;
    procedure Set_Document(const pVal: IUnknown);
    function Get_TextSelection: IMiSelectableItem;
    procedure Set_TextSelection(const pVal: IMiSelectableItem);
    function Get_ImageSelection: IMiSelectableImage;
    procedure Set_ImageSelection(const pVal: IMiSelectableImage);
    procedure Set_LayerVisible(Index: MiVIEWLAYER; pfVisible: WordBool);
    function Get_LayerVisible(Index: MiVIEWLAYER): WordBool;
  public
    procedure ClientToDocument(var plX: Integer; var plY: Integer);
    procedure DocumentToClient(var plX: Integer; var plY: Integer);
    procedure ClientToImage(lSX: Integer; lSY: Integer; out pnPage: Integer; out plX: Integer; 
                            out plY: Integer);
    procedure ImageToClient(nPage: Integer; lX: Integer; lY: Integer; out plSX: Integer; 
                            out plSY: Integer);
    procedure GetVisibleRect(out Left: Integer; out Top: Integer; out Right: Integer; 
                             out Bottom: Integer);
    procedure MoveRectIntoView(Left: Integer; Top: Integer; Right: Integer; Bottom: Integer);
    procedure GetScale(var pdScaleX: Double; var pdScaleY: Double);
    procedure SetScale(dScaleX: Double; dScaleY: Double);
    procedure SelectAll(nPage: Integer);
    procedure MoveSelectionToView(const pdispSelection: IDispatch);
    property  ControlInterface: IMiDocView read GetControlInterface;
    property  DefaultInterface: IMiDocView read GetControlInterface;
    property Document: IUnknown index 1 read GetIUnknownProp write SetIUnknownProp;
    property NumPages: Integer index 4 read GetIntegerProp;
    property LayerVisible[Index: MiVIEWLAYER]: WordBool read Get_LayerVisible write Set_LayerVisible;
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
    property FileName: WideString index 2 read GetWideStringProp write SetWideStringProp stored False;
    property DocViewMode: TOleEnum index 23 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property PageNum: Integer index 3 read GetIntegerProp write SetIntegerProp stored False;
    property FitMode: TOleEnum index 10 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property ActionState: TOleEnum index 11 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property TextSelection: IMiSelectableItem read Get_TextSelection write Set_TextSelection stored False;
    property ImageSelection: IMiSelectableImage read Get_ImageSelection write Set_ImageSelection stored False;
    property OnFitmodeChanged: TNotifyEvent read FOnFitmodeChanged write FOnFitmodeChanged;
    property OnScaleChanged: TNotifyEvent read FOnScaleChanged write FOnScaleChanged;
    property OnSelectionChanged: TNotifyEvent read FOnSelectionChanged write FOnSelectionChanged;
    property OnPageChanged: TNotifyEvent read FOnPageChanged write FOnPageChanged;
    property OnPageCountChanged: TNotifyEvent read FOnPageCountChanged write FOnPageCountChanged;
    property OnCurPageNumChanged: TNotifyEvent read FOnCurPageNumChanged write FOnCurPageNumChanged;
    property OnVisibleRectChanged: TNotifyEvent read FOnVisibleRectChanged write FOnVisibleRectChanged;
  end;

// *********************************************************************//
// The Class CoMiDocSearch provides a Create and CreateRemote method to          
// create instances of the default interface IMiDocSearch exposed by              
// the CoClass MiDocSearch. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMiDocSearch = class
    class function Create: IMiDocSearch;
    class function CreateRemote(const MachineName: string): IMiDocSearch;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMiDocSearch
// Help String      : 
// Default Interface: IMiDocSearch
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMiDocSearchProperties= class;
{$ENDIF}
  TMiDocSearch = class(TOleServer)
  private
    FIntf: IMiDocSearch;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TMiDocSearchProperties;
    function GetServerProperties: TMiDocSearchProperties;
{$ENDIF}
    function GetDefaultInterface: IMiDocSearch;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMiDocSearch);
    procedure Disconnect; override;
    procedure Initialize(const piDoc: IUnknown; const strPattern: WideString; 
                         var PageNum: OleVariant; var WordIndex: OleVariant; 
                         var StartAfterIndex: OleVariant; var Backward: OleVariant; 
                         MatchMinus: WordBool; MatchFullHalfWidthForm: WordBool; 
                         MatchHiraganaKatakana: WordBool; IgnoreSpace: WordBool);
    procedure Search(const pSearchCallback: IMiSearchCallback; 
                     var ppiSearchResult: IMiSelectableItem);
    property DefaultInterface: IMiDocSearch read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMiDocSearchProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMiDocSearch
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMiDocSearchProperties = class(TPersistent)
  private
    FServer:    TMiDocSearch;
    function    GetDefaultInterface: IMiDocSearch;
    constructor Create(AServer: TMiDocSearch);
  protected
  public
    property DefaultInterface: IMiDocSearch read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMiSelectRect provides a Create and CreateRemote method to          
// create instances of the default interface IMiSelectRect exposed by              
// the CoClass MiSelectRect. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMiSelectRect = class
    class function Create: IMiSelectRect;
    class function CreateRemote(const MachineName: string): IMiSelectRect;
  end;

// *********************************************************************//
// The Class CoMiSelectRects provides a Create and CreateRemote method to          
// create instances of the default interface IMiSelectRects exposed by              
// the CoClass MiSelectRects. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMiSelectRects = class
    class function Create: IMiSelectRects;
    class function CreateRemote(const MachineName: string): IMiSelectRects;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoDocument.Create: IDocument;
begin
  Result := CreateComObject(CLASS_Document) as IDocument;
end;

class function CoDocument.CreateRemote(const MachineName: string): IDocument;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Document) as IDocument;
end;

procedure TDocument.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{40942A6C-1520-4132-BDF8-BDC1F71F547B}';
    IntfIID:   '{D4073843-A58A-469A-A8E2-CFF3FF77EE4E}';
    EventIID:  '{0CF31963-5E4D-4772-AE8D-82FE5A082B26}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDocument.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IDocument;
  end;
end;

procedure TDocument.ConnectTo(svrIntf: IDocument);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TDocument.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TDocument.GetDefaultInterface: IDocument;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDocument.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDocumentProperties.Create(Self);
{$ENDIF}
end;

destructor TDocument.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDocument.GetServerProperties: TDocumentProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TDocument.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1: if Assigned(FOnOCRProgress) then
         FOnOCRProgress(Self,
                        Params[0] {SYSINT},
                        WordBool((TVarData(Params[1]).VPointer)^) {var WordBool});
  end; {case DispID}
end;

function TDocument.Get_Images: IImages;
begin
    Result := DefaultInterface.Images;
end;

function TDocument.Get_BuiltInDocumentProperties: IDispatch;
begin
    Result := DefaultInterface.BuiltInDocumentProperties;
end;

function TDocument.Get_CustomDocumentProperties: IDispatch;
begin
    Result := DefaultInterface.CustomDocumentProperties;
end;

function TDocument.Get_Dirty: WordBool;
begin
    Result := DefaultInterface.Dirty;
end;

procedure TDocument.Save;
begin
  DefaultInterface.Save;
end;

procedure TDocument.Close(SaveChanges: WordBool);
begin
  DefaultInterface.Close(SaveChanges);
end;

procedure TDocument.SaveAs(const FileName: WideString; FileFormat: MiFILE_FORMAT; 
                           CompLevel: MiCOMP_LEVEL);
begin
  DefaultInterface.SaveAs(FileName, FileFormat, CompLevel);
end;

procedure TDocument.Create1(const FileOpen: WideString);
begin
  DefaultInterface.Create(FileOpen);
end;

procedure TDocument.OCR(LangId: MiLANGUAGES; OCROrientImage: WordBool; OCRStraightenImage: WordBool);
begin
  DefaultInterface.OCR(LangId, OCROrientImage, OCRStraightenImage);
end;

procedure TDocument.PrintOut(From: Integer; To_: Integer; Copies: Integer; 
                             const PrinterName: WideString; const PrintToFileName: WideString; 
                             PrintAnnotation: WordBool; FitMode: MiPRINT_FITMODES);
begin
  DefaultInterface.PrintOut(From, To_, Copies, PrinterName, PrintToFileName, PrintAnnotation, 
                            FitMode);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDocumentProperties.Create(AServer: TDocument);
begin
  inherited Create;
  FServer := AServer;
end;

function TDocumentProperties.GetDefaultInterface: IDocument;
begin
  Result := FServer.DefaultInterface;
end;

function TDocumentProperties.Get_Images: IImages;
begin
    Result := DefaultInterface.Images;
end;

function TDocumentProperties.Get_BuiltInDocumentProperties: IDispatch;
begin
    Result := DefaultInterface.BuiltInDocumentProperties;
end;

function TDocumentProperties.Get_CustomDocumentProperties: IDispatch;
begin
    Result := DefaultInterface.CustomDocumentProperties;
end;

function TDocumentProperties.Get_Dirty: WordBool;
begin
    Result := DefaultInterface.Dirty;
end;

{$ENDIF}

class function CoLayout.Create: ILayout;
begin
  Result := CreateComObject(CLASS_Layout) as ILayout;
end;

class function CoLayout.CreateRemote(const MachineName: string): ILayout;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Layout) as ILayout;
end;

procedure TLayout.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1AFC4117-128E-4314-9D53-64CBDA5C7E02}';
    IntfIID:   '{C300C846-A3FD-4A5B-AD65-4A6AB46B7821}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLayout.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILayout;
  end;
end;

procedure TLayout.ConnectTo(svrIntf: ILayout);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLayout.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLayout.GetDefaultInterface: ILayout;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TLayout.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLayoutProperties.Create(Self);
{$ENDIF}
end;

destructor TLayout.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLayout.GetServerProperties: TLayoutProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLayout.Get_Language: Integer;
begin
    Result := DefaultInterface.Language;
end;

function TLayout.Get_NumChars: Integer;
begin
    Result := DefaultInterface.NumChars;
end;

function TLayout.Get_NumWords: Integer;
begin
    Result := DefaultInterface.NumWords;
end;

function TLayout.Get_NumFonts: Integer;
begin
    Result := DefaultInterface.NumFonts;
end;

function TLayout.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

function TLayout.Get_Words: IWords;
begin
    Result := DefaultInterface.Words;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLayoutProperties.Create(AServer: TLayout);
begin
  inherited Create;
  FServer := AServer;
end;

function TLayoutProperties.GetDefaultInterface: ILayout;
begin
  Result := FServer.DefaultInterface;
end;

function TLayoutProperties.Get_Language: Integer;
begin
    Result := DefaultInterface.Language;
end;

function TLayoutProperties.Get_NumChars: Integer;
begin
    Result := DefaultInterface.NumChars;
end;

function TLayoutProperties.Get_NumWords: Integer;
begin
    Result := DefaultInterface.NumWords;
end;

function TLayoutProperties.Get_NumFonts: Integer;
begin
    Result := DefaultInterface.NumFonts;
end;

function TLayoutProperties.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

function TLayoutProperties.Get_Words: IWords;
begin
    Result := DefaultInterface.Words;
end;

{$ENDIF}

class function CoImage.Create: IImage;
begin
  Result := CreateComObject(CLASS_Image) as IImage;
end;

class function CoImage.CreateRemote(const MachineName: string): IImage;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Image) as IImage;
end;

procedure TImage.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{56F963EC-6EFC-4A6B-9A1E-5BFE545C89D0}';
    IntfIID:   '{AC0D48A6-886D-4EB5-A8A1-093D60B9A84A}';
    EventIID:  '{99F3A122-448F-4D36-8243-48BFE32D50B2}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TImage.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IImage;
  end;
end;

procedure TImage.ConnectTo(svrIntf: IImage);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TImage.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TImage.GetDefaultInterface: IImage;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TImage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TImageProperties.Create(Self);
{$ENDIF}
end;

destructor TImage.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TImage.GetServerProperties: TImageProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TImage.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
  end; {case DispID}
end;

function TImage.Get_Layout: ILayout;
begin
    Result := DefaultInterface.Layout;
end;

function TImage.Get_PixelWidth: Integer;
begin
    Result := DefaultInterface.PixelWidth;
end;

function TImage.Get_PixelHeight: Integer;
begin
    Result := DefaultInterface.PixelHeight;
end;

function TImage.Get_XDPI: Integer;
begin
    Result := DefaultInterface.XDPI;
end;

function TImage.Get_YDPI: Integer;
begin
    Result := DefaultInterface.YDPI;
end;

function TImage.Get_BitsPerPixel: Integer;
begin
    Result := DefaultInterface.BitsPerPixel;
end;

function TImage.Get_Thumbnail(ThumbSize: MiTHUMBNAIL_SIZE): IPictureDisp;
begin
    Result := DefaultInterface.Thumbnail[ThumbSize];
end;

function TImage.Get_Picture: IPictureDisp;
begin
    Result := DefaultInterface.Picture;
end;

function TImage.Get_Compression: MiCOMP_TYPE;
begin
    Result := DefaultInterface.Compression;
end;

procedure TImage.OCR(LangId: MiLANGUAGES; OCROrientImage: WordBool; OCRStraightenImage: WordBool);
begin
  DefaultInterface.OCR(LangId, OCROrientImage, OCRStraightenImage);
end;

procedure TImage.Rotate(Angle: Integer);
begin
  DefaultInterface.Rotate(Angle);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TImageProperties.Create(AServer: TImage);
begin
  inherited Create;
  FServer := AServer;
end;

function TImageProperties.GetDefaultInterface: IImage;
begin
  Result := FServer.DefaultInterface;
end;

function TImageProperties.Get_Layout: ILayout;
begin
    Result := DefaultInterface.Layout;
end;

function TImageProperties.Get_PixelWidth: Integer;
begin
    Result := DefaultInterface.PixelWidth;
end;

function TImageProperties.Get_PixelHeight: Integer;
begin
    Result := DefaultInterface.PixelHeight;
end;

function TImageProperties.Get_XDPI: Integer;
begin
    Result := DefaultInterface.XDPI;
end;

function TImageProperties.Get_YDPI: Integer;
begin
    Result := DefaultInterface.YDPI;
end;

function TImageProperties.Get_BitsPerPixel: Integer;
begin
    Result := DefaultInterface.BitsPerPixel;
end;

function TImageProperties.Get_Thumbnail(ThumbSize: MiTHUMBNAIL_SIZE): IPictureDisp;
begin
    Result := DefaultInterface.Thumbnail[ThumbSize];
end;

function TImageProperties.Get_Picture: IPictureDisp;
begin
    Result := DefaultInterface.Picture;
end;

function TImageProperties.Get_Compression: MiCOMP_TYPE;
begin
    Result := DefaultInterface.Compression;
end;

{$ENDIF}

class function CoWord.Create: IWord;
begin
  Result := CreateComObject(CLASS_Word) as IWord;
end;

class function CoWord.CreateRemote(const MachineName: string): IWord;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Word) as IWord;
end;

procedure TWord.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5995E30F-59EB-42AE-BDCF-8908271C0B32}';
    IntfIID:   '{5612275B-B4F1-42AF-B696-360D40DF041D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWord.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWord;
  end;
end;

procedure TWord.ConnectTo(svrIntf: IWord);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWord.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWord.GetDefaultInterface: IWord;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TWord.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWordProperties.Create(Self);
{$ENDIF}
end;

destructor TWord.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWord.GetServerProperties: TWordProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWord.Get_RecognitionConfidence: Smallint;
begin
    Result := DefaultInterface.RecognitionConfidence;
end;

function TWord.Get_FontId: Integer;
begin
    Result := DefaultInterface.FontId;
end;

function TWord.Get_LineId: Integer;
begin
    Result := DefaultInterface.LineId;
end;

function TWord.Get_RegionId: Integer;
begin
    Result := DefaultInterface.RegionId;
end;

function TWord.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

function TWord.Get_Font: IMiFont;
begin
    Result := DefaultInterface.Font;
end;

function TWord.Get_Id: Integer;
begin
    Result := DefaultInterface.Id;
end;

function TWord.Get_Rects: IMiRects;
begin
    Result := DefaultInterface.Rects;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWordProperties.Create(AServer: TWord);
begin
  inherited Create;
  FServer := AServer;
end;

function TWordProperties.GetDefaultInterface: IWord;
begin
  Result := FServer.DefaultInterface;
end;

function TWordProperties.Get_RecognitionConfidence: Smallint;
begin
    Result := DefaultInterface.RecognitionConfidence;
end;

function TWordProperties.Get_FontId: Integer;
begin
    Result := DefaultInterface.FontId;
end;

function TWordProperties.Get_LineId: Integer;
begin
    Result := DefaultInterface.LineId;
end;

function TWordProperties.Get_RegionId: Integer;
begin
    Result := DefaultInterface.RegionId;
end;

function TWordProperties.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

function TWordProperties.Get_Font: IMiFont;
begin
    Result := DefaultInterface.Font;
end;

function TWordProperties.Get_Id: Integer;
begin
    Result := DefaultInterface.Id;
end;

function TWordProperties.Get_Rects: IMiRects;
begin
    Result := DefaultInterface.Rects;
end;

{$ENDIF}

class function CoMiFont.Create: IMiFont;
begin
  Result := CreateComObject(CLASS_MiFont) as IMiFont;
end;

class function CoMiFont.CreateRemote(const MachineName: string): IMiFont;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MiFont) as IMiFont;
end;

procedure TMiFont.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C5EAE79B-ACCC-4E51-8ED5-A16F42FB7B1F}';
    IntfIID:   '{1FFC9A7B-7606-4C97-8119-78673E9D4821}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMiFont.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMiFont;
  end;
end;

procedure TMiFont.ConnectTo(svrIntf: IMiFont);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMiFont.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMiFont.GetDefaultInterface: IMiFont;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMiFont.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMiFontProperties.Create(Self);
{$ENDIF}
end;

destructor TMiFont.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMiFont.GetServerProperties: TMiFontProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMiFont.Get_Family: MiFONT_FAMILY;
begin
    Result := DefaultInterface.Family;
end;

function TMiFont.Get_FaceStyle: MiFONT_FACE_STYLE;
begin
    Result := DefaultInterface.FaceStyle;
end;

function TMiFont.Get_SerifStyle: MiFONT_SERIF_STYLE;
begin
    Result := DefaultInterface.SerifStyle;
end;

function TMiFont.Get_FontSize: Smallint;
begin
    Result := DefaultInterface.FontSize;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMiFontProperties.Create(AServer: TMiFont);
begin
  inherited Create;
  FServer := AServer;
end;

function TMiFontProperties.GetDefaultInterface: IMiFont;
begin
  Result := FServer.DefaultInterface;
end;

function TMiFontProperties.Get_Family: MiFONT_FAMILY;
begin
    Result := DefaultInterface.Family;
end;

function TMiFontProperties.Get_FaceStyle: MiFONT_FACE_STYLE;
begin
    Result := DefaultInterface.FaceStyle;
end;

function TMiFontProperties.Get_SerifStyle: MiFONT_SERIF_STYLE;
begin
    Result := DefaultInterface.SerifStyle;
end;

function TMiFontProperties.Get_FontSize: Smallint;
begin
    Result := DefaultInterface.FontSize;
end;

{$ENDIF}

class function CoWords.Create: IWords;
begin
  Result := CreateComObject(CLASS_Words) as IWords;
end;

class function CoWords.CreateRemote(const MachineName: string): IWords;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Words) as IWords;
end;

procedure TWords.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{72ACBCE3-9067-4D5E-9539-3497FECD032D}';
    IntfIID:   '{D8363824-4B07-423B-8803-49B470434F3D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWords.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWords;
  end;
end;

procedure TWords.ConnectTo(svrIntf: IWords);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWords.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWords.GetDefaultInterface: IWords;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TWords.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWordsProperties.Create(Self);
{$ENDIF}
end;

destructor TWords.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWords.GetServerProperties: TWordsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWords.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TWords.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

function TWords.Get_Item(Index: Integer): IDispatch;
begin
    Result := DefaultInterface.Item[Index];
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWordsProperties.Create(AServer: TWords);
begin
  inherited Create;
  FServer := AServer;
end;

function TWordsProperties.GetDefaultInterface: IWords;
begin
  Result := FServer.DefaultInterface;
end;

function TWordsProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TWordsProperties.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

function TWordsProperties.Get_Item(Index: Integer): IDispatch;
begin
    Result := DefaultInterface.Item[Index];
end;

{$ENDIF}

class function CoImages.Create: IImages;
begin
  Result := CreateComObject(CLASS_Images) as IImages;
end;

class function CoImages.CreateRemote(const MachineName: string): IImages;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Images) as IImages;
end;

procedure TImages.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F961D185-2CC1-43DB-80AB-567FA10251EC}';
    IntfIID:   '{77096557-54CA-45C8-81C9-E70C2ABAA0FB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TImages.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IImages;
  end;
end;

procedure TImages.ConnectTo(svrIntf: IImages);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TImages.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TImages.GetDefaultInterface: IImages;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TImages.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TImagesProperties.Create(Self);
{$ENDIF}
end;

destructor TImages.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TImages.GetServerProperties: TImagesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TImages.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TImages.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

function TImages.Get_Item(Index: Integer): IDispatch;
begin
    Result := DefaultInterface.Item[Index];
end;

procedure TImages.Add(const Page: IDispatch; const BeforePage: IDispatch);
begin
  DefaultInterface.Add(Page, BeforePage);
end;

procedure TImages.Remove(const Page: IDispatch);
begin
  DefaultInterface.Remove(Page);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TImagesProperties.Create(AServer: TImages);
begin
  inherited Create;
  FServer := AServer;
end;

function TImagesProperties.GetDefaultInterface: IImages;
begin
  Result := FServer.DefaultInterface;
end;

function TImagesProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TImagesProperties.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

function TImagesProperties.Get_Item(Index: Integer): IDispatch;
begin
    Result := DefaultInterface.Item[Index];
end;

{$ENDIF}

class function CoMiRect.Create: IMiRect;
begin
  Result := CreateComObject(CLASS_MiRect) as IMiRect;
end;

class function CoMiRect.CreateRemote(const MachineName: string): IMiRect;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MiRect) as IMiRect;
end;

procedure TMiRect.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{00607E44-15DF-49BC-AF0C-A9023E060791}';
    IntfIID:   '{87D6FB47-7CFA-4DB3-82CD-E8DCC5BDA7AB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMiRect.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMiRect;
  end;
end;

procedure TMiRect.ConnectTo(svrIntf: IMiRect);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMiRect.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMiRect.GetDefaultInterface: IMiRect;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMiRect.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMiRectProperties.Create(Self);
{$ENDIF}
end;

destructor TMiRect.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMiRect.GetServerProperties: TMiRectProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMiRect.Get_Top: Integer;
begin
    Result := DefaultInterface.Top;
end;

function TMiRect.Get_Left: Integer;
begin
    Result := DefaultInterface.Left;
end;

function TMiRect.Get_Right: Integer;
begin
    Result := DefaultInterface.Right;
end;

function TMiRect.Get_Bottom: Integer;
begin
    Result := DefaultInterface.Bottom;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMiRectProperties.Create(AServer: TMiRect);
begin
  inherited Create;
  FServer := AServer;
end;

function TMiRectProperties.GetDefaultInterface: IMiRect;
begin
  Result := FServer.DefaultInterface;
end;

function TMiRectProperties.Get_Top: Integer;
begin
    Result := DefaultInterface.Top;
end;

function TMiRectProperties.Get_Left: Integer;
begin
    Result := DefaultInterface.Left;
end;

function TMiRectProperties.Get_Right: Integer;
begin
    Result := DefaultInterface.Right;
end;

function TMiRectProperties.Get_Bottom: Integer;
begin
    Result := DefaultInterface.Bottom;
end;

{$ENDIF}

class function CoMiRects.Create: IMiRects;
begin
  Result := CreateComObject(CLASS_MiRects) as IMiRects;
end;

class function CoMiRects.CreateRemote(const MachineName: string): IMiRects;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MiRects) as IMiRects;
end;

procedure TMiRects.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{CB2FBD52-56C1-4DD8-897F-961D1543B877}';
    IntfIID:   '{895C88A9-8598-44CC-91C4-8010AE2475EB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMiRects.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMiRects;
  end;
end;

procedure TMiRects.ConnectTo(svrIntf: IMiRects);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMiRects.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMiRects.GetDefaultInterface: IMiRects;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMiRects.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMiRectsProperties.Create(Self);
{$ENDIF}
end;

destructor TMiRects.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMiRects.GetServerProperties: TMiRectsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMiRects.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TMiRects.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

function TMiRects.Get_Item(Index: Integer): IDispatch;
begin
    Result := DefaultInterface.Item[Index];
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMiRectsProperties.Create(AServer: TMiRects);
begin
  inherited Create;
  FServer := AServer;
end;

function TMiRectsProperties.GetDefaultInterface: IMiRects;
begin
  Result := FServer.DefaultInterface;
end;

function TMiRectsProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TMiRectsProperties.Get__NewEnum: IUnknown;
begin
    Result := DefaultInterface._NewEnum;
end;

function TMiRectsProperties.Get_Item(Index: Integer): IDispatch;
begin
    Result := DefaultInterface.Item[Index];
end;

{$ENDIF}

procedure TMiDocView.InitControlData;
const
  CEventDispIDs: array [0..6] of DWORD = (
    $00000001, $00000002, $00000003, $00000004, $00000005, $00000006,
    $00000007);
  CControlData: TControlData2 = (
    ClassID: '{EF347A62-BA21-42E4-94A0-1C0A6D7FDFE7}';
    EventIID: '{9028B775-EC59-4118-862A-EFDEAF5955A4}';
    EventCount: 7;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil (*HR:$80004002*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnFitmodeChanged) - Cardinal(Self);
end;

procedure TMiDocView.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IMiDocView;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TMiDocView.GetControlInterface: IMiDocView;
begin
  CreateControl;
  Result := FIntf;
end;

function TMiDocView.Get_Document: IUnknown;
begin
    Result := DefaultInterface.Document;
end;

procedure TMiDocView.Set_Document(const pVal: IUnknown);
begin
  DefaultInterface.Set_Document(pVal);
end;

function TMiDocView.Get_TextSelection: IMiSelectableItem;
begin
    Result := DefaultInterface.TextSelection;
end;

procedure TMiDocView.Set_TextSelection(const pVal: IMiSelectableItem);
begin
  DefaultInterface.Set_TextSelection(pVal);
end;

function TMiDocView.Get_ImageSelection: IMiSelectableImage;
begin
    Result := DefaultInterface.ImageSelection;
end;

procedure TMiDocView.Set_ImageSelection(const pVal: IMiSelectableImage);
begin
  DefaultInterface.Set_ImageSelection(pVal);
end;

procedure TMiDocView.Set_LayerVisible(Index: MiVIEWLAYER; pfVisible: WordBool);
begin
  DefaultInterface.LayerVisible[Index] := pfVisible;
end;

function TMiDocView.Get_LayerVisible(Index: MiVIEWLAYER): WordBool;
begin
    Result := DefaultInterface.LayerVisible[Index];
end;

procedure TMiDocView.ClientToDocument(var plX: Integer; var plY: Integer);
begin
  DefaultInterface.ClientToDocument(plX, plY);
end;

procedure TMiDocView.DocumentToClient(var plX: Integer; var plY: Integer);
begin
  DefaultInterface.DocumentToClient(plX, plY);
end;

procedure TMiDocView.ClientToImage(lSX: Integer; lSY: Integer; out pnPage: Integer; 
                                   out plX: Integer; out plY: Integer);
begin
  DefaultInterface.ClientToImage(lSX, lSY, pnPage, plX, plY);
end;

procedure TMiDocView.ImageToClient(nPage: Integer; lX: Integer; lY: Integer; out plSX: Integer; 
                                   out plSY: Integer);
begin
  DefaultInterface.ImageToClient(nPage, lX, lY, plSX, plSY);
end;

procedure TMiDocView.GetVisibleRect(out Left: Integer; out Top: Integer; out Right: Integer; 
                                    out Bottom: Integer);
begin
  DefaultInterface.GetVisibleRect(Left, Top, Right, Bottom);
end;

procedure TMiDocView.MoveRectIntoView(Left: Integer; Top: Integer; Right: Integer; Bottom: Integer);
begin
  DefaultInterface.MoveRectIntoView(Left, Top, Right, Bottom);
end;

procedure TMiDocView.GetScale(var pdScaleX: Double; var pdScaleY: Double);
begin
  DefaultInterface.GetScale(pdScaleX, pdScaleY);
end;

procedure TMiDocView.SetScale(dScaleX: Double; dScaleY: Double);
begin
  DefaultInterface.SetScale(dScaleX, dScaleY);
end;

procedure TMiDocView.SelectAll(nPage: Integer);
begin
  DefaultInterface.SelectAll(nPage);
end;

procedure TMiDocView.MoveSelectionToView(const pdispSelection: IDispatch);
begin
  DefaultInterface.MoveSelectionToView(pdispSelection);
end;

class function CoMiDocSearch.Create: IMiDocSearch;
begin
  Result := CreateComObject(CLASS_MiDocSearch) as IMiDocSearch;
end;

class function CoMiDocSearch.CreateRemote(const MachineName: string): IMiDocSearch;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MiDocSearch) as IMiDocSearch;
end;

procedure TMiDocSearch.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FA554DB9-C806-46A9-AEF8-B5AF891A94F9}';
    IntfIID:   '{BC06ED64-A40C-4FB4-A660-AC6DBC752292}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMiDocSearch.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMiDocSearch;
  end;
end;

procedure TMiDocSearch.ConnectTo(svrIntf: IMiDocSearch);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMiDocSearch.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMiDocSearch.GetDefaultInterface: IMiDocSearch;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMiDocSearch.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMiDocSearchProperties.Create(Self);
{$ENDIF}
end;

destructor TMiDocSearch.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMiDocSearch.GetServerProperties: TMiDocSearchProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TMiDocSearch.Initialize(const piDoc: IUnknown; const strPattern: WideString; 
                                  var PageNum: OleVariant; var WordIndex: OleVariant; 
                                  var StartAfterIndex: OleVariant; var Backward: OleVariant; 
                                  MatchMinus: WordBool; MatchFullHalfWidthForm: WordBool; 
                                  MatchHiraganaKatakana: WordBool; IgnoreSpace: WordBool);
begin
  DefaultInterface.Initialize(piDoc, strPattern, PageNum, WordIndex, StartAfterIndex, Backward, 
                              MatchMinus, MatchFullHalfWidthForm, MatchHiraganaKatakana, IgnoreSpace);
end;

procedure TMiDocSearch.Search(const pSearchCallback: IMiSearchCallback; 
                              var ppiSearchResult: IMiSelectableItem);
begin
  DefaultInterface.Search(pSearchCallback, ppiSearchResult);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMiDocSearchProperties.Create(AServer: TMiDocSearch);
begin
  inherited Create;
  FServer := AServer;
end;

function TMiDocSearchProperties.GetDefaultInterface: IMiDocSearch;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoMiSelectRect.Create: IMiSelectRect;
begin
  Result := CreateComObject(CLASS_MiSelectRect) as IMiSelectRect;
end;

class function CoMiSelectRect.CreateRemote(const MachineName: string): IMiSelectRect;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MiSelectRect) as IMiSelectRect;
end;

class function CoMiSelectRects.Create: IMiSelectRects;
begin
  Result := CreateComObject(CLASS_MiSelectRects) as IMiSelectRects;
end;

class function CoMiSelectRects.CreateRemote(const MachineName: string): IMiSelectRects;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MiSelectRects) as IMiSelectRects;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TMiDocView]);
  RegisterComponents(dtlServerPage, [TDocument, TLayout, TImage, TWord, 
    TMiFont, TWords, TImages, TMiRect, TMiRects, 
    TMiDocSearch]);
end;

end.
