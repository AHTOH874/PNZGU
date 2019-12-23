const
  fn = 'F:\LEARNING\I Course\Лабораторные работы\Решённые.Основы алгоритмизации и программирования\code\11_8_lab.txt';

type
  Book__type= record
    Author: string[20];
    name: string[20];
    year: integer;
    shifr: string[8];
  end;
var
  F: text;
  file_s: file of Book__type;
  k: word;
  b: string;
  Race_array: array [1..5]  of Book__type;
  a: array of string;
  elem: Book__type;
begin
  k := 0;
  Assign(file_s, fn);
  rewrite(file_s);
  while k<6 do
  begin
    readln(b);
    a := b.Split(',');
    elem.Author := a[0];
    elem.name := a[1];
    elem.year := integer.Parse(a[2]);
    elem.shifr := a[3];
    write(file_s,elem);
    inc(k);
  end;
  Close(file_s);
end.