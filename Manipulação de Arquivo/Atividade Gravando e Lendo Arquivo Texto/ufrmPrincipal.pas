unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtDataNascimento: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mmInformacoes: TMemo;
    btnGravar: TButton;
    btnLer: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnLerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FArq : TextFile;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  if(edtCodigo.Text <> '') and
    (edtNome.Text <> '') and
    (edtDataNascimento.Text <> '') then
  begin
    //Grava uma linha com os dados de um alino no arquivo
    Writeln(FArq, edtCodigo.Text,           '|',
                  edtNome.Text,             '|',
                  edtDataNascimento.Text,   '|');

    edtCodigo.Clear;
    edtNome.Clear;
    edtDataNascimento.Clear;
  end;
end;

procedure TForm1.btnLerClick(Sender: TObject);
var
  xLinha, xCodigo, xNome, xDataNascimento : String;
  xReg, i: Integer;

begin
  mmInformacoes.Clear;

  //Abre o arquivo texto para leitura
  Reset(FArq);

  try
    xReg := 0;
    //Enquanto não atingir a marca de final de arquivo
    while (not Eof(FArq)) do
    begin
      //Lê uma linha, com os dados de uma pessoa do arquivo
      Readln(FArq, xLinha);

      xReg := xReg + 1;

      //recupera o codigo da pessoa
      i := pos('|', xLinha);
      xCodigo := copy(xLinha, 1, i-1);
      delete(xLinha, 1, i);

      //recupera o nome da pessoa
      i := pos('|', xLinha);
      xNome := copy(xLinha, 1, i-1);
      delete(xLinha, 1, i);

      //recupera a data nascimento da pessoa
      i := pos('|', xLinha);
      xDataNascimento := copy(xLinha, 1, i-1);

      //processando e exibindo os dados recuperados
      mmInformacoes.Lines.Add('Registro N°........: ' + IntToStr(xReg));
      mmInformacoes.Lines.Add('Código da Pessoa...: ' + xCodigo);
      mmInformacoes.Lines.Add('Nome da Pessoa.....: ' + xNome);
      mmInformacoes.Lines.Add('Data Nascimento....: ' + xDataNascimento);

      mmInformacoes.Lines.Add('');
    end;
  finally
    Append(FArq);
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseFile(FArq);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
 AssignFile(FArq, 'Cadastro Pessoa.txt');
  {$I-}
  Reset(FArq);

  if IOResult <> 0 then
    Rewrite(FArq) //Arquivo não existe e será criado

  else
  begin
    CloseFile(FArq);
    Append(FArq); //O Arquivo existe e será aberto para saídas adicionais
  end;
  {$I+}
end;

end.
