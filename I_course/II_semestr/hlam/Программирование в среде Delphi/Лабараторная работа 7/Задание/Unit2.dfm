object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 416
  ClientWidth = 621
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 280
    Width = 9
    Height = 20
    Caption = #1061
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 208
    Top = 280
    Width = 10
    Height = 20
    Caption = 'Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 456
    Top = 24
    Width = 94
    Height = 13
    Caption = #1053#1072#1095#1072#1083#1086' '#1080#1085#1090#1077#1088#1074#1072#1083#1072
  end
  object Label4: TLabel
    Left = 456
    Top = 70
    Width = 88
    Height = 13
    Caption = #1050#1086#1085#1077#1094' '#1080#1085#1090#1077#1088#1074#1072#1083#1072
  end
  object Label5: TLabel
    Left = 456
    Top = 116
    Width = 78
    Height = 13
    Caption = #1064#1072#1075' '#1090#1072#1073#1091#1083#1103#1094#1080#1080
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 400
    Height = 250
    Foot.Frame.Visible = False
    Title.Frame.Visible = False
    Title.Text.Strings = (
      'TChart')
    BottomAxis.Title.Caption = #1040#1088#1075#1091#1084#1077#1085#1090' '#1061
    Chart3DPercent = 35
    LeftAxis.Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077' Y'
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Marks.Style = smsValue
      Title = #1069#1082#1089#1087#1077#1088#1077#1084#1077#1085#1090' A'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Marks.Style = smsValue
      Title = #1069#1082#1089#1087#1077#1088#1077#1084#1077#1085#1090' '#1041
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Edit1: TEdit
    Left = 71
    Top = 279
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 224
    Top = 279
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 440
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 440
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 440
    Top = 135
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 440
    Top = 176
    Width = 121
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1086#1074' '
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 440
    Top = 216
    Width = 121
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 459
    Top = 256
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 8
  end
  object Button3: TButton
    Left = 71
    Top = 306
    Width = 90
    Height = 25
    Caption = #1069#1082#1089#1087#1077#1088#1077#1084#1077#1085#1090' '#1040
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 224
    Top = 306
    Width = 90
    Height = 25
    Caption = #1069#1082#1089#1087#1077#1088#1077#1084#1077#1085#1090' '#1041
    TabOrder = 10
    OnClick = Button4Click
  end
end
