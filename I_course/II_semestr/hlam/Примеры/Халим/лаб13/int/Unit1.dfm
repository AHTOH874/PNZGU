object Form1: TForm1
  Left = 484
  Top = 208
  Width = 823
  Height = 664
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 4
    Width = 807
    Height = 601
    Align = alBottom
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 32
      Top = 488
      Width = 105
      Height = 33
      GroupIndex = 1
      Down = True
      Caption = #1050#1072#1088#1072#1085#1076#1072#1096
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 144
      Top = 488
      Width = 105
      Height = 33
      GroupIndex = 1
      Caption = #1050#1088#1091#1075
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 264
      Top = 488
      Width = 129
      Height = 33
      GroupIndex = 1
      Caption = #1055#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 400
      Top = 488
      Width = 97
      Height = 33
      GroupIndex = 1
      Caption = #1051#1080#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 584
      Top = 496
      Width = 37
      Height = 16
      Caption = #1062#1074#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 496
      Top = 552
      Width = 23
      Height = 22
      Visible = False
    end
    object Label2: TLabel
      Left = 512
      Top = 528
      Width = 106
      Height = 16
      Caption = #1056#1072#1079#1084#1077#1088' '#1083#1080#1085#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ColorBox1: TColorBox
      Left = 640
      Top = 496
      Width = 145
      Height = 22
      ItemHeight = 16
      TabOrder = 0
    end
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 792
      Height = 472
      TabOrder = 1
      object PaintBox1: TPaintBox
        Left = 0
        Top = 0
        Width = 785
        Height = 465
        OnMouseDown = PaintBox1MouseDown
        OnMouseMove = PaintBox1MouseMove
        OnMouseUp = PaintBox1MouseUp
        OnPaint = PaintBox1Paint
      end
    end
    object ComboBox1: TComboBox
      Left = 640
      Top = 528
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7')
    end
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 547
    object N1: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
end
