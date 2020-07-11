Program LB8;
var
  cifr:set of 0..9;
  i,k,g:integer;
  a:char;
  az:array[0..9] of byte;
Begin 
  cifr:=[0..9];
  Write('Введите натуральное число: ');
  readln(k);
  repeat
    g:=k mod 10;
    exclude (cifr,g);
    k:=k div 10;
    until k div 10=0;
    exclude (cifr,k);
    write('Множество{');
   for i:=0 to 255 do begin 
    if i in cifr then begin
      write(i:2);
    end;
   end;
   write('}');
End.
