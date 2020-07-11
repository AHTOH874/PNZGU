unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Label2: TLabel;
    StringGrid2: TStringGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}






procedure TForm1.Button1Click(Sender: TObject);
var n,i:integer;
a:array[0..100,0..100] of integer;
begin
n:=strtoint(edit1.text);
if n=0 then begin Messagedlg('Введите другое значение',mtinformation,mbokcancel,0);
end
else   begin
stringgrid1.ColCount:=n;
stringgrid1.Visible:=true;
 Randomize;
for i:=0 to n-1 do begin
a[i,0]:=random(20)-10; stringgrid1.cells[i,0]:=inttostr(a[i,0]);
end;
end;
end;
procedure TForm1.Button2Click(Sender: TObject);
var n,i,k:integer;
a:array[0..100,0..100] of integer;
begin
n:=strtoint(edit1.text);
k:=strtoint(edit2.Text);
stringgrid2.ColCount:=n;
stringgrid2.Visible:=true;
i:=0;
while i<=k-1 do begin
a[i,0]:=a[i,0]*10; stringgrid2.cells[i,0]:=inttostr(a[i,0]);
i:=i+1;
end;
while k<n do
begin
a[k,0]:=a[k,0]*2; stringgrid2.cells[k,0]:=inttostr(a[k,0]);
k:=k+1;
end;
end;
procedure TForm1.Button3Click(Sender: TObject);
var
i,n:integer;
a: array [1..100] of integer;
buttonselected:integer;
begin
n:=strtoint(edit1.text);
buttonselected:=Messagedlg('Очистить массивы?',mtwarning,mbokcancel,0);
if buttonselected=mrok then begin
Edit1.Text:='';
Edit2.Text:='';
for i := 0 to n - 1 do begin
stringgrid1.cells[i,0]:='';
stringgrid2.Cells[i,0]:='';
end;
end;
end;


procedure TForm1.Button4Click(Sender: TObject);
var
buttonselected: integer;
begin
buttonselected:=Messagedlg('Выйти из программы?',mtconfirmation,mbokcancel,1);
if buttonselected=mrok then close;
end;


procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not  (Key in ['0'..'9',#8]) then Key:=#0;
end;
procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not  (Key in ['0'..'9',#8]) then Key:=#0;
end;

end.
