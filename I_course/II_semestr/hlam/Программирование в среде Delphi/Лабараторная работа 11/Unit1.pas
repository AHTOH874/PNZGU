unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Memo2: TMemo;
    Button6: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
Uses ClipBrd; // ���������� ����� ������ windows
procedure TForm1.Button3Click(Sender: TObject);
begin
Clipboard.SetTextBuf(PChar(Memo1.SelText));
end;
  
procedure TForm1.Button4Click(Sender: TObject);
begin
Memo1.selText:= Clipboard.AsText;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Clipboard.SetTextBuf(PChar(Memo1.SelText));
Memo1.selText:='';
end;

procedure TForm1.Button5Click(Sender: TObject);
var kek:integer;
begin
  kek:=MessageDlg('��������� ������?',mtWarning,[mbYes, mbNo],0);
  if kek=mrYes then
  form1.Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
const
 gl: set of char = ['�','�','�','�','�','�','�','�','�','�'];

  var s,s1,smin:string;
  i,dmin:integer;
  ch:string;
  begin
  s:=memo1.Text;
  s:=s+' '; s1:=''; dmin:=length(s);
  for i := 1 to length(s) do
    if s[i]<>' ' then s1:=s1+s[i]
    else

    begin
      if (length(s1)<dmin) and (length(s1)<>0) then  begin
      dmin:=length(s1);
      smin:=s1
      end;
      s1:='';
    end;
memo2.Lines.Add('����� �������� �����:'+smin);
i:=1;
ch:='����';
for I := 1 to dmin do begin
  if (smin[i]='�') or (smin[i]='�') or (smin[i]='�') or (smin[i]='�') or
  (smin[i]='�') or (smin[i]='�') or (smin[i]='�') or (smin[i]='�')
  or (smin[i]='�') or (smin[i]='�')
     then begin smin[i]:='&'; end;
end;
memo2.Lines.Add('����� �������� �����:'+smin);







end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Memo1.Clear;
Memo2.Clear;
end;

end.
