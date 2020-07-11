unit SortModule_18;
interface 
type
  Catalog__type= record
    Author: string[20];
    name: string[20];
    god: integer;
    tip: string[8];
  end;

var
  N: integer;
  Catalog__array: array [1..1000]  of Catalog__type;

procedure sort_exchange;
procedure sort_choose;
implementation 

procedure sort_exchange;
var
  i, j: word;
  st: Catalog__type;
begin
  for i := 1 to (n - 1) do 
  begin
    for j := 1 to (n - i) do 
    begin
      if Catalog__array[j].god > Catalog__array[j + 1].god then begin
        st := Catalog__array[j];
        Catalog__array[j] := Catalog__array[j + 1];
        Catalog__array[j + 1] := st;
      end;
    end;
  end;
end;

procedure Sort_Choose;
var
  i, j, id_min: word;
  st_min: integer;
  st: Catalog__type;
begin
  for i := 1 to n - 1 do 
  begin
    st_min := Catalog__array[i].god;
    id_min := i;
    for j := i + 1 to n do
      if Catalog__array[j].god < st_min then  begin
        st_min := Catalog__array[j].god;
        id_min := j;
      end;
    st := Catalog__array[i];
    Catalog__array[i] := Catalog__array[id_min];
    Catalog__array[id_min] := st;
  end;
end;  
end.