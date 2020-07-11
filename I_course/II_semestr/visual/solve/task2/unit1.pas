unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    procedure Edit1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Edit1Change(Sender: TObject);
var
   Ysin, x, Ytg: real;
begin
  if (edit1.text <> '') and (edit1.text <> '-') then begin
  x:= strToint(Edit1.text);
  if (x >= 0) then begin
     Ytg:=tan(x);
     label4.caption:= FloatToStr(ytg);
     label4.Visible:=true;
  end else begin
     Ysin:= sin(x);
     label4.caption:= FloatToStr(Ysin);
     label4.Visible:=true;
  end;
  end;
end;

end.

