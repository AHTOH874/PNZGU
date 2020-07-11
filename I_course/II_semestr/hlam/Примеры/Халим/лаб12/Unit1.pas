unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Gauges, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button5: TButton;
    Timer1: TTimer;
    BitBtn1: TBitBtn;
    Gauge1: TGauge;
    Label4: TLabel;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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
var result:real;
begin
if (edit1.text = '') or (edit2.Text = '') then showmessage('Ошибка!')
else begin
 result:= strtofloat(edit1.Text)+strtofloat(edit2.Text);
 memo1.lines.insert(0, edit1.Text + ' + ' + edit2.Text + ' = '+floattostr(result) );
end;
    end;
procedure TForm1.Button2Click(Sender: TObject);
var result:real;
begin
  if (edit1.text = '') or (edit2.Text = '') then showmessage('Ошибка!')
else begin
 result:= strtofloat(edit1.Text) - strtofloat(edit2.Text);
 memo1.lines.insert(0, edit1.Text + ' - ' + edit2.Text + ' = '+floattostr(result) );
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var result:real;
begin
  if (edit1.text = '') or (edit2.Text = '') then showmessage('Ошибка!')
else begin
 result:= strtofloat(edit1.Text) * strtofloat(edit2.Text);
 memo1.lines.insert(0, edit1.Text + ' * ' + edit2.Text + ' = '+floattostr(result) );
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var result:real;
begin
  if (edit1.text = '') or (edit2.Text = '') or (edit2.Text ='0') then showmessage('Ошибка!')
else begin
 result:= strtofloat(edit1.Text) / strtofloat(edit2.Text);
 memo1.lines.insert(0, edit1.Text + ' / ' + edit2.Text + ' = '+floattostr(result) );
end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
edit1.Clear; edit2.Clear;
memo1.Clear;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  gauge1.MinValue := 0;
  gauge1.MaxValue := 100;
  gauge1.Progress := gauge1.Progress + 1;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 gauge1.BorderStyle:=bsnone;
 gauge1.Visible:=true;
Timer1.Enabled:=true;
 Gauge1.BackColor:= RGB(Random(256), Random(256), Random(256));
 Gauge1.ForeColor:= RGB(Random(256), Random(256), Random(256));
 end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 MessageDlg('Завершение  работы',mtWarning,[mbOk],0);
   close;
end;

end.
