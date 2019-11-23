program lab15_a;

const
  glasn = ['а', 'е', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я'];

var
  count_array: array [1..9] of boolean;
  N, p: integer;
  str: string;
  arra: array of string;
  glasnii: array of char;
begin
  glasnii:=['а', 'е', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я'];
  writeln('Введите слова:');
  readln(str);
  arra := str.Remove('.').split(',');
  for var i := 1 to Length(arra) do 
  begin
    for var k:=1 to arra[i].Length do 
    begin
      if arra[i][k] in glasn then 
        count_array[glasnii.IndexOf(arra[i][k])]:=true;
    end
  end;
  writeln(count_array);
end.
