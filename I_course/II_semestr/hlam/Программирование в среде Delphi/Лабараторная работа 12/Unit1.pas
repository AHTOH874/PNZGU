unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Edit1: TEdit;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Timer1: TTimer;
    Label4: TLabel;
    Button2: TButton;
    Button4: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Edit5: TEdit;
    Button3: TButton;
    Edit6: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  month,year,day:integer;




implementation

{$R *.dfm}





procedure TForm1.Button10Click(Sender: TObject);
var
y:real;
begin
If (Edit1.Text <> '') then begin
  y:=strtofloat(edit1.Text);
  Edit3.Text:=floattostr(arctan(y));
end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
If (Edit1.Text <> '') And (Edit2.Text <> '') then
Edit3.Text := FloatToStr(StrToFloat(Edit1.Text) + StrToFloat(Edit2.Text));
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
If (Edit1.Text <> '') And (Edit2.Text <> '') then
Edit3.Text := FloatToStr(StrToFloat(Edit1.Text) - StrToFloat(Edit2.Text));
end;

procedure TForm1.Button13Click(Sender: TObject);
var
y:real;

begin
if (edit4.Text='') and (edit5.Text='') then begin
If (Edit1.Text <> '') then begin
  y:=strtofloat(edit1.Text);
  Edit3.Text:=floattostr(sin(y));
end;
end
else begin
if edit4.Text<>'' then begin
  edit3.Text:=floattostr(sin(strtofloat(edit4.Text)*pi));
end;
if edit5.Text<>'' then begin
  edit3.Text:=floattostr(sin(pi/strtofloat(edit5.Text)));
end;
end;

end;

procedure TForm1.Button14Click(Sender: TObject);
var
y:real;

begin
if (edit4.Text='') and (edit5.Text='') then begin
If (Edit1.Text <> '') then begin
  y:=strtofloat(edit1.Text);
  Edit3.Text:=floattostr(cos(y));
end;
end
else begin
if edit4.Text<>'' then begin
  edit3.Text:=floattostr(cos(strtofloat(edit4.Text)*pi));
end;
if edit5.Text<>'' then begin
  edit3.Text:=floattostr(cos(pi/strtofloat(edit5.Text)));
end;
end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
end;




procedure TForm1.Button2Click(Sender: TObject);
begin
Label5.Visible:=true;
label13.Visible:=false;
label14.Visible:=false;
label15.Visible:=false;
Label5.Caption:=DateTostr(Date);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Label5.Visible:=false;
label6.Visible:=false;
button4.Visible:=false;
label13.Visible:=true;
label14.Visible:=true;
label15.Visible:=true;
year:=strtoint(edit8.Text);
month:=strtoint(edit7.Text);
day:=strtoint(edit6.Text);
label13.Caption:=inttostr(day);
label14.Caption:=inttostr(month);
label15.Caption:=inttostr(year);





end;

procedure TForm1.Button4Click(Sender: TObject);

Var x:Word;

begin

x:= DayOfWeek(Date);

Case x of

1: Label6.Caption:='�����������';

2: Label6.Caption:='�����������';

3: Label6.Caption:='�������';

4: Label6.Caption:='�����';

5: Label6.Caption:='�������';

6: Label6.Caption:='�������';

7: Label6.Caption:='������a';

end;


end;









procedure TForm1.FormCreate(Sender: TObject);
begin
label13.Visible:=false;
label14.Visible:=false;
label15.Visible:=false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Label3.Caption:=TimeToStr(now);
end;

end.
