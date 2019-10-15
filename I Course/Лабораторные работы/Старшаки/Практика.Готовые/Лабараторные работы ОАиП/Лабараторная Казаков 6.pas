Program LB6; 
var 

  z,x,y:real;   
  s1,s2,k1,k2,j:integer;
procedure MASS (n:integer; var t,g:integer);                             // w-имя массива, t-s1 или s2, g-k1 or k2, n-kon num in mass
var
 i,w:integer;
begin
writeln('Массив:');
for i:= 1 to n do begin 
   w:=random(50)-5;
   write(i:5,'=',w);
   if w<0 then begin  
    t:=t+w; 
    g:=g+1;
    end;
    writeln
    end;
    writeln('Сумма отрицательных элементов= ',t);
    writeln('Количество отрицательных элементов= ',g)
    
  
end;
  
 
 





Begin 


write('Введите х=');
read(x);
MASS(50,s1,k1);
MASS(70,s2,k2);
 for j:=  1 to 4 do begin
  z:=(exp(ln(x)*s1)+ exp(ln(y)*s2))/(2*k1*k2);
  writeln('z',j,'=',z:5);
  end
  
  
  
  
 
 















End.