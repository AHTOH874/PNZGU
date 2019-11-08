const 
  path= 'F:\LEARNING\I Course\Лабораторные работы\Решённые.Основы алгоритмизации и программирования\code\7_lab.txt';
 
type
  country = record
    name: string;
    capital: string;
    area: integer;
    population:integer;
    density: real;
   end;
 
 var 
  countries: Text;
  a: array of string;
  b:string;
  countryy: array [1..23] of country;


procedure Print_str(countr: country);
begin
  writeln(countr.name:17, 
      countr.capital:13,
      countr.area:10,
      countr.population:10,
      countr.density:10:2);
end;

begin 
  Reset(countries, path);
  writeln('Название страны':17, 
      'Столица':13,
      'Площадь':10,
      'Население':11,
       'Плотность':10);
  for var i:=1 to 23 do 
    begin
      Readln(countries,b);
      a:=b.Split(',');
      countryy[i].name:=a[0];
      countryy[i].capital:=a[1];
      countryy[i].area:=integer.Parse(a[2]);
       countryy[i].population:=integer.Parse(a[3]);
      countryy[i].density:=countryy[i].area/countryy[i].population;
      Print_str(countryy[i]);
    end;
  writeln('С найибольшей');
  for var i:=1 to 23 do 
    begin
    if countryy[1].population-20 < countryy[i].population then Print_str(countryy[i]) 
      else break;
    end;
  writeln('С наименьшей');
  for var i:=23 downto 1 do 
    begin
    if countryy[23].population+50 > countryy[i].population then Print_str(countryy[i]) 
      else break;
    end
end.