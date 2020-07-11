unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TExit = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Exit: TExit;

implementation

uses Unit1;

{$R *.dfm}

procedure TExit.Button1Click(Sender: TObject);
begin
Form1.close;
Exit.Close;
end;

end.
