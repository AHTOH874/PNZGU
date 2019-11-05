type
  arr = array [,] of integer;

var
  h, xn, xk,n, k, m : real;
  y: single;
  a, b, c: integer;
  d, t, l: arr;

procedure sr_and_count(arra: arr; m, n: integer; var count: integer; var sr: real);
var
  sum: integer;
begin
  sr := 0; count := 0;
  for var i := 0 to m - 1 do 
    for var j := 0 to n - 1 do 
    begin
//      writeln(length(arra));
//      writeln(i, '  ', j);
//      writeln(arra[j, j] > 0, arra[i, j]);
      if arra[j, j] > 0 then begin inc(count);sum += arra[i, j]end;
    end;
  if count <> 0 then sr := trunc((sum / count) * 100 + 0.5)/100;
  writeln(count,sr);
end;

function Factorial(N: integer): int64;
begin
  if n <= 1 then Factorial := 1 else Factorial := Factorial(N - 1) * N
end;


function fillArr(n, m: integer): arr;
var
  i, j: integer;
begin
  setLength(Result, n, m);
  randomize;
  for i := 0 to n - 1 do 
  begin
    for j := 0 to m - 1 do 
    begin
      Result[i, j] := random(100)-50;
      write(Result[i, j]:5);
    end;
    writeln();
  end;
end;

begin
  writeln('Введите xn, xk, h: ');
  readln(xn, xk, h);
  writeln('Массив D');
  d := fillArr(5, 4);
  writeln('Массив T');
  t := fillArr(3, 2);
  writeln('Массив L');
  l := fillArr(2, 1);
  sr_and_count(d, 5, 4, a, n);
  sr_and_count(t, 3, 2, b, k);
  sr_and_count(l, 2, 1, c, m);
  while xn <= xk do
  begin
    write('x:=', xn, '   ');
    write(n,' ', k, ' ', m);
    y := (Factorial(a) * power(xn, n) + Factorial(a + b) * power(xn, k)) / Factorial(a * c) * power(xn, m);
    writeln('y:=', y);
    xn += h;
  end;  
end.