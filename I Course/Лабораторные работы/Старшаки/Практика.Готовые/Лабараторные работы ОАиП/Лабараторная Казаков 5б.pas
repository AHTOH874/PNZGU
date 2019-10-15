Program LB5b;
const
    n=7; 
    m=8;
var
   i,j,k,e:integer;  
t: array  [1..n,1..m] of integer;
z: array  [1..56] of integer;
Begin 
  k:=0;
  randomize;
  writeln('Генерируем числа');
  For i:= 1 to n do begin 
    for j:= 1 to m do begin 
      t[i,j]:=random(10);  
      write(t[i, j]:5);
      if t[i,j]>0 then begin 
        k:=k+1;
      end
     end;
    writeln
  end;
  writeln('Вектор z ',k);
  For i:= 1 to n do begin 
    for j:= 1 to m do begin
        if k<56 then begin
          if t[i,j]>0 then begin
            for e:= 1 to 56 do begin
             z[e]:=t[i,j]+1
            end;
            write( z[e]:5);
            writeln
            end
          end;
          if k>=56 then begin
            for e:= 1 to 56 do begin
              z[e]:=t[i,j]
          end;
          write( z[e]:5);
          writeln 
          end
    end
  end
End.
