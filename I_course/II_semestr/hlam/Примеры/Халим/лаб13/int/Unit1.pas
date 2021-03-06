unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ColorBox1: TColorBox;
    ScrollBox1: TScrollBox;
    PaintBox1: TPaintBox;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    SpeedButton5: TSpeedButton;
    N3: TMenuItem;
    ComboBox1: TComboBox;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1Paint(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  type
   TShape = (sPen, sRect, sEllipse, sPoly, sFill);

var
  Form1: TForm1;
  img, buffer: TBitmap;
  x0,y0: integer;
  dwn: boolean  ;
  nowdrawing: TShape;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
Img:=TBitmap.Create;
 buffer:=TBitmap.Create;
 img.Width:=PaintBox1.ClientWidth;
 buffer.Width:=PaintBox1.ClientWidth;
 img.Height:=PaintBox1.ClientHeight;
 buffer.Height:=PaintBox1.ClientHeight;
 nowdrawing:=sPen;
 dwn:=false;
end;

procedure TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if button=mbLeft then begin
 img.assign(buffer);
 x0:=x; y0:=y;
 if SpeedButton1.Down then
 begin
 nowdrawing:=sPen;
 img.canvas.MoveTo(x,y);
 end else
 if SpeedButton2.Down then
 nowdrawing:=sEllipse else
 if SpeedButton3.Down then
 nowdrawing:=sRect else
 if SpeedButton4.Down then
 nowdrawing:=sPoly else
 if SpeedButton5.Down then
 nowdrawing:=sFill;
 dwn:=true;
 img.Canvas.Pen.Color:=ColorBox1.Selected;
 img.Canvas.Pen.Width:=Combobox1.ItemIndex+1;
 if nowdrawing=sFill then
 begin
 img.Canvas.FloodFill(x0,y0,img.Canvas.Pixels[x,y],fsSurface);
 buffer.Assign(img);
 dwn:=false;
 end
 end else
 begin
 if (dwn)and(nowdrawing=sPoly) then begin
 x0:=x;
 y0:=y;
 buffer.Assign(img);
 end;
 end;

 paintbox1.Canvas.CopyRect(bounds(0,0,img.Width,img.Height),
                    img.Canvas,bounds(0,0,img.Width,img.Height));
end;



procedure TForm1.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if not dwn then exit;
 img.assign(buffer);
 case nowdrawing of
 sPen:begin
 img.Canvas.LineTo(x,y);
 buffer.Assign(img);
 end;
 sRect:begin
 img.Canvas.Rectangle(x0,y0,x,y);
 end;
 sEllipse:begin
 img.Canvas.Ellipse(x0,y0,x,y);
 end;
 sPoly:begin
 img.Canvas.MoveTo(x0,y0);
 img.Canvas.LineTo(x,y);
 end;
 sFill:begin
 //nothing.
 end;
 end;

 paintbox1.Canvas.CopyRect(bounds(0,0,img.Width,img.Height),
                    img.Canvas,bounds(0,0,img.Width,img.Height));
end;

procedure TForm1.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if button=mbLeft then dwn:=false;
 buffer.Assign(img);
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
 paintbox1.Canvas.CopyRect(bounds(0,0,img.Width,img.Height),
                 buffer.Canvas,bounds(0,0,img.Width,img.Height));
end;


procedure TForm1.N3Click(Sender: TObject);
var c:integer;
begin
 c:=messagedlg('��������� ������?',mtWarning,[mbYes, mbNo],0);
 If c=mrYes then close;
end;


procedure TForm1.N2Click(Sender: TObject);
begin
Paintbox1.Canvas.FillRect(ClientRect);
end;
procedure TForm1.N1Click(Sender: TObject);
var
  Bitmap: TBitmap;
  Source: TRect;
  Dest: TRect;
begin
  Bitmap := TBitmap.Create;
  try
    with Bitmap do
    begin
      Width   := PaintBox1.Width;
      Height  := PaintBox1.Height;
      Dest    := Rect(0, 0, Width, Height);
    end;
    with PaintBox1 do
      Source := Rect(0, 0, Width, Height);
      Bitmap.Canvas.CopyRect(Dest, PaintBox1.Canvas, Source);
      Bitmap.SaveToFile('test.bmp');
  finally
    Bitmap.Free
end;
  end;

end.
//10. ����������� ��������� ����������� ������������ ��������� (������� ��������� Paint ������� Windows).
//�� ������ �������� � ����� ����������  TpaintBox  ������������  ������  �  �������  ����.
//������������� �����������:
//�) ��������� ������� ������,
//�) ��������� ����� ������,
//�) ���������� ������� � ����������� �����.

