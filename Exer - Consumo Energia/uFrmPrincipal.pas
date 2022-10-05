{
35.3 Faça um algoritmo que calcule o valor da conta de luz de uma pessoa.
Sabe-se que o cálculo da conta de luz segue a tabela abaixo:
  Tipo de Cliente Valor do KW/h
    a. (Residência) 0,80
    b. (Comércio) 0,68
    c. (Indústria) 1,49
    d. (Fazenda) 3,18

}

unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TOpcoes = (opResidencia, opComercio, opIndustria, opFazenda);

  TFMoller = class(TForm)
    rdg_opcaoSelecao: TRadioGroup;
    edt_consumoUsuario: TEdit;
    Label1: TLabel;
    btn_calculo: TButton;
    mm_listaConsumo: TMemo;
    lb_titulo: TLabel;
    Label2: TLabel;
    btn_limpar: TButton;
    Label3: TLabel;
    edt_descontoUsuario: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    procedure btn_calculoClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);

  private
    { Private declarations }
    procedure listarConsumo;
    function calcConta(pConsumo, pTipo, pDesconto: double): double;


  public
    { Public declarations }
  end;

var
  FMoller: TFMoller;

implementation

{$R *.dfm}


procedure TFMoller.btn_limparClick(Sender: TObject);
begin
  mm_listaConsumo.Clear;
end;

function TFMoller.calcConta(pConsumo, pTipo, pDesconto: double): double;
begin
  begin
  Result := (pConsumo * pTipo) - pDesconto;

end;
end;


procedure TFMoller.listarConsumo;
var
  xConsumoKW, xValorTotal, xDesconto : Double;
  xMensagem : string;
const
  c_valorResidencia = 0.80;
  c_valorComercio   = 0.68;
  c_valorIndustria  = 1.49;
  c_valorFazenda    = 3.18;

begin
  xDesconto := strToFloatDef(edt_descontoUsuario.text, 0);

  if edt_ConsumoUsuario.text = '' then
  begin
    showMessage('Insira o valor consumido em KW/h');
    exit;
  end;


  xConsumoKW := StrToFloat(edt_consumoUsuario.Text);

  case TOpcoes (rdg_opcaoSelecao.ItemIndex) of

  opResidencia:
  begin
    xValorTotal := calcConta(xConsumoKW, c_valorResidencia, xDesconto);
  end;

  opComercio:
  begin
    xValorTotal := calcConta(xConsumoKW, c_valorComercio, xDesconto);
  end;

  opIndustria:
  begin
    xValorTotal := calcConta(xConsumoKW, c_valorIndustria, xDesconto);
  end;

  opFazenda:
  begin
    xValorTotal := calcConta(xConsumoKW, c_valorFazenda, xDesconto);
  end;

  else
    showMessage('Escolha tipo de consumidor');
    exit;

  end;

  mm_listaConsumo.lines.add('Valor a pagar: ' + formatFloat('R$ 0.00',xValorTotal)
                            + ' já aplicado o desconto de '
                            + formatFloat('R$ 0.00',xDesconto));

end;

procedure TFMoller.btn_calculoClick(Sender: TObject);
begin
  listarConsumo;
end;
end.
