var
  y, x, xn, xk, h: real;
  pol, otr: integer;

begin
  writeln('Введите начало отрезка: ');readln(xn);
  writeln('Введите конец отрезка: ');readln(xk);
  writeln('Введите шаг: ');readln(h);
  x := xn;
  repeat
    begin
      y := (1 - exp(-2 * x)) * cos(2 * x);
      if y > 0 then inc(pol) else inc(otr);
      writeln('x: ', x:8:4, ' y: ', y:8:4);
      x += h;
    end
  until x > xk; 
  if pol >= otr then writeln('Превышает') else writeln('Не превышает');;
end.
