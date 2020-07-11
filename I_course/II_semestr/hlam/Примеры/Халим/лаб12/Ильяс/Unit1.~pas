unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Gauges, ExtCtrls, OleCtrls, Chartfx3, ComCtrls,
  Menus, TeEngine, Series, Buttons, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Timer1: TTimer;
    SpinEdit1: TSpinEdit;
    Button2: TButton;
    TrackBar1: TTrackBar;
    Chart1: TChart;
    BitBtn1: TBitBtn;
    Series1: TLineSeries;
    Series2: TLineSeries;

    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  c: Integer;
  a:Real;
implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
TrackBar1.Show;
Timer1.Enabled:=True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
c:=StrToInt(SpinEdit1.text);
TrackBar1.Position := TrackBar1.Position+c;
if TrackBar1.Position = TrackBar1.Max then
begin
Timer1.Enabled:=False;
TrackBar1.Position:=0;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  a:=-1;
  ShowHint:=True;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var xn, xk, h, y1, y2,i:Real;
begin
a:=a+0.5;
series1.Clear;
Series2.Clear;
xn:=a;
xk:=2*Pi+a;
h:=0.1;
i:=xn+h;
while i<xk do
  begin
  y1:=sin(i);
  y2:=cos(i);
  series1.AddXY(i,y1,FloatToSTR(i),clred);
  series2.AddXY(i,y2,'',clgreen);
  i:=i+h;
  end;
end;

end.
