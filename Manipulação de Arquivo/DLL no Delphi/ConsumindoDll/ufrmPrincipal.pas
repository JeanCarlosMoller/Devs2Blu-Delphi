unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtTexto: TEdit;
    Label1: TLabel;
    btnMaisculas: TButton;
    btnMinusculas: TButton;
    edtNumero: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtTextoConvertido: TEdit;
    btnConverter: TButton;
    procedure btnMaisculasClick(Sender: TObject);
    procedure btnMinusculasClick(Sender: TObject);
    procedure btnConverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  //Carregando a fun��o implicitamente da dll

  function MeuUpperCase(s: ShortString): ShortString; stdcall;
    external 'MinhaDll.Dll' name 'MeuUpperCase';

  function MeuLowerCase(s: ShortString): ShortString; stdcall;
    external 'MinhaDll.Dll' name 'MeuLowerCase';

  function MeuIntToStr(Numero: Integer): ShortString; stdcall;
    external 'MinhaDll.Dll' name 'MeuIntToStr';

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnConverterClick(Sender: TObject);
begin
  edtTextoConvertido.Text := MeuIntToStr(edtNumero.Value);
end;

procedure TForm1.btnMaisculasClick(Sender: TObject);
begin
  edtTexto.Text := MeuUpperCase(edtTexto.Text);
end;

procedure TForm1.btnMinusculasClick(Sender: TObject);
begin
  edtTexto.Text := MeuLowerCase(edtTexto.Text);
end;

end.
