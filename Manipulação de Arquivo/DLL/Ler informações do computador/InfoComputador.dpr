program InfoComputador;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {Form1},
  uinfoPC in 'uinfoPC.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
