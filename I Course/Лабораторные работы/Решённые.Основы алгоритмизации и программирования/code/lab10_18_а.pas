type
   Book__type= record
    Author: string[20];
    name: string[20];
    year: integer;
    shifr: string[8];
  end;

var
  N: integer;
  Book__array: array  of Book__type;

begin
  repeat
    write('������� ���-�� ����, ������� 10: ');
    readln(N);
  until N > 10;
  
  setLength(Book__array, N);
  for var i := 0 to N - 1 do 
    with Book__array[i] do
    begin
      write('������� �.�.�. ������� - 20 ��������: ');
      readln(Author);
      write('������� �������� - 20 ��������: ');
      readln(name);
      write('������� ��� ������� - �����: ');
      readln(year);
      write('������� ���� - 8 �������� ');
      readln(shifr);
      writeln;
    end;
  writeln();
  writeln('�.�.�. �������, ��������, ��� �������, ����');
  
  for var i := 0 to N - 1 do
    with Book__array[i] do
    begin
      writeln(Author,'   ', name,'   ', year,'   ', shifr);
    end;
  writeln;
  for var i := 0 to N - 1 do
    with Book__array[i] do
    begin
      if (shifr[1] = '�') and (year= 1990) then writeln(Author,'   ', name,'   ', year,'   ', shifr);
    end;
end.