{
  ������� ����� ���������� 
  19��1
  ������� 30
}
program lab_30;

var
  output: double;
  input: double;

begin
  write('������� ����� ��� �������� ��������� �������: ');
  read(input);
  output := Sin(Power(input, 3) + 1) / (Tan(Sqrt(Abs(input - 1)) + Exp(-Power(input, 2))));
  writeln('�������� �������: ', output)
  
end.