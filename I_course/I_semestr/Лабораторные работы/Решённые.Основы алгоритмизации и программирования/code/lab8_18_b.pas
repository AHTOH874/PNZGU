program lab13_a;
const digit = [0..9];

var
  N, maxIndex, minIndex, charInted, err: integer;
  str: array of string[80];
  dubl: array of integer;
  buffer: string;

begin
  writeln('Введите количество слов:');
  readln(N);
  setLength(str, N);
  setLength(dubl, N);
  
  for var i:= 0 to N-1 do
  begin
    write('Введите слово: ');
    readln(str[i]);
    for var k:= 1 to str[i].Length do
    begin
      val(str[i][k], charInted, err); // val(строка, в какую переменную записать число, ошибка )
      if (err = 0) and (charInted in digit)  then dubl[i] += 1;
    end;
  end;
  
  maxIndex:= dubl.LastIndexMax();// str[maxIndex] = High(array)
  minIndex:= dubl.LastIndexMin();// str[minIndex] = low(array)
  buffer:= str[maxIndex];
  str[maxIndex]:= str[minIndex];
  str[minIndex]:= buffer;
  
  for var i:= 0 to N-1 do
  begin
    write(str[i],' ');
  end;
  
  writeln();
end.
