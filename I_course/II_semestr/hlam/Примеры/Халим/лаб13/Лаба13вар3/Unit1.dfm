object Form1: TForm1
  Left = 192
  Top = 125
  Width = 145
  Height = 196
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 0
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object DrawGrid1: TDrawGrid
    Left = 24
    Top = 16
    Width = 81
    Height = 81
    ColCount = 3
    DefaultColWidth = 24
    DefaultDrawing = False
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    TabOrder = 0
    OnMouseDown = DrawGrid1MouseDown
  end
  object Button1: TButton
    Left = 24
    Top = 96
    Width = 75
    Height = 25
    Caption = #1047#1072#1085#1086#1074#1086
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 128
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 2
    OnClick = Button2Click
  end
end
