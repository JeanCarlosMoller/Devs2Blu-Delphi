unit USecoes;

interface

uses //Uses para a se��o interface
  UAnimal;

type //Tipos definidos da unidade
  TRegistro = record
    Id: Integer;
    Data: TDate;
    Hora: TTime;
    Obse: String;
  end;

  TCachorro = class (TAnimal)
    procedure MeuSomEh; override;
  end;

var //Declara��o de variaveis globais - Sempre escapar
  vGloball: Integer;

implementation
uses //Uses para a se��o implementation
  Vcl.Dialogs;

  {TCachorro}
procedure TCachorro.MeuSomEh;
begin
  ShowMessage('Au Au');
end;

end.


//comentario em linha

(*
comentario
em bloco
*)

{
comentario
em bloco
}