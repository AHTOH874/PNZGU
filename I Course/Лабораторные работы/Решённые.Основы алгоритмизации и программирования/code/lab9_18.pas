program lab18_a;
//
//const
//  sogls = ['a'..'z'];

var
  N: integer;
  output: string;
  arra: array of string;

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
  write('Введите кол-во строк: ');
  readln(N);
  setLength(arra, N);
  for var i:= 0 to N-1 do 
  begin 
    write('Введите строку: ');
    readln(arra[i]);
    arra[i] := arra[i].Remove('.');
    for var k := 1 to arra[i].Length do 
    begin
      output += uniq(arra[i][k]);
    end;
    arra[i] := uniq(output);
    output:='';
  end;
  writeln();
  writeln('Новый вариант строк:');
  for var i:=0 to N-1 do 
  begin
    writeln(arra[i]);
  end;
  
end.
