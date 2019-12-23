unit SortModule;
interface 
type
  Race_type = record
    Number: string[5];
    From: string[12];
    punkt: string[10];
    Days: 1..7;
  end;

var
  N: integer;
  Race_array: array [1..1000]  of Race_type;

procedure sort_exchange;
procedure sort_choose;
implementation 

procedure sort_exchange;
var
  i, j: word;
  st: Race_type;
begin
  for i := 1 to (n - 1) do 
  begin
    for j := 1 to (n - i) do 
    begin
      if Race_array[j].Days > Race_array[j + 1].Days then begin
        st := Race_array[j];
        Race_array[j] := Race_array[j + 1];
        Race_array[j + 1] := st;
      end;
    end;
  end;
end;

procedure Sort_Choose;
var
  i, j, id_min: word;
  st_min: integer;
  st: Race_type;
begin
  for i := 1 to n - 1 do 
  begin
    st_min := Race_array[i].Days;
    id_min := i;
    for j := i + 1 to n do
      if Race_array[j].Days < st_min then  begin
        st_min := Race_array[j].Days;
        id_min := j;
      end;
    st := Race_array[i];
    Race_array[i] := Race_array[id_min];
    Race_array[id_min] := st;
  end;
end;  
end.