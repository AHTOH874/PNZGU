unit Unform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,unit2;

type
  Tstud = record
    fam:string[40];
    matem: integer;
    fiz: integer;
    progr: integer;
  end;
  Tdar = record
    fam:string[40];
    matem: integer;
    fiz: integer;
    progr: integer;
  end;
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Memo1: TMemo;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  r: Tstud;
  mas: Tdar;


implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
begin
   r.fam:=Edit1.Text;                        {Заполнение полей записи}
   r.matem:=strtoint(Edit2.Text);
   r.fiz:=strtoint(Edit3.Text);
   r.progr:=strtoint(Edit4.Text);
   Add_to_Array(Mas,r);       {Вызов подпрограммы создания массива записей. См. модуль ниже}
end;
procedure TForm1.Button2Click(Sender: TObject);
  Var
     I:Integer;
     S:string;
  Begin
   For I:=0 to high(Mas) Do
     begin
      S:=mas[i].fam+'  '+inttostr(mas[i].matem)+'  '+inttostr(mas[i].fiz)+'  '+inttostr(mas[i].progr);
      Memo1.Lines.Add(s);
     end;
  End;
procedure TForm1.Button3Click(Sender: TObject);
begin
  Sort_Array(Mas);          {Вызов подпрограммы сортировки массива}
 end;
procedure TForm1.Button5Click(Sender: TObject);
begin
   Edit1.Clear;
   Edit2.Clear;
   Edit3.Clear;
   Edit4.Clear;
end;
procedure TForm1.Button6Click(Sender: TObject);
begin
 Memo1.Clear;
end;
procedure TForm1.Button7Click(Sender: TObject);
begin
  Close;
end;
procedure TForm1.Button4Click(Sender: TObject);
 Var
   s:string;
begin
   Poisk(Mas,s);           {Вызов подпрограммы поиска в массиве}
   end;
end.

