Program LB8;

var
  cifr:set of 0..9;
  i,k,g:integer;
  a:char;
  az:array[0..9] of byte;
Begin 
  cifr:=[0,1,2,3,4,5,6,7,8,9];
  Write('Введите натуральное число: ');
  readln(k);
  repeat
    g:=k mod 10;
    write(g);
    exclude (cifr,g);
    k:=k div 10;
    write(k);
    until k div 10=0;
    exclude (cifr,k);
    writeln(cifr);
 
    

   
   
    
 
 
End.
