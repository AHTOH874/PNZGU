unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ColorGrd, Spin, ExtDlgs;

type
  TForm1 = class(TForm)
    pb1: TPaintBox;
    clrgrd1: TColorGrid;
    lbl1: TLabel;
    se1: TSpinEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    rg1: TRadioGroup;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dlg1: TSavePictureDialog;
    procedure pb1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pb1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   x1,y1:integer;
implementation

{$R *.dfm}

procedure TForm1.pb1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
x1:=x;
y1:=y;
end;

procedure TForm1.pb1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if RG1.ItemIndex=0 then
    Canvas.Brush.Style:=bsSolid;
  if RG1.ItemIndex=1 then
     Canvas.Brush.Style:=bsBDiagonal;
  if RG1.ItemIndex=2 then
     Canvas.Brush.Style:=bsCross;
  if RG1.ItemIndex=3 then
     Canvas.Brush.Style:=bsDiagCross;
  if RG1.ItemIndex=4 then
     Canvas.Brush.Style:=bsHorizontal;
  if RG1.ItemIndex=5 then
  Canvas.Brush.Style:=bsVertical;
 Canvas.Pen.Color:=clrgrd1.ForegroundColor;
 Canvas.brush.Color:=clrgrd1.BackgroundColor;
 Canvas.Pen.Width:=strtoint(se1.text);
Form1.Canvas.Rectangle(x1,y1,x,y);
end;

procedure TForm1.btn1Click(Sender: TObject);

var p:integer;
begin
 p:=MessageDlg('«акрыть программу?',mtWarning,[mbYes, mbNo],0);
 if p = mrYes then
 close;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
InValidateRect(form1.handle,NIL,True)
end;







procedure TForm1.btn3Click(Sender: TObject);

var
Img:TBitmap;
Region: TRect;
begin 
if Dlg1.Execute then
// выдел€ем пам€ть дл€ вспомогательной переменной
Img:= TBitmap.Create;
try
Img.Width:= pb1.Width;
Img.Height:= pb1.Height;
Region := Rect(0, 0, Img.Width,Img.Height);
// копируем содержимое Image во вспомогательную переменную
Img.Canvas.CopyRect(Region ,pb1.Canvas, Region );
// сохран€ем вспомогательную переменную в файле
Img.SaveToFile(Dlg1.FileName);
finally
// освобождаем пам€ть
Img.Free;
end;
end;


end.
