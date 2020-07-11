program lab8_8_a;

const
  glasn = ['а', 'е', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я'];

var
  soglasn: set of char;
  ch,: char;
  str: string;
  arra: array of string;

begin
  soglasn := ['а'..'я'] - glasn - ['ъ', 'ь'];
  write('Введите слова: ');
  readln(str);
  arra := str.Remove('.').split(',');
  for var i := 0 to Length(arra) - 1 do 
    for var k := 1 to arra[i].Length do
      if arra[i][k] in soglasn then soglasn := soglasn - [arra[i][k]];
  write('Буквы: ');
  for ch := 'а' to 'я' do if ch in soglasn then write(ch, ' ');
end.
