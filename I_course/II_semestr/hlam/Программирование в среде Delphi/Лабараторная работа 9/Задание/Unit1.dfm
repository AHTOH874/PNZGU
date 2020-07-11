object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 529
  ClientWidth = 905
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
    Left = 64
    Top = 104
    Width = 713
    Height = 353
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1057#1090#1072#1090#1100#1080' '#1073#1102#1076#1078#1077#1090#1072
      object StringGrid1: TStringGrid
        Left = 20
        Top = 16
        Width = 325
        Height = 249
        ColCount = 2
        DefaultColWidth = 150
        RowCount = 100
        TabOrder = 0
        RowHeights = (
          24
          24
          27
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24)
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072' '#1089#1090#1072#1090#1081' '#1073#1102#1076#1078#1077#1090#1072
      ImageIndex = 1
      object Chart1: TChart
        Left = 48
        Top = 15
        Width = 400
        Height = 250
        Foot.Frame.Visible = False
        Title.Frame.Visible = False
        Title.Text.Strings = (
          'TChart')
        Chart3DPercent = 35
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TPieSeries
          Marks.Visible = False
          Marks.Style = smsValue
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1040#1085#1072#1083#1080#1079' '#1089#1090#1072#1090#1077#1081' '#1073#1102#1076#1078#1077#1090#1072
      ImageIndex = 2
      object Label1: TLabel
        Left = 80
        Top = 24
        Width = 222
        Height = 13
        Caption = #1058#1088#1080' '#1085#1072#1080#1084#1077#1085#1085#1077' '#1079#1072#1090#1088#1072#1085#1090#1085#1099#1077' '#1089#1090#1072#1090#1100#1080' '#1073#1102#1076#1078#1077#1090#1072
      end
      object Label2: TLabel
        Left = 80
        Top = 146
        Width = 222
        Height = 13
        Caption = #1058#1088#1080' '#1085#1072#1080#1073#1086#1083#1077#1077' '#1079#1072#1090#1088#1072#1085#1090#1085#1099#1077' '#1089#1090#1072#1090#1100#1080' '#1073#1102#1076#1078#1077#1090#1072
      end
      object ListBox1: TListBox
        Left = 80
        Top = 43
        Width = 417
        Height = 97
        ItemHeight = 13
        TabOrder = 0
      end
      object ListBox2: TListBox
        Left = 80
        Top = 165
        Width = 417
        Height = 97
        ItemHeight = 13
        TabOrder = 1
      end
    end
  end
  object Button1: TButton
    Left = 64
    Top = 463
    Width = 113
    Height = 25
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 463
    Width = 161
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1076#1080#1072#1075#1088#1072#1084#1084#1099
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 368
    Top = 463
    Width = 99
    Height = 25
    Caption = #1040#1085#1072#1083#1080#1079' '#1089#1090#1072#1090#1077#1081
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 480
    Top = 463
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 4
  end
end
