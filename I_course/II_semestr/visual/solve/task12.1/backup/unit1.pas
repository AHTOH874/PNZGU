unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a,b,c:real;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  a := StrToFloat (Edit1.Text);
b := StrToFloat (Edit2.Text);
c := a + b;
Edit3.Text := FloatToStr (c);
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
     a := StrToFloat (Edit1.Text);
     b := StrToFloat (Edit2.Text);
     c := exp(a*ln(b));
     Edit3.Text := FloatToStr (c);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
     a := StrToFloat (Edit1.Text);
     b := StrToFloat (Edit2.Text);
     c := ln(a)/ln(b);
     Edit3.Text := FloatToStr (c);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  a := StrToFloat (Edit1.Text);
b := StrToFloat (Edit2.Text);
c := a - b;
Edit3.Text := FloatToStr (c);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   a := StrToFloat (Edit1.Text);
b := StrToFloat (Edit2.Text);
c := a * b;
Edit3.Text := FloatToStr (c);

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  a := StrToFloat (Edit1.Text);
  b := StrToFloat (Edit2.Text);
  if b = 0 then Edit3.Text := 'division by zero'
  else
  begin
       c := a / b;
       Edit3.Text := FloatToStr (c);
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
begin
a := StrToFloat (Edit1.Text);
c := cos (a);
end;
if Edit2.Text <> '' then
begin
b := StrToFloat (Edit2.Text);
c := cos (b);
end;
Edit3.Text := FloatToStr (c);

end;

procedure TForm1.Button8Click(Sender: TObject);
begin
         if Edit1.Text <> '' then
begin
a := StrToFloat (Edit1.Text);
c := sin (a);
end;
if Edit2.Text <> '' then
begin
b := StrToFloat (Edit2.Text);
c := sin (b);
end;
Edit3.Text := FloatToStr (c);
end;

end.

