object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 583
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    787
    583)
  PixelsPerInch = 120
  TextHeight = 16
  object PaintBox2: TPaintBox
    Left = 697
    Top = 0
    Width = 75
    Height = 75
    Anchors = [akTop, akRight]
    OnPaint = PaintBox2Paint
    ExplicitLeft = 550
  end
  object TrackBar1: TTrackBar
    Left = 697
    Top = 81
    Width = 75
    Height = 33
    Anchors = [akTop, akRight]
    Ctl3D = True
    DoubleBuffered = False
    Max = 32
    Min = 2
    ParentCtl3D = False
    ParentDoubleBuffered = False
    Position = 32
    ShowSelRange = False
    TabOrder = 0
    TabStop = False
    OnChange = TrackBar1Change
    ExplicitLeft = 550
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 504
    Height = 583
    HorzScrollBar.Smooth = True
    HorzScrollBar.Tracking = True
    VertScrollBar.ButtonSize = 10
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    Align = alLeft
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ExplicitHeight = 585
    object PaintBox1: TPaintBox
      Left = 0
      Top = 0
      Width = 500
      Height = 577
      OnMouseMove = PaintBox1MouseMove
      OnPaint = PaintBox1Paint
    end
  end
  object ColorGrid1: TColorGrid
    Left = 510
    Top = 8
    Width = 176
    Height = 48
    Anchors = [akTop, akRight]
    GridOrdering = go8x2
    TabOrder = 2
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 544
    Top = 256
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = '.bmp'
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 576
    Top = 256
  end
  object MainMenu1: TMainMenu
    Left = 560
    Top = 200
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Caption = '&New'
      end
      object Open1: TMenuItem
        Caption = '&Open...'
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = '&Save'
        OnClick = Save1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save &As...'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Print1: TMenuItem
        Caption = '&Print...'
      end
      object PrintSetup1: TMenuItem
        Caption = 'P&rint Setup...'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
  end
end
