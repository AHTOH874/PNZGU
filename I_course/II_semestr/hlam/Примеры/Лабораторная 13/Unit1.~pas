unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Unit2;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v1,v2,v3:integer;   //скорость изменения угла
    pob:Integer;
    cheb:array[1..10] of S8;
    kol:Byte;
    win:Integer;
    kr1,kr2,kr3:Integer;
  end;

var
  Form1: TForm1;
  lol:array[0..3] of TBitmap; //формат bmp для картинок
  kek:TBitmap;
  x1,x2,x3,y1,y2,y3:integer;
  angle,gangle,dangle:real;
  chel:byte;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
Var
i:integer;
st:string;
begin
 x1:=683; y1:=15;
 x2:=683; y2:=195;
 x3:=683; y3:=340;
 angle:=90;
 gangle:=90;
 dangle:=90;
  Form1.Width:=1366;
  Form1.Height:=968;
  kek:=TBitmap.Create;
  kek.Width:=1366;
  kek.Height:=968;
st:=ExtractFileDir(Application.ExeName); //путь к exe-файлу проекту
lol[0]:=TBitmap.Create; //выделяем память для изображения(lol[0])
lol[0].LoadFromFile(st+'\0.bmp'); //в переменную загружаем картинку
for i:=1 to 3 do begin
lol[i]:=TBitmap.Create;
lol[i].TransparentColor:=clWhite;  //обрезает всё белое, что есть в картинке
lol[i].Transparent:=true;   //строчка говорит программе, что она должна убирать цвет
lol[i].LoadFromFile(st+'\'+inttostr(i)+'.bmp');
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
Var
  i:Integer;
begin
kek.Canvas.StretchDraw(rect(0,0,1266,925),lol[0]); //на kek отрисовываем lol, изменяя его размер
if (angle>0) and (angle<180) then
kek.Canvas.StretchDraw(rect(x1,y1,x1+90,y1+90),lol[3])
else kek.Canvas.StretchDraw(rect(x1+90,y1,x1,y1+90),lol[3]);
if (gangle>0) and (gangle<180) then
kek.Canvas.StretchDraw(rect(x2,y2,x2+80,y2+80),lol[2])
else kek.Canvas.StretchDraw(rect(x2+80,y2,x2,y2+80),lol[2]);
if (dangle>0) and (dangle<180) then
kek.Canvas.StretchDraw(rect(x3,y3,x3+60,y3+60),lol[1])
else kek.Canvas.StretchDraw(rect(x3+60,y3,x3,y3+60),lol[1]);
  kek.Canvas.TextOut(0,0,'Первая лошадь: '+inttostr(kr1+1)+'/8');
  kek.Canvas.TextOut(0,20,'Вторая лошадь: '+inttostr(kr2+1)+'/8');
  kek.Canvas.TextOut(0,40,'Третья лошадь: '+inttostr(kr3+1)+'/8');
Form1.Canvas.Draw(0,0,kek);
   if (Timer2.Enabled=False) and (Timer3.Enabled=False) and (Timer4.Enabled=False) and (pob<>0) then begin
     for i:=1 to kol do
          if (pob=cheb[i].num) then begin
          cheb[i].res:=cheb[i].sum*2; 
          Form2.StringGrid2.Cells[4,i]:=floattostr(cheb[i].res);
    end
    else Form2.StringGrid2.Cells[4,i]:='Проигрыш!';
    Form2.StringGrid2.ColCount:=5;
    Form2.StringGrid2.ColWidths[4]:=95;
    Timer1.Enabled:=False;
    ShowMessage('Победила лошадь №'+inttostr(pob)+'!');
    kol:=0;
    end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
 angle:=angle+v1;
   if angle>360 then  angle:=angle-360;
   x1:=Round(585+cos(angle*Pi/180)*575);
   y1:=Round(415+cos((angle+90)*Pi/180)*380);
     if angle=90 then begin
      if kr1=7 then begin
      if (kr2<>7) and (kr3<>7) then begin
       pob:=1;
       end;
       Timer2.Enabled:=false;
       end
       else inc(kr1);
     end;
  end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
 gangle:=gangle+v2;
   if gangle>360 then  gangle:=gangle-360;
   x2:=Round(595+cos(gangle*Pi/180)*475);
   y2:=Round(410+cos((gangle+90)*Pi/180)*205);
     if gangle=90 then begin
      if kr2=7 then begin
      if (kr1<>7) and (kr3<>7) then begin
       pob:=2;
       end;
       Timer3.Enabled:=false;
       end
       else inc(kr2);
     end;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
  dangle:=dangle+v3;
   if dangle>360 then  dangle:=dangle-360;
   x3:=Round(610+cos(dangle*Pi/180)*370);
   y3:=Round(430+cos((dangle+90)*Pi/180)*90);
     if dangle=90 then begin
      if kr3=7 then begin
      if (kr1<>7) and (kr2<>7) then begin
       pob:=3;
       end;
       Timer4.Enabled:=false;
       end
       else inc(kr3);
     end;

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=49 then
Form2.Show
end;


procedure TForm1.FormShow(Sender: TObject);
begin
ShowMessage('Чтобы выйти в меню, нажмите 1');
end;

end.
