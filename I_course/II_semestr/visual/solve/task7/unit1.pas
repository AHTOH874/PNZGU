unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, TAGraph,
  TASeries;
const
  n = 12;
  a=0;
  b=Pi;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Chart1LineSeries2: TLineSeries;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
function f1(x: double) : double;
begin
     f1:=abs(sin(x)- cos(x));
end;
function f2(x: double) : double;
begin
     f2:=abs(sin(x)) - abs(cos(x));
end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var x, dx: real;
    f1R,f2R: double;
    i: byte;
begin
     Chart1LineSeries1.clear;
     Chart1LineSeries2.clear ;
   x:= a;
   dx:=(b-a)/(n-1);
   for i:=1 to n do
   begin
     x:= x + dx;
     f1R:=f1(x);
     f2R:=f2(x);
     Chart1LineSeries1.addXY(x, f1R, 'F1');
     Chart1LineSeries2.addXY(x, f2R, 'F2');
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

