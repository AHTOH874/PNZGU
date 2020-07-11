type
   Catalog__type= record
    Author: string[20];
    name: string[20];
    god: integer;
    tip: string[8];
  end;
var
  N: integer;
  Catalog__array: array  of Catalog__type;

begin
  repeat
    write('Введите кол-во записей, минимум 3: ');
    readln(N);
  until N > 2;
  
  setLength(Catalog__array, N);
  for var i := 0 to N - 1 do 
    with Catalog__array[i] do
    begin
      write('Введите Ф.И.О. авторов - 20 символов: ');
      readln(Author);
      write('Введите название - 20 символов: ');
      readln(name);
      write('Введите год издания - целое: ');
      readln(god);
      write('Введите тип  - журнал или статья: ');
      readln(tip);
      writeln;
    end;
  writeln();
  writeln('Ф.И.О. авторов':20,'название':15, 'год издания':15, 'Тип':10);
  
  for var i := 0 to N - 1 do
    with Catalog__array[i] do
    begin
      writeln(Author:20, name:15, god:15, tip:10);
    end;
  writeln;
  for var i := 0 to N - 1 do
    with Catalog__array[i] do
    begin
      if god > 2000 then writeln(Author:20, name:15, god:15, tip:10);
    end;
end.