unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    RichEdit1: TRichEdit;
    Label1: TLabel;
    DrawGrid1: TDrawGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Button4: TButton;
    Button5: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label6: TLabel;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    FindDialog1: TFindDialog;
    procedure Button1Click(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
Form1: TForm1;
 RichEdit1: TRichEdit;
 Code,a:integer;
implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
begin
      With  RichEdit1 do
          begin
            Paragraph.FirstIndent:=2;//������ ������� �� �������
           Paragraph.LeftIndent:=2;//������ ���� �����
           Paragraph.RightIndent:=2;//������ ���� ������
           Paragraph.Numbering:=nsBullet;//����������� ������ � ������
           Paragraph.Alignment:=taCenter;//������������
end;
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
 With  RichEdit1.SelAttributes do
        begin
		if edit1.text='red' then Color:=clred;
		if edit1.text='blue' then Color:=clblue;
		if edit1.text='green' then Color:=clgreen;
		if edit1.text='yellow' then Color:=clyellow;
		val(edit2.Text,a,code);
		 Size:=a;
		if edit3.text='�' then Style:=[fsBold];
		if edit3.text='�' then Style:=[fsItalic];
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
	RichEdit1.PlainText:=false;
	RichEdit1.Lines.SaveToFile('text.rtf');
end;


procedure TForm1.Button4Click(Sender: TObject);
begin
	 FontDialog1.Execute;
	 Label1.Font.Assign( FontDialog1.Font);
	 Label2.Font.Assign( FontDialog1.Font);
	 Label3.Font.Assign( FontDialog1.Font);
	 Label4.Font.Assign( FontDialog1.Font);
   Label5.Font.Assign( FontDialog1.Font);
	 Label6.Font.Assign( FontDialog1.Font);
end;


procedure TForm1.Button5Click(Sender: TObject);
begin
ColorDialog1.Execute;
RichEdit1.color:=ColorDialog1.color;
end;





procedure TForm1.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
   with Sender as TDrawGrid do
    begin
       DrawGrid1.BorderStyle:= bsSingle;
      DrawGrid1.Ctl3D:=true;
      DrawGrid1.ColCount:=10;
      DrawGrid1.RowCount:=10;
      DrawGrid1.FixedCols:=1;
     DrawGrid1.GridLineWidth:=2;
     Canvas.Font.Color:=clred;
     Canvas.Brush.Color:=clyellow;
     Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left+5,Rect.Top+5,IntToStr(Acol)+intToStr(ARow));
 end;
 end;

end.
