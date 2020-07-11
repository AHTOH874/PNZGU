Program LB12;
var
  i,w,maxA,minB,chet,j,k:integer;
  A: array of integer;
  B: array of integer;
  C: array [1..1000] of integer;
  q:string;
  n:=readinteger;   // Вводим размерность массивов (A and B)

Procedure Vvod;
Begin
  writeln('Вводим массив А');
  For var i:= 1 to n-1 do begin
    writeln('Введите число массива');
    readln(w);
    A[i]:=w;
  end;
  writeln('Вводим массив B');
  For var i:= 1 to n-1 do begin
    writeln('Введите число массива');
    readln(w);
    B[i]:=w;
  end;
End;
Procedure Randomi;
Begin
  A:=new integer[n];
  writeln('Вводим массив А');
  For var i:= 1 to n-1 do begin
    A[i]:=random(120)-50;
  end;
  B:=new integer[n];
  writeln('Вводим массив B');
  For var i:= 1 to n-1 do begin
    B[i]:=random(100)-20;
  end;
End;
Procedure Vivod;
Begin
  write('Массив А: ');
  for var i:= 1 to n-1 do begin
  write(A[i]:5);
  end;
  writeln;
  write('Массив B: ');
  for var i:= 1 to n-1 do begin
    write(B[i]:5);
  end;
  writeln;
End;
Begin




chet:=0;
maxA:=0;
minB:=32000;
repeat
  writeln('Заполнять Массив вручную?(Yes/No)(Да/Нет)');
  readln(q);
until (q='yes') or (q='no') or (q='да') or (q='нет');
If (q='да') or (q='yes') then
  Vvod;
If (q='нет') or (q='no') then
  Randomi; 
writeln('Вывод исходных массивов:');
Vivod;
write('Максимммальное значение массива A: ');
For i:= 1 to n-1 do begin
 if A[i]>maxA then
  maxA:=A[i];
end;
writeln(maxA);
write('Минимальное значение массмва B: ');
For i:=1 to n-1 do  begin
  if B[i]<minB then
    minB:=B[i];
end;
writeln(minB);
write('Количество элементов в массиве С: ');
For i:= 1 to n-1 do begin
  if A[i]<minB then 
  chet:=chet+1;
end;
For i:= 1 to n-1 do begin 
  if B[i]>maxA then
  chet:=chet+1;
end;
writeln(chet);
For j:=1 to chet do begin
  C[j]:=0;
end;
For i:= 1 to n-1 do begin
  if A[i]<minB then begin
    For j:= 1 to chet do begin
      If C[j]=0 then begin
        C[j]:=A[i];
        break;
      end;
    end;
  end;
end;
For i:= 1 to n-1 do begin
  if B[i]>maxA then begin
    For j:= 1 to chet do begin
      If C[j]=0 then begin
        C[j]:=B[i];
        break;
      end;
    end;
  end;
end;
writeln('Массив С');
For j:= 1 to chet do begin
  writeln(C[j]);
end;
writeln('Осортированный массив А: ');
for i:=1 to n-1 do begin
  for j:=1 to n-1-i do begin
    if A[j]>A[j+1] then begin
      k:=A[j];
      A[j]:=A[j+1];
      A[j+1]:=k;
    end;
  end;
end;
for i:=1 to n-1 do
Write(A[i], ' ');
writeln;
writeln('Осортированный массив B: ');
for i:=1 to n-1 do begin
  for j:=1 to n-1-i do begin
    if B[j]>B[j+1] then begin
      k:=B[j];
      B[j]:=B[j+1];
      B[j+1]:=k;
    end;
  end;
end;
for i:=1 to n-1 do
Write(B[i], ' ');
writeln;

writeln('Осортированный массив C: ');
for i:=1 to n-1 do begin
  for j:=1 to n-i do begin
    if C[j]>C[j+1] then begin
      k:=C[j];
      C[j]:=C[j+1];
      C[j+1]:=k;
    end;
  end;
end;
for i:=1 to n do begin
  if C[i]<>0 then
    Write(C[i], ' ');
end;
A:=nil;
B:=nil;
End.