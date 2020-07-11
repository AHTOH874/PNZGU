unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  Vcl.Grids, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Chart1: TChart;
    Series1: TPieSeries;
    Label1: TLabel;
    ListBox1: TListBox;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
  stringgrid1.defaultcolwidth:=250;//ширина ячейки таблицы
  stringgrid1.defaultrowheight:=24; //высота ячейки
  stringgrid1.colcount:=2;//число столбцов
stringgrid1.Cells[0,0]:='Страна';
  stringgrid1.Cells[1,0]:='ВВП старны';
  for i:=1 to 10 do
    begin
      stringgrid1.RowCount:=i+1;
      b[i].n:=inputbox('Ввод страны','Введите название страны','');
      stringgrid1.Cells[0,i]:=b[i].n;
      s:=inputbox('Ввод ВВП страны','Введите ВВП страны','');
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
var k,i,j,min:integer;
    mm:string;
begin
  min:=0;
  j:=0;
  for i:=1 to 10 do begin
        if b[i].r>min then begin
        k:=i;
        mm:=b[i].n;
        min:=b[i].r
        end;
  end;
   listbox1.items.Add(mm+'-'+inttostr(min));
   j:=j+1;
    for i:=1 to 10 do begin
        if (b[i].n=mm) and (b[i].r=min) then begin
        min:=0;
        b[i].r:=0;
        end;
        end;
   while (j<5)  do   begin
     for i:=1 to 10 do begin
        if b[i].r>min then begin
        k:=i;
        mm:=b[i].n;
        min:=b[i].r
        end;
  end;
   listbox1.items.Add(mm+'-'+inttostr(min));
   j:=j+1;
     for i:=1 to 10 do begin
        if (b[i].n=mm) and (b[i].r=min) then begin
        min:=0;
        b[i].r:=0;
        end;
        end;

   end;


   end;

procedure TForm1.Button4Click(Sender: TObject);
var
bt:integer;
begin
bt:=messagedlg('Вы хотите выйти?',mtconfirmation,mbokcancel,1);
if bt=mrok then   close;
end;

end.
