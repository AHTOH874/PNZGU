unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button3: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
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
var n,m,i,j:integer;
a: array [0..100,0..100] of integer;
begin
 n:=strtoint(edit1.Text); m:=strtoint(edit2.Text);
 if (n<>0) and (m<>0) then begin
 stringgrid1.ColCount:=n; stringgrid1.RowCount:=m; stringgrid1.visible:=true;
  for i := 0 to n - 1 do begin
    for j := 0 to m - 1 do begin
      a[i,j]:=random(20)-10;
      stringgrid1.cells[i,j]:=inttostr(a[i,j]);
    end;
    end;
    end
    else begin
    Messagedlg('Введите другое значение',mtinformation,mbokcancel,0);
    end
end;
procedure TForm1.Button2Click(Sender: TObject);
var i,j,n,m,k,p:integer; a:array[0..100,0..100] of integer;
begin 
n:=strtoint(edit1.text); m:=strtoint(edit2.text); 
for i:=0 to n-1 do
for j:=0 to m-1 do a[i,j]:=strtoint(stringgrid1.cells[i,j]);
p:=1;
k:=0;
for i:=0 to n-1 do 
for j:=0 to m-1 do 
if a[i,j]<>0 then 
begin
p:=p*a[i,j]; 
k:=k+1;
end; 
edit3.text:=inttostr(k); 
edit4.text:=inttostr(p); 
end;


procedure TForm1.Button3Click(Sender: TObject);
var
i,n,m,j:integer;
a: array [0..100,0..100] of integer;
buttonselected:integer;
begin
  n:=strtoint(edit1.text);
  m:=strtoint(edit2.text);
  buttonselected:=Messagedlg('Очистить массивы?',mtwarning,mbokcancel,0);
  if buttonselected=mrok then begin
    Edit1.Text:='';
    Edit2.Text:='';
    edit3.Text:='';
    edit4.Text:='';
    for i := 0 to n - 1 do begin
      for j:= 0 to m-1 do  begin
        stringgrid1.cells[i,j]:='';
      end;
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
