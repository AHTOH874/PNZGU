object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 531
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 118
    Width = 78
    Height = 20
    Caption = #1054#1087#1077#1088#1072#1085#1076' 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 200
    Top = 118
    Width = 72
    Height = 20
    Caption = #1054#1087#1077#1088#1072#1090#1086#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 366
    Top = 118
    Width = 78
    Height = 20
    Caption = #1054#1087#1077#1088#1072#1085#1076' 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 152
    Top = 181
    Width = 38
    Height = 13
    Caption = '1 '#1095#1080#1089#1083#1086
  end
  object Label5: TLabel
    Left = 275
    Top = 181
    Width = 38
    Height = 13
    Caption = '2 '#1095#1080#1089#1083#1086
  end
  object Label6: TLabel
    Left = 371
    Top = 181
    Width = 38
    Height = 13
    Caption = '3 '#1095#1080#1089#1083#1086
  end
  object Label7: TLabel
    Left = 550
    Top = 118
    Width = 166
    Height = 20
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 491
    Top = 181
    Width = 101
    Height = 13
    Caption = #1042#1099#1074#1086#1076' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074
  end
  object Edit1: TEdit
    Left = 32
    Top = 144
    Width = 129
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 200
    Top = 144
    Width = 129
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 366
    Top = 144
    Width = 129
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 539
    Top = 144
    Width = 225
    Height = 21
    TabOrder = 3
    OnClick = Edit4Click
  end
  object Button1: TButton
    Left = 32
    Top = 360
    Width = 129
    Height = 41
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 360
    Width = 137
    Height = 41
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 339
    Top = 360
    Width = 105
    Height = 41
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object Edit5: TEdit
    Left = 152
    Top = 200
    Width = 73
    Height = 21
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 264
    Top = 200
    Width = 73
    Height = 21
    TabOrder = 8
  end
  object Edit7: TEdit
    Left = 371
    Top = 200
    Width = 73
    Height = 21
    TabOrder = 9
  end
  object Memo1: TMemo
    Left = 464
    Top = 200
    Width = 217
    Height = 193
    TabOrder = 10
  end
  object RadioGroup1: TRadioGroup
    Left = 56
    Top = 240
    Width = 185
    Height = 105
    Caption = #1042#1099#1095#1080#1089#1083#1077#1085#1080#1077
    Items.Strings = (
      #1082#1074#1072#1076#1088#1072#1090#1085#1086#1075#1086' '#1082#1086#1088#1085#1103' '#1095#1080#1089#1083#1072' A'
      #1082#1074#1072#1076#1088#1072#1090#1072' '#1095#1080#1089#1083#1072' b'
      #1082#1091#1073#1072' '#1095#1080#1089#1083#1072' '#1089)
    TabOrder = 11
    OnClick = RadioGroup1Click
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 192
    object N1: TMenuItem
      Caption = #1042#1099#1095#1080#1089#1083#1077#1085#1080#1103
      object N2: TMenuItem
        Caption = #1057#1088#1077#1076#1085#1077#1077' '#1072#1088#1080#1092#1084#1080#1090#1080#1095#1077#1089#1082#1086#1077
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1057#1088#1077#1076#1085#1077#1077' '#1075#1077#1086#1084#1077#1090#1088#1080#1095#1077#1089#1082#1086#1077
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1055#1088#1086#1080#1079#1076#1074#1077#1076#1077#1085#1080#1077' '#1095#1080#1089#1077#1083
        OnClick = N4Click
      end
    end
  end
end
