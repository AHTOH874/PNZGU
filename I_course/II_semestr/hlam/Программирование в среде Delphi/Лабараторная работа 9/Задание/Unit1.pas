unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ComCtrls,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm1 = class(TForm)
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    StringGrid1: TStringGrid;
     Chart1: TChart;
    Series1: TPieSeries;
    Label1: TLabel;
    ListBox1: TListBox;
    Label2: TLabel;
    ListBox2: TListBox;
    PageControl1: TPageControl;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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

{$R *.dfm}





procedure TForm1.Button1Click(Sender: TObject);
var i,c:integer;
    s:string;
begin
  stringgrid1.defaultcolwidth:=250;//ширина €чейки таблицы
  stringgrid1.defaultrowheight:=24; //высота €чейки
  stringgrid1.colcount:=2;//число столбцов
stringgrid1.Cells[0,0]:='Ќаименование статьи бюджета';
  stringgrid1.Cells[1,0]:='–азмер статьи в млн.руб.';
  for i:=1 to 10 do
    begin
      stringgrid1.RowCount:=i+1;
      b[i].n:=inputbox('¬вод статей бюджета','¬ведите название статьи бюджета','');
      stringgrid1.Cells[0,i]:=b[i].n;
      s:=inputbox('¬вод статей бюджета','¬ведите ее размер','');
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
  form1.series1.AddPie(b[i].r,b[i].n,s);
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
          end;
    end;
            for i:=1 to 3 do listbox1.items.Add(b[i].n+'-'+inttostr(b[i].r));
             for i:=10 downto 8 do listbox2.items.Add(b[i].n+'-'+inttostr(b[i].r));
end;


end.
