unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ExtDlgs, Vcl.Menus, Vcl.ActnMan, Vcl.ActnColorMaps,
  Vcl.ColorGrd;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    PaintBox2: TPaintBox;
    TrackBar1: TTrackBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    ScrollBox1: TScrollBox;
    ColorGrid1: TColorGrid;
    procedure OpenButtonClick(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure TrackBar1Change(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure PaintBox2Paint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Radius: Integer;
  Bitmap: TBitmap;
  scx, scy : integer;

implementation

{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Radius := TrackBar1.Position;
  Bitmap := TBitmap.Create;
end;

procedure TForm1.Open1Click(Sender: TObject);
var
  FName: TFileName;
  Picture: TPicture;
begin
  if not OpenPictureDialog1.Execute then
    exit;
  try
    Picture := TPicture.Create;
    Picture.LoadFromFile(OpenPictureDialog1.FileName);

    Bitmap.Width := Picture.Width;
    Bitmap.Height := Picture.Height;
    Bitmap.Canvas.Draw(0, 0, Picture.Graphic);
    PaintBox1.Canvas.Draw(0, 0, Bitmap);
  finally
    Picture.Free;
  end;
end;

procedure TForm1.OpenButtonClick(Sender: TObject);
var
  FName: TFileName;
  Picture: TPicture;
begin
  if not OpenPictureDialog1.Execute then
    exit;
  try
    Picture := TPicture.Create;
    Picture.LoadFromFile(OpenPictureDialog1.FileName);

    Bitmap.Width := Picture.Width;
    Bitmap.Height := Picture.Height;
    Bitmap.Canvas.Draw(0, 0, Picture.Graphic);
    PaintBox1.Canvas.Draw(0, 0, Bitmap);
  finally
    Picture.Free;
  end;
end;

procedure TForm1.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if (X > Bitmap.Width) or (Y > Bitmap.Height) then
    exit;
  with Bitmap, Canvas do
  begin
    Pen.Style := psClear;
    if ssLeft in Shift then
      Ellipse(X - Radius, Y - Radius, X + Radius, Y + Radius)
    else if ssRight in Shift then
      Rectangle(X - Radius, Y - Radius, X + Radius, Y + Radius);
  end;
  PaintBox1.Canvas.Draw(0, 0, Bitmap);
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.Brush.Style := bsSolid;
  PaintBox1.Canvas.Pen.Style := psClear;
  PaintBox1.Canvas.Rectangle(0, 0, PaintBox1.Width, PaintBox1.Height);
  PaintBox1.Canvas.Draw(0, 0, Bitmap);
end;

procedure TForm1.PaintBox2Paint(Sender: TObject);
begin

  with PaintBox2, Canvas do
  begin

    Brush.Style := bsSolid;
    Brush.Color := clBlack;
    Pen.Style := psClear;
    Rectangle(0, 0, Width, Height);

    Brush.Color := clRed;
    Ellipse(Width div 2 - Radius, Height div 2 - Radius, Width div 2 + Radius,
      Height div 2 + Radius);

  end;

end;

procedure TForm1.Save1Click(Sender: TObject);
begin
  if SavePictureDialog1.Execute then
    Bitmap.SaveToFile(SavePictureDialog1.FileName);
end;

procedure TForm1.SaveButtonClick(Sender: TObject);
begin
  if SavePictureDialog1.Execute then
    Bitmap.SaveToFile(SavePictureDialog1.FileName);
end;

procedure TForm1.ScrollBar2Change(Sender: TObject);
begin
  //scy := ScrollBar2.;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  Radius := TrackBar1.Position;
  PaintBox2.OnPaint(Sender);
end;

end.
