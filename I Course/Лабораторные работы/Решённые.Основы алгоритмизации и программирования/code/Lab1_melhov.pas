{
  Мельхов Антон Алексеевич 
  19ВИ1
  Вариант 30
}
program lab_30;

var
  output: double;
  input: double;

begin
  write('Введите число для которого считается функция: ');
  read(input);
  output := Sin(Power(input, 3) + 1) / (Tan(Sqrt(Abs(input - 1)) + Exp(-Power(input, 2))));
  writeln('Значении функции: ', output)
  
end.