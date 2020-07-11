program lab3_melhov;

var
  y, x: real;
  i: integer;

begin
  x:=0;
  for i := 1 to 11 do 
  begin
      y:=exp(ln((3*Power(x,4)+7*x))/3);
      writeln('x:=',x:8:4, ' y:=', y:8:4);
      x := -i * 0.2;
  end; 
end.