unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, clipbrd, Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Button2: TButton;
    Memo1: TMemo;
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.N3Click(Sender: TObject);
begin
Memo1.PasteFromClipboard;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Memo1.CopyToClipboard;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
memo1.SelText;
memo1.ClearSelection;
end;

procedure TForm1.Button1Click(Sender: TObject);
type letter = set of '�'..'�';
var c,word,maxword: string;
i,j,numberword,maxsogl,outsogl: integer;
sogl:letter;
mas: array [1..20]of string;
begin
j:=1; // first elements of massive
outsogl:=0 ; // kolvo soglasnyh
maxsogl:=0; // max soglacnyh
numberword:=0; // omer slova
sogl:= ['�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�'];
c:=memo1.Text+' ';
  for i :=1 to length(c) do begin
    if c[i] = ' ' then begin
      inc(j);
      continue;
      end;
    if c[i] in ['�'..'�'] then
      mas[j]:= mas[j]+c[i];
   end;
  for i:=1 to 10 do
  begin
      for j:=1 to length(mas[i]) do
        begin
          if mas[i][j] in sogl then
          inc(outsogl);
        end;
      if outsogl > maxsogl then
      begin
      numberword:=i;
      maxsogl:=outsogl;
      end;
      outsogl:=0;
   end;
Memo1.Lines.Add('���������� ���������� ��������� � ����� - '+mas[numberword]+'    '+ inttostr(maxsogl) ) ;
end;

procedure TForm1.Button2Click(Sender: TObject);
var c:integer;
begin
 c:=messagedlg('��������� ������?',mtWarning,[mbYes, mbNo],0);
 If c=mrYes then close;
end;

end.
