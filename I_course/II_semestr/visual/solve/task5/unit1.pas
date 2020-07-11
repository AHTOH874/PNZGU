unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var n, c, r:integer;
begin
  n:= strtoint(Edit1.text);
  StringGrid1.colCount:=n;
  StringGrid1.rowCount:=n;
  StringGrid1.Visible:=true;
  Button2.Enabled:=true;
  Randomize;
  for R:= 0 to n-1 do
      for C:=0 to n-1 do StringGrid1.cells[C,R]:= intToStr(random(10) - 5);
end;

procedure TForm1.Button2Click(Sender: TObject);
var n, c, r, sum, dot:integer;
begin
  sum:=0;
  dot:= 1;
  n:= strtoint(Edit1.text);
  for R:= 0 to n-1 do
      for C:=0 to n-1 do if strToInt(StringGrid1.cells[C,R]) mod 2 = 1 then begin
        sum += strToInt(StringGrid1.cells[C,R]);
        dot *= strToInt(StringGrid1.cells[C,R]);
      end;
  Label4.caption:= inttoStr(sum);
  Label5.caption:= inttostr(dot);
end;

end.

