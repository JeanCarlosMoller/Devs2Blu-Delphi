unit UfrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPedidos = class(TForm)
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDTableComprador: TFDTable;
    DS_Comprador: TDataSource;
    DS_Fornecedor: TDataSource;
    FDTableFornecedor: TFDTable;
    FDTable1Id: TFDAutoIncField;
    FDTable1Numero: TLongWordField;
    FDTable1DataPedido: TDateField;
    FDTable1idComprador: TLongWordField;
    FDTable1idFornecedor: TLongWordField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBoxComprador: TDBLookupComboBox;
    DBLookupComboBoxFornecedor: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DataSource2: TDataSource;
    FDTable2: TFDTable;
    FDTable3: TFDTable;
    FDTable2Id: TFDAutoIncField;
    FDTable2Quantidade: TFloatField;
    FDTable2idPedidoCompra: TLongWordField;
    FDTable2idProduto: TLongWordField;
    FDTable3Id: TFDAutoIncField;
    FDTable3Descricao: TStringField;
    FDTable3idUnidadeMedida: TLongWordField;
    FDTable2LookupProduto: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FDTable2BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmPedidos.FDTable2BeforePost(DataSet: TDataSet);
begin
  FDTable2idPedidoCompra.AsInteger := FDTable1Id.AsInteger;
end;

procedure TfrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDTable1.Close;
  FDTableComprador.Close;
  FDTableComprador.Close;

  FDTable2.Close;
  FDTable3.Close;

  frmPedidos:= nil;
end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
  FDTable1.Open;
  FDTableComprador.Open;
  FDTableFornecedor.Open;

  FDTable2.Open;
  FDTable3.Open;

end;

end.
