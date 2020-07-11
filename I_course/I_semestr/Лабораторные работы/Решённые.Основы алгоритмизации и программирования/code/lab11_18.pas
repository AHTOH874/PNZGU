program lb11;

uses SortModule_18;
const
  fn = 'F:\LEARNING\I Course\Лабораторные работы\Решённые.Основы алгоритмизации и программирования\code\11_18_lab.txt';

var
  ch: byte;
  Catalog_elem: Catalog__type;
  
procedure Input;
var
  F: file of Catalog__type;
  k: word;
begin
  k := 0;
  Assign(F, fn);
  Reset(F);
  while not EOF(F) do
  begin
    inc(k);
    read(F, Catalog_elem );
    Catalog__array[k]:= Catalog_elem
  end;
  n := k;
  Close(F);
end;

procedure Write_array;
var
  i: word;
begin
  Writeln('Автор':20, 'Название':25, 'Год выпуска':10, 'Тип':10);
  for i := 1 to n do
    writeln(Catalog__array[i].Author:20, Catalog__array[i].name:25, Catalog__array[i].god:10, Catalog__array[i].tip:20);
end;

begin
  Input;
  writeln('Исходный список: ');
  Write_array;
  repeat
    Writeln('Выберите метод сортировки: ');
    Writeln('Для сортировки методом пузырька нажмите 1');
    Writeln('Для сортировки методом выбора нажмите 2 ');
    Writeln('Для выхода нажмите 3 ');
    
    Write('Ввод: ');
    Readln(ch);
    if ch = 1 then begin
      Sort_Exchange;
      Write_array;
    end;
    if ch = 2 then begin
      Sort_Choose;
      Write_array;
    end;
  until ch=3;
  writeln('Завершение работы');
end.
