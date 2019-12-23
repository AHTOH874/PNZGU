type
   Book__type= record
    Author: string[20];
    name: string[20];
    year: integer;
    shifr: string[8];
  end;

var
  N: integer;
  Book__array: array  of Book__type;

begin
  repeat
    write('Введите кол-во книг, минимум 10: ');
    readln(N);
  until N > 10;
  
  setLength(Book__array, N);
  for var i := 0 to N - 1 do 
    with Book__array[i] do
    begin
      write('Введите Ф.И.О. авторов - 20 символов: ');
      readln(Author);
      write('Введите название - 20 символов: ');
      readln(name);
      write('Введите год издания - целое: ');
      readln(year);
      write('Введите шифр - 8 символов ');
      readln(shifr);
      writeln;
    end;
  writeln();
  writeln('Ф.И.О. авторов, название, год издания, шифр');
  
  for var i := 0 to N - 1 do
    with Book__array[i] do
    begin
      writeln(Author,'   ', name,'   ', year,'   ', shifr);
    end;
  writeln;
  for var i := 0 to N - 1 do
    with Book__array[i] do
    begin
      if (shifr[1] = 'Т') and (year= 1990) then writeln(Author,'   ', name,'   ', year,'   ', shifr);
    end;
end.