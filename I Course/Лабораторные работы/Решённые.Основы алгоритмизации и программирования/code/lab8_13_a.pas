program lab13_a;

const
  glasn = ['а', 'е', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я'];

var
  count_array: array [1..9] of integer;
  N, posit: integer;
  da,glasnii,str: string;
  
  arra: array of string;

begin
  glasnii:='аеиоуыэюя';
  writeln('Введите слова:');
  readln(str);
  arra := str.Remove('.').split(',');
  for var i := 0 to Length(arra)-1 do 
  begin
    writeln(Length(arra));
    for var k:=1 to arra[i].Length do 
    begin
      if arra[i][k] in glasn then 
      begin
        posit:=Pos(arra[i][k],glasnii);
        if count_array[posit] 
      end
    end;
    da+=',';
  end;
  writeln(da);
end.
