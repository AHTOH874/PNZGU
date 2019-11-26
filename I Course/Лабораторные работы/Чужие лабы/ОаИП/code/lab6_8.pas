program laba6;

const
  q = 11; w = 10; e = 12;a = 20; u = 10; o = 15;

var
  p: array[1..e, 1..e] of integer;
  x, i, j, m, k, b, n, c, s, l: integer;
  y: real;

procedure matrix(a, z: integer; var m: integer; n: real);
var
  i, j: integer;
begin
  randomize;
  for i := 1 to z do
  begin
    for j := 1 to z do
    begin
      p[i, j] := random(10) - 8;
      write(p[i, j]:3);
      if (p[i, j] > 0) and (j > i) then begin
        m := m + 1; n := n + p[i, j];
        n := n / m;
      end;
    end;
    writeln;
  end;
  writeln('Кол-во положительных элементов=', m);
  writeln('Ср.ар. элементов=', n);
end;

function Fact(m: integer): LongInt;
begin
  if m = 0 then Fact := 1 else Fact := m * Fact(m - 1);
end;

begin
  writeln('Матрица l');
  matrix(a, e, k, a);
  writeln('Матрица t');
  matrix(u, q, m, b);
  writeln('Матрица d');
  matrix(o, w, n, c);
  for x := 0 to 10 do
  begin
    y := (k * power(Fact(x), a) + (k + m) * power(x, b)) / (((k * n) * power(Fact(x), c)) * x);
    writeln('x=', x);
    writeln('y=', y);
  end;
end.