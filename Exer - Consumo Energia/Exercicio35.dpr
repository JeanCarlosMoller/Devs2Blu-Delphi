program Exercicio35;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FMoller};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMoller, FMoller);
  Application.Run;
end.
