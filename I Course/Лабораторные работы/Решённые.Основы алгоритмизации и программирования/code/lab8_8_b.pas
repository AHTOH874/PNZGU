const
  glasn = ['а', 'е', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я'];

var 
  index, count, N: integer;
  str: array of string[80];
  output: string;
  

begin
  writeln('Введите количество слов:');
  readln(N);
  setLength(str, N);
  count:= 81;
  for var i:= 0 to N-1 do
  begin
    write('Введите слово: ');
    readln(str[i]); 
    if str[i].length < count then begin index:= i; count:= str[i].length end;
  end;
  count:=0;
  for var i:=1 to str[index].Length do 
  begin
    if not (lowCase(str[index][i]) in glasn) then output+=str[index][i] else inc(count);
  end;
  writeln('Слово: ', output, ' Кол-во глассных: ', count);
end.