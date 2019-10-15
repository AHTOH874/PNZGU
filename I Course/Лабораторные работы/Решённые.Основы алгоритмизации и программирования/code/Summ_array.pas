program exams;
var
mas: array [1..5,1..5] of integer;
max,prom,i,j,n,m:integer;
ch:string;



Begin
write('Введите размерность массива ');
write('n = ');
read(n);
  For i:= 1 to n do begin
    for j:= 1 to n do begin
      mas[i,j]:= random(100)-50;
      write(mas[i,j]:5);
    end;
    writeln;
  end;

writeln('Ищем максимальный элемент строки');
For i:= 1 to n do begin
   for j:= 1 to n do begin
     If mas[i,j]>=max then begin
       max:=mas[i,j];
     end;
   end;
   writeln('Максимальные элементы строки ',i,' = ',max);
   max:=-100;
end;
end.
      
      
      


  
    
   

    






