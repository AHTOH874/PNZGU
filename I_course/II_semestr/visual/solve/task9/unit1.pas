unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  StdCtrls, Grids, TAGraph, TASeries;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Chart1: TChart;
    Chart1PieSeries1: TPieSeries;
    Label1: TLabel;
    ListBox2: TListBox;
    PageControl1: TPageControl;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  type bud=record
  n:string;
  r:integer;
  end;
var
    b:array[1..10] of bud;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var i,c:integer;
    s:string;
begin
  stringgrid1.defaultcolwidth:=250;//ширина ячейки таблицы
  stringgrid1.defaultrowheight:=24; //высота ячейки
  stringgrid1.colcount:=2;//число столбцов
stringgrid1.Cells[0,0]:='Наименование товаров';
  stringgrid1.Cells[1,0]:='Сумма продаж в млн.руб.';
  for i:=1 to 10 do
    begin
      stringgrid1.RowCount:=i+1;
      b[i].n:=inputbox('Ввод статей','Введите наименование товара','');
      stringgrid1.Cells[0,i]:=b[i].n;
      s:=inputbox('Ввод статей','Введите размер его продажи','');
      stringgrid1.Cells[1,i]:=s;
      val(s,b[i].r,c);
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i:integer;
s:Tcolor;
begin
for i:=1 to 10 do
begin
  Chart1PieSeries1.clear;
  case i of
    1: s:=clwhite;
    2: s:=clblue;
    3: s:=clfuchsia;
    4: s:=clgray;
    5: s:=clgreen;
    6: s:=clteal;
    7: s:=clnavy;
    8: s:=clred;
    9: s:=clpurple;
    10: s:=clyellow;
  end;
  Chart1PieSeries1.AddPie(b[i].r,b[i].n,s);
end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var k,i,j,buf:integer;
    mm:string;
begin
  for i:=10 downto 2 do
    begin
      for j:=2 to i do
        if b[j-1].r>b[j].r then
          begin
            buf:=b[j-1].r;
            b[j-1].r:=b[j].r;
            b[j].r:=buf;
            mm:=b[j-1].n;
            b[j-1].n:=b[j].n;
            b[j].n:=mm;
          end;end;

    for i:=1 to 5 do listbox2.items.Add(b[i].n+'-'+inttostr(b[i].r));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Close;
end;



end.

