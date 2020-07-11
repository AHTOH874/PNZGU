unit Code;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Buttons, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    StringGrid1: TStringGrid;
    BitBtn2: TBitBtn;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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

procedure TForm1.BitBtn1Click(Sender: TObject);

var
i,k,n:integer;
s: string;
a:array[0..100] of integer;
begin
n:=strtoint(edit1.Text);
for i:=0 to n-1 do begin
a[i]:=random(50)-15;
s:=inttostr(a[i]);
stringgrid1.cells[i,0]:=s;
end;
k:=0;
for i:=0 to n-1 do begin
if a[i]>0
then k:=k+1;
end;
s:=inttostr(k);
edit2.text:=s;
end;


procedure TForm1.BitBtn2Click(Sender: TObject);

var
a: integer;
s: string;
begin
a:=random(10)-5;
s:=inttostr(a);
stringgrid1.Cells[1,0]:=s;
end;

procedure TForm1.Button1Click(Sender: TObject);

var n:integer;

begin
n:=strtoint(edit1.text);
if n=0 then begin Messagedlg('������� ������ ��������',mtInformation,mbOkCancel,0);

end
else begin
stringgrid1.ColCount:=n;
stringgrid1.Visible:=true;
end;

end;









procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in ['0'..'9',#8]) then key:=#0

end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);

begin
if not (Key in ['1'..'9', #8])then Key:=#0;
end;


end.
