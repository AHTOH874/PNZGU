var
  a: array [1..5, 1..5] of integer; 
  b: array [1..25] of integer;
  i, j, k: integer;
begin
  randomize;
  k:=1;
  for i := 1 to 5 do
  begin
    for j := 1 to 5 do
    begin
      a[i, j] := random(100)-50;
      write(a[i, j]:5);
      if (a[i, j]>= -5) and (a[i, j]<= 5) then
      begin
        b[k]:= a[i, j];
        k:= k + 1;
      end;
    end;
  writeln();
  end;
  for i := 1 to 25 do 
  begin
    write(b[i]:4);
  end;
end.