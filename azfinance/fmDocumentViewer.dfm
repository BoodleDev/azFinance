object frmDocumentViewer: TfrmDocumentViewer
  Left = 379
  Top = 172
  Width = 809
  Height = 504
  Caption = 'Document'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object clbNavigate: TCoolBar
    Left = 0
    Top = 0
    Width = 801
    Height = 26
    AutoSize = True
    Bands = <
      item
        Control = tlbPreview
        ImageIndex = -1
        MinHeight = 22
        Width = 797
      end>
    object tlbPreview: TToolBar
      Left = 9
      Top = 0
      Width = 784
      Height = 22
      AutoSize = True
      ButtonWidth = 74
      Caption = 'tlbPreview'
      EdgeBorders = []
      Flat = True
      Images = dtmMain.imglstMain
      List = True
      ShowCaptions = True
      TabOrder = 0
      object btnPrint: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = 'Print'
        ImageIndex = 1
        OnClick = btnPrintClick
      end
      object btnZoom: TToolButton
        Left = 52
        Top = 0
        AutoSize = True
        Caption = 'Zoom'
        ImageIndex = 14
        OnClick = btnZoomClick
      end
      object btnZoomIn: TToolButton
        Left = 110
        Top = 0
        AutoSize = True
        Caption = 'Zoom In'
        ImageIndex = 48
        OnClick = btnZoomInClick
      end
      object btnZoomOut: TToolButton
        Left = 180
        Top = 0
        AutoSize = True
        Caption = 'Zoom Out'
        ImageIndex = 47
        OnClick = btnZoomInClick
      end
    end
  end
  object imnMulti: TImageEnMView
    Left = 0
    Top = 26
    Width = 205
    Height = 444
    ParentCtl3D = False
    ThumbWidth = 170
    ThumbHeight = 170
    OnImageSelect = imnMultiImageSelect
    GridWidth = 1
    SelectionWidth = 3
    SelectionColor = clNavy
    Style = iemsFlat
    EnableMultiSelect = True
    MultiSelectionOptions = [iemoSelectOnMouseUp]
    ThumbnailsBorderColor = clBlack
    ImageEnVersion = '3.0.0'
    Align = alLeft
    TabOrder = 1
  end
  object ImageEnVect1: TImageEnVect
    Left = 205
    Top = 26
    Width = 596
    Height = 444
    ParentCtl3D = False
    ImageEnVersion = '3.0.0'
    EnableInteractionHints = True
    Align = alClient
    TabOrder = 2
  end
  object ppmZoom: TPopupMenu
    Left = 277
    Top = 117
    object FittoPage1: TMenuItem
      Caption = 'Fit to Page'
      OnClick = FittoPage1Click
    end
    object PageWidth1: TMenuItem
      Caption = 'Page Width'
      OnClick = PageWidth1Click
    end
    object PageHeight1: TMenuItem
      Caption = 'Page Height'
      OnClick = PageHeight1Click
    end
    object N251: TMenuItem
      Tag = 25
      Caption = '25%'
      OnClick = N5001Click
    end
    object N501: TMenuItem
      Tag = 50
      Caption = '50%'
      OnClick = N5001Click
    end
    object N751: TMenuItem
      Tag = 75
      Caption = '75%'
      OnClick = N5001Click
    end
    object N1001: TMenuItem
      Tag = 100
      Caption = '100%'
      OnClick = N5001Click
    end
    object N1501: TMenuItem
      Tag = 150
      Caption = '150%'
      OnClick = N5001Click
    end
    object N2001: TMenuItem
      Tag = 200
      Caption = '200%'
      OnClick = N5001Click
    end
    object N5001: TMenuItem
      Tag = 500
      Caption = '500%'
      OnClick = N5001Click
    end
  end
end
