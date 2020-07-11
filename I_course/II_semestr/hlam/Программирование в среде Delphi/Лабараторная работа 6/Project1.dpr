program Project1;

uses
  Forms,
  Un_form in '1\Un_form.pas' {Form1},
  unit2 in '1\unit2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
