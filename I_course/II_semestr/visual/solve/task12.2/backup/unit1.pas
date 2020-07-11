unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a:real;
implementation
function dec2bin(x:integer):string;
var s:string;
  i:integer;
begin
  s:='';
  while x>0 do begin
  if x mod 2 = 0 then
    s:=s+'0'
  else begin
    s:=s+'1';
    x:=x-1;
  end;
  x:=x div 2;
end;
  for i:=length(s) downto 1 do
  dec2bin+=s[i];
end;
function bin2dec(s:string):real;
var b, i:integer;
    c: real;
begin
c:=0;
b:=1;
i:= length(s);
while  i> 0 do
begin
     if s[i] = '1' then
     begin
        c+=Power(2, b);
        b+=1;
     end
     else if s[i] = '0' then b+=1;
     i-=1;
end;
bin2dec:=c;

end;

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);
begin
     a := StrToInt(Edit1.Text);
     Edit2.Text := dec2bin(Trunc(a));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   Edit4.Text := FloatToStr(bin2dec(Edit3.Text));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     Edit1.Text:='';
     Edit2.Text:='';
     Edit3.Text:='';
     Edit4.Text:='';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Close;
end;

end.

