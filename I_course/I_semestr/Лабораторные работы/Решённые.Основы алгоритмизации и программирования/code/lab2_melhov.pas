program lab2_melhov;

label A;
var
  x, y, z: real;
  m: integer;

begin
  write('Введите первое число ');readln(x);
  write('Введите второе число ');readln(y);
  A: writeln('Нажмите 1, чтобы увеличть все числа в 3 раза');
  writeln('Нажмите 2, чтобы определить произведение всех чисел');
  readln(m);
  case m of 
    1: 
      begin
        if (x > 0) and (y > 0) then begin
          x *= 3; y *= 3;z:=m*3;
        end;
          writeln('Первое число:', x:8:4, 'Второе число:', y:8:4, 'Третье число:', z:8:4 ); 
      end;
    2:
      begin
        z := x * y * m;
        writeln('Первое число:', x:8:4, 'Второе число:', y:8:4, 'Третье число:', z:8:4 );         
        
      end;
  else goto A;
  
  end
end.