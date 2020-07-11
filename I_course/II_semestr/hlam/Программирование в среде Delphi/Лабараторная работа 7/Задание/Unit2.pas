unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes,
  Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls,
  VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.Series,
  VclTee.TeeGDIPlus, Vcl.Buttons;

type
  TForm2 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Button3: TButton;
    Button4: TButton;
    Series3: TLineSeries;
    Series4: TLineSeries;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}




procedure TForm2.Button1Click(Sender: TObject);
var
  k:byte;
  xn,xk,y1,y2,y3,y4:real;
  i,h:real;
begin

   xn:=Strtofloat(Edit3.text);
   xk:=Strtofloat(Edit4.text);
   h:=Strtofloat(Edit5.text);
   series1.Clear;
   series2.Clear;
   series3.Clear;
   series4.Clear;
   i:=xn;
      while i<=xk do
        begin
          y1:=sqrt(i)/i;
          y2:=sqrt(i);
          y3:=sqr(i)+ 2*i;
          y4:=sqr(I)*I+I;
          series1.addXY(i,Y1,'',clred);
          series2.addXY(i,Y2,'',clblue);
          series3.addXY(i,Y3,'',clyellow);
          series4.addXY(i,Y4,'',clgreen);
          i:=i+h;
       end;
end;
procedure TForm2.Button3Click(Sender: TObject);
begin
series1.AddXY(strtofloat(edit1.text),strtofloat(edit2.text),'Эксперимент А',clred);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
{Построение графика В}
  series2.AddXY(strtofloat(edit1.text),strtofloat(edit2.text),'Эксперимент В',clblue);

end;

end.
