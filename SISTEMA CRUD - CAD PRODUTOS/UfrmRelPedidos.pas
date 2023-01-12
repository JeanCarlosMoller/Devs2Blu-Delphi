unit UfrmRelPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass,
  frxExportBaseDialog, frxExportPDF, UdmPedidos, frxDBSet;

type
  TfrmRelPedidos = class(TForm)
    GroupBox1: TGroupBox;
    edtDescricao: TEdit;
    lblDescricao: TLabel;
    btnExportar: TButton;
    btnVisualizar: TButton;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    procedure btnExportarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelPedidos: TfrmRelPedidos;

implementation

{$R *.dfm}

procedure TfrmRelPedidos.btnExportarClick(Sender: TObject);
var
  xCaminho : String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.FileName := Format('%s\Pedidos.pdf', [xCaminho]);
  frxReport1.PrepareReport();
  frxReport1.Export(frxPDFExport1);

end;

procedure TfrmRelPedidos.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;
  frxReport1.ShowReport;
end;

procedure TfrmRelPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;

  frmRelPedidos:= nil;
end;

procedure TfrmRelPedidos.PrepararFiltro;
begin
  FDQuery1.Close;
  FDQuery1.ParamByName('NUMERO').AsString := '';
  if Trim(edtDescricao.Text) <> EmptyStr then
    FDQuery1.ParamByName('NUMERO').AsString := '%' +
    Trim(edtDescricao.Text) +'%';
  FDQuery1.Open();
end;

end.
