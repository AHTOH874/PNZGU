program LB9;
var
    s: string;
    len,i: byte;
begin
    write('Введите строку:  ');
    readln(s);
    len := length(s);
    for i:=len downto 1 do 
        if s[i]=' ' then begin
            delete(s,i,len-i+1);
            break;
        end;
    writeln(s);
end.