object Form1: TForm1
  Left = 445
  Top = 316
  Width = 731
  Height = 552
  Caption = #1051#1072#1073' '#8470'13 '
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 496
    Top = 368
    Width = 98
    Height = 16
    Caption = #1058#1086#1083#1097#1080#1085#1072' '#1083#1080#1085#1080#1081':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 488
    Top = 16
    Width = 89
    Height = 13
    Caption = #1051#1050#1052' - '#1094#1074#1077#1090' '#1083#1080#1085#1080#1081
  end
  object lbl4: TLabel
    Left = 584
    Top = 16
    Width = 88
    Height = 13
    Caption = #1055#1050#1052' - '#1094#1074#1077#1090' '#1082#1080#1089#1090#1080
  end
  object pb1: TPaintBox
    Left = 8
    Top = 8
    Width = 457
    Height = 449
    OnMouseDown = pb1MouseDown
    OnMouseUp = pb1MouseUp
  end
  object clrgrd1: TColorGrid
    Left = 488
    Top = 40
    Width = 192
    Height = 144
    TabOrder = 4
  end
  object se1: TSpinEdit
    Left = 600
    Top = 368
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 0
  end
  object rg1: TRadioGroup
    Left = 488
    Top = 200
    Width = 193
    Height = 145
    Caption = #1057#1090#1080#1083#1100' '#1079#1072#1083#1080#1074#1082#1080
    Items.Strings = (
      #1057#1087#1083#1086#1096#1085#1072#1103
      #1064#1090#1088#1080#1093#1074#1086#1082#1072' '#1076#1080#1072#1075#1086#1085#1072#1083#1100#1085#1103
      #1042' '#1082#1083#1077#1090#1082#1091
      #1044#1080#1072#1075#1086#1085#1072#1083#1100#1085#1091#1102' '#1082#1083#1077#1090#1082#1091
      #1042' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1091#1102' '#1083#1080#1085#1080#1102
      #1042' '#1074#1077#1088#1090#1080#1082#1072#1083#1100#1085#1091#1102' '#1083#1080#1085#1080#1102)
    TabOrder = 0
  end
  object btn1: TButton
    Left = 616
    Top = 408
    Width = 65
    Height = 49
    Hint = #1042#1099#1081#1090#1080' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 552
    Top = 408
    Width = 65
    Height = 49
    Hint = #1057#1090#1077#1088#1077#1090#1100' '#1093#1086#1083#1089#1090
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 488
    Top = 408
    Width = 65
    Height = 49
    Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1073#1086#1088#1072#1078#1077#1085#1080#1077
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = btn3Click
  end
  object dlg1: TSavePictureDialog
    Left = 8
    Top = 464
  end
end
