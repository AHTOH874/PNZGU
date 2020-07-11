Program Lab1;
Var 
 x,y1,y2,y : real;
Begin 
 writeln('Работу выполнили студенты группы 18ВИ1 Чернов Дмитрий Александрович и Хлынов Василий Николаевич.');
 write('Введите значение x = ');
 readln(x);
 if x>0 then 
  begin
   y1:=(x*exp(ln(ln(exp(ln(x)*3)))*3)-abs(sqr(sin(x/2))-1));    // Делимое 
   y2:=sqrt(abs(exp(sin(x)-sqr(x))+1));                         // Делитель                         
   y:=y1/y2;
   writeln('Y = ',y:5:5);
  end
 else
  write('Решение невозможно так как x < или = 0 ');
End.