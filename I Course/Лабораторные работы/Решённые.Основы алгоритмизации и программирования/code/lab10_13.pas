type
  Race_type = record
    Number: string[5];
    From: string[12];
    punkt: string[10];
    Days: 1..7;
  end;

var
  N: integer;
  Race_array: array  of Race_type;

begin
  repeat
    write('������� ���-�� ������, ������� 10: ');
    readln(N);
  until N > 9;
  
  setLength(Race_array, N);
  for var i := 0 to N - 1 do 
    with Race_array[i] do
    begin
      write('������� ����� ����� - 5 ��������: ');
      readln(Number);
      write('������� ����� ����������� - 12 ��������: ');
      readln(From);
      write('������� ����� ���������� - 10 ��������: ');
      readln(punkt);
      write('������� ��� ������ - �� 1 �� 7: ');
      readln(Days);
      writeln;
    end;
  writeln('.-----------------------------------------------.');
  writeln('.  �����  |   �����     |   �����    |   ���    .');
  writeln('.  �����  | ����������� | ���������� | ������  .');
  writeln('`-----------------------------------------------`');
  
  for var i := 0 to N - 1 do
    with Race_array[i] do
    begin
      writeln(Number:2, From:4, punkt:2, Days:10);
    end;
  writeln;
  for var i := 0 to N - 1 do
    with Race_array[i] do
    begin
      if (From = '�����������') and ((Days = 1) or (Days = 3)) then writeln(Number:2, From:4, punkt:2, Days:10);
    end;
end.