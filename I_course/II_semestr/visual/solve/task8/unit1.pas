unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    PageControl1: TPageControl;
    PaintBox1: TPaintBox;
    PaintBox2: TPaintBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioGroup1: TRadioGroup;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  TYPE
   corner = record   {Новый тип = описание одной вершины}
      x, y: Integer;
   end;
implementation
 function f1(x: double) : double;
begin
     f1:=abs(sin(x)- cos(x));
end;
 function f2(x: double) : double;
begin
     f2:=abs(sin(x)) - abs(cos(x));
end;


{$R *.lfm}

{ TForm1 }



procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  with paintbox1.canvas do
  begin
  brush.Color:= clwhite;
  fillRect(0,0,144,144);
  Pen.Style:=psdash;{Штриховая линия}
  Pen.Color:=clWhite;{Цвет пера}
  Pen.Width:=1;{Толщина пера}
  Brush.Style:=bssolid;{Заполнение области круга}
  Brush.Color:=clblue;
  Ellipse(10,10, 134, 134 );
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var x, y1:real;
  i,py1:integer;
begin
  with paintbox2, canvas do
  begin
    moveto(0,0);
    Pen.Color:= clRed;
    for i:=0 to 463 do
      begin
      x:=(4*pi/463)*i;
    y1:= f1(x);
    py1:=trunc(195-(y1+1)*195/2);
    lineto(i,py1);
      end;

  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var x, y1:real;
  i,py1:integer;
begin
   with paintbox2, canvas do
  begin
  moveto(0,0);
    brush.Color:= clRed;
    for i:=0 to 463 do
      begin
      x:=(4*pi/463)*i;
    y1:= f2(x);
    py1:=trunc(195-(y1+1)*195/2);
    lineto(i,py1);
      end;

  end;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
var corners: array[1 .. 13] of corner;
  x_center, y_center, i, R1, R2: integer;
   fi: Real;
begin
  with paintbox1.canvas do
  begin
    brush.Color:= clwhite;
  fillRect(0,0,144,144);
  brush.color:= clRed;
  Pen.Color:=clRed;
    R1:=70; R2:=50;
   x_center := 144 div 2;
    y_center := 144 div 2;
    {Коордианты вершин}
    for i:= 0 to 5 do begin
      fi := pi*i*60/180;
      corners[i*2+1].X := x_center + Round(R1*sin(fi));
      corners[i*2+1].Y := y_center + Round(R1*cos(fi));
      fi := fi + 30*pi/180;
      corners[i*2 + 2].X := x_center + Round(R2*sin(fi));
      corners[i*2 + 2].Y := y_center + Round(R2*cos(fi))
    end;
      corners[13] := corners[1]; {"замыкание" - для этого и нужно 13, а не 12 вершин}
    MoveTo(corners[1].X, corners[1].Y);
    for i:=2 to 12 do
      LineTo(corners[i].X, corners[i].Y);
    LineTo(corners[1].X, corners[1].Y)
  end;

end;


procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  with paintbox1.canvas do
  begin
  brush.Color:= clwhite;
  fillRect(0,0,144,144);
     pen.Color:=clgreen;
     pen.Width:=1;
     Brush.Color:=clblue;
     rectangle(10,10,134,134);
  end;
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
  with paintbox1.canvas do
  begin
  brush.Color:= clwhite;
  fillRect(0,0,144,144);
     pen.Color:=clgreen;
     pen.Width:=1;
     Brush.Color:=clblue;
     rectangle(0,0,144,100);
     MoveTo(0,0);
     LineTo(144,100);
     MoveTo(144,0);
     LineTo(0,100)
  end;
end;

end.

