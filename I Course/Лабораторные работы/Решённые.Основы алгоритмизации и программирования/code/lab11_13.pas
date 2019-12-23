program lb11;

uses SortModule;
const
  fn = 'F:\LEARNING\I Course\Лабораторные работы\Решённые.Основы алгоритмизации и программирования\code\11_lab.txt';

var
  ch: byte;
  race_elem: Race_type;
procedure Input;
var
  F: file of Race_type;
  k: word;
begin
  k := 0;
  Assign(F, fn);
  Reset(F);
  while not EOF(F) do
  begin
    inc(k);
    read(F, race_elem );
    Race_array[k]:= race_elem
  end;
  n := k;
  Close(F);
end;

procedure Write_array;
var
  i: word;
begin
  Writeln('Номер рейса':20, 'Откуда':25, 'Пункт назначения':23, 'Дни вылета':20);
  for i := 1 to n do
    writeln(Race_array[i].Number:20, ' | ', Race_array[i].From:20, ' | ', Race_array[i].punkt:20, ' | ', Race_array[i].Days:20);
end;

begin
  Input;
  writeln('Исходный список: ');
  Write_array;
  repeat
    Writeln('Выберите действие: ');
    Writeln('Для сортировки методом пузырька нажмите 1');
    Writeln('Для сортировки методом выбора нажмите 2 ');
    Writeln('Для выхода нажмите 3');
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
  until ch = 3;
  writeln('Завершение работы');
end.
