const
  N = 3;

var
  ara: array [1..N, 1..N] of integer = ((1, 22, 30003), (941, 742, 5641545), (213, 4745, 79864));
  LastDigit, maxCount, minCount, count, iMax, iMin: integer;

begin
  minCount:=N;
  for var j := 1 to N do 
  begin
    count := 0;
    for var k := 1 to N do
    begin
      LastDigit := ara[j][k] mod 10;
      while ara[j][k] > 9 do
        ara[j][k] := ara[j][k] div 10;
        
      if ara[j][k] = LastDigit then count += 1;
    end;
    if count > maxCount then begin iMax := j;maxCount := count end;
    if count < minCount then begin iMin := j;minCount := count end;
  end;
  writeln(imax, imin);
end.