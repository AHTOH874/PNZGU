const
  glasn = ['�', '�', '�', '�', '�', '�', '�', '�', '�'];

var 
  index, count, N: integer;
  str: array of string[80];
  output: string;
  

begin
  writeln('������� ���������� ����:');
  readln(N);
  setLength(str, N);
  count:= 81;
  for var i:= 0 to N-1 do
  begin
    write('������� �����: ');
    readln(str[i]); 
    if str[i].length < count then begin index:= i; count:= str[i].length end;
  end;
  count:=0;
  for var i:=1 to str[index].Length do 
  begin
    if not (lowCase(str[index][i]) in glasn) then output+=str[index][i] else inc(count);
  end;
  writeln('�����: ', output, ' ���-�� ��������: ', count);
end.