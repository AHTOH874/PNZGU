program lb7;
  type student=record 
       FIO:string[45];
       kurs:string[2];
       group:string[10];
       attest:byte;
       end;
var s:student; 
    f: file of student;
    fn,g:string;
    
   
  



Begin 
Write('Введите имя файла:');
readln(fn);
assign(f,fn);
reset(f);
write('Введите группу');
readln(g);

while not(EOF(F)) do begin
  read(f,s);
  write(s.FIO);
  end;
    
close(f)

End.
    
      
  
       
       
       
      
       
      