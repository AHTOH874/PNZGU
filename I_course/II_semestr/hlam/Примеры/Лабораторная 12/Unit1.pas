unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, TabNotBk, StdCtrls, Buttons, ExtCtrls, ColorGrd,
  Gauges;

type
  TForm1 = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Gauge1: TGauge;
    ColorGrid1: TColorGrid;
    Timer1: TTimer;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ColorGrid1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
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
var s:string;
begin
BitBtn1.Kind:=bkClose;
BitBtn1.Caption:='Открыть';
if OpenDialog1.Execute then begin  //Execute отвечает за открытие файла
  BitBtn1.Kind:=bkIgnore;
  BitBtn1.Caption:='Открыть';
  memo1.Lines.LoadFromFile(OpenDialog1.FileName); // запоминает путь к файлу
  ShowMessage('Файл открыт');
  memo1.Hint:='Содержимое файла';
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ColorGrid1.BackgroundIndex:=15; //Чтобы по умолчанию был белый цвет
  ShowHint:=true;
end;

procedure TForm1.TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  ShowMessage('Открыта '+inttostr(NewTab+1)+ ' страница');
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Gauge1.AddProgress(1); //1-проценты
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Timer1.Enabled:=true;
end;

procedure TForm1.ColorGrid1Change(Sender: TObject);
begin
  Gauge1.BackColor:=ColorGrid1.BackgroundColor;
  Gauge1.ForeColor:=ColorGrid1.ForegroundColor;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  Gauge1.Progress:=0;
  Timer1.Enabled:=false;
  ColorGrid1.ForegroundIndex:=0;
  ColorGrid1.BackgroundIndex:=15;
end;

procedure TForm1.Button1Click(Sender: TObject);
var lol:integer;
begin
  lol:=MessageDlg('Закрыть программу?',mtWarning,[mbYes, mbNo],0);
  if lol = mrYes then
 Close;
end;

end.
