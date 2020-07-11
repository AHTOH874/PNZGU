Program LB2;
var
x:integer;
y:real;
Begin
 writeln('Работу выполнили студенты группы 18ВИ1 Чернов Дмитрий и Васислий Хлынов');
 write('Введите значение х= ');
 readln(x);
 If x mod 3=0 then
 begin
 y:=sqr(x)
  end
 else 
  y:=sqrt(x);
 writeln('y = ',y)
End.
  
 