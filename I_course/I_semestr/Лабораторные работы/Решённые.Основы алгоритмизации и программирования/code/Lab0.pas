Program One;
{ ��������������� ��������� �� ����� BP7.0  }
Uses Crt;
Var
   d, c, s, r : integer;
   a, b, p, ch : real;
   name : string[12];
Begin
  ClrScr;
  writeln('������� ���� ���');
  readln(name);
  writeln('  ':10, '������������, ', name,'!');
  writeln('������� ��� ����� �����');
  readln(d,c);
  s := d + c;
  writeln('C���� ����� ����� = ',s);
  r := d - c;
  writeln('��������  ����� ����� = ',r);
  writeln('������� ��� �������������� �����');
  readln(a,b);
  ch := a / b;
  writeln('������� ���� ����� =' ,ch:6:2);
  p := a * b;
  writeln('������������  ���� ����� =',p:6:2);
  Readkey;
End.
