const
  path = 'F:\LEARNING\I Course\Лабораторные работы\Решённые.Основы алгоритмизации и программирования\code\7_labas.txt';

type
  country = Record
    name: string[20];
    capital: string[20];
    area: integer;
    population: integer;
    density: real;
  end;

var
  countries: Text;
  a: array of string;
  b: string;
  countrU: country;
  countryy: array [1..10] of country;
  countries_file: file of country;

procedure Print_str(countr: country);
begin
  writeln(countr.name:17, 
      countr.capital:13,
      countr.area:10,
      countr.population:10,
      countr.density:10:2);
end;

begin
  Assign(countries_file, path);
  ReWrite(countries_file);
  for var i := 1 to 10 do
  begin
    readln(b);
    a := b.Split(',');
    countrU.name := a[0];
    countrU.capital := a[1];
    countrU.area := integer.Parse(a[2]);
    countrU.population := integer.Parse(a[3]);
    countrU.density := countrU.area / countrU.population;
    write(countries_file, countrU);
  end;
  close(countries_file);
  Reset(countries_file, path);
  writeln('Название страны':17, 
      'Столица':13,
      'Площадь':10,
      'Население':11,
       'Плотность':10);
  for var i := 1 to 10 do 
  begin
    Seek(countries_file,i-1);
    Read(countries_file, countrU);
    countryy[i]:=countrU;
//    a := b.Split(',');
//    countryy[i].name := a[0];
//    countryy[i].capital := a[1];
//    countryy[i].area := integer.Parse(a[2]);
//    countryy[i].population := integer.Parse(a[3]);
//    countryy[i].density := countryy[i].area / countryy[i].population;
    Print_str(countrU);
  end;
  writeln('С найибольшей');
  for var i := 1 to 10 do 
  begin
    if countryy[1].population - 20 < countryy[i].population then Print_str(countryy[i]) 
    else break;
  end;
  writeln('С наименьшей');
  for var i := 10 downto 1 do 
  begin
    if countryy[10].population + 50 > countryy[i].population then Print_str(countryy[i]) 
    else break;
  end
end.