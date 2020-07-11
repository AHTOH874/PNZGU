program lb11;

uses SortModule;
const
  fn = 'F:\LEARNING\I Course\������������ ������\��������.������ �������������� � ����������������\code\11_lab.txt';

var
  ch: byte;
  race_elem: Race_type;
procedure Input;
var
  F: file of Race_type;
  k: word;
begin
  k := 0;
  Assign(F, fn);
  Reset(F);
  while not EOF(F) do
  begin
    inc(k);
    read(F, race_elem );
    Race_array[k]:= race_elem
  end;
  n := k;
  Close(F);
end;

procedure Write_array;
var
  i: word;
begin
  Writeln('����� �����':20, '������':25, '����� ����������':23, '��� ������':20);
  for i := 1 to n do
    writeln(Race_array[i].Number:20, ' | ', Race_array[i].From:20, ' | ', Race_array[i].punkt:20, ' | ', Race_array[i].Days:20);
end;

begin
  Input;
  writeln('�������� ������: ');
  Write_array;
  repeat
    Writeln('�������� ��������: ');
    Writeln('��� ���������� ������� �������� ������� 1');
    Writeln('��� ���������� ������� ������ ������� 2 ');
    Writeln('��� ������ ������� 3');
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
  until ch = 3;
  writeln('���������� ������');
end.
