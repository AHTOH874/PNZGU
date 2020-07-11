unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, Buttons, Grids;

type
  TForm2 = class(TForm)
    BitBtn2: TBitBtn;
    TBitBtn2: TBitBtn;
    btn3: TBitBtn;
    RadioGroup1: TRadioGroup;
    SpinEdit2: TSpinEdit;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    StringGrid2: TStringGrid;

    procedure TBitBtn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
   end;
    Type
  S8=record
   name: String[10];
   sum: Integer;
   num: Byte;
   res: real;
     end;
var
  Form2: TForm2;

implementation
uses Unit1;
{$R *.dfm}

procedure TForm2.TBitBtn2Click(Sender: TObject);
Var
  i:Integer;
begin
  Form1.win:=0;
  Randomize();
  Form1.v1:=Random(5) + 2;
  Form1.v2:=Random(5) + 2;
  while Form1.v2=Form1.v1 do
    Form1.v2:=random(5)+2;
  Form1.v3:=Random(5) + 2;
  while (Form1.v3=Form1.v1) or (Form1.v3=Form1.v2) do
    Form1.v3:=random(5)+2;
Form1.Timer2.Enabled:=True;
Form1.Timer3.Enabled:=True;
Form1.Timer4.Enabled:=True;
Form1.Timer1.Enabled:=True;  //при повторном заезде снова включает таймер
Form1.kr1:=0;
Form1.kr2:=0;
Form1.kr3:=0;
Form1.pob:=0;
Form2.Close;
end;

procedure TForm2.btn3Click(Sender: TObject);
Var lol:integer;
begin
  lol:=MessageDlg('Закрыть программу?',mtWarning,[mbYes, mbNo],0);
  if lol = mrYes then begin
 Close;
 Form1.Close;
end;
end;



procedure TForm2.BitBtn2Click(Sender: TObject);
Var
    i,j:Integer;
begin
  StringGrid2.Visible:=True;
  label4.Visible:=True;
  StringGrid2.Cells[0,0]:='№п/п';
    StringGrid2.ColWidths[0]:=35;
  StringGrid2.Cells[1,0]:='   Имя игрока';
    StringGrid2.ColWidths[1]:=80;
  StringGrid2.Cells[2,0]:='Сумма ставки';
    StringGrid2.ColWidths[2]:=78;
  StringGrid2.Cells[3,0]:='Номер лошади';
    StringGrid2.ColWidths[3]:=80;
  StringGrid2.Cells[4,0]:='Результат скачки';
    inc(Form1.kol);
 Form1.cheb[Form1.kol].name:=Edit1.Text;
 Form1.cheb[Form1.kol].sum:=SpinEdit2.Value;
 Form1.cheb[Form1.kol].num:=RadioGroup1.ItemIndex+1;
 StringGrid2.Cells[3,Form1.kol]:=IntToStr(Form1.cheb[Form1.kol].num);
 StringGrid2.Cells[1,Form1.kol]:=Form1.cheb[Form1.kol].name;
 StringGrid2.Cells[2,Form1.kol]:=IntToStr(Form1.cheb[Form1.kol].sum);
 StringGrid2.Cells[0,Form1.kol]:=IntToStr(Form1.kol);
 StringGrid2.RowCount:=Form1.kol+1;
 Edit1.Clear;
 SpinEdit2.Value:=10;
 RadioGroup1.ItemIndex:=0;
 StringGrid2.ColCount:=4;
 end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
end;

end.
