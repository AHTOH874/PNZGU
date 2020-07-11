var 
  ar, dublAr: array of integer;
  dI, N, st_min, st, id_min: integer;
  
  
begin
  write('Введите кол-во элементов в массиве: ');
  readln(N);
  setLength(ar, N);
  for var i:=0 to N-1 do
  begin
    readln(ar[i]);
  end;
  setLength(dublAr, N);
  
  dI:= 0;
  write('Исходный массив: ');
  for var i:=0 to High(ar)-1 do
  begin
    write(ar[i], '  ');
    if (i mod 2 = 0) and (ar[i] mod 2 = 0) then 
    begin 
      dI+=1;
      dublAr[dI-1]:= ar[i] 
    end;
  end;
  writeln;
  
  write('Массив B: ');
  for var i:=0 to dI-1 do
    write(dublAr[i], '  ');
  writeln;
  
  for var i := 0 to dI - 2 do 
  begin
    st_min := dublAr[i];
    id_min := i;
    for var j := i + 1 to dI-1 do
      if dublAr[j] < st_min then  begin
        st_min := dublAr[j];
        id_min := j;
      end;
    st := dublAr[i];
    dublAr[i] := dublAr[id_min];
    dublAr[id_min] := st;
  end;
   
  write('Массив B после сортировки: ');
  for var i:=0 to dI-1 do
    write(dublAr[i], '  ');
  dublAr:= nil;
  ar:= nil;
end.