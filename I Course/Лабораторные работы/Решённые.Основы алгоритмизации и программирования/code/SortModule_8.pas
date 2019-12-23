unit SortModule_8;
interface 
type
  Book__type= record
    Author: string[20];
    name: string[20];
    year: integer;
    shifr: string[8];
  end;

var
  N: integer;
  Book__array: array [1..1000]  of Book__type;

procedure sort_exchange;
procedure sort_choose;
implementation 

procedure sort_exchange;
var
  i, j: word;
  st: Book__type;
begin
  for i := 1 to (n - 1) do 
  begin
    for j := 1 to (n - i) do 
    begin
      if Book__array[j].year > Book__array[j + 1].year then begin
        st := Book__array[j];
        Book__array[j] := Book__array[j + 1];
        Book__array[j + 1] := st;
      end;
    end;
  end;
end;

procedure Sort_Choose;
var
  i, j, id_min: word;
  st_min: integer;
  st: Book__type;
begin
  for i := 1 to n - 1 do 
  begin
    st_min := Book__array[i].year;
    id_min := i;
    for j := i + 1 to n do
      if Book__array[j].year < st_min then  begin
        st_min := Book__array[j].year;
        id_min := j;
      end;
    st := Book__array[i];
    Book__array[i] := Book__array[id_min];
    Book__array[id_min] := st;
  end;
end;  
end.