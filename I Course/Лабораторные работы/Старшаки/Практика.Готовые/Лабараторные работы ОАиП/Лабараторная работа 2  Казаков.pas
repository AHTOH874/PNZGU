Program LB2;
var
x:integer;
y:real;
Begin
 writeln('������ ��������� �������� ������ 18��1 ������ ������� � �������� ������');
 write('������� �������� �= ');
 readln(x);
 If x mod 3=0 then
 begin
 y:=sqr(x)
  end
 else 
  y:=sqrt(x);
 writeln('y = ',y)
End.
  
 