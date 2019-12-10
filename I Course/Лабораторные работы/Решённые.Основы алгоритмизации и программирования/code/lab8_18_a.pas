program lab18_a;

const
  sogls = ['a'..'z'];

var
  str, output: string;

function uniq(str: string): string;
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
        if (i = j) then break
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
  write('Введите слова:');
  readln(str);
  str := str.Remove('.');
  for var i := 1 to str.Length do 
  begin
    if str[i] in sogls then output += uniq(str[i]);
  end;
  output := uniq(output);
  writeln(output);
end.
