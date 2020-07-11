unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  x:real;
  code:integer;
  s1, s2: string[40];
begin
  val(Edit1.text, x, code);
  if x < 0 then
     begin
     str(sin(x):4:3, s1);
     Memo1.Lines.add(s1)
     end
  else if x>= 0 then begin
       if cos(x) = 0 then Memo1.Lines.add('Деление на 0, в косинусе')
       else
       begin
          str(sin(x)/cos(x):4:3, s2);
          Memo1.Lines.add(s2);
       end
  end
  else
     Memo1.Lines.add('X не в том промежутке')
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;


end.

