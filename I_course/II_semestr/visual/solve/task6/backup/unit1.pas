unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Mas: Tpols;
  p: Tpol;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
   p.Nomer:=Edit1.Text;                        {Заполнение полей записи}
   p.otprav:=Edit2.Text;
   p.naz:=Edit3.Text;
   p.days:=strtoint(Edit4.Text);
   Add_to_Array(Mas,p);       {Вызов подпрограммы создания массива записей. См. модуль ниже}
end;

procedure TForm1.Button2Click(Sender: TObject);
 Var
     I:Integer;
     S:string;
  Begin
   For I:=0 to high(Mas) Do
     begin
      S:=mas[i].Nomer+'  '+mas[i].otprav+'  '+mas[i].naz+'  '+inttostr(mas[i].days);
      Memo1.Lines.Add(s);
     end;
  End;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Memo1.Clear;
    Sort_Array(Mas);          {Вызов подпрограммы сортировки массива}
end;

procedure TForm1.Button4Click(Sender: TObject);
 Var
   s:string;
begin
   Poisk(Mas,s);           {Вызов подпрограммы поиска в массиве}
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
   Close
end;

end.
