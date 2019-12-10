program lab13_a;
 
var
  N, maxIndex, minIndex: integer;
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
      if str[i][k].IsDigit() then dubl[i] += 1;
    end;
  end;
  
  maxIndex:= dubl.LastIndexMax();
  minIndex:= dubl.LastIndexMin();
  buffer:= str[maxIndex];
  str[maxIndex]:= str[minIndex];
  str[minIndex]:= buffer;
  
  for var i:= 0 to N-1 do
  begin
    write(str[i],' ');
  end;
  
  writeln();
end.
