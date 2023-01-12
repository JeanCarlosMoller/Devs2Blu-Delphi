unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Menus;

type
  TForm1 = class(TForm)
    Img_comprador: TImage;
    Img_fornecedor: TImage;
    Img_UnidadeMedida: TImage;
    Img_Pedidos: TImage;
    Panel1: TPanel;
    Img_produto: TImage;
    Img_principal: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Img_Relatorio: TImage;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    Produtos1: TMenuItem;
    Compradores1: TMenuItem;
    Fornecedores1: TMenuItem;
    UnMedida1: TMenuItem;
    Pedidos1: TMenuItem;
    procedure Img_compradorClick(Sender: TObject);
    procedure Img_fornecedorClick(Sender: TObject);
    procedure Img_produtoClick(Sender: TObject);

    procedure UnMedida1Click(Sender: TObject);
    procedure Img_UnidadeMedidaClick(Sender: TObject);
    procedure Img_PedidosClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure Compradores1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UfrmCompradores, UfrmFornecedores, UfrmProdutos, UfrmUnidadeMedida,
  UfrmPedidos, UfrmRelUnidadeMedida, UfrmRelProduto, UfrmRelFornecedores,
  UfrmRelPedidos, UfrmRelCompradores;

procedure TForm1.Compradores1Click(Sender: TObject);
begin
  if not Assigned(frmRelCompradores) then
    frmRelCompradores := TfrmRelCompradores.Create(Self);

  frmRelCompradores.Show;
end;

procedure TForm1.Fornecedores1Click(Sender: TObject);
begin
  if not Assigned(frmRelFornecedores) then
    frmRelFornecedores := TfrmRelFornecedores.Create(Self);

  frmRelFornecedores.Show;
end;

procedure TForm1.Img_compradorClick(Sender: TObject);
begin
  if not Assigned(frmCompradores) then
    frmCompradores := TfrmCompradores.Create(Self);

  frmCompradores.Show;
end;

procedure TForm1.Img_fornecedorClick(Sender: TObject);
begin
  if not Assigned(frmFornecedores) then
    frmFornecedores := TfrmFornecedores.Create(Self);

  frmFornecedores.Show;
end;

procedure TForm1.Img_PedidosClick(Sender: TObject);
begin
  if not Assigned(frmPedidos) then
    frmPedidos := TfrmPedidos.Create(Self);

  frmPedidos.Show;
end;

procedure TForm1.Img_produtoClick(Sender: TObject);
begin
  if not Assigned(frmProdutos) then
    frmProdutos := TfrmProdutos.Create(Self);

  frmProdutos.Show;
end;

procedure TForm1.Img_UnidadeMedidaClick(Sender: TObject);
begin
  if not Assigned(frmUnidadeMedida) then
    frmUnidadeMedida := TfrmUnidadeMedida.Create(Self);

  frmUnidadeMedida.Show;
end;

procedure TForm1.Pedidos1Click(Sender: TObject);
begin
  if not Assigned(frmRelPedidos) then
    frmRelPedidos := TfrmRelPedidos.Create(Self);

  frmRelPedidos.Show;
end;

procedure TForm1.Produtos1Click(Sender: TObject);
begin
  if not Assigned(frmRelProduto) then
    frmRelProduto := TfrmRelProduto.Create(Self);

  frmRelProduto.Show;
end;

procedure TForm1.UnMedida1Click(Sender: TObject);
begin
  if not Assigned(frmRelUnidadeMedida) then
    frmRelUnidadeMedida := TfrmRelUnidadeMedida.Create(Self);

  frmRelUnidadeMedida.Show;
end;

end.
