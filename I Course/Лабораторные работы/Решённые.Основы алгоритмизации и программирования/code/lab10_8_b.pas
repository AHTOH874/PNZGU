{
  В библиотеке для каждого заказывающего книгу читателя заполняется карточка: фамилия, дата заказа, дата выдачи книги.
  Определить: 
    1) кто чаще всего берет книги; 
    2) кому выдали книги 15.09.90; 
    3) сколько человек заказывали книги 25.04.90.
}
type
  User_type = record
    familiya: string[30];
    dataZakaza: string[8];
    dataVidachi: string[8];
  end;
  Users_type = record 
    familiya: string;
    count: integer;
  end;

var
  N, max, count: integer;
  name: string;
  USer_array: array of User_type;
  Users_array: array of Users_type;

procedure incrementUserCount(familiya: string; Users_array: array of Users_type;  N: integer);
begin
  for var i := 0 to N - 1 do 
  begin
    if Users_array[i].familiya = familiya then 
    begin
      Users_array[i].count += 1;
      break;
    end 
    else if Users_array[i].familiya = '' then 
    begin
      Users_array[i].familiya := familiya;
      Users_array[i].count += 1;
      break;
    end;
  end
end;

begin
  repeat
    write('Введите кол-во записей, минимум 4: ');
    readln(N);
  until N > 3;
  
  setLength(USer_array, N);
  setLength(Users_array, N);
  
  for var i := 0 to N - 1 do 
    with USer_array[i] do
    begin
      write('Введите Фимилию - 30 символов: ');
      readln(familiya);
      write('Введите дату заказа - 8 символов: ');
      readln(dataZakaza);
      write('Введите дату выдачи - 8 символов: ');
      readln(dataVidachi);
      incrementUserCount(familiya, Users_array, N);
      writeln;
    end;
  
  writeln('Фамилия':25, 'Дата заказа':15, 'Дата выдачи':15);
  
  for var i := 0 to N - 1 do
    with User_array[i] do
    begin
      writeln(familiya:25, dataZakaza:15, dataVidachi:15);
    end;
  
  write('Чаще всего брал книгу: ');
  
  for var i := 0 to N - 1 do
  begin
    if Users_array[i].count > max then begin max := Users_array[i].count; name := Users_array[i].familiya end;
  end;
  writeln(name);
  writeln;
  writeln('15.09.90 выдавали книгу: ');
  for var i := 0 to N - 1 do
  begin
    if User_array[i].dataVidachi = '15.09.90' then with User_array[i] do begin writeln(familiya:25, dataZakaza:15, dataVidachi:15) end;
  end;
  writeln;
  
  write('25.04.90 столько человек заказали книгу: ');
  for var i := 0 to N - 1 do
  begin
    if User_array[i].dataZakaza = '25.04.90' then count += 1;
  end;
  writeln(count);
  
end.