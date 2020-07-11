object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 521
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 32
    Top = 64
    Width = 649
    Height = 369
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1042#1074#1086#1076' '#1088#1077#1082
      object StringGrid1: TStringGrid
        Left = 3
        Top = 40
        Width = 590
        Height = 249
        ColCount = 2
        RowCount = 10
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1043#1080#1089#1090#1086#1075#1088#1072#1084#1084#1072
      ImageIndex = 1
      object Chart1: TChart
        Left = 8
        Top = 8
        Width = 400
        Height = 250
        Foot.Frame.Visible = False
        Title.Frame.Visible = False
        Title.Text.Strings = (
          'TChart')
        Chart3DPercent = 35
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TBarSeries
          Marks.Visible = False
          Marks.Style = smsValue
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1056#1077#1081#1090#1080#1085#1075' '#1088#1077#1082
      ImageIndex = 2
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 191
        Height = 13
        Caption = #1056#1077#1082#1080', '#1076#1083#1080#1085#1072' '#1082#1086#1090#1086#1088#1099#1093' '#1073#1086#1083#1077#1077' 3 000 '#1082#1084'.'
      end
      object ListBox1: TListBox
        Left = 16
        Top = 43
        Width = 348
        Height = 97
        ItemHeight = 13
        TabOrder = 0
      end
    end
  end
  object Button1: TButton
    Left = 32
    Top = 448
    Width = 113
    Height = 25
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 151
    Top = 448
    Width = 130
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1075#1080#1089#1090#1086#1075#1088#1072#1084#1084#1091
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 287
    Top = 448
    Width = 113
    Height = 25
    Caption = #1055#1088#1086#1074#1077#1089#1090#1080' '#1072#1085#1072#1083#1080#1079
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 416
    Top = 448
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 4
    OnClick = Button4Click
  end
end
