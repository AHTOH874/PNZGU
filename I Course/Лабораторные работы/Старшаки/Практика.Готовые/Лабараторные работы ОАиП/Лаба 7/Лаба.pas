program lb7;
const
  fn= 'E:\1 семестр\Лаба 7\Student .txt';
  type student=record 
       FIO:string[30];
       kurs:byte;
       group:string[10];
       attest:byte;
       end;
Var
  ch:byte;
       
procedure Vivod;
var s:student; 
    f: file of student;
    g:string[10];
Begin 
write('Введите группу');
readln(g);
writeln('Cписок неаттестованных студнетов');
assign(f,fn);
reset(f);
while not(EOF(F)) do begin
  read(f,s);
  IF s.group=g then begin 
   if s.attest=0 then
    writeln(s.FIO,' ',s.kurs,' ',s.group);
   end;
  end; 
close(f)
End;
Procedure Vvod;
var s:student;
      f:file of student;
      i:byte;
      c:char;
      fn:string;
Begin         
  Write('input file name:');
  readln(fn);
  assign(f,fn);
  rewrite(f);     
    repeat
    write('Введите ФИО: ');
    readln(s.fio);
    write('Введите курс:');
    readln(s.kurs);
    write('Введите группу: ');
    readln(s.group);
    write('Введите Аттестаци: ');
    readln(s.attest);
    write(f,s);
    write('Продолжить?(y or n):');
    readln(c);
  until c='n';
  close(f);
End;
Begin 
   repeat 
    writeln('Нажмите 1 для вывода данных');
    Writeln('нажмите 2 для вывода неаттестованных студентов');
    writeln('Нажмите 3 для выхода');
    readln(ch);
    case ch of
    1: vvod;
    2: vivod;
    end;
    until ch=3;
ENd.
      
  
       
       
       
      
       
      