object frmLoanAgree: TfrmLoanAgree
  Left = 278
  Top = 220
  Width = 601
  Height = 420
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Loan Agreement'
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object rdtLoanAgree: TRichEdit
    Left = 0
    Top = 52
    Width = 593
    Height = 315
    Align = alClient
    BorderStyle = bsNone
    Lines.Strings = (
      '')
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Ruler: TPanel
    Left = 0
    Top = 26
    Width = 593
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = 'asdf'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnResize = RulerResize
    object FirstInd: TLabel
      Left = 2
      Top = 2
      Width = 10
      Height = 9
      AutoSize = False
      Caption = 'ê'
      DragCursor = crArrow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Wingdings'
      Font.Style = []
      ParentFont = False
      OnMouseDown = RulerItemMouseDown
      OnMouseMove = RulerItemMouseMove
      OnMouseUp = FirstIndMouseUp
    end
    object LeftInd: TLabel
      Left = 2
      Top = 12
      Width = 10
      Height = 11
      AutoSize = False
      Caption = 'é'
      DragCursor = crArrow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Wingdings'
      Font.Style = []
      ParentFont = False
      OnMouseDown = RulerItemMouseDown
      OnMouseMove = RulerItemMouseMove
      OnMouseUp = LeftIndMouseUp
    end
    object RulerLine: TBevel
      Left = 4
      Top = 12
      Width = 579
      Height = 2
      Shape = bsTopLine
    end
    object RightInd: TLabel
      Left = 575
      Top = 14
      Width = 9
      Height = 12
      Caption = 'ñ'
      DragCursor = crArrow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Wingdings'
      Font.Style = []
      ParentFont = False
      OnMouseDown = RulerItemMouseDown
      OnMouseMove = RulerItemMouseMove
      OnMouseUp = RightIndMouseUp
    end
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 593
      Height = 2
      Align = alTop
      Shape = bsTopLine
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 367
    Width = 593
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 593
    Height = 26
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 22
        Width = 589
      end>
    Color = clBtnFace
    ParentColor = False
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 118
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 59
      Caption = 'ToolBar1'
      EdgeBorders = []
      Flat = True
      Images = dtmMain.imglstMain
      List = True
      ShowCaptions = True
      TabOrder = 0
      object btnClose: TToolButton
        Left = 0
        Top = 0
        Caption = '&Close'
        ImageIndex = 2
        OnClick = btnCloseClick
      end
      object btnPrint: TToolButton
        Left = 59
        Top = 0
        Caption = '&Print'
        ImageIndex = 1
        OnClick = btnPrintClick
      end
    end
  end
  object dlgPrint: TPrintDialog
    Left = 152
    Top = 96
  end
end
