object Form1: TForm1
  Left = 360
  Top = 96
  Caption = #1051#1072#1073#1072#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' 10'
  ClientHeight = 502
  ClientWidth = 854
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 424
    Top = 24
    Width = 100
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1074#1072#1088#1072':'
  end
  object StringGrid1: TStringGrid
    Left = 72
    Top = 80
    Width = 705
    Height = 225
    ColCount = 6
    DefaultColWidth = 110
    DefaultRowHeight = 30
    TabOrder = 0
    ColWidths = (
      110
      110
      110
      110
      110
      110)
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 320
    Width = 121
    Height = 25
    Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1090#1072#1073#1083#1080#1094#1099
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object SpinEdit1: TSpinEdit
    Left = 416
    Top = 40
    Width = 121
    Height = 22
    MaxValue = 100
    MinValue = 1
    TabOrder = 2
    Value = 1
  end
  object BitBtn2: TBitBtn
    Left = 358
    Top = 351
    Width = 145
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 215
    Top = 320
    Width = 137
    Height = 25
    Caption = #1055#1086#1076#1089#1095#1105#1090' '#1086#1073#1098#1105#1084#1072' '#1087#1088#1086#1076#1072#1078
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 358
    Top = 320
    Width = 145
    Height = 25
    Caption = #1040#1085#1072#1083#1080#1079' '#1087#1088#1086#1076#1072#1078
    TabOrder = 5
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 88
    Top = 351
    Width = 121
    Height = 25
    Caption = #1055#1086#1080#1089#1082' '#1090#1086#1074#1072#1088#1072
    TabOrder = 6
    OnClick = BitBtn5Click
  end
  object Memo1: TMemo
    Left = 528
    Top = 322
    Width = 201
    Height = 167
    TabOrder = 7
  end
  object BitBtn6: TBitBtn
    Left = 215
    Top = 351
    Width = 137
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 8
    OnClick = BitBtn6Click
  end
end
