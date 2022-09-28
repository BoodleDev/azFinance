object frmOptions: TfrmOptions
  Left = 297
  Top = 313
  Width = 594
  Height = 341
  Caption = 'Options'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    586
    307)
  PixelsPerInch = 96
  TextHeight = 13
  object TreeView1: TTreeView
    Left = 8
    Top = 8
    Width = 185
    Height = 235
    Anchors = [akLeft, akTop, akBottom]
    Indent = 19
    TabOrder = 0
    Items.Data = {
      01000000240000000000000000000000FFFFFFFFFFFFFFFF0000000001000000
      0B456E7669726F6E6D656E74290000000000000000000000FFFFFFFFFFFFFFFF
      000000000000000010466F6E747320616E6420436F6C6F7273}
  end
  object Button1: TButton
    Left = 498
    Top = 266
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object Button2: TButton
    Left = 418
    Top = 266
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object PageControl1: TPageControl
    Left = 200
    Top = 8
    Width = 381
    Height = 254
    ActivePage = tsFonts
    Anchors = [akLeft, akTop, akRight, akBottom]
    MultiLine = True
    TabOrder = 3
    TabPosition = tpBottom
    object tsFonts: TTabSheet
      Caption = 'tsFonts'
      DesignSize = (
        373
        228)
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 361
        Height = 105
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Grid'
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 78
          Height = 13
          Caption = 'Odd Row Colour'
        end
        object Label2: TLabel
          Left = 16
          Top = 54
          Width = 83
          Height = 13
          Caption = 'Even Row Colour'
        end
        object ColorBox2: TColorBox
          Left = 112
          Top = 49
          Width = 121
          Height = 22
          Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbPrettyNames]
          ItemHeight = 16
          TabOrder = 0
        end
        object Button3: TButton
          Left = 256
          Top = 18
          Width = 75
          Height = 25
          Caption = 'Custom'
          TabOrder = 1
        end
        object Button4: TButton
          Left = 256
          Top = 48
          Width = 75
          Height = 25
          Caption = 'Custom'
          TabOrder = 2
        end
        object ComboBox1: TComboBox
          Left = 112
          Top = 20
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 3
          Text = 'ComboBox1'
        end
      end
    end
  end
end
