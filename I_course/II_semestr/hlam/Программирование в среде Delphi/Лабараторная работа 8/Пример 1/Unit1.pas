unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button2: TButton;
    BitBtn1: TBitBtn;
    PaintBox1: TPaintBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
var x,y1,y2,y3,y4:real;
    i,py1,py2,py3,py4:integer;
begin
  with paintbox1, canvas do {Панель System}
  {открывает класс объектов для рисования}
  begin
  Brush.Color:=clwhite;{Цвет фона}
  pen.Width:=1;
rectangle(0,0,width,height);{Область рисования}
 pen.Color:=clgreen; {Цвет пера}
  {Рисование осей}
 moveto(0,height div 2);{Холостой ход}
  lineto(width,	height		div	2); {Горизонтальная ось}
 moveto(width div 2,0);{Холостой ход}
  lineto(width	div	2,height); {Вертикальная ось}
  {Параметры рисования графиков}
  pen.Color:=clblue;
  pen.Width:=1;
  pen.Style:=pssolid;
  moveto(0,height div 2);
  pen.Color:=clred;
  pen.Width:=2;
  {Рисование синусоиды}
     for i:=0 to width do
      begin
        x:=(4*pi/width)*i;
        y1:=sin(x);
        py1:=trunc(height-(y1+1)*height/2);
        lineto(i,py1);
     end;
  pen.Color:=clblue;
  moveto(0,height div 2);
 {Рисование косинусоиды}
  for i:=0 to width do
     begin
        x:=(4*pi/width)*i;
        y2:=cos(x);
        py2:=trunc(height-(y2+1)*height/2);
        lineto(i,py2);
     end;
  {Рисование графиков по пикселам}
  for i:=0 to width do
     begin
        x:=(4*pi/width)*i;
        y3:=0.5*sin(x);
        y4:=0.5*cos(x);
        py3:=trunc(height-(y3+1)*height/2);
        py4:=trunc(height-(y4+1)*height/2);
        pixels[i,py3]:=clyellow;
        pixels[i,py4]:=clgreen;
         end;
       end;
 end;


procedure TForm1.Button2Click(Sender: TObject);
{Рисование объектов с использованием встроенных графических методов}
{Рисование круга с использованием встроенных графических методов}
var
  X,x1:integer;
  Y,y1:integer;
  rad,xval,yval:integer;
  loc:real;
begin
  with paintbox1, canvas do
  {открыть окно графического редактора}
  begin
  Brush.Color:=clwhite;
{Вставка текста в рисунок}
  Font.Size:=10;
  TextOut(140,35,'Рисование объектов,');
  TextOut(140,50,'используя встроенные графические методы Delphi');
{Координаты	центра окружности}
  X:=Width div 2;
  Y:=Height div 2;
  rad:=50;
  Pen.Style:=psdash;{Штриховая линия}
  Pen.Color:=clWhite;{Цвет пера}
  Pen.Width:=1;{Толщина пера}
  Brush.Style:=bssolid;{Заполнение области круга}
  Brush.Color:=clblue;{Цвет сплошного заполнения области}
  Ellipse(X-rad,	Y-rad,		X+rad, Y+rad);
{Рисование второй окружности}
  Brush.Color:=clred;
  X:=(Width div 2)-200;
  Y:=(Height div 2)-70;
  Brush.Style:=bsDiagCross; {Штриховка в сетку, диагональная}
  Ellipse(X-rad, Y-rad, X+rad, Y+rad);
{Рисование прямоугольника}
  Brush.Color:=clblue;
  Brush.Style:=bsCross;{Штрихов-ка в сетку, прямоугольная}
  Rectangle(100,200,200,250);
{Вычерчивание эллипса}
  Pen.Style:=pssolid;{Сплошная линия}
  Pen.Color:=clred;
  Brush.Color:=clgreen;
  Brush.Style:=bshorizontal; {Штриховка горизонтальными линиями}
  Ellipse(335,100,435,150);
     end;
   end;
   end.


end.
