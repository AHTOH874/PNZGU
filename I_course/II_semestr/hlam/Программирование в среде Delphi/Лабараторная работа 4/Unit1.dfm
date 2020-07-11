object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 445
  ClientWidth = 556
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
    Left = 64
    Top = 32
    Width = 153
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1088#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100' '#1084#1072#1089#1089#1080#1074#1072
  end
  object Label2: TLabel
    Left = 8
    Top = 224
    Width = 205
    Height = 13
    Caption = #1057#1082#1086#1083#1100#1082#1086' '#1101#1083#1077#1084#1077#1085#1090#1086#1074' '#1074#1099' '#1093#1086#1090#1080#1090#1077' '#1079#1072#1084#1077#1085#1080#1090#1100
  end
  object Edit1: TEdit
    Left = 223
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 223
    Top = 221
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 168
    Top = 64
    Width = 137
    Height = 25
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1089#1089#1080#1074
    TabOrder = 2
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 64
    Top = 95
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
  object StringGrid2: TStringGrid
    Left = 64
    Top = 303
    Width = 320
    Height = 120
    ColCount = 100
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 4
    Visible = False
  end
  object Button2: TButton
    Left = 168
    Top = 264
    Width = 137
    Height = 25
    Caption = #1053#1086#1074#1099#1081' '#1084#1072#1089#1089#1080#1074
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 416
    Top = 336
    Width = 137
    Height = 44
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 473
    Top = 398
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 7
    OnClick = Button4Click
  end
end
