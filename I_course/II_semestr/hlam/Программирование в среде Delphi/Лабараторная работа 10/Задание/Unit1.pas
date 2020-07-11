unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label8: TLabel;
    StringGrid1: TStringGrid;
    Memo1: TMemo;
    ListBox1: TListBox;
    Edit6: TEdit;
    Edit7: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
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
var x,y,n,c,m,code:integer;
begin
  m:=StrToInt(Edit4.Text); // ����� ��������
  n:=StrToInt(Edit5.Text); // ����� �����
  StringGrid1.RowCount:=n;
  StringGrid1.ColCount:=m;
  for y:=0 to m-1 do
  for x:=0 to n-1 do
    StringGrid1.Cells[y,x]:=InputBox('���� �����','������� �����','0');
    Val(stringGrid1.Cells[y,x],c,code); // ���� ����� � ������
    Memo1.Lines.Add ('���������� �������:'+IntToStr(n)+'x'+IntToStr(m));
end;







procedure TForm1.Button2Click(Sender: TObject);
var m1,n1:integer;
begin
  m1:=StrToInt(Edit2.Text);
  n1:=StrToInt(Edit3.Text);
  ListBox1.Items.Add('������'+IntToStr(n1)+':'+'�������'+IntToStr(m1));
Memo1.Lines.Add('�������� ��������� ������:'+StringGrid1.Cells[m1-1,n1-1]);
end;

procedure TForm1.Button3Click(Sender: TObject);
var m1,n1,y,n,i:integer;
begin
  m1:=StrToInt(Edit1.Text);
  n1:=StrToInt(Edit5.Text);
   for i:=0 to n1 do
     ListBox1.Items.Add(StringGrid1.Cells[m1-1,i]);
    Memo1.Lines.Add('������� �������:'+IntToStr(m1));
end;

procedure TForm1.Button4Click(Sender: TObject);
var m1,n1,i:integer;
begin
  m1:=StrToInt(Edit4.Text);
  n1:=StrToInt(Edit1.Text);
    for i:=0 to m1 do
      ListBox1.Items.Add(StringGrid1.Cells[i,n1-1]);
      Memo1.Lines.Add('������� ������:'+IntToStr(n1));
end;


procedure TForm1.Button5Click(Sender: TObject);
var m1,n1:integer;
begin
  m1:=StrToInt(Edit2.Text);
  n1:=StrToInt(Edit3.Text);
  ListBox1.Items.Add(StringGrid1.Cells[m1-1,n1-1]);
  Memo1.Lines.Add('��������� � �������:'+IntToStr(m1)+':'+IntToStr(n1));
end;


procedure TForm1.Button6Click(Sender: TObject);
var m1,n1,m,n:integer;
    myRect:TGridRect;
begin
  m1:=StrToInt(Edit2.Text);
  n1:=StrToInt(Edit3.Text);
  m:=StrToInt(Edit6.Text);
  n:=StrToInt(Edit7.Text);
  myRect.Left:=m1-1;
  myRect.Top:=n1-1;
  myRect.Right:=m-1;
  myRect.Bottom:=n-1;
  StringGrid1.Selection:=myRect;
  Memo1.Lines.Add('������� �������:'+IntToStr(n1)+','+IntToStr(m1)+';'+IntToStr(n)+','+IntToStr(m));
end;




procedure TForm1.Button7Click(Sender: TObject);
var x,y,n,c,m,i,j:integer;
begin
  c:=0;
  m:=StrToInt(Edit4.Text); // ����� ��������
  n:=StrToInt(Edit5.Text);
  For i:= 0 to n-1  do begin
    for j := 0 to m-1 do begin
      x:=strtoint(stringgrid1.cells[i,j]);
      c:=c+x;
    end;

  end;
Memo1.Lines.Add('C���� ����� � �������:'+IntToStr(c));
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  StringGrid1.Ctl3D:=True;
  StringGrid1.BorderStyle:=bsSingle;
  Memo1.Lines.Add('����� ������ ��������');
end;


procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  StringGrid1.Ctl3D:=False;
  StringGrid1.BorderStyle:=bsNone;
  Memo1.Lines.Add('����� ������ �������');
end;

end.
