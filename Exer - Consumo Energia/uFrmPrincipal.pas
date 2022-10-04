unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TOpcoes = (opResidencia, opComercio, opIndustria);

  TFMoller = class(TForm)
    rdg_opcaoSelecao: TRadioGroup;
    edt_consumoUsuario: TEdit;
    Label1: TLabel;
    btn_calculo: TButton;
    mm_listaConsumo: TMemo;
    lb_titulo: TLabel;
    Label2: TLabel;
    btn_limpar: TButton;
    procedure btn_calculoClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);

  private
    { Private declarations }
    procedure listarConsumo;
    procedure calcResidencia;
    procedure calcComercio;
    procedure calcIndustria;

    var
      xConsumoKW, xValorTotal : Double;

  const
    c_valorResidencia = 0.60;
    c_valorComercio   = 0.48;
    c_valorIndustria  = 1.29;

  public
    { Public declarations }
  end;

var
  FMoller: TFMoller;

implementation

{$R *.dfm}

procedure TFMoller.calcResidencia;
begin
  xValorTotal := (xConsumoKW * c_valorResidencia);
  mm_listaConsumo.Lines.Add('Valor que deve ser pago: R$:' + xValorTotal.ToString);
end;

procedure TFMoller.btn_limparClick(Sender: TObject);
begin
  mm_listaConsumo.Clear;
end;

procedure TFMoller.calcComercio;
begin
  xValorTotal := (xConsumoKW * c_valorComercio);
  mm_listaConsumo.Lines.Add('Valor que deve ser pago: R$:' + xValorTotal.ToString);
end;

procedure TFMoller.calcIndustria;
begin
  xValorTotal := (xConsumoKW * c_valorIndustria);
  mm_listaConsumo.Lines.Add('Valor que deve ser pago: R$:' + xValorTotal.ToString);
end;

procedure TFMoller.listarConsumo;

begin
  xConsumoKW := StrToFloat(edt_consumoUsuario.Text);

  case TOpcoes (rdg_opcaoSelecao.ItemIndex) of

  opResidencia:
  begin
    calcResidencia;
  end;

  opComercio:
  begin
    calcComercio;
  end;

  opIndustria:
  begin
    calcIndustria;
  end;

  end;
end;

procedure TFMoller.btn_calculoClick(Sender: TObject);
begin
  listarConsumo;
end;
end.
