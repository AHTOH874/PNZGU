type
  arr = array [,] of integer;

var
  h, xn, xk, y,  n, k, m: single ;
  a, b, c: integer;
  d, t, l: arr;

procedure sr_and_count(arra: arr; m, n: integer; var count: integer; sr: real);
var
  sum: integer;
begin
  sr := 0; count := 0;
  for var i := 0 to m - 1 do 
    for var j := 0 to n - 1 do 
    begin
      if arra[j, j] > 0 then begin inc(count);sum += arra[i, j]end;
    end;
  sr := sum / count;
  
end;

function Factorial(N: integer): int64;
begin
  if n<=1 then Factorial:=1 else Factorial:=Factorial(N-1)*N
end;


function fillArr(n, m: integer): arr;
var
  i, j: integer;
begin
  randomize;
  setLength(Result, n, m);
  for i := 0 to n - 1 do 
  begin
    for j := 0 to m - 1 do 
    begin
      Result[i, j] := random(-50, 50);
      write(Result[i, j]:5);
    end;
    writeln();
  end;
end;

begin
  writeln('Введите xn, xk, h: ');
  readln(xn, xk, h);
  writeln('Массив D');
  d:= fillArr(10,6);
  writeln('Массив T');
  t:= fillArr(8, 7);
  writeln('Массив L');
  l:= fillArr(12, 10);
  sr_and_count(d,10,6,a,n);
  sr_and_count(t,8,7,b,k);
  sr_and_count(l,12,10,c,m);
  while xn <= xk do
  begin
    write('x:=',xn, '   ');
    y:=(Factorial(a)*power(xn,n)+ Factorial(a+b)*power(xn,k))/Factorial(a*c)*power(xn,m);
    writeln('y:=',y);
    xn+=h;
  end;  
end.