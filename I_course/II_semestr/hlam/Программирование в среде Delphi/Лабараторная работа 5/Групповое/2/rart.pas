﻿unit rart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Button2: TButton;
    StringGrid2: TStringGrid;
    Button3: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
var
n,i,j:integer;
a:array[0..100,0..100] of integer;
begin
n:=strtoint(edit1.text);
if n<>0 then begin
stringgrid1.ColCount:=n;
stringgrid1.RowCount:=n; 
stringgrid1.Visible:=true;
 Randomize;
for i:=0 to n-1 do begin
for j:=0 to n-1 do 
begin
a[i,j]:=random(20)-10; 
stringgrid1.cells[i,j]:=inttostr(a[i,j]);
end;
end;
end
  else begin
  Messagedlg('Введите другое значение',mtinformation,mbokcancel,0);
end;

end;



procedure TForm1.Button2Click(Sender: TObject);
var 
i,j,n:integer; 
a:array[0..100,0..100] of integer;
begin
n:=strtoint(edit1.text);
for i:=0 to n-1 do 
for j:=0 to n-1 do
a[i,j]:=strtoint(stringGrid1.cells[i,j]);
for i:=0 to n-1 do 
for j:=0 to n-1 do 
if a[i,j]<0 then 
a[i,j]:=sqr(a[i,j])
else
if a[i,j]>0 then 
a[i,j]:=a[i,j]-10; 
stringgrid2.Visible:=true; 
StringGrid2.ColCount:=n; 
for i:=0 to n-1 do
for j:=0 to n-1 do 
StringGrid2.Cells[i,j]:=inttostr(a[i,j]);
end;



procedure TForm1.Button3Click(Sender: TObject);
var
i,n,m,j:integer;
a: array [0..100,0..100] of integer;
buttonselected:integer;
begin
  n:=strtoint(edit1.text);
  buttonselected:=Messagedlg('Очистить массивы?',mtwarning,mbokcancel,0);
  if buttonselected=mrok then begin
    Edit1.Text:='';
    for i := 0 to n - 1 do begin
      for j:= 0 to n - 1 do  begin
        stringgrid1.cells[i,j]:='';
        stringgrid2.cells[i,j]:='';
      end;
    end;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
buttonselected: integer;
begin
buttonselected:=Messagedlg('Выйти из программы?',mtconfirmation,mbokcancel,1);
if buttonselected=mrok then close;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8]) then  key:=#0;
end;

end.

