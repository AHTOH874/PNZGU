object Form1: TForm1
  Left = 199
  Top = 141
  Width = 736
  Height = 426
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 24
    Width = 633
    Height = 361
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1043#1088#1072#1092#1080#1082
      object Chart1: TChart
        Left = 16
        Top = 0
        Width = 577
        Height = 273
        Hint = #1043#1088#1072#1092#1080#1082
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          #1043#1088#1072#1092#1080#1082' '#1082#1086#1089#1080#1085#1091#1089#1072' '#1080' '#1089#1080#1085#1091#1089#1072)
        BottomAxis.Title.Caption = #1040#1088#1075#1091#1084#1077#1085#1090' '#1061
        LeftAxis.Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077' Y'
        View3D = False
        TabOrder = 0
        object Series1: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Title = #1057#1080#1085#1091#1089
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          Title = #1050#1086#1089#1080#1085#1091#1089
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object BitBtn1: TBitBtn
        Left = 248
        Top = 288
        Width = 97
        Height = 25
        Hint = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1086#1074
        Caption = #1047#1072#1087#1091#1089#1082
        TabOrder = 1
        OnClick = BitBtn1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1058#1072#1081#1084#1077#1088
      ImageIndex = 1
      object SpinEdit1: TSpinEdit
        Left = 88
        Top = 272
        Width = 57
        Height = 22
        Hint = #1057#1082#1086#1088#1086#1089#1090#1100' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103' '#1096#1082#1072#1083#1099
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
      end
      object Button2: TButton
        Left = 160
        Top = 272
        Width = 121
        Height = 33
        Hint = #1055#1091#1089#1082
        Caption = #1047#1072#1087#1091#1089#1082
        TabOrder = 1
        OnClick = Button2Click
      end
      object TrackBar1: TTrackBar
        Left = 0
        Top = 56
        Width = 593
        Height = 33
        Hint = #1058#1088#1077#1082#1073#1072#1088
        Max = 100
        TabOrder = 2
      end
    end
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 668
    Top = 56
  end
end
