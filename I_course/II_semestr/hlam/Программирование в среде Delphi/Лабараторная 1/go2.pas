unit go2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  a,b,c,d,e,f:real;
  s1,s2,s3,s4:string[40];
     code:integer;
begin
val(Edit1.text,a,code);
val(Edit1.text,a,code);
c:= a+b;
str(c:6:2,s1);
 d:= a-b;
str(d:6:2,s2);
e:= a*b;
str(e:6:2,s3);
f:= a/b;
str(f:6:2,s4);
Memo1.Lines.Add('c='+s1);
Memo1.Lines.Add('d='+s2);

Memo1.Lines.Add('e='+s3);

Memo1.Lines.Add('f='+s4);

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 edit1.Text:=''; {Очистить поле ввода Edit1}

edit2.Text:=''; {Очистить поле ввода Edit2}

edit1.SetFocus;{Установить курсор ввода в поле Edit1}

Memo1.Clear;

end;

end.
