object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1047#1084#1077#1085#1072' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
  ClientHeight = 630
  ClientWidth = 873
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
    Left = 80
    Top = 72
    Width = 161
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
  end
  object Edit1: TEdit
    Left = 280
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 144
    Top = 112
    Width = 131
    Height = 25
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1089#1089#1080#1074
    TabOrder = 1
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 72
    Top = 143
    Width = 320
    Height = 120
    ColCount = 100
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 2
    Visible = False
  end
  object StringGrid2: TStringGrid
    Left = 72
    Top = 327
    Width = 320
    Height = 120
    ColCount = 100
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 3
    Visible = False
  end
  object Button2: TButton
    Left = 168
    Top = 280
    Width = 91
    Height = 25
    Caption = #1053#1086#1074#1099#1081' '#1084#1072#1089#1089#1080#1074
    TabOrder = 4
    OnClick = Button2Click
  end
end
