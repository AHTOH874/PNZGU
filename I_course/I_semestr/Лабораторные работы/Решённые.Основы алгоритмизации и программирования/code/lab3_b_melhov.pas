var
  y, x, xn, xk, h: real;
  pol, otr: integer;

begin
  writeln('������� ������ �������: ');readln(xn);
  writeln('������� ����� �������: ');readln(xk);
  writeln('������� ���: ');readln(h);
  x := xn;
  repeat
    begin
      y := (1 - exp(-2 * x)) * cos(2 * x);
      if y > 0 then inc(pol) else inc(otr);
      writeln('x: ', x:8:4, ' y: ', y:8:4);
      x += h;
    end
  until x > xk; 
  if pol >= otr then writeln('���������') else writeln('�� ���������');;
end.
