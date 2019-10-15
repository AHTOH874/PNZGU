var  y, x: real;

begin
  x := -2.0;
  while x <= 0 do
  begin
    y := exp(ln(3 * Power(x, 4) + 7 * x) / 3);
    writeln('x:=', x:8:4, ' y:=', y:8:4);
    x += 0.2
  end
end.
