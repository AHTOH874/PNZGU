unit Un_form;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Unit2;
 type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  Mas: Tdar;
  r: Tstud;
 implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
begin
   r.fio:=Edit1.Text;                        {���������� ����� ������}
   r.fac:=Edit2.Text;
   r.gr:=Edit3.Text;
   r.dr:=strtoint(Edit4.Text);
   Add_to_Array(Mas,r);       {����� ������������ �������� ������� �������. ��. ������ ����}
end;
procedure TForm1.Button2Click(Sender: TObject);
  Var
     I:Integer;
     S:string;
  Begin
   For I:=0 to high(Mas) Do
     begin
      S:=mas[i].fio+'  '+mas[i].fac+'  '+mas[i].gr+'  '+inttostr(mas[i].dr);
      Memo1.Lines.Add(s);
     end;
  End;
procedure TForm1.Button5Click(Sender: TObject);
var
buttonselected: integer;
begin
buttonselected:=Messagedlg('�� ������ ���������?',mtconfirmation,mbokcancel,1);
if buttonselected=mrok then begin
   Edit1.Clear;
   Edit2.Clear;
   Edit3.Clear;
   Edit4.Clear;
end;
end;
procedure TForm1.Button6Click(Sender: TObject);
var
buttonselected: integer;
begin

buttonselected:=Messagedlg('�� ������ ���������?',mtconfirmation,mbokcancel,1);
if buttonselected=mrok then begin
Memo1.clear;
end;
end;
procedure TForm1.Button7Click(Sender: TObject);
var
buttonselected: integer;
begin

buttonselected:=Messagedlg('�� ������ ��������?',mtconfirmation,mbokcancel,1);
if buttonselected=mrok then close;

end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8]) then  key:=#0;
end;

procedure TForm1.Button4Click(Sender: TObject);
 Var
   s:string;
begin
    messagedlg('����� ��������� ������ " 97��2" ���������� �� 1980',mtinformation,mbokcancel,0);
   Poisk(Mas,s);           {����� ������������ ������ � �������}
   end;
end.

