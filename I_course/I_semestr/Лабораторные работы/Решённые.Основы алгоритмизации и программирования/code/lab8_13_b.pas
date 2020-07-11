program lab13_a;

const
  glasn = ['а', 'е', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я'];
  glasnii='аеиоуыэюя';

var
  N: integer;
  glasn_ar: array [1..9] of integer;
  ch, delim: char;
  buffer: string;
  str: array of string[80];

begin
  writeln('Введите количество слов:');
  readln(N);
  setLength(str, N);
  for var i:= 0 to N-1 do
  begin
    write('Введите слово: ');
    readln(str[i]);
  end;

  N:= length(str);
  for var i:= 0 to N-1 do
    for var k:= 0 to N-i-2 do
    begin
      if length(str[k]) < length(str[k+1]) then
      begin
        buffer:= str[k];
        str[k]:=str[k+1];
        str[k+1]:=buffer;
      end
    end;
  writeln('Самое длинное слово: ',str[0], '; и оно имеет длину - ',str[0].Length);
  
  for var i:=1 to str[0].Length do
  begin
    if str[0][i] in glasnii then inc(glasn_ar[pos(str[0][i],glasnii)]);
  end;
  
  for var i:=1 to 9 do 
  begin 
    if glasn_ar[i] <> 0 then writeln(glasnii[i], ' - ', glasn_ar[i] )
  end;
end.
