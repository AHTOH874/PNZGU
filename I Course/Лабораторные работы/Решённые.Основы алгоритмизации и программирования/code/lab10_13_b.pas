
type
  Student_type = record
    familiya: string[30];
    number: integer;
    classs: 1..11;
    mecto: integer;
  end;
  School_type = record 
    number: integer;
    count: integer;
  end;

var
  N, max, name: integer;
  Student_array: array of Student_type;
  School_array: array of School_type;

procedure incrementScool(number: integer; School_array: array of School_type;  N: integer);
begin
  for var i := 0 to N - 1 do 
  begin
    if School_array[i].number = number then 
    begin
      School_array[i].count += 1;
      break;
    end 
    else if School_array[i].number = 0 then 
    begin
      School_array[i].number := number;
      School_array[i].count += 1;
      break;
    end;
  end
end;

begin
  repeat
    write('������� ���-�� �������, ������� 10: ');
    readln(N);
  until N > 9;
  
  setLength(Student_array, N);
  setLength(School_array, N);
  
  for var i := 0 to N - 1 do 
    with Student_array[i] do
    begin
      write('������� ������� - 30 ��������: ');
      readln(familiya);
      write('������� ����� ����� - �����: ');
      readln(number);
      write('������� ����� ������� - �� 1 �� 11: ');
      readln(classs);
      write('������� ����� - �����: ');
      readln(mecto);
      if mecto < 4 then incrementScool(number, School_array, N);
      writeln;
    end;
  
  writeln('�������     ����� �����   �����  �����');
  
  for var i := 0 to N - 1 do
    with Student_array[i] do
    begin
      writeln(familiya:5, number:5, classs:5, mecto:5);
    end;
  
  write('������ ���� �������� �������� �����: ');
  
  foreach x: School_type in School_array do
    if x.number > 0 then write(x.number, ' ');
  writeln('��� ����� ������ ������ ���� �������� ����: ');
  
  for var i := 0 to N - 1 do
  begin
    if School_array[i].count > max then begin max := School_array[i].count; name:= School_array[i].number end;
  end;
  writeln(name);

end.