unit Unit2;
interface
  uses
      Sysutils,Dialogs,Stdctrls;
Type
    Tstud=record                      { �������� ���� ������ }
          fam:string[10];               { ���� ������� �������� }
          matem:byte;                   { ���� ������  }
          fiz:byte;
          progr:byte;
          sb:real;                           { ���� �������� ����� }
      end;
    Tdar=array of Tstud;

    Procedure Add_to_Array(Var Mas:Tdar;r:Tstud);
    Procedure Sort_Array(Var Mas:Tdar);
    Procedure Poisk(Mas:Tdar; Var s:string);
implementation
   Uses  Un_form;
 Procedure Add_to_Array(Var Mas:Tdar;r:Tstud);
   Begin
       If Mas=nil then Setlength(Mas,1)
                  else Setlength(Mas,length(Mas)+1);
       Mas[high(Mas)]:=r;
   End;
  Procedure  Sort_Array( Var Mas:Tdar);
   var
      i,j:integer;
      r:Tstud;
   Begin
     For I:=0 to high(MAS)-1 do
        Mas[i].sb:=( Mas[i].matem+ Mas[i].fiz+ Mas[i].progr)/3;
      {   Sortirovka  massiva:   }
     For I:=0 to high(MAS)-1 do
       For j:=I+1 to high(MAS) do
          if mas[I].sb>mas[j].sb  then
             begin
                r:=mas[I];
                mas[I]:=mas[j];
                mas[j]:=r;
             end;
   End;
 Procedure Poisk(Mas:Tdar; var s:string);
  Var
    i:integer;
   Begin
     For I:=0 to high(MAS)-1 do
        with mas[i] do                      { ������ ������������� ��������� �������������  with  do }
      if (matem)and(progr)=5 then
       begin  s:= fam;
                 Form1. Memo1.Lines.Add(s);
       end;
   end;
End.

