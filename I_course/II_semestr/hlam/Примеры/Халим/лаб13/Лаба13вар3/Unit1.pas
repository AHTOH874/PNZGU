unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    DrawGrid1: TDrawGrid;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  j,i,n:integer;
  kz:array[0..1] of TBitmap;
  path:string;
  win:Boolean;
  pole:array[0..2,0..2] of shortint;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var ip,jp:integer;
begin
  Label1.Caption:='Ходят крестики';
  win:=false;
  path:=ExtractFileDir(Application.ExeName);
  for ip:=0 to 2 do
    for jp:=0 to 2 do
      pole[i,j]:=0;
  kz[1]:=TBitmap.Create;
  kz[0]:=TBitmap.Create;
  kz[0].LoadFromFile(path+'\img\0.bmp');
  kz[1].LoadFromFile(path+'\img\1.bmp');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var ip:integer;
begin
for ip:=0 to 1 do
  kz[ip].Free;
end;

procedure TForm1.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var kol,sum,ip,jp:Shortint;

begin
  kol:=0;
  DrawGrid1.MouseToCell(x, y, i, j);
  if (n mod 2 = 0) and (win = false) then
    Label1.Caption:='Ходят нолики'
  else begin
    Label1.Caption:='Ходят крестики';
    if win then begin
      Label1.Left:=12;
      Label1.Caption:='Начните игру занова';
    end;
  end;
  if (pole[i,j] = 0) and (win=false) then begin
      DrawGrid1.Canvas.CopyRect(DrawGrid1.CellRect(i, j), kz[n mod 2].Canvas, Rect(0, 0, kz[n mod 2].Height,kz[n mod 2].Width));
    if (n mod 2 = 0) then
      pole[i,j]:=1
    else
      pole[i,j]:=-1;
    inc(n);
  end;
  if (win=false) then
    for ip:=0 to 2 do begin
      for jp:=0 to 2 do begin
        sum:=sum+pole[ip,jp];
      end;
      if sum = 3 then begin
        ShowMessage('Выйграли крестики');
        win:=true;
      end;
      if sum = -3 then begin
        ShowMessage('Выйграли нолики');
        win:=true;
      end;
      sum:=0;
    end;
  if (win=false) then
    for ip:=0 to 2 do begin
      for jp:=0 to 2 do
        sum:=sum+pole[jp,ip];
      if sum = 3 then begin
        ShowMessage('Выйграли крестики');
        win:=true;
      end;
      if sum = -3 then begin
        ShowMessage('Выйграли нолики');
        win:=true;
      end;
      sum:=0;
    end;
  if (pole[0,0] = pole[1,1]) and (pole[0,0] = pole[2,2]) and (win=false) then begin
    if pole[0,0] = 1 then begin
      ShowMessage('Выйграли крестики');
      win:=true;
    end;
    if pole[0,0] = -1 then begin
      ShowMessage('Выйграли нолики');
      win:=true;
    end;
  end;
  if (pole[2,0] = pole[1,1]) and (pole[2,0] = pole[0,2]) and (win=false) then begin
    if pole[2,0] = 1 then begin
      ShowMessage('Выйграли крестики');
      win:=true;
    end;
    if pole[2,0] = -1 then begin
      ShowMessage('Выйграли нолики');
      win:=true;
    end;
  end;
    for i:=0 to 2 do
      for j:=0 to 2 do
        if pole[i,j] = 0 then
          inc(kol);
    if (kol = 0) and (win = false) then begin
      ShowMessage('Ничья');
      win:=true;
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  DrawGrid1.Visible:=false;
  win:=false;
  DrawGrid1.Visible:=true;
  for i:=0 to 2 do
    for j:=0 to 2 do
      pole[i,j]:=0;
  n:=0;
  Label1.Left:=24;
  Label1.Caption:='Ходят крестики';
end;

procedure TForm1.Button2Click(Sender: TObject);
var p:integer;
begin
  p:=MessageDlg('Выйти из игры?',mtWarning,[mbYes, mbNo],0);
  if p = mrYes then
    close;
end;

end.
