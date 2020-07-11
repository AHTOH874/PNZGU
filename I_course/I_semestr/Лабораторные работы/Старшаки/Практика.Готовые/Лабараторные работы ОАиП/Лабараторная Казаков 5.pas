Program LB5;
const
  n=5; 
  m=7;
var
  i,j,a,k,kar:integer;                // i-массив,j-массив,a-сумма отриательных чисел,kar- количесвто отрицательных чисел,srgeo-среднее геометрическое,k-сумма положительных чисел 
  srgeo:real;

  d: array [1..n,1..m] of integer;
Begin
  randomize;
  writeln('Работу выполнили студенты группы 18ВИ1 Чернов Дмитрий Александрович и Хлынов Василий Николаевич.');
  a:=0;
  k:=0;
  kar:=0;
  writeln('Генерируем числа');
  for i:= 1 to n do begin
    for j:= 1 to m do begin
     d[i,j]:=random(1000)-500;
     write('d[',i,',',j,']=',d[i,j]:4,', ')
     end;
     writeln
   end;
   for i:= 1 to n do begin
    for j:= 1 to m do begin
       if d[i,j]>0 then
        k:=k+1
       else 
        a:=a+d[i,j];
        kar:=kar+1;
      srgeo:=a/kar;
    end;
  end;
  writeln('Количество положительных чисел= ',k);
  writeln('Cреднее геометрическое отрицательных чисел= ',srgeo)
End.
    