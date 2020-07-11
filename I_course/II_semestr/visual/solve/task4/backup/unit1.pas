unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    StringGrid1: TStringGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
var n, i:integer;
begin
     n:= strtoint(Edit1.text);
     StringGrid1.ColCount:= n;
     StringGrid1.Visible:= true;
     Randomize;
     for i:=0 to n-1 do stringgrid1.cells[i,0 ]:=inttostr(random(20)-10);

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
   i,min,iM,n:integer;
   a: array of integer;
begin
     n:=strtoint(edit1.text);
     min:=1000000000;
     setLength(a, n);
     for i:=0 to n-1 do begin
          a[i]:=strtoint(stringGrid1.cells[i, 0]);
          if a[i] < min then begin
            min:= a[i];
            iM:= i;
          end;
     end;
     Label4.Caption:=inttostr(iM);
     Label5.Caption:=intToStr(min)
end;


procedure TForm1.StringGrid1KeyPress(Sender: TObject; var Key: char);
begin
   BitBtn2.Enabled:=true;
end;

end.

