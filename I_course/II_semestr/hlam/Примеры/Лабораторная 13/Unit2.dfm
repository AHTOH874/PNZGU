object Form2: TForm2
  Left = 589
  Top = 359
  Width = 464
  Height = 403
  Caption = #1052#1077#1085#1102
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 56
    Top = 24
    Width = 94
    Height = 13
    Caption = #1048#1084#1103' '#1091#1095#1072#1089#1090#1085#1080#1082#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 56
    Top = 80
    Width = 89
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1089#1090#1072#1074#1082#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 200
    Top = 200
    Width = 76
    Height = 22
    Caption = #1058#1040#1041#1051#1054
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object BitBtn2: TBitBtn
    Left = 40
    Top = 144
    Width = 97
    Height = 25
    Caption = #1057#1076#1077#1083#1072#1090#1100' '#1089#1090#1072#1074#1082#1091
    TabOrder = 0
    OnClick = BitBtn2Click
  end
  object TBitBtn2: TBitBtn
    Left = 160
    Top = 144
    Width = 97
    Height = 25
    Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100
    TabOrder = 1
    OnClick = TBitBtn2Click
  end
  object btn3: TBitBtn
    Left = 280
    Top = 144
    Width = 97
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = btn3Click
  end
  object RadioGroup1: TRadioGroup
    Left = 192
    Top = 24
    Width = 185
    Height = 105
    Caption = #1053#1086#1084#1077#1088' '#1082#1086#1085#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      '1 '#1082#1086#1085#1100
      '2 '#1082#1086#1085#1100
      '3 '#1082#1086#1085#1100)
    ParentFont = False
    TabOrder = 3
  end
  object SpinEdit2: TSpinEdit
    Left = 40
    Top = 96
    Width = 121
    Height = 22
    MaxValue = 100000
    MinValue = 10
    TabOrder = 4
    Value = 10
  end
  object Edit1: TEdit
    Left = 40
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object StringGrid2: TStringGrid
    Left = 48
    Top = 224
    Width = 393
    Height = 137
    ColCount = 4
    TabOrder = 6
    Visible = False
  end
end
