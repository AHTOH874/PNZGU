type student=record
              FIO:string[30]; 
              group:string[6];
              kurs:byte;
              ocenki:array[1..10] of byte;End;
procedure vvod;
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
    write('input FIO:');
    readln(s.fio);
    write('input kyrse:');
    readln(s.kurs);
    write('input group:');
    readln(s.group);
    for i:=1 to 10 do
    begin 
    write('input оценка:');
   
    readln(s.ocenki[i]);
    end;
    write(f,s);
    write('continue?(y or n):');
    readln(c);
  until c='n';
  close(f);
End;
Procedure Vivodgroup;
  var
   f:file of student;
   fn:string;
   s:student;
Begin
  write('input file name:');
  readln(fn);
  assign(f,fn);
  
  reset(f);
  
  {$I+}
  While  not(EOF(F)) do   
    Begin 
    read(f,s);
    IF s.group='KN-11'then 
      writeln(s.fio:32,s.kurs);
      
    
     end;
   close (f);
   end;
var 
ch:byte;
   Begin 
   repeat 
    writeln('1: vvoda');
    Writeln('2 :vivoda');
    writeln('3: exit');
    readln(ch);
    case ch of
    1: vvod;
    2: vivodgroup;
    end;
    until ch=3;
ENd.

  
  
   
   
      
    
    
    