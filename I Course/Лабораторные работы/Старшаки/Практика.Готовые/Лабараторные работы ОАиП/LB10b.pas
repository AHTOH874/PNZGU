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
  If a[i].pol='Мужской' then
    r:=a[i].O;
  For j:= 1 to y do begin 
    If a[i].O=r then 
      schet:=schet+1;
  end;
  If schet>max then begin
    max:=schet;
    OT:=r;
  end;
end;
writeln('Самая распространенное отчесвто: ',OT);
max:=0;
For i:= 1 to y do begin 
  schet:=0;
  If a[i].pol='Мужской' then
    voz:=a[i].vosrast;
  for j:= 1 to y do begin
    If a[i].vosrast=voz then 
      schet:=schet+1;
  end;
  If schet>max then begin
    max:=schet;
    mxvoz:=voz;
  end;
end;
Writeln('Самый распространенный возраст: ',mxvoz);
max:=0;
For i:= 1 to y do begin
  schet:=0;
  If (a[i].O=OT) and (a[i].vosrast=mxvoz) then  
    PL:=a[i].kyrs;
  for j:= 1 to y do begin
  If (a[i].O=OT) and (a[i].vosrast=mxvoz) and (a[i].kyrs=PL) then
    schet:=schet+1;
  end;
  If schet>max then begin
    max:=schet;
    mxkyrs:=PL;
  end;
end;
writeln('Курс на котором больше всего студентов с распространенным возрастом и отчеством: ',mxkyrs);

    
 
    
    
    

    













end.






   