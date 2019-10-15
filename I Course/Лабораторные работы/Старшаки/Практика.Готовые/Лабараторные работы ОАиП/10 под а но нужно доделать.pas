Program Lb10;
const fn='E:\1 семестр\11 лаба.txt';
type students=record  
  FIO:string[20];
  faculty:string[5];
  group:string[6];
  DR:string[5];
end;
var 
f: file of students;
s:students;
  a: array [1..10] of students; 
i:integer;
k:string[3];
y,ch:byte;
procedure vvod;
begin

  assign(f,fn);
  rewrite(f);
  for var  i:= 1 to 10 do begin
    writeln(i,'.Введите ФИО студента.'); 
    readln(a[i].FIO);
    writeln('Введите факультет на котором учиться студент.');
    readln(a[i].faculty);
    writeln('Введите номер группы студента.');
    readln(a[i].group);
    writeln('Введите номер группы студента.');
    readln (a[i].DR);
    
    
    
    write(f,a[i]);
    y:=i;
    writeln('Будете вводить следущего студента?(да/нет)(yes/no)');
    readln(k);
    if (k='no') or (k='нет') then 
    break;
end;
close(f);
  end;
procedure vivod;
begin 
  for var i:= 1 to 10 do begin 
    if y>=i then begin 
      writeln('Студент ',i,' ',a[i].FIO,a[i].faculty:10,a[i].group:10);
    end;
  end;
end;

Begin
repeat 
    writeln('Нажмите 1 для ввода');
    Writeln('нажмите 2 для вывода');
    writeln('Нажмите 3 для поиска студентов группы "97ВС2", 1980 года рождения ');
    Writeln('нажмите 4 для выхода');
    readln(ch);
    case ch of
    1: vvod;
    2: vivod;
    
    end;
    until ch=4;
END.
  
  
  
  

