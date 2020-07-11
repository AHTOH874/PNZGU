unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    Memo1: TMemo;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
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
begin
memo1.Text:='';
end;

procedure TForm2.CheckBox10Click(Sender: TObject);
begin
If CheckBox10.Checked Then Memo1.Lines.Add('Астана');
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
If CheckBox1.Checked Then Memo1.Lines.Add('Москва');
end;

procedure TForm2.CheckBox2Click(Sender: TObject);
begin
If CheckBox2.Checked Then Memo1.Lines.Add('Тбилиси');
end;

procedure TForm2.CheckBox3Click(Sender: TObject);
begin
  If CheckBox3.Checked Then Memo1.Lines.Add('Вильнюс');
end;

procedure TForm2.CheckBox4Click(Sender: TObject);
begin
If CheckBox4.Checked Then Memo1.Lines.Add('Рига');
end;

procedure TForm2.CheckBox5Click(Sender: TObject);
begin
If CheckBox5.Checked Then Memo1.Lines.Add('Париж');
end;

procedure TForm2.CheckBox6Click(Sender: TObject);
begin
If CheckBox6.Checked Then Memo1.Lines.Add('Минск');
end;

procedure TForm2.CheckBox7Click(Sender: TObject);
begin
If CheckBox7.Checked Then Memo1.Lines.Add('Киев');
end;

procedure TForm2.CheckBox8Click(Sender: TObject);
begin
If CheckBox8.Checked Then Memo1.Lines.Add('Рим');
end;

procedure TForm2.CheckBox9Click(Sender: TObject);
begin
If CheckBox9.Checked Then Memo1.Lines.Add('Оттава');
end;

end.
