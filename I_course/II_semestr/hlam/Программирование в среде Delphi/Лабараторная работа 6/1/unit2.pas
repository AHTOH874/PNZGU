unit Unit2;
interface
  uses
      Sysutils,Dialogs,Stdctrls;
Type
    Tstud=record                      { �������� ���� ������ }
          fio:string[20];               { ���� ������� �������� }
          fac:string[5];                   { ���� ������  }
          gr:string[6];
          dr:integer;                         { ���� �������� ����� }
      end;
    Tdar=array of Tstud;

    Procedure Add_to_Array(Var Mas:Tdar;r:Tstud);
    Procedure Poisk(Mas:Tdar; Var s:string);
implementation
   Uses  Un_form;
 Procedure Add_to_Array(Var Mas:Tdar;r:Tstud);
   Begin
       If Mas=nil then Setlength(Mas,1)
                  else Setlength(Mas,length(Mas)+1);
       Mas[high(Mas)]:=r;
   End;
 Procedure Poisk(Mas:Tdar; var s:string);
  Var
    i:integer;
   Begin
     For I:=0 to high(MAS)-1 do
        with mas[i] do                      { ������ ������������� ��������� �������������  with  do }
      if (gr='97��2')and(dr<1980) then
       begin  s:= fio;
       Form1. Memo1.Lines.Add(s);
       end;
   end;
End.

