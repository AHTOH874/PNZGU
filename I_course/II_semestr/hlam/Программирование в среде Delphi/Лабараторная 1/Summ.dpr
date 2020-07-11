program Summ;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

var
a,b,res : integer;

begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  writeln('¬ведите первое целое число: ');
  readln(a);
  writeln('¬ведите 2 целое число: ');
  readln(b);
  res:=a+b;
  writeln('—умма двух целых чисел = ',res);
  readln;
end.
