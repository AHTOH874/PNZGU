object Form1: TForm1
  Left = 192
  Top = 125
  Width = 870
  Height = 557
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 40
    Top = 16
    Width = 769
    Height = 433
    ActivePage = TabSheet2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet2: TTabSheet
      Hint = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
      Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      object Label1: TLabel
        Left = 40
        Top = 72
        Width = 105
        Height = 16
        Caption = #1055#1077#1088#1074#1086#1077' '#1095#1080#1089#1083#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 208
        Top = 72
        Width = 103
        Height = 16
        Caption = #1042#1090#1086#1088#1086#1077' '#1095#1080#1089#1083#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 496
        Top = 72
        Width = 174
        Height = 16
        Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 24
        Top = 96
        Width = 137
        Height = 41
        Hint = #1055#1077#1088#1074#1086#1077' '#1095#1080#1089#1083#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 192
        Top = 96
        Width = 137
        Height = 41
        Hint = #1042#1090#1086#1088#1086#1077' '#1095#1080#1089#1083#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Button1: TButton
        Left = 48
        Top = 184
        Width = 49
        Height = 49
        Hint = #1055#1088#1080#1073#1072#1074#1080#1090#1100
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 104
        Top = 184
        Width = 49
        Height = 49
        Hint = #1042#1099#1095#1077#1089#1090#1100
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 160
        Top = 184
        Width = 49
        Height = 49
        Hint = #1059#1084#1085#1086#1078#1080#1090#1100
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 216
        Top = 184
        Width = 49
        Height = 49
        Hint = #1056#1072#1079#1076#1077#1083#1080#1090#1100
        Caption = ' /'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = Button4Click
      end
      object Memo1: TMemo
        Left = 432
        Top = 96
        Width = 305
        Height = 273
        Hint = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object Button5: TButton
        Left = 312
        Top = 320
        Width = 105
        Height = 49
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 7
        OnClick = Button5Click
      end
    end
    object TabSheet1: TTabSheet
      Hint = #1058#1072#1081#1084#1077#1088
      Caption = #1057#1087#1080#1076#1086#1084#1077#1090#1088
      ImageIndex = 1
      object Gauge1: TGauge
        Left = 56
        Top = 80
        Width = 217
        Height = 244
        Hint = #1057#1087#1080#1076#1086#1084#1077#1090#1088
        Kind = gkNeedle
        Progress = 0
        Visible = False
      end
      object Label4: TLabel
        Left = 256
        Top = 104
        Width = 5
        Height = 13
      end
      object BitBtn1: TBitBtn
        Left = 320
        Top = 272
        Width = 97
        Height = 49
        Hint = #1057#1090#1072#1088#1090
        Caption = #1057#1090#1072#1088#1090
        TabOrder = 0
        OnClick = BitBtn1Click
        Kind = bkYes
      end
    end
  end
  object Button6: TButton
    Left = 680
    Top = 456
    Width = 131
    Height = 49
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button6Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 236
    Top = 384
  end
end
