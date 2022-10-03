program PromeiraAula;

uses
  Vcl.Forms,
  PrimeiraAula in 'PrimeiraAula.pas' {Form1},
  USecoes in 'USecoes.pas',
  UAnimal in 'UAnimal.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
