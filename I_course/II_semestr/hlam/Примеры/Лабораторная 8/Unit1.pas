unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    PaintBox1: TPaintBox;
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
Var
X,Y,rad: integer;
begin
with paintbox1 do begin
  canvas.Pen.Width:=1;
case RadioGroup1.ItemIndex of
0: begin refresh;
  X:=Width div 2;
  Y:=Height div 2;
  rad:=50;
  canvas.Pen.Style:=psdash;{Штриховая линия}
  canvas.Pen.Color:=clWhite;{Цвет пера}
  canvas.Pen.Width:=1;{Толщина пера}
  canvas.Brush.Style:=bssolid;{Заполнение области круга}
  canvas.Brush.Color:=clblue;{Цвет сплошного заполнения области}
  canvas.Ellipse(X-rad,	Y-rad,		X+rad, Y+rad);
  end;
1: begin refresh;
  canvas.Pen.Style:=pssolid;{Сплошная линия}
  canvas.Pen.Color:=clred;
  canvas.Brush.Color:=clgreen;    //цвет заливка
  canvas.Brush.Style:=bshorizontal; {Штриховка горизонтальными линиями}
  canvas.Ellipse(10,0,169,80);

 end;
 2:begin refresh;
  canvas.Pen.Style:=psSolid;{Сплошная линия}
  canvas.Pen.Color:=clblack;{Цвет пера}
  canvas.Brush.Color:=clblue;
  canvas.Brush.Style:=bsCross;{Штрихов-ка в сетку, прямоугольная}
  canvas.Rectangle(10,0,169,80);

 end;
 3:begin refresh;
  canvas.Pen.Style:=psSolid;{Сплошная линия}
  canvas.Pen.Color:=clblack;{Цвет пера}
  canvas.Brush.Color:=clblack;
  canvas.Brush.Style:=bsFDiagonal;{Штрихов-ка диагональная, прямоугольная}
  canvas.Rectangle(10,0,100,100);
 end;
 4:begin refresh;
  canvas.Pen.Style:=psSolid;{Сплошная линия}
  canvas.Pen.Color:=clblack;{Цвет пера}
  canvas.Brush.Color:=clyellow;
  canvas.Brush.Style:=bsVertical;{Штрихов-ка диагональная, прямоугольная}
  canvas.RoundRect(10,0,100,100,25,25);
 end;
 end;
 end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

end.
