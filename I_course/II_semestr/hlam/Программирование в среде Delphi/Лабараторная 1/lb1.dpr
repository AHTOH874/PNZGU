program lb1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  windows;

Var
 x,y1,y2,y : real;

begin
SetConsoleCP(1251);
SetConsoleOutputCP(1251);
writeln('�� ������ ���� ����� ������������ ������ 2');
 write('������� �������� x = ');
 readln(x);
 if x>0 then
  begin
   y1:=(x*exp(ln(ln(exp(ln(x)*3)))*3)-abs(sqr(sin(x/2))-1));    // �������
   y2:=sqrt(abs(exp(sin(x)-sqr(x))+1));                         // ��������                         
   y:=y1/y2;
   writeln('Y = ',y:5:5);
  end
 else
  write('������� ���������� ��� ��� x < ��� = 0 ');
  readln
end.
