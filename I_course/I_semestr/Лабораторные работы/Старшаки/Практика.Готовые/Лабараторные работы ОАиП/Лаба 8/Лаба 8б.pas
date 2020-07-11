Program LB8;
var
  b:set of 'а'..'я';
  bmass: set of 'a'..'z';
  i,k,g,n,slv,q:integer;
  a,max:string[80];
Begin
slv:=0;
bmass:=['a'..'z'];
b:=['а'..'я'];
write('Сколько слов вы хотите ввести?   ');
readln(n);
For i:= 1 to n do begin   
  Write('Введите слово: ');
  readln(a);
  q:=0;
  k:=length(a);
  for g:= 1 to k do begin 
    if (a[g] in bmass) or (a[g] in b) then  begin 
        q:=q+1;
    end;
  end;
    if q>slv then begin
      slv:=q;
      max:=a;
    end;
end;
writeln('Самое большое слово: ',max);
End.
  
   
  