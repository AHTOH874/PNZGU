program lab11;

Uses sort;

var
  ch: byte;

procedure Input;

var
  F: text;
  
  Name_F: string;
  
  k: word;

begin
  
  write('Введите имя файла: ');
  
  Readln(Name_F);
  
  k := 0;
  
  Assign(F, Name_F);
  
  Reset(F);
  
  while not EOF(F) do
  
  begin
    
    inc(k);
    
    readln(F, Massif[k].Cipher);
    
    readln(F, Massif[k].Name);
    
    readln(F, Massif[k].Price);
    
    readln(F, Massif[k].Amount);
    
  end;
  
  n := k; //Считанное число записей
  
  Close(F);
  
end;

procedure Conclusion;

var
  i: word;

begin
  
  Writeln('Шифр товара':20, ' |', 'Наименование':20, ' | ', 'Цена (в руб.)':20, ' | ', 'Количество экземпляров':20);
  
  for i := 1 to n do
    
    writeln(Massif[i].Cipher:20, ' | ', Massif[i].Name:20, ' | ', Massif[i].Price:20, ' | ', Massif[i].Amount:20);
  
end;

begin
  
  Input;
  
  writeln('Исходный список: ');
  
  Conclusion;
  
  repeat
    
    Writeln('Выберите действие: ');
    
    Writeln('Для сортировки методом пузырька нажмите 1');
    
    Writeln('Для сортировки методом выбора нажмите 2 ');
    
    Writeln('Для выхода нажмите 3');
    
    Write('Ввод: ');
    
    Readln(ch);
    
    if ch = 1 then begin
      
      Sort_Exchange;
      
      Conclusion;
      
    end;
    
    if ch = 2 then begin
      
      Sort_Choose;
      
      Conclusion;
      
    end;
    
  until ch = 3;
  
  writeln('Завершение работы');
  
end.