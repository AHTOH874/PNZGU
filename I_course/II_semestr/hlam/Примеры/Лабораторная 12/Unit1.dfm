object Form1: TForm1
  Left = 235
  Top = 153
  Width = 361
  Height = 360
  Caption = #1055#1088#1077#1076#1087#1086#1089#1083#1077#1076#1085#1103#1103'... '#1046#1076#1105#1090#1077' 13?)))'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TabbedNotebook1: TTabbedNotebook
    Left = 0
    Top = 0
    Width = 345
    Height = 321
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clLime
    TabFont.Height = -11
    TabFont.Name = 'MS Sans Serif'
    TabFont.Style = []
    TabOrder = 0
    OnChange = TabbedNotebook1Change
    object TTabPage
      Left = 4
      Top = 24
      Caption = '1 '#1089#1090#1088#1072#1085#1080#1094#1072
      object BitBtn1: TBitBtn
        Left = 8
        Top = 216
        Width = 75
        Height = 25
        Hint = #1054#1090#1082#1088#1099#1074#1072#1077#1090' OpenDialog'
        Caption = #1054#1090#1082#1088#1099#1090#1100
        TabOrder = 0
        OnClick = BitBtn1Click
        Kind = bkIgnore
      end
      object Memo1: TMemo
        Left = 8
        Top = 48
        Width = 305
        Height = 161
        Hint = 'Memo '#1076#1083#1103' '#1074#1099#1074#1086#1076#1072' '#1090#1077#1082#1089#1090#1072
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = '2 '#1089#1090#1088#1072#1085#1080#1094#1072
      object Gauge1: TGauge
        Left = 32
        Top = 184
        Width = 265
        Height = 25
        Hint = '"'#1047#1072#1075#1088#1091#1079#1082#1072'"'
        Progress = 0
      end
      object ColorGrid1: TColorGrid
        Left = 128
        Top = 64
        Width = 100
        Height = 100
        Hint = #1048#1079#1084#1077#1085#1103#1077#1084' '#1094#1074#1077#1090' '#1089#1086#1089#1090#1086#1103#1085#1080#1103' '#1079#1072#1075#1088#1091#1079#1082#1080
        TabOrder = 0
        OnChange = ColorGrid1Change
      end
      object BitBtn2: TBitBtn
        Left = 32
        Top = 224
        Width = 75
        Height = 25
        Hint = #1047#1072#1087#1091#1089#1082#1072#1077#1084' '#1089#1077#1082#1091#1085#1076#1086#1084#1077#1088
        Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 128
        Top = 224
        Width = 75
        Height = 25
        Hint = #1054#1089#1090#1072#1085#1072#1074#1083#1080#1074#1072#1077#1084' '#1087#1088#1086#1094#1077#1089#1089' "'#1079#1072#1075#1088#1091#1079#1082#1080'"'
        Caption = #1054#1089#1090#1072#1085#1086#1074#1080#1090#1100
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 224
        Top = 224
        Width = 75
        Height = 25
        Hint = #1054#1089#1090#1072#1085#1072#1074#1083#1080#1074#1072#1077#1084' '#1080' '#1086#1073#1085#1091#1083#1103#1077#1084' '#1079#1072#1075#1088#1091#1079#1082#1091
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 3
        OnClick = BitBtn4Click
      end
    end
  end
  object Button1: TButton
    Left = 104
    Top = 288
    Width = 129
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100
    Caption = #1047#1072#1082#1088#1099#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
    TabOrder = 1
    OnClick = Button1Click
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.txt|*.txt'
    Left = 92
    Top = 40
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 244
    Top = 40
  end
end
