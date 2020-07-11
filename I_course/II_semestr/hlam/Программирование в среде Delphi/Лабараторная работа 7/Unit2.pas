unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes,
  Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls,
  VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.Series,
  VclTee.TeeGDIPlus;

type
  TForm2 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
i,F1y,f2y,step: real;
n,c: integer;
begin
val(edit1.Text,n,c);
step:=4/n;
i:=2;
while(i<=4) do begin
  f1y:=i*cos(i/2);
  f2y:=5/(2+sqr(i));
  series1.AddXY(i,f1y);
  series2.AddXY(i,f2y);
  i:=i+step;

end;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Series1.Clear;
series2.Clear;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
buttonselected:integer;
begin
buttonselected:=Messagedlg('Хотите выйти?',mtconfirmation,mbokcancel,1);
if buttonselected=mrok then close;
end;



end.
