object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 278
  ClientWidth = 597
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 440
    Top = 24
    Width = 11
    Height = 20
    Caption = 'N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 400
    Height = 250
    Foot.Frame.Visible = False
    Title.Frame.Visible = False
    Title.Text.Strings = (
      'TChart')
    BottomAxis.Title.Caption = #1040#1088#1075#1091#1084#1077#1085#1090' X'
    Chart3DPercent = 35
    LeftAxis.Title.Caption = #1040#1088#1075#1091#1084#1077#1085#1090' Y'
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Marks.Visible = True
      Marks.Style = smsValue
      Title = 'F1'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Marks.Visible = True
      Marks.Style = smsValue
      Title = 'F2'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Edit1: TEdit
    Left = 457
    Top = 23
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 457
    Top = 50
    Width = 75
    Height = 25
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 457
    Top = 104
    Width = 75
    Height = 25
    Caption = #1054#1095#1080#1090#1089#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 457
    Top = 144
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1090#1099#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
end
