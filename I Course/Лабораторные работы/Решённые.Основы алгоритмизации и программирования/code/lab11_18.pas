program lb11;

uses SortModule_18;
const
  fn = 'F:\LEARNING\I Course\������������ ������\��������.������ �������������� � ����������������\code\11_18_lab.txt';

var
  ch: byte;
  Catalog_elem: Catalog__type;
  
procedure Input;
var
  F: file of Catalog__type;
  k: word;
begin
  k := 0;
  Assign(F, fn);
  Reset(F);
  while not EOF(F) do
  begin
    inc(k);
    read(F, Catalog_elem );
    Catalog__array[k]:= Catalog_elem
  end;
  n := k;
  Close(F);
end;

procedure Write_array;
var
  i: word;
begin
  Writeln('�����':20, '��������':25, '��� �������':10, '���':10);
  for i := 1 to n do
    writeln(Catalog__array[i].Author:20, Catalog__array[i].name:25, Catalog__array[i].god:10, Catalog__array[i].tip:20);
end;

begin
  Input;
  writeln('�������� ������: ');
  Write_array;
  repeat
    Writeln('�������� ����� ����������: ');
    Writeln('��� ���������� ������� �������� ������� 1');
    Writeln('��� ���������� ������� ������ ������� 2 ');
    Writeln('��� ������ ������� 3 ');
    
    Write('����: ');
    Readln(ch);
    if ch = 1 then begin
      Sort_Exchange;
      Write_array;
    end;
    if ch = 2 then begin
      Sort_Choose;
      Write_array;
    end;
  until ch=3;
  writeln('���������� ������');
end.
