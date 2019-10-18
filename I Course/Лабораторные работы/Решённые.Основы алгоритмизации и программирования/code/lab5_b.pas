var
  z: array [1..70] of integer; 
  k: array [1..7, 1..10] of integer;
  i, j, g: integer;

begin
  randomize;
  j:=1;
  g:=1;
  for i := 1 to 70 do 
  begin
    z[i] := random(100)-50;
    if z[i] < 0 then
    begin
      k[j, g]:=z[i];
      inc(g);
      if g>10 then
      begin 
        g:=1;
        inc(j);
      end
    end
  end;
  writeln(k);
end.