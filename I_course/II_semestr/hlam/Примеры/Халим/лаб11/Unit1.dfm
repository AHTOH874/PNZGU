object Form1: TForm1
  Left = 786
  Top = 115
  Width = 495
  Height = 470
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 457
    Height = 353
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 376
    Width = 129
    Height = 25
    Caption = #1057#1083#1086#1074#1072
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 376
    Top = 376
    Width = 89
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object MainMenu1: TMainMenu
    Left = 144
    Top = 376
    object N1: TMenuItem
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1090#1077#1082#1089#1090#1086#1084
      object N2: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1042#1099#1088#1077#1079#1072#1090#1100
        OnClick = N4Click
      end
    end
  end
end
