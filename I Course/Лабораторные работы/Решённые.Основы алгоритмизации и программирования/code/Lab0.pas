Program One;
{ Ознакомительная программа на языке BP7.0  }
Uses Crt;
Var
   d, c, s, r : integer;
   a, b, p, ch : real;
   name : string[12];
Begin
  ClrScr;
  writeln('Введите Ваше имя');
  readln(name);
  writeln('  ':10, 'Здравствуйте, ', name,'!');
  writeln('Введите два целых числа');
  readln(d,c);
  s := d + c;
  writeln('Cумма целых чисел = ',s);
  r := d - c;
  writeln('Разность  целых чисел = ',r);
  writeln('Введите два действительных числа');
  readln(a,b);
  ch := a / b;
  writeln('Частное двух чисел =' ,ch:6:2);
  p := a * b;
  writeln('Произведение  двух чисел =',p:6:2);
  Readkey;
End.
