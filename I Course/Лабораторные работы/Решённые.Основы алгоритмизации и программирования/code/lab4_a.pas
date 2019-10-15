var
  A: array [1..15] of integer;
  i, z: integer;


begin
  writeln();
  randomize;
  for i := 1 to 15 do 
  begin
    A[i] := random(0, 1);
    if A[i] < 1 then inc(z);
  end;
  writeln('Не сдали: ', z);
  Writeln('Процент не сдавших: ', z / 15 * 100:1:2, '%');
end.


