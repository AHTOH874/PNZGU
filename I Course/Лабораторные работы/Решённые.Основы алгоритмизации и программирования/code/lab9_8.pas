var
  zagl: integer;
  str: string;

begin
  write('Введите текст: ');
  readln(str);
  str := str.Remove(' ').Remove(',').Remove('.');
  for var i := 1 to str.Length do 
    if str[i].IsUpper() then inc(zagl);
  writeln('Процентное соотнощение прописных: ', zagl / str.Length * 100);
  writeln('Процентное соотнощение строчных: ', (1 - zagl / str.Length) * 100);
end.