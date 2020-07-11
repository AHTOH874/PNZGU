unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Edit5: TEdit;
    Label4: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Memo1: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    Label7: TLabel;
    Label8: TLabel;
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);

    procedure RadioGroup1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
Edit5.Text := '';
Edit6.Text :='';
Edit7.Text:= '';
Memo1.Text :='';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   Exit.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 MessageDlg('���������� ������',mtWarning,[mbOk],0); close;
end;

procedure TForm1.Edit4Click(Sender: TObject);
var a,b:integer;

begin

{���� �������� ������}

a:=StrToInt(Edit1.Text);

b:=StrToInt(Edit3.Text);

if Edit2.Text='+' then Edit4.Text:=IntToStr(a+b);

if Edit2.Text='-' then Edit4.Text:=IntToStr(a-b);

if Edit2.Text='*' then Edit4.Text:=IntToStr(a*b);

if Edit2.Text='/' then begin
  if b<>0 then  Edit4.Text:=FloatToStr(a/b);
end;
if b=0 then Edit4.Text:='������';

end;





procedure TForm1.N2Click(Sender: TObject);
var

a,b,c,code:integer;

d:real;

s:string;

begin

val(edit5.Text,a,code);

val(edit6.Text,b,code);

val(edit7.Text,c,code);

d:=(a+b+c)/3;

str(d:5:1,s);

memo1.Lines.Add('������� �������������� ='+s);

end;

procedure TForm1.N3Click(Sender: TObject);
var
a,b,c,code:integer;

d,e:real;

s:string;
begin
val(edit5.Text,a,code);

val(edit6.Text,b,code);

val(edit7.Text,c,code);
d:= a+b+c;
e:= exp(ln(a*b*c)/3);
str(e:5:1,s);

memo1.Lines.Add('������� �������������� ='+s);

end;

procedure TForm1.N4Click(Sender: TObject);

var
a,b,c,code:integer;

d:real;

s:string;

begin

val(edit5.Text,a,code);

val(edit6.Text,b,code);

val(edit7.Text,c,code);

d:=a*b*c;
str(d:5:1,s);

memo1.Lines.Add('������������ ����� ='+s);


end;

procedure TForm1.RadioGroup1Click(Sender: TObject);

var

code:integer;

a,b,c,e:real;

s1:string;

begin

val(edit5.Text,a,code);

val(edit6.Text,b,code);

val(edit7.Text,c,code);

if RadioGroup1.ItemIndex=0 then begin {����� 1 ��������}
if a>0 then
e:=sqrt(a);
if a<0 then
memo1.Text:= 'Erorr'
        end;
if RadioGroup1.ItemIndex=1 then {����� 2 ��������}

e:=sqr(b);

if RadioGroup1.ItemIndex=2 then {����� 3 ��������}

e:=sqr(c)*c;

str(e:8:4,s1);

memo1.Lines.Add('��������� ����������='+s1);

end;


end.
