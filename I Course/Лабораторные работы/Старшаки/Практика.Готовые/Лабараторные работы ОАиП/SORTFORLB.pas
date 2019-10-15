Unit SORTFORLB;
Interface
type students=record  
  FIO:string[20];
  faculty:string[5];
  group:string[6];
  DR:string[5];
end;
var 
  a:array [1..1000] of students;
  n:word; // Число записей в файле и списке
  procedure sort_exchange;
  procedure sort_choose;
implementation 
procedure sort_exchange;
var 
  i,j:word;
  st:students;
begin 
  for i:= 1 to (n-1) do begin
    for j:= 1 to (n-i) do begin
    if a[j].FIO[1]>a[j+1].FIO[1] then begin
      st:=a[j];
      a[j]:=a[j+1];
      a[j+1]:=st;
    end;
    end;
  end;
end;
procedure Sort_Choose; 
var 
  i,j,id_min:word;
  st_min:string;
  st:students;
begin
  for i:= 1 to n-1 do begin
    st_min:=a[i].FIO[1];
    id_min:=i;
    for j:=i+1 to n do
      if a[j].FIO[1]<st_min then  begin
        st_min:=a[j].FIO;
        id_min:=j;
      end;
      st:=a[i];
      a[i]:=a[id_min];
      a[id_min]:=st;
  end;
end;  
end.