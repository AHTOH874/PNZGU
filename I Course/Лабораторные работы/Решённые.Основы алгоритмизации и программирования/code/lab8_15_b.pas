program lab1;

var
  chars: set of char;
  n, tmp: byte;
  sum: integer;
  s: array of string[80];
  str: string[80];

begin
  chars := ['A'..'Z']; // Заглавные буквы латинского алфавита.
  writeln('Введите кол-во слов: ');
  readln(n);
  setLength(s, n); // Задаём длинну массива из данных пользователя
  //пользователь не задумывается о том, что в массиве отчсёт от 0, мы это поправляем n-1
  for var i := 0 to n - 1 do 
  begin
    readln(s[i]);
    tmp := 0; // Обнуляем сумму таких символов для слова
    for var j := 1 to length(s[i]) do // length(s[i]) кол-во символов в строке 
    begin
      // Если символ не входит в массив chars, мы прибавляем 1 к сумме в слове
      if not (s[i][j] in chars) then tmp := tmp + 1; 
    end;
    sum := sum + tmp;
  end;
  writeln('Количесво символов отличных от заглавных латинских букв: ', sum);
end.
