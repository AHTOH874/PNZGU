var
  t: array[1..7, 1..8] of real;
  k, i, j: integer;
  sum, sr: real;

begin
  randomize;
  for i := 1 to 7 do
  begin
    for j := 1 to 8 do
    begin
      t[i, j] := random(100) - 50;
      if j mod 2 = 0 then
      begin
        sum += t[i, j];
        k += 1;
      end;
      write(t[i, j]:5);
    end;
    writeln();
  end;
  sr := sum / k;
  writeln('Среднее арифметическое: ', sr)
end.