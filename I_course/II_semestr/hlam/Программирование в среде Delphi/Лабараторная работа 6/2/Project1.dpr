program Project1;

uses
  Forms,
  Un_form in 'Un_form.pas' {Form1},
  Unit2 in 'unit2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
