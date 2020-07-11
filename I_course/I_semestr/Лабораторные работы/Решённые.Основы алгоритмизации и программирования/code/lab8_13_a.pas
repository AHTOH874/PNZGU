program lab13_a;

const
  glasn = ['а', 'е', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я'];

var
  N: integer;
  ch, delim: char;
  da, glasnii, str: string;
  arra: array of string;

function uniq(str: string; skip: boolean): string;
var
  len, i, j: integer;
  newWord: boolean;
begin
  len := length(str);
  for i := 1 to len do
  begin
    newWord := true;
    for j := 1 to len do
      if str[i] = str[j] then
      begin
        if (i = j) and skip then continue
        else if (i = j) and not skip then break
        else
        begin
          newWord := false;
          break;
        end;
      end;
    if newWord then Result += str[i];
  end;
end;

begin
  writeln('Введите слова:');
  readln(str);
  arra := str.Remove('.').split(',');
  str := '';
  for var i := 0 to Length(arra) - 1 do 
  begin
    for var k := 1 to arra[i].Length do
    begin
      if arra[i][k] in glasn then da += arra[i][k];
    end;
    str += uniq(da, false);
    da := ''
  end;
  str := uniq(str, true);
  N := length(str);
  for var i := 1 to N - 1 do 
    for var j := 1 to N - i do
      if str[j] > str[j + 1] then begin
        ch := str[j];
        str[j] := str[j + 1];
        str[j + 1] := ch;
      end;
  writeln(str);
end.
