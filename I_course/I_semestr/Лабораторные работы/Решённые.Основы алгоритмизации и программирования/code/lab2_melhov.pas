program lab2_melhov;

label A;
var
  x, y, z: real;
  m: integer;

begin
  write('������� ������ ����� ');readln(x);
  write('������� ������ ����� ');readln(y);
  A: writeln('������� 1, ����� �������� ��� ����� � 3 ����');
  writeln('������� 2, ����� ���������� ������������ ���� �����');
  readln(m);
  case m of 
    1: 
      begin
        if (x > 0) and (y > 0) then begin
          x *= 3; y *= 3;z:=m*3;
        end;
          writeln('������ �����:', x:8:4, '������ �����:', y:8:4, '������ �����:', z:8:4 ); 
      end;
    2:
      begin
        z := x * y * m;
        writeln('������ �����:', x:8:4, '������ �����:', y:8:4, '������ �����:', z:8:4 );         
        
      end;
  else goto A;
  
  end
end.