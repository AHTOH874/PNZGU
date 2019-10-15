program lb11;
uses SORTFORLB;
const fn='E:\1 семестр\11 лаба.txt';
var
  ch: byte;
procedure Input;
var
  F: text;
  k: word;
begin 
  k:=0;
  Assign(F,fn);
  Reset(F);
  while not EOF(F) do
  begin
    inc(k);
    readln(F, a[k].FIO);
    readln(F, a[k].faculty);
    readln(F, a[k].group);
    readln(F, a[k].DR);
  end;
  n := k;
  Close(F);
end;
procedure Conclusion;
var 
  i: word;
begin
Writeln('ФИО':20, 'Факультет':25, 'Группа':23, 'День рождения':20);
for i := 1 to n do
  writeln(a[i].FIO:20, ' | ', a[i].faculty:20, ' | ', a[i].group:20, ' | ',a[i].DR:20);
  end;
begin
  Input;
  writeln('Исходный список: ');
  Conclusion;
  repeat
    Writeln('Выберите действие: ');
    Writeln('Для сортировки методом пузырька нажмите 1');
    Writeln('Для сортировки методом выбора нажмите 2 ');
    Writeln('Для выхода нажмите 3');
    Write('Ввод: ');
    Readln(ch);
    if ch = 1 then begin
      Sort_Exchange;
      Conclusion;
    end;
    if ch = 2 then begin
      Sort_Choose;
      Conclusion;
    end;
  until ch = 3;
  writeln('Завершение работы');
end.
  