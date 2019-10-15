Program LB3B;
var
 y,x,start,finish,step,max:real; 
Begin
 max:=0;
 write('Введите начальное значение переменной start= ');
 readln(start);
 write('Введите конечное значение переменной finish= ');
 readln(finish);
 write('Введите шаг step= ');
 readln(step);
 x:=start;
 while (x >= start) and (x <= finish) do
  begin
    y:=(1-exp(-sqr(x))*sin(3*x));
    if max=0 then begin
      max:=y;
    end;
    if y>max then begin
      max:=y;
    end;
    x:=x+step;
  end;
 writeln('Максимальное значение функции равно max= ',max)
END.
    
    
    
 
 
