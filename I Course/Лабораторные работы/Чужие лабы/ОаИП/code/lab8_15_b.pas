program lab1;

var
  chars: set of char;
  n, tmp: byte;
  sum: integer;
  s: array of string[80];
  str: string[80];

begin
  chars := ['A'..'Z']; // ��������� ����� ���������� ��������.
  writeln('������� ���-�� ����: ');
  readln(n);
  setLength(s, n); // ����� ������ ������� �� ������ ������������
  //������������ �� ������������ � ���, ��� � ������� ����� �� 0, �� ��� ���������� n-1
  for var i := 0 to n - 1 do 
  begin
    readln(s[i]);
    tmp := 0; // �������� ����� ����� �������� ��� �����
    for var j := 1 to length(s[i]) do // length(s[i]) ���-�� �������� � ������ 
    begin
      // ���� ������ �� ������ � ������ chars, �� ���������� 1 � ����� � �����
      if not (s[i][j] in chars) then tmp := tmp + 1; 
    end;
    sum := sum + tmp;
  end;
  writeln('��������� �������� �������� �� ��������� ��������� ����: ', sum);
end.
