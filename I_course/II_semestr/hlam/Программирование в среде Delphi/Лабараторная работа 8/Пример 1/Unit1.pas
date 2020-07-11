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
  with paintbox1, canvas do {������ System}
  {��������� ����� �������� ��� ���������}
  begin
  Brush.Color:=clwhite;{���� ����}
  pen.Width:=1;
rectangle(0,0,width,height);{������� ���������}
 pen.Color:=clgreen; {���� ����}
  {��������� ����}
 moveto(0,height div 2);{�������� ���}
  lineto(width,	height		div	2); {�������������� ���}
 moveto(width div 2,0);{�������� ���}
  lineto(width	div	2,height); {������������ ���}
  {��������� ��������� ��������}
  pen.Color:=clblue;
  pen.Width:=1;
  pen.Style:=pssolid;
  moveto(0,height div 2);
  pen.Color:=clred;
  pen.Width:=2;
  {��������� ���������}
     for i:=0 to width do
      begin
        x:=(4*pi/width)*i;
        y1:=sin(x);
        py1:=trunc(height-(y1+1)*height/2);
        lineto(i,py1);
     end;
  pen.Color:=clblue;
  moveto(0,height div 2);
 {��������� �����������}
  for i:=0 to width do
     begin
        x:=(4*pi/width)*i;
        y2:=cos(x);
        py2:=trunc(height-(y2+1)*height/2);
        lineto(i,py2);
     end;
  {��������� �������� �� ��������}
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
{��������� �������� � �������������� ���������� ����������� �������}
{��������� ����� � �������������� ���������� ����������� �������}
var
  X,x1:integer;
  Y,y1:integer;
  rad,xval,yval:integer;
  loc:real;
begin
  with paintbox1, canvas do
  {������� ���� ������������ ���������}
  begin
  Brush.Color:=clwhite;
{������� ������ � �������}
  Font.Size:=10;
  TextOut(140,35,'��������� ��������,');
  TextOut(140,50,'��������� ���������� ����������� ������ Delphi');
{����������	������ ����������}
  X:=Width div 2;
  Y:=Height div 2;
  rad:=50;
  Pen.Style:=psdash;{��������� �����}
  Pen.Color:=clWhite;{���� ����}
  Pen.Width:=1;{������� ����}
  Brush.Style:=bssolid;{���������� ������� �����}
  Brush.Color:=clblue;{���� ��������� ���������� �������}
  Ellipse(X-rad,	Y-rad,		X+rad, Y+rad);
{��������� ������ ����������}
  Brush.Color:=clred;
  X:=(Width div 2)-200;
  Y:=(Height div 2)-70;
  Brush.Style:=bsDiagCross; {��������� � �����, ������������}
  Ellipse(X-rad, Y-rad, X+rad, Y+rad);
{��������� ��������������}
  Brush.Color:=clblue;
  Brush.Style:=bsCross;{�������-�� � �����, �������������}
  Rectangle(100,200,200,250);
{������������ �������}
  Pen.Style:=pssolid;{�������� �����}
  Pen.Color:=clred;
  Brush.Color:=clgreen;
  Brush.Style:=bshorizontal; {��������� ��������������� �������}
  Ellipse(335,100,435,150);
     end;
   end;
   end.


end.
