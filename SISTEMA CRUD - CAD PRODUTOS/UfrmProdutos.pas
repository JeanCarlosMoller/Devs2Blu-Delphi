unit UfrmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmProdutos = class(TForm)
    DBGrid1: TDBGrid;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    FDTable1Id: TFDAutoIncField;
    FDTable1Descricao: TStringField;
    FDTable1idUnidadeMedida: TLongWordField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    FDTableLookup: TFDTable;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    FDTableLookupId: TFDAutoIncField;
    FDTableLookupDescricao: TStringField;
    FDTableLookupUnidadeMedida: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDTable1.Close;
  FDTableLookup.Close;

  frmProdutos := nil;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  FDTable1.Open;
  FDTableLookup.Open;

end;

end.
