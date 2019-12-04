type
  Race_type = record
    Number: string[5];
    From: string[12];
    punkt: string[10];
    Days: 1..7;
  end;

var
  N: integer;
  Race_array: array  of Race_type;

begin
  repeat
    write('Введите кол-во рейсов, минимум 10: ');
    readln(N);
  until N > 9;
  
  setLength(Race_array, N);
  for var i := 0 to N - 1 do 
    with Race_array[i] do
    begin
      write('Введите номер рейса - 5 символов: ');
      readln(Number);
      write('Введите пункт отправления - 12 символов: ');
      readln(From);
      write('Введите пункт назначения - 10 символов: ');
      readln(punkt);
      write('Введите дни полётов - от 1 до 7: ');
      readln(Days);
      writeln;
    end;
  writeln('.-----------------------------------------------.');
  writeln('.  Номер  |   Пункт     |   Пункт    |   Дни    .');
  writeln('.  рейса  | отправления | назначения | Полётов  .');
  writeln('`-----------------------------------------------`');
  
  for var i := 0 to N - 1 do
    with Race_array[i] do
    begin
      writeln(Number:2, From:4, punkt:2, Days:10);
    end;
  writeln;
  for var i := 0 to N - 1 do
    with Race_array[i] do
    begin
      if (From = 'Владивосток') and ((Days = 1) or (Days = 3)) then writeln(Number:2, From:4, punkt:2, Days:10);
    end;
end.