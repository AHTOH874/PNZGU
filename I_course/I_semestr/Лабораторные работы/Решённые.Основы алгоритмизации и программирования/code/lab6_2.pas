type
  arr = array [,] of integer; // чтобы работали нормально фун-ции и процедуры
var
  a, b: arr;
  x: real;
  i, j, d1, d2, t2, t1: integer;

procedure calc(arra: arr; n, m: integer; var d, t: integer);
var
  i, j, sum: integer;
  isNonNull: boolean; 
begin
  d := 0;t := 0;isNonNull := True;
  for i := 0 to n - 1 do 
  begin
    for j := 0 to m - 1 do 
    begin
      if (arra[j, i] <> 0) then   // <> - неравно, !!обрати внимание к какому элементу обращаемся!! 
                                  // мы поменяли строки со столбцами, чтобы цикл шёл по столбцу
        sum := sum + abs(arra[j, i]) // abs() - модуль или абсолютное число
      else 
        isNonNull := False; // показываем, что в столбе есть ноль
      
      if (j = m - 1) and isNonNull then // проверка что строка послдняя и нет нулей 
      begin
        d := d + 1;
        t := t + sum;
        sum := 0;
      end;
    end;
    isNonNull := True;  
  end;
end;

function fillArr(n, m: integer): arr;
var
  i, j: integer;
begin
  randomize;
  setLength(Result, n, m); // Выделяем память для массива, 
                           // аналог Result: array [1..n, 1..m] of integer
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
  writeln('Массив А:');
  a := fillArr(8, 6);  // записываем зн-ие фун-ии в переменную
  calc(a, 6, 8, d1, t1);
  writeln('Массив B:');
  b := fillArr(12, 8);
  calc(b, 8, 12, d2, t2);
  x := ln(d2 / t2 / exp(d1 / t1)); // Если решить уравнение,то получится такое выражение
  writeln('Корень уравнения ',x);
end.