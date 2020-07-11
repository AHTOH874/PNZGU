object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1052#1072#1090#1088#1080#1094#1072
  ClientHeight = 528
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 79
    Top = 51
    Width = 155
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' c'#1090#1086#1083#1073#1094#1086#1074
  end
  object Label2: TLabel
    Left = 97
    Top = 91
    Width = 137
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1086#1082
  end
  object Label3: TLabel
    Left = 226
    Top = 320
    Width = 60
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object Label4: TLabel
    Left = 226
    Top = 360
    Width = 73
    Height = 13
    Caption = #1055#1088#1086#1080#1079#1074#1077#1076#1077#1085#1080#1077
  end
  object Edit1: TEdit
    Left = 240
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 240
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 168
    Top = 128
    Width = 131
    Height = 25
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1089#1089#1080#1074
    TabOrder = 2
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 79
    Top = 176
    Width = 320
    Height = 120
    ColCount = 100
    FixedCols = 0
    RowCount = 100
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 3
    Visible = False
  end
  object Button2: TButton
    Left = 79
    Top = 336
    Width = 75
    Height = 25
    Caption = #1054#1087#1077#1088#1076#1077#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 312
    Top = 317
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit4: TEdit
    Left = 312
    Top = 357
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Button3: TButton
    Left = 79
    Top = 400
    Width = 75
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 200
    Top = 400
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 8
    OnClick = Button4Click
  end
end
