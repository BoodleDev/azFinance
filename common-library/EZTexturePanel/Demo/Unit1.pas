unit Unit1;

interface

uses
  Windows, Classes, StdCtrls, SysUtils, Forms, EZTexturePanel,
  Controls, ExtCtrls,  Graphics, ComCtrls, TabNotBk, FileCtrl, Spin, Grids,
  TypInfo, EZProperty;

type
  TEZTexturePanelForm = class(TForm)
    TabbedNotebook_Demo: TTabbedNotebook;
    EZTexturePanel_Other: TEZTexturePanel;
    Bevel14_Other: TBevel;
    Bevel10_Other: TBevel;
    Bevel11_Other: TBevel;
    Label45_Other: TLabel;
    Label46_Other: TLabel;
    Label47_Other: TLabel;
    Label48_Other: TLabel;
    Label49_Other: TLabel;
    Label50_Other: TLabel;
    Label51_Other: TLabel;
    Bevel12_Other: TBevel;
    Label52_Other: TLabel;
    Label53_Other: TLabel;
    Label54_Other: TLabel;
    Label55_Other: TLabel;
    Shape4_Other: TShape;
    Label56_Other: TLabel;
    Label57_Other: TLabel;
    Label58_Other: TLabel;
    Label60_Other: TLabel;
    Bevel15_Other: TBevel;
    Shape6_Other: TShape;
    Label61_Other: TLabel;
    Label62_Other: TLabel;
    Label_Other_Shade1: TLabel;
    Label_Other_Shade3: TLabel;
    EZTexturePanel_Other_Scal1: TEZTexturePanel;
    EZTexturePanel_Other_Scal2: TEZTexturePanel;
    EZTexturePanel_Other_Smooth1: TEZTexturePanel;
    EZTexturePanel_Other_Smooth2: TEZTexturePanel;
    EZTexturePanel_Other_Height1: TEZTexturePanel;
    Button1: TButton;
    EZTexturePanel_Other_Height2: TEZTexturePanel;
    Button2: TButton;
    EZTexturePanel_Other_Angle2: TEZTexturePanel;
    Button3: TButton;
    EZTexturePanel_Other_Angle1: TEZTexturePanel;
    Button4: TButton;
    EZTexturePanel_Other_Diff2: TEZTexturePanel;
    Button5: TButton;
    EZTexturePanel_Other_Diff1: TEZTexturePanel;
    Button6: TButton;
    EZTexturePanel_Other_Grad1: TEZTexturePanel;
    EZTexturePanel_Other_Grad2: TEZTexturePanel;
    EZTexturePanel_Other_Size1: TEZTexturePanel;
    EZTexturePanel_Other_Size2: TEZTexturePanel;
    EZTexturePanel_Other_Move1: TEZTexturePanel;
    EZTexturePanel_Other_Move2: TEZTexturePanel;
    EZTexturePanel_Other_Show1: TEZTexturePanel;
    Button7: TButton;
    EZTexturePanel_Other_Show2: TEZTexturePanel;
    Button8: TButton;
    EZTexturePanel_Other_Alpha1: TEZTexturePanel;
    EZTexturePanel_Other_Alpha2: TEZTexturePanel;
    EZTexturePanel_Other_ACol1: TEZTexturePanel;
    EZTexturePanel_Other_ACol2: TEZTexturePanel;
    EZTexturePanel_Other_Col2: TEZTexturePanel;
    Button10: TButton;
    EZTexturePanel_Other_Col1: TEZTexturePanel;
    Button11: TButton;
    EZTexturePanel_Other_Shape1: TEZTexturePanel;
    EZTexturePanel_Other_Shape2: TEZTexturePanel;
    EZTexturePanel_Shade: TEZTexturePanel;
    Bevel1_Shade: TBevel;
    Bevel2_Shade: TBevel;
    Bevel3_Shade: TBevel;
    Label2_Shade_LabelW: TLabel;
    Label3_Shade_Label: TLabel;
    Shape3_Shade_Shape: TShape;
    Label4_Shade: TLabel;
    Label5_Shade: TLabel;
    Label6_Shade: TLabel;
    Label7_Shade: TLabel;
    Label8_Shade: TLabel;
    Label14_Shade: TLabel;
    Label15_Shade: TLabel;
    Label16_Shade: TLabel;
    Label17_Shade: TLabel;
    Label18_Shade: TLabel;
    Label24_Shade: TLabel;
    Label26_Shade: TLabel;
    Label27_Shade: TLabel;
    Label29_Shade: TLabel;
    Label31_Shade: TLabel;
    Shape5_Shade_ShapeE: TShape;
    Label41_Shade: TLabel;
    Label43_Shade: TLabel;
    EZTexturePanel_Shade_Shape: TEZTexturePanel;
    EZTexturePanel_Shade_TexW: TEZTexturePanel;
    Button9_Shade_Button: TButton;
    EZTexturePanel_TexGrad: TEZTexturePanel;
    Bevel7_TexGrad: TBevel;
    Bevel8_TexGrad: TBevel;
    Label33_TexGrad: TLabel;
    Label34_TexGrad: TLabel;
    Label35_TexGrad: TLabel;
    Label36_TexGrad: TLabel;
    Label37_TexGrad: TLabel;
    Label38_TexGrad: TLabel;
    Label39_TexGrad: TLabel;
    Bevel9_TexGrad: TBevel;
    Label40_TexGrad: TLabel;
    Shape7_TexGrad: TShape;
    EZTexturePanel_TexGrad_None: TEZTexturePanel;
    EZTexturePanel_TexGrad_Grad: TEZTexturePanel;
    EZTexturePanel_TexGrad_Center: TEZTexturePanel;
    EZTexturePanel_TexGrad_Strech: TEZTexturePanel;
    EZTexturePanel_TexGrad_Tile: TEZTexturePanel;
    EZTexturePanel_TexGrad_Blend: TEZTexturePanel;
    EZTexturePanel_About: TEZTexturePanel;
    Memo_About: TMemo;
    EZTexturePanel_Prop: TEZTexturePanel;
    ThisPanel: TEZTexturePanel;
    Button12: TButton;
    Label59_TexGrad: TLabel;
    EZTexturePanel_TexGrad_TB: TEZTexturePanel;
    EZTexturePanel_TexGrad_LR: TEZTexturePanel;
    EZTexturePanel_TexGrad_Circ: TEZTexturePanel;
    EZTexturePanel_TexGrad_Hor: TEZTexturePanel;
    EZTexturePanel_TexGrad_Square: TEZTexturePanel;
    EZTexturePanel_TexGrad_Vert: TEZTexturePanel;
    Label30_TexGrad: TLabel;
    Label23_TexGrad: TLabel;
    Label22_TexGrad: TLabel;
    Label21_TexGrad: TLabel;
    Label20_TexGrad: TLabel;
    Label19_TexGrad: TLabel;
    Label32_TexGrad: TLabel;
    Shape8_TexGrad: TShape;
    Bevel4_TexGrad: TBevel;
    Bevel5_TexGrad: TBevel;
    Bevel6_TexGrad: TBevel;
    Label44_Prop: TLabel;
    EZProperty1: TEZProperty;
    Label3_WordW: TLabel;
    Label1_Shade: TLabel;
    Label2_Shade: TLabel;
    EZTexturePanel_Shade_ShapeS: TEZTexturePanel;
    Image_CompImage: TImage;
    Label_CompName: TLabel;
    Label_Include: TLabel;
    procedure EZTexturePanel34MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure EZProperty1Change(Sender, SelectedObject: TObject; ComponentName, PropertyName, PropertyType: String; Kind: TTypeKind);
  private
  public
    { Public declarations }
  end;

var
  EZTexturePanelForm: TEZTexturePanelForm;

implementation

{$R *.DFM}
procedure TEZTexturePanelForm.EZTexturePanel34MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 EZTexturePanel_Other_Alpha2.UpdateTexture;
 EZTexturePanel_Other_ACol2.UpdateTexture;
end;

procedure TEZTexturePanelForm.FormShow(Sender: TObject);
begin
  EZProperty1.Update;
end;

procedure TEZTexturePanelForm.EZProperty1Change(Sender, SelectedObject: TObject; ComponentName, PropertyName, PropertyType: String; Kind: TTypeKind);
begin
  ThisPanel.UpdateTexture;
  EZTexturePanel_Prop.UpdateTexture;
end;

end.
