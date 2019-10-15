Модуль Sort:

Unit Sort;

Interface

Type Spisok=record

Cipher:string[5];

Name:string[20];

Price:real;

Amount:integer;

end;

var Massif:array [1..1000] of Spisok;

n:word; //Число записей в файле и списке

Procedure Sort_Exchange;

Procedure Sort_Choose;

Implementation

Procedure Sort_Exchange; //Процедура сортировки пузырьком

var i,j:word;

st:Spisok;

begin

for i:= 1 to (n-1) do

begin

for j:= 1 to (n-i) do

begin

if Massif[j].Name[1]>Massif[j+1].Name[1] then

begin

st:=Massif[j];

Massif[j]:=Massif[j+1];

Massif[j+1]:=st;

end;

end;

end;

end;

procedure Sort_Choose; //Процедура сортировки выбором

var i,j,id_min:word;

st_min:string;

st:Spisok;

begin

for i:= 1 to n-1 do

begin

st_min:=Massif[i].Name[1];

id_min:=i;

for j:=i+1 to n do

if Massif[j].Name[1]<st_min then

begin

st_min:=Massif[j].Name;

id_min:=j;

end;

st:=Massif[i];

Massif[i]:=Massif[id_min];

Massif[id_min]:=st;

end;

end;

end