unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  type bud=record
  n:string;
  one, two, three, four, sum:integer;
  end;
var
    b:array[1..4] of bud;
    maxYear, maxYearIndex:integer;
    vspm, year: array[1..4] of integer;
    kvartal: array[1..4] of integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var i,j,c:integer;
    s:string;
begin
   for j:=1 to 4 do
   begin
       b[j].n:=inputbox('Ввод данных','Введите наименование товара','');
       stringgrid1.Cells[1,j]:=b[j].n;

       s:=inputbox('Ввод данных','Введите количество продаж в I квартале','');
       stringgrid1.Cells[2,j]:=s;
       val(s,b[j].one,c);
       b[j].sum+=b[j].one;
       kvartal[j]+=b[j].one;

       s:=inputbox('Ввод данных','Введите количество продаж в II квартале','');
       stringgrid1.Cells[3,j]:=s;
       val(s,b[j].two,c);
       b[j].sum+=b[j].two;
       kvartal[j]+=b[j].two;

       s:=inputbox('Ввод данных','Введите количество продаж в III квартале','');
       stringgrid1.Cells[4,j]:=s;
       val(s,b[j].three,c);
       b[j].sum+=b[j].three;
       kvartal[j]+=b[j].three;

       s:=inputbox('Ввод данных','Введите количество продаж в IV квартале','');
       stringgrid1.Cells[5,j]:=s;
       val(s,b[j].four,c);
       b[j].sum+=b[j].four;
       kvartal[j]+=b[j].four;

       if b[j].sum > maxYear then begin maxYear:= b[j].sum;maxYearIndex:=j end;

   end;

   Memo1.Lines.Add('Сумма продаж по кварталам:');
   Memo1.Lines.Add('I Квартал - '+intToStr(kvartal[1]));
   Memo1.Lines.Add('II Квартал - '+intToStr(kvartal[2]));
   Memo1.Lines.Add('III Квартал - '+intToStr(kvartal[3]));
   Memo1.Lines.Add('IV Квартал - '+intToStr(kvartal[4]));

   Memo1.Lines.Add('Сумма продаж за год:');
   Memo1.Lines.Add(b[1].n+ ' - '+intToStr(b[1].sum));
   Memo1.Lines.Add(b[2].n+ ' - '+intToStr(b[2].sum));
   Memo1.Lines.Add(b[3].n+ ' - '+intToStr(b[3].sum));
   Memo1.Lines.Add(b[4].n+ ' - '+intToStr(b[4].sum));

   Memo1.Lines.Add('Наибольшая сумма продаж за квартал: '+intToStr(maxValue(kvartal)));
   Memo1.Lines.Add('Наименьшая сумма продаж за квартал: '+intToStr(minValue(kvartal)));

   Memo1.Lines.Add('Товар с наибольшими продажами - ' + b[maxYearIndex].n);
   Memo1.Lines.Add('Квартал с наибольшей суммой продаж - ' + intToStr(High(kvartal)-1));

end;

end.

