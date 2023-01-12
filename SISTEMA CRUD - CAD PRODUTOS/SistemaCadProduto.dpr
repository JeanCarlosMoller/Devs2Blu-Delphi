program SistemaCadProduto;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  UdmPedidos in 'UdmPedidos.pas' {dmPedidos: TDataModule},
  UfrmCompradores in 'UfrmCompradores.pas' {frmCompradores},
  UfrmFornecedores in 'UfrmFornecedores.pas' {frmFornecedores},
  UfrmUnidadeMedida in 'UfrmUnidadeMedida.pas' {frmUnidadeMedida},
  UfrmProdutos in 'UfrmProdutos.pas' {frmProdutos},
  UfrmPedidos in 'UfrmPedidos.pas' {frmPedidos},
  UfrmRelUnidadeMedida in 'UfrmRelUnidadeMedida.pas' {frmRelUnidadeMedida},
  UfrmRelProduto in 'UfrmRelProduto.pas' {frmRelProduto},
  UfrmRelCompradores in 'UfrmRelCompradores.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmRelProduto, frmRelProduto);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
