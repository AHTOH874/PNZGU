object Form1: TForm1
  Left = 374
  Top = 287
  Width = 477
  Height = 296
  Caption = #1057#1042#1045#1056#1064#1048#1051#1054#1057#1068'!!! 13 '#1051#1040#1041#1059#1064#1050#1040' '#1059#1046#1045' '#1047#1044#1045#1057#1068' '#1048' '#1055#1056#1054#1057#1048#1058' '#1040#1042#1058#1054#1052#1040#1058#1040' :D'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 80
    Top = 24
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 20
    OnTimer = Timer2Timer
    Left = 152
    Top = 24
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 20
    OnTimer = Timer3Timer
    Left = 216
    Top = 24
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 20
    OnTimer = Timer4Timer
    Left = 288
    Top = 24
  end
end
