type student=record
              FIO:string[30]; 
              kurs:byte;
             group :string[10];
             attest:byte;
              End;
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
    write('continue?(y or n):');
    readln(c);
  until c='n';
  close(f);
End.