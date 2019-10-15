Program LB10b;
const
 N=255;
type student=record 
  F: string[15];
  I: string[15];
  O:string [15];
  pol:string[10];
  vosrast:byte;
  kyrs:byte;
  end;
  var s:student;
  a: array [1..N] of student; 
  i,j:integer; r,OT:string;
  k:string[3];
  y,ch,schet,max,voz,mxvoz,PL,mxkyrs:byte;
procedure vvod;
begin
  for var  i:= 1 to N do begin
    writeln(i,'.Введите ФИО студента.'); 
    readln(a[i].F);
    readln(a[i].I);
    readln(a[i].O);
    writeln('Введите возраст судента.');
    readln(a[i].vosrast);
    writeln('Введите пол стундента ');
    readln(a[i].pol);
    writeln('Введите курс студента');
    readln(a[i].kyrs);
    y:=i;
    writeln('Будете вводить следущего студента?(да/нет)(yes/no)');
    readln(k);
    if (k='no') or (k='нет') then 
    break;
end;
end;
Begin
vvod;
max:=0;
For i:= 1 to y do begin 
  schet:=0;
  if a[i].pol='Мужской' then begin 
    OT:=a[i].O;
    for j:= 1 to y do begin 
      if a[i].pol='Мужской' then begin
        If a[i].O=OT then 
          schet:=schet+1;
      end;
      If schet>=max then 
          max:=schet;
          r:=OT;
    end;
  end;
end;
Writeln('Самая распространенная фамилия: ', r);
max:=0;
For i:= 1 to y do begin 
  schet:=0;
  if a[i].pol='Мужской' then 
    voz:=a[i].vosrast;
  for j:= 1 to y do begin
    if (a[i].pol='Мужской') and (a[i].vosrast=voz) then 
      schet:=schet+1;
     end;
If schet>=max then begin
          max:=schet;
          mxvoz:=voz;
end;
end;
Writeln('Самый распространенный возраст:',mxvoz);
max:=0;                                                                            // Нужно исправить чтобы после 2 цикла тоже было условие про фамилии и отчества                                                                          // Дописать опредление кур                                                                       // И вывести этот курс на эк                                                                            
For i:= 1 to y do begin 
  schet:=0; 
  If (a[i].O=r) and (a[i].vosrast=mxvoz) then begin 
  PL:=a[i].kyrs;
  for j:=1 to y do begin 
  If (a[i].O=r) and (a[i].vosrast=mxvoz) and (a[i].kyrs=PL) then 
    schet:=schet+1;
  end;
  If schet>=max then begin
          max:=schet;
          mxkyrs:=PL;
          end;
          end;
          end;
          
writeln('Курс',mxkyrs);
  
  
  
  
    

      
    
  

  
end.

        
          
      
      
      
        
   
    