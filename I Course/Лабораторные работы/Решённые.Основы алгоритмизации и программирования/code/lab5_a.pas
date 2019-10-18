var
  c: array[1..7, 1..6] of real;
  k, i, j: integer;
  sum, sr: real;

begin
      randomize;

  for i := 1 to 7 do
    for j := 1 to 6 do
    begin
      c[i, j] := random(100) - 50;
      if c[i, j] < 0 then
      begin
        sum += c[i, j];
        k += 1;
      end;
    end;
  sr := sum / k;
  for i := 1 to 7 do
    for j := 1 to 6 do
    begin
      if c[i, j] = 0 then c[i, j] := sr
    end;
  writeln(c);
end.