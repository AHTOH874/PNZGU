var
  zagl: integer;
  str: string;

begin
  write('������� �����: ');
  readln(str);
  str := str.Remove(' ').Remove(',').Remove('.');
  for var i := 1 to str.Length do 
    if str[i].IsUpper() then inc(zagl);
  writeln('���������� ����������� ���������: ', zagl / str.Length * 100);
  writeln('���������� ����������� ��������: ', (1 - zagl / str.Length) * 100);
end.