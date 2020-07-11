unit Unit2;
interface
  uses
      Sysutils,Dialogs,Stdctrls;
Type
    Tpol=record
          nomer:string[5];
          otprav:string[12];
          naz:string[10];
          days:1..7;
          sb:real;
      end;
    Tpols=array of Tpol;

    Procedure Add_to_Array(Var Mas:Tpols;r:Tpol);
    Procedure Sort_Array(Var Mas:Tpols);
    Procedure Poisk(Mas:Tpols; Var s:string);
implementation
   Uses  Unit1;

 Procedure Add_to_Array(Var Mas:Tpols ;r:Tpol);
   Begin
       If Mas=nil then Setlength(Mas,1)
                  else Setlength(Mas,length(Mas)+1);
       Mas[high(Mas)]:=r;
   End;
  Procedure  Sort_Array( Var Mas:Tpols);
   var
      i,j:integer;
      r:Tpol;
   Begin
     For I:=0 to high(MAS)-1 do
       For j:=I+1 to high(MAS) do
          if mas[I].days>mas[j].days  then
             begin
                r:=mas[I];
                mas[I]:=mas[j];
                mas[j]:=r;
             end;
   End;

 Procedure Poisk(Mas:Tpols; var s:string);
  Var
    i:integer;
   Begin
     For I:=0 to high(MAS)-1 do
        with mas[i] do                      { Пример использования оператора присоединения  with  do }
      if otprav == 'Владивосток' and ( (days = 1) or (days = 3)) then
       begin  s:= nomer;Form1.Memo1.Lines.Add(s) end;
   end;
End.

