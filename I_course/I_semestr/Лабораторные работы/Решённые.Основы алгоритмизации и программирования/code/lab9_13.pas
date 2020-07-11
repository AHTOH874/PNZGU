
var
  N: integer;
  splited, stroki: array of string;
  buffer: string;

begin
  write('¬ведите количество строк: ');
  readln(N);
  setLength(stroki, N);
  writeln('¬водите строки:');
  for var i := 0 to N - 1 do
  begin
    readln(stroki[i]);
    splited := stroki[i].split(' ');
    if splited.length = 2 then
    begin
      buffer := splited[0];
      splited[0] := splited[1];
      splited[1] := buffer;
      stroki[i] := splited[0] + ' ' + splited[1];
    end
  end;
  writeln();
  foreach x: string in stroki do 
    writeln(x);
  
end.