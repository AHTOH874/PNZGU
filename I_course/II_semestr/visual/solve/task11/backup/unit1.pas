unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Clipbrd ;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;


implementation
function maxLength(s: string): string;
var max,s1:string;
begin
  s:=s+' ';max:='';
    While Pos(' ',s)>0 do
    Begin
      s1:=Copy(s,1,Pos(' ',s)-1);
      Delete(s,1,Pos(' ',s));
      if Length(s1)>Length(max) then max:=s1;
    End;
    maxLength:= max;
end;

function minLength(s: string): string;
var i, dmin: integer;
    sl,smin: string;
begin
  s:=s+' '; sl:='';dmin:=length(s);
for  i:=1 to length(s) do
    if s[i]<>' ' then sl:=sl+s[i]
       else
       begin
       if (length(sl)<dmin) and (length(sl)<>0) then
          begin
          dmin:=length(sl);
          smin:=sl;
          end;
       sl:='';
       end;
   minLength:=smin;
end;


{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
   Memo1.CopyToClipboard;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   Memo1.CopyToClipboard;
   Memo1.Text:= '';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   Memo1.PasteFromClipboard;
end;

procedure TForm1.Button4Click(Sender: TObject);
var s:string;
begin
   s:= Memo1.Text;
   Memo1.Lines.add('Слово с максимальной длиной - ' + maxLength(s));
   Memo1.Lines.add('Слово с минимальной длиной - ' + minLength(s))
end;

end.

