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
  writeln('������� ������ ����� �����: ');
  readln(a);
  writeln('������� 2 ����� �����: ');
  readln(b);
  res:=a+b;
  writeln('����� ���� ����� ����� = ',res);
  readln;
end.
