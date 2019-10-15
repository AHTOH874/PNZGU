var
  A: array[1..7] of integer;
  i, j, k: integer;

begin
  randomize;
  for i := 1 to 7 do 
  begin
    A[i] := random(1, 100);
    write(A[i]:5);
  end;
  writeln();
  
  for i := 1 to 6 do 
  begin
    for j := 1 to 6 do 
    begin
      if A[j] < A[j + 1] then begin
        k := A[j];
        A[j] := A[j + 1];
        A[j + 1] := k;
      end;
    end;
  end;
  
  for i := 1 to 7 do 
  begin
    write(A[i]:5);
  end;
  writeln();
end.