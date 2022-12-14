unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNumero: TEdit;
    bntTabuada: TButton;
    procedure bntTabuadaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bntTabuadaClick(Sender: TObject);
var
  // Declarando a vari?vel "xArq" dp tipo arquivo texto
  xArq: TextFile;
  i, n: Integer;
begin
  try
    // Associa a vari?vel do programa "xArq" ao arquivo externo
    // "tabuada.txt" na raiz do projeto
    AssignFile(xArq, 'Tabuada.txt');

    // Criar o arquivo "tabuada.txt" na unidade de disco "d"
    Rewrite(xArq);

    //Append(xArq) - esse vai ter varios registro de logs;

    n := StrToIntDef(edtNumero.Text, 0);

    // Grava uma linha no arquivo
    Writeln(xArq, '+--Resultado--+');

    for i := 1 to 10 do
    begin
      // Grava uma linha da tabuada no arquivo
      Writeln(xArq, '| ', i, ' X ', n, ' = ', (i * n), ' |');
    end;

    // Grava uma linha no arquivo
    Writeln(xArq, '+------------------+');

    ShowMessage('Tabuada gravada com sucesso!');
  finally
    // Fecha o arquivo texto
    CloseFile(xArq);

  end;

end;

end.
